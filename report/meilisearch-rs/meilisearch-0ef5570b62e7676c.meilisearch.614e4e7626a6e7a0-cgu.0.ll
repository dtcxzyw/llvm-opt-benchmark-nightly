Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$14max_level_hint17h5fbe1d4cb3981750E":bb.a
  %i.c = load atomic i32, ptr %i.b monotonic, align 4, !noalias !4960 ; 3 uses
  %or.cond3.i.i = icmp ult i32 %i.c, 1073741822
  br i1 %or.cond3.i.i, label %bb.b, label %bb.c, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i32 %i.c, 1
  %i.e = cmpxchg weak ptr %i.b, i32 %i.c, i32 %i.d acquire monotonic, align 4, !noalias !4960
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock14read_contended17hd5223ca2cc4f107aE(ptr noundef nonnull align 4 %i.b), !noalias !4960
  br label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i

_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i: ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load atomic i8, ptr %i.g monotonic, align 4, !noalias !4961
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val10.i = load i64, ptr %.sink.i.i.i, align 8, !range !90, !noalias !4960, !noundef !45 ; 2 uses
  %i.i = atomicrmw sub ptr %i.b, i32 1 release, align 4, !noalias !4960
  %i.j = add i32 %i.i, -1                         ; 2 uses
  %i.k = and i32 %i.j, -1073741825
  %or.cond.not.i.i11.i = icmp eq i32 %i.k, -2147483648
  br i1 %or.cond.not.i.i11.i, label %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$14max_level_hint17hc6d8b6d6a5dd9f7aE.exit.sink.split", label %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$14max_level_hint17hc6d8b6d6a5dd9f7aE.exit", !prof !72

bb.e:                                             ; preds = %"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..28"
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !4960
  unreachable

bb.f:                                             ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i
  %i.m = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !4960
  %i.n = and i64 %i.m, 9223372036854775807
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %bb.i unwind label %bb.l, !noalias !4960

bb.h:                                             ; preds = %bb.i, %bb.f
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @38, i64 noundef 13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #43
          to label %bb.j unwind label %bb.l, !noalias !4960

bb.i:                                             ; preds = %bb.g
  br i1 %i.p, label %bb.h, label %bb.k, !prof !47

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.q = atomicrmw sub ptr %i.b, i32 1 release, align 4, !noalias !4960
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %i.s = and i32 %i.r, -1073741825
  %or.cond.not.i.i.i17.i = icmp eq i32 %i.s, -2147483648
  br i1 %or.cond.not.i.i.i17.i, label %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$14max_level_hint17hc6d8b6d6a5dd9f7aE.exit.sink.split", label %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$14max_level_hint17hc6d8b6d6a5dd9f7aE.exit", !prof !72

"_ZN4core3ptr2814drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..31": ; preds = %"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..28", %bb.l
  resume { ptr, i32 } %lpad.thr_comm.i

bb.l:                                             ; preds = %bb.h, %bb.g
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %i.t = atomicrmw sub ptr %i.b, i32 1 release, align 4, !noalias !4960
  %i.u = add i32 %i.t, -1                         ; 2 uses
  %i.v = and i32 %i.u, -1073741825
  %or.cond.not.i.i.i24.i = icmp eq i32 %i.v, -2147483648
  br i1 %or.cond.not.i.i.i24.i, label %"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..28", label %"_ZN4core3ptr2814drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..31", !prof !72

"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..28": ; preds = %bb.l
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.b, i32 noundef %i.u)
          to label %"_ZN4core3ptr2814drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..31" unwind label %bb.e, !noalias !4960

"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$14max_level_hint17hc6d8b6d6a5dd9f7aE.exit.sink.split": ; preds = %bb.k, %bb.d
  %.sink = phi i32 [ %i.j, %bb.d ], [ %i.r, %bb.k ]
  %.sroa.0.0.i.ph = phi i64 [ %.val10.i, %bb.d ], [ 6, %bb.k ]
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.b, i32 noundef %.sink), !noalias !4960
  br label %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$14max_level_hint17hc6d8b6d6a5dd9f7aE.exit"

"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$14max_level_hint17hc6d8b6d6a5dd9f7aE.exit": ; preds = %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$14max_level_hint17hc6d8b6d6a5dd9f7aE.exit.sink.split", %bb.d, %bb.k
  %.sroa.0.0.i = phi i64 [ %.val10.i, %bb.d ], [ 6, %bb.k ], [ %.sroa.0.0.i.ph, %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$14max_level_hint17hc6d8b6d6a5dd9f7aE.exit.sink.split" ] ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = tail call fastcc noundef i64 @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$14max_level_hint17h21729f6193263114E"(ptr noundef nonnull align 8 %i.w) ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 552
  %.val.i = load ptr, ptr %i.y, align 8, !noalias !4962
  %i.z = tail call fastcc { i64, ptr } @"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$12downcast_raw17h9435fa1095563a57E"(ptr %.val.i, ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) @41)
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = icmp eq i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ad = load i8, ptr %i.ac, align 8, !range !52, !noundef !45
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$15pick_level_hint17ha7ae96543c34a17dE.exit", label %bb.m

bb.m:                                             ; preds = %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$14max_level_hint17hc6d8b6d6a5dd9f7aE.exit"
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 569
  %i.ag = load i8, ptr %i.af, align 1, !range !52, !noundef !45
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.o, label %bb.q

bb.n:                                             ; preds = %bb.o
  %.not.i2 = icmp eq i64 %i.x, 6
  br i1 %.not.i2, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$15pick_level_hint17ha7ae96543c34a17dE.exit", label %.thread37.i

bb.o:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 570
  %i.aj = load i8, ptr %i.ai, align 2, !range !52, !noundef !45
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.p, label %bb.n

bb.p:                                             ; preds = %bb.o
  %.not14.i = icmp eq i64 %.sroa.0.0.i, 6
  %.not15.i = icmp eq i64 %i.x, 6
  %or.cond19.i = or i1 %.not14.i, %.not15.i
  br i1 %or.cond19.i, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$15pick_level_hint17ha7ae96543c34a17dE.exit", label %bb.v

bb.q:                                             ; preds = %bb.m
  %.not27.i = icmp eq i64 %i.x, 6                 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 570
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !range !52
  %i.al = trunc nuw i8 %.pre.i to i1
  %.not11.i = icmp eq i64 %.sroa.0.0.i, 6
  %or.cond16.i = and i1 %.not11.i, %i.al
  br i1 %or.cond16.i, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$15pick_level_hint17ha7ae96543c34a17dE.exit", label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i1 = load ptr, ptr %0, align 8
  %i.am = tail call fastcc { i64, ptr } @"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$12downcast_raw17hf3cefa12876716b3E"(ptr %.val.i1, ptr noalias noundef align 8 captures(address) dereferenceable(16) @41)
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.s, label %bb.t

.thread37.i:                                      ; preds = %bb.n
  %.val39.i = load ptr, ptr %0, align 8
  %i.ap = tail call fastcc { i64, ptr } @"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$12downcast_raw17hf3cefa12876716b3E"(ptr %.val39.i, ptr noalias noundef align 8 captures(address) dereferenceable(16) @41)
  %i.aq = extractvalue { i64, ptr } %i.ap, 0
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %.thread42.i, label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %.not27.i, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$15pick_level_hint17ha7ae96543c34a17dE.exit", label %.thread42.i

bb.t:                                             ; preds = %.thread37.i, %bb.r
  %.not293641.i = phi i1 [ false, %.thread37.i ], [ %.not27.i, %bb.r ] ; 2 uses
  %.not29.not.i = xor i1 %.not293641.i, true
  %or.cond18.not.i = and i1 %i.ab, %.not29.not.i
  %.not.i.i = icmp eq i64 %i.x, 5
  %or.cond30.i = and i1 %.not.i.i, %or.cond18.not.i
  br i1 %or.cond30.i, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$15pick_level_hint17ha7ae96543c34a17dE.exit", label %bb.u

.thread42.i:                                      ; preds = %bb.s, %.thread37.i
  %i.as = icmp samesign ult i64 %i.x, 6
  tail call void @llvm.assume(i1 %i.as)
  %.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 7) %.sroa.0.0.i, i64 range(i64 0, 7) %i.x)
  br label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$15pick_level_hint17ha7ae96543c34a17dE.exit"

bb.u:                                             ; preds = %bb.t
  %.not2.i.i.i22.i = icmp ne i64 %.sroa.0.0.i, 6
  %i.at = icmp samesign ult i64 %.sroa.0.0.i, %i.x
  %spec.select.i.i23.i = or i1 %i.at, %.not293641.i
  %.sroa.0.0.i.i.i24.i = and i1 %.not2.i.i.i22.i, %spec.select.i.i23.i
  %.sroa.0.0.i25.i = select i1 %.sroa.0.0.i.i.i24.i, i64 %.sroa.0.0.i, i64 %i.x
  br label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$15pick_level_hint17ha7ae96543c34a17dE.exit"

bb.v:                                             ; preds = %bb.p
  %.sroa.0.0.i26.i = tail call noundef range(i64 0, 6) i64 @llvm.umin.i64(i64 range(i64 0, 6) %.sroa.0.0.i, i64 range(i64 0, 6) %i.x)
  br label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$15pick_level_hint17ha7ae96543c34a17dE.exit"

"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$15pick_level_hint17ha7ae96543c34a17dE.exit": ; preds = %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$14max_level_hint17hc6d8b6d6a5dd9f7aE.exit", %bb.n, %bb.p, %bb.q, %bb.s, %bb.t, %.thread42.i, %bb.u, %bb.v
  %.sroa.07.1.i = phi i64 [ %.sroa.0.0.i25.i, %bb.u ], [ %.sroa.0.0.i, %bb.t ], [ %.sroa.0.0.i, %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$14max_level_hint17hc6d8b6d6a5dd9f7aE.exit" ], [ 6, %bb.n ], [ 6, %bb.q ], [ 6, %bb.s ], [ %.sroa.0.0.i.i, %.thread42.i ], [ 6, %bb.p ], [ %.sroa.0.0.i26.i, %bb.v ]
  ret i64 %.sroa.07.1.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite17h0912f09c9adfbeceE"(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4976)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4976, !noalias !4977, !nonnull !45, !noundef !45 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 10 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4, !noalias !4978 ; 3 uses
  %or.cond3.i.i = icmp ult i32 %i.d, 1073741822
  br i1 %or.cond3.i.i, label %bb.b, label %bb.c, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw nsw i32 %i.d, 1
  %i.f = cmpxchg weak ptr %i.c, i32 %i.d, i32 %i.e acquire monotonic, align 4, !noalias !4978
  %i.g = extractvalue { i32, i1 } %i.f, 1
  br i1 %i.g, label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock14read_contended17hd5223ca2cc4f107aE(ptr noundef nonnull align 4 %i.c), !noalias !4978
  br label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i

_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load atomic i8, ptr %i.h monotonic, align 4, !noalias !4979 ; 2 uses
  %.not.i.not = icmp eq i8 %i.i, 0
  br i1 %.not.i.not, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = invoke noundef zeroext i1 @"_ZN18tracing_subscriber6filter9directive74DirectiveSet$LT$tracing_subscriber..filter..directive..StaticDirective$GT$7enabled17h6e43c503fb765026E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %.sink.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
          to label %.noexc.i unwind label %bb.g, !noalias !4976

.noexc.i:                                         ; preds = %bb.d
  br i1 %i.j, label %bb.e, label %"_ZN91_$LT$core..option..Option$LT$L$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17hf2ad4d43693899e2E.exit.i.i"

bb.e:                                             ; preds = %.noexc.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %.val.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4980, !noalias !4981, !align !55, !noundef !45 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %"_ZN91_$LT$core..option..Option$LT$L$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17hf2ad4d43693899e2E.exit.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %.val1.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4980, !noalias !4981, !nonnull !45, !noundef !45
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !45, !noalias !4982, !nonnull !45
  %i.o = invoke noundef range(i8 0, 3) i8 %i.n(ptr noundef nonnull align 1 %.val.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
          to label %"_ZN91_$LT$core..option..Option$LT$L$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17hf2ad4d43693899e2E.exit.i.i" unwind label %bb.g, !noalias !4976, !inline_history !4975 ; 0 uses

"_ZN91_$LT$core..option..Option$LT$L$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17hf2ad4d43693899e2E.exit.i.i": ; preds = %bb.f, %bb.e, %.noexc.i
  %..i.i.i = phi i8 [ 0, %.noexc.i ], [ 2, %bb.e ], [ 2, %bb.f ]
  %i.p = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN18tracing_subscriber6filter13layer_filters9FILTERING29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hf8a4901ddb8b9d27E")
  invoke void @_ZN18tracing_subscriber6filter13layer_filters11FilterState12add_interest17h933c0672724f6e7bE(ptr noundef nonnull align 8 %i.p, i8 noundef range(i8 0, 3) %..i.i.i)
          to label %"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17hbf640b739553738bE.exit.i" unwind label %bb.g, !noalias !4976

bb.g:                                             ; preds = %"_ZN91_$LT$core..option..Option$LT$L$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17hf2ad4d43693899e2E.exit.i.i", %bb.f, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = atomicrmw sub ptr %i.c, i32 1 release, align 4, !noalias !4976
  %i.s = add i32 %i.r, -1                         ; 2 uses
  %i.t = and i32 %i.s, -1073741825
  %or.cond.not.i.i.i = icmp eq i32 %i.t, -2147483648
  br i1 %or.cond.not.i.i.i, label %bb.h, label %"_ZN4core3ptr890drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$$GT$$GT$17h73579deac0a494eeE.exit22.i", !prof !72

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.c, i32 noundef %i.s)
          to label %"_ZN4core3ptr890drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$$GT$$GT$17h73579deac0a494eeE.exit22.i" unwind label %bb.i, !noalias !4976

"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17hbf640b739553738bE.exit.i": ; preds = %"_ZN91_$LT$core..option..Option$LT$L$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17hf2ad4d43693899e2E.exit.i.i"
  %i.u = atomicrmw sub ptr %i.c, i32 1 release, align 4, !noalias !4976
  %i.v = add i32 %i.u, -1                         ; 2 uses
  %i.w = and i32 %i.v, -1073741825
  %or.cond.not.i.i13.i = icmp eq i32 %i.w, -2147483648
  br i1 %or.cond.not.i.i13.i, label %"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit15.sink.split.i", label %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h6d525684ed11897fE.exit.thread", !prof !72

"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit15.sink.split.i": ; preds = %bb.o, %"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17hbf640b739553738bE.exit.i"
  %.sink.i = phi i32 [ %i.ad, %bb.o ], [ %i.v, %"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17hbf640b739553738bE.exit.i" ]
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.c, i32 noundef %.sink.i), !noalias !4976
  br label %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h6d525684ed11897fE.exit"

bb.i:                                             ; preds = %"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit.sink.split.i20.i", %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !4976
  unreachable

bb.j:                                             ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i
  %i.y = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !4978
  %i.z = and i64 %i.y, 9223372036854775807
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %bb.m unwind label %bb.p, !noalias !4978

bb.l:                                             ; preds = %bb.m, %bb.j
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @38, i64 noundef 13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #43
          to label %bb.n unwind label %bb.p, !noalias !4978

bb.m:                                             ; preds = %bb.k
  br i1 %i.ab, label %bb.l, label %bb.o, !prof !47

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ac = atomicrmw sub ptr %i.c, i32 1 release, align 4, !noalias !4978
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  %i.ae = and i32 %i.ad, -1073741825
  %or.cond.not.i.i.i16.i = icmp eq i32 %i.ae, -2147483648
  br i1 %or.cond.not.i.i.i16.i, label %"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit15.sink.split.i", label %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h6d525684ed11897fE.exit", !prof !72

"_ZN4core3ptr890drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$$GT$$GT$17h73579deac0a494eeE.exit22.i": ; preds = %"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit.sink.split.i20.i", %bb.p, %bb.h, %bb.g
  %.pn31.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.p ], [ %i.q, %bb.h ], [ %lpad.thr_comm.i, %"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit.sink.split.i20.i" ], [ %i.q, %bb.g ]
  resume { ptr, i32 } %.pn31.i

bb.p:                                             ; preds = %bb.l, %bb.k
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = atomicrmw sub ptr %i.c, i32 1 release, align 4, !noalias !4978
  %i.ag = add i32 %i.af, -1                       ; 2 uses
  %i.ah = and i32 %i.ag, -1073741825
  %or.cond.not.i.i.i19.i = icmp eq i32 %i.ah, -2147483648
  br i1 %or.cond.not.i.i.i19.i, label %"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit.sink.split.i20.i", label %"_ZN4core3ptr890drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$$GT$$GT$17h73579deac0a494eeE.exit22.i", !prof !72

"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit.sink.split.i20.i": ; preds = %bb.p
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.c, i32 noundef %i.ag)
          to label %"_ZN4core3ptr890drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$$GT$$GT$17h73579deac0a494eeE.exit22.i" unwind label %bb.i, !noalias !4978

"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h6d525684ed11897fE.exit": ; preds = %"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit15.sink.split.i", %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 553
  %i.aj = load i8, ptr %i.ai, align 1, !range !52, !noundef !45 ; 2 uses
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = tail call noundef range(i8 0, 3) i8 @"_ZN104_$LT$tracing_subscriber..registry..sharded..Registry$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite17h3dd40210358399f9E"(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) ; 2 uses
  %2 = or i8 %i.i, %i.aj
  %brmerge.not = icmp eq i8 %2, 0
  %.mux = select i1 %i.ak, i8 %i.al, i8 1
  br i1 %brmerge.not, label %.thread, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h77a28ec84bfd3ad4E.exit"

"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h6d525684ed11897fE.exit.thread": ; preds = %"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17hbf640b739553738bE.exit.i"
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 553
  %i.an = load i8, ptr %i.am, align 1, !range !52, !noundef !45
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = tail call noundef range(i8 0, 3) i8 @"_ZN104_$LT$tracing_subscriber..registry..sharded..Registry$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite17h3dd40210358399f9E"(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) ; 2 uses
  br i1 %i.ao, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h77a28ec84bfd3ad4E.exit", label %.thread

.thread:                                          ; preds = %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h6d525684ed11897fE.exit", %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h6d525684ed11897fE.exit.thread"
  %i.aq = phi i8 [ %i.al, %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h6d525684ed11897fE.exit" ], [ %i.ap, %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h6d525684ed11897fE.exit.thread" ] ; 2 uses
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.q, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h77a28ec84bfd3ad4E.exit"

bb.q:                                             ; preds = %.thread
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.at = load i8, ptr %i.as, align 2, !range !52, !noundef !45
  br label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h77a28ec84bfd3ad4E.exit"

"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h77a28ec84bfd3ad4E.exit": ; preds = %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h6d525684ed11897fE.exit", %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h6d525684ed11897fE.exit.thread", %.thread, %bb.q
  %.sroa.0.0.i2 = phi i8 [ %i.aq, %.thread ], [ %i.ap, %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h6d525684ed11897fE.exit.thread" ], [ %i.at, %bb.q ], [ %.mux, %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h6d525684ed11897fE.exit" ]
  ret i8 %.sroa.0.0.i2
}

; Function Attrs: nonlazybind uwtable
define internal noundef range(i8 0, 3) i8 @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite17h596cdcbdaa28e96cE"(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4994)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !4994, !noalias !4995, !nonnull !45, !noundef !45 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 10 uses
  %i.c = load atomic i32, ptr %i.b monotonic, align 4, !noalias !4996 ; 3 uses
  %or.cond3.i.i = icmp ult i32 %i.c, 1073741822
  br i1 %or.cond3.i.i, label %bb.b, label %bb.c, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i32 %i.c, 1
  %i.e = cmpxchg weak ptr %i.b, i32 %i.c, i32 %i.d acquire monotonic, align 4, !noalias !4996
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock14read_contended17hd5223ca2cc4f107aE(ptr noundef nonnull align 4 %i.b), !noalias !4996
  br label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i

_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i: ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load atomic i8, ptr %i.g monotonic, align 4, !noalias !4997 ; 2 uses
  %.not.i.not = icmp eq i8 %i.h, 0
  br i1 %.not.i.not, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = invoke noundef zeroext i1 @"_ZN18tracing_subscriber6filter9directive74DirectiveSet$LT$tracing_subscriber..filter..directive..StaticDirective$GT$7enabled17h6e43c503fb765026E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %.sink.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
          to label %.noexc.i unwind label %bb.f, !noalias !4994

.noexc.i:                                         ; preds = %bb.d
  br i1 %i.i, label %bb.e, label %.noexc10.i

bb.e:                                             ; preds = %.noexc.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %.val.i.i = load ptr, ptr %i.j, align 8, !alias.scope !4998, !noalias !4999, !nonnull !45, !noundef !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4998, !noalias !4999, !nonnull !45, !align !48, !noundef !45
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !45, !noalias !5000, !nonnull !45
  %i.n = invoke noundef range(i8 0, 3) i8 %i.m(ptr noundef nonnull align 1 %.val.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
          to label %.noexc10.i unwind label %bb.f, !noalias !4994, !inline_history !4993 ; 0 uses

.noexc10.i:                                       ; preds = %bb.e, %.noexc.i
  %..i.i.i = phi i8 [ 0, %.noexc.i ], [ 2, %bb.e ]
  %i.o = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN18tracing_subscriber6filter13layer_filters9FILTERING29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hf8a4901ddb8b9d27E")
  invoke void @_ZN18tracing_subscriber6filter13layer_filters11FilterState12add_interest17h933c0672724f6e7bE(ptr noundef nonnull align 8 %i.o, i8 noundef range(i8 0, 3) %..i.i.i)
          to label %"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h36f4fd4a8d0b4915E.exit.i" unwind label %bb.f, !noalias !4994

bb.f:                                             ; preds = %.noexc10.i, %bb.e, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = atomicrmw sub ptr %i.b, i32 1 release, align 4, !noalias !4994
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %i.s = and i32 %i.r, -1073741825
  %or.cond.not.i.i.i = icmp eq i32 %i.s, -2147483648
  br i1 %or.cond.not.i.i.i, label %bb.g, label %"_ZN4core3ptr2814drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..33", !prof !72

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.b, i32 noundef %i.r)
          to label %"_ZN4core3ptr2814drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..33" unwind label %bb.h, !noalias !4994

"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h36f4fd4a8d0b4915E.exit.i": ; preds = %.noexc10.i
  %i.t = atomicrmw sub ptr %i.b, i32 1 release, align 4, !noalias !4994
  %i.u = add i32 %i.t, -1                         ; 2 uses
  %i.v = and i32 %i.u, -1073741825
  %or.cond.not.i.i13.i = icmp eq i32 %i.v, -2147483648
  br i1 %or.cond.not.i.i13.i, label %"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..56", label %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h2c07211a7dc4f7e2E.exit.thread", !prof !72

"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..56": ; preds = %bb.n, %"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h36f4fd4a8d0b4915E.exit.i"
  %.sink.i = phi i32 [ %i.ac, %bb.n ], [ %i.u, %"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h36f4fd4a8d0b4915E.exit.i" ]
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.b, i32 noundef %.sink.i), !noalias !4994
  br label %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h2c07211a7dc4f7e2E.exit"

bb.h:                                             ; preds = %"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..30", %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !4994
  unreachable

bb.i:                                             ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i
  %i.x = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !4996
  %i.y = and i64 %i.x, 9223372036854775807
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %bb.l unwind label %bb.o, !noalias !4996

bb.k:                                             ; preds = %bb.l, %bb.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @38, i64 noundef 13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #43
          to label %bb.m unwind label %bb.o, !noalias !4996

bb.l:                                             ; preds = %bb.j
  br i1 %i.aa, label %bb.k, label %bb.n, !prof !47

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ab = atomicrmw sub ptr %i.b, i32 1 release, align 4, !noalias !4996
  %i.ac = add i32 %i.ab, -1                       ; 2 uses
  %i.ad = and i32 %i.ac, -1073741825
  %or.cond.not.i.i.i19.i = icmp eq i32 %i.ad, -2147483648
  br i1 %or.cond.not.i.i.i19.i, label %"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..56", label %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h2c07211a7dc4f7e2E.exit", !prof !72

"_ZN4core3ptr2814drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..33": ; preds = %"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..30", %bb.o, %bb.g, %bb.f
  %.pn46.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.o ], [ %i.p, %bb.g ], [ %lpad.thr_comm.i, %"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..30" ], [ %i.p, %bb.f ]
  resume { ptr, i32 } %.pn46.i

bb.o:                                             ; preds = %bb.k, %bb.j
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = atomicrmw sub ptr %i.b, i32 1 release, align 4, !noalias !4996
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  %i.ag = and i32 %i.af, -1073741825
  %or.cond.not.i.i.i26.i = icmp eq i32 %i.ag, -2147483648
  br i1 %or.cond.not.i.i.i26.i, label %"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..30", label %"_ZN4core3ptr2814drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..33", !prof !72

"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..30": ; preds = %bb.o
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.b, i32 noundef %i.af)
          to label %"_ZN4core3ptr2814drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..33" unwind label %bb.h, !noalias !4996

"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h2c07211a7dc4f7e2E.exit": ; preds = %"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..56", %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 569
  %i.ai = load i8, ptr %i.ah, align 1, !range !52, !noundef !45 ; 2 uses
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = tail call fastcc noundef range(i8 0, 3) i8 @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite17h0912f09c9adfbeceE"(ptr noundef nonnull align 8 %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) ; 2 uses
  %2 = or i8 %i.h, %i.ai
  %brmerge.not = icmp eq i8 %2, 0
  %.mux = select i1 %i.aj, i8 %i.al, i8 1
  br i1 %brmerge.not, label %.thread, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h2d7035818dc17f26E.exit"

"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h2c07211a7dc4f7e2E.exit.thread": ; preds = %"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h36f4fd4a8d0b4915E.exit.i"
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 569
  %i.an = load i8, ptr %i.am, align 1, !range !52, !noundef !45
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = tail call fastcc noundef range(i8 0, 3) i8 @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite17h0912f09c9adfbeceE"(ptr noundef nonnull align 8 %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) ; 2 uses
  br i1 %i.ao, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h2d7035818dc17f26E.exit", label %.thread

.thread:                                          ; preds = %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h2c07211a7dc4f7e2E.exit", %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h2c07211a7dc4f7e2E.exit.thread"
  %i.ar = phi i8 [ %i.al, %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h2c07211a7dc4f7e2E.exit" ], [ %i.aq, %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h2c07211a7dc4f7e2E.exit.thread" ] ; 2 uses
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.p, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h2d7035818dc17f26E.exit"

bb.p:                                             ; preds = %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 570
  %i.au = load i8, ptr %i.at, align 2, !range !52, !noundef !45
  br label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h2d7035818dc17f26E.exit"

"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h2d7035818dc17f26E.exit": ; preds = %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h2c07211a7dc4f7e2E.exit", %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h2c07211a7dc4f7e2E.exit.thread", %.thread, %bb.p
  %.sroa.0.0.i2 = phi i8 [ %i.ar, %.thread ], [ %i.aq, %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h2c07211a7dc4f7e2E.exit.thread" ], [ %i.au, %bb.p ], [ %.mux, %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$17register_callsite17h2c07211a7dc4f7e2E.exit" ]
  ret i8 %.sroa.0.0.i2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$19record_follows_from17ha0a6a13bbf6b24b2E"(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5018)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !5018, !noalias !5019, !nonnull !45, !noundef !45 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 10 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4, !noalias !5020 ; 3 uses
  %or.cond3.i.i = icmp ult i32 %i.d, 1073741822
  br i1 %or.cond3.i.i, label %bb.b, label %bb.c, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw nsw i32 %i.d, 1
  %i.f = cmpxchg weak ptr %i.c, i32 %i.d, i32 %i.e acquire monotonic, align 4, !noalias !5020
  %i.g = extractvalue { i32, i1 } %i.f, 1
  br i1 %i.g, label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock14read_contended17hd5223ca2cc4f107aE(ptr noundef nonnull align 4 %i.c), !noalias !5020
  br label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i

_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load atomic i8, ptr %i.h monotonic, align 4, !noalias !5021
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5022)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !5022, !noalias !5023, !noundef !45 ; 3 uses
  %i.l = invoke fastcc noundef i8 @"_ZN18tracing_subscriber5layer7context16Context$LT$S$GT$16is_enabled_inner17hb352e279cb64f60eE"(ptr nonnull align 8 %0, i64 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.k)
          to label %.noexc.i unwind label %bb.h, !noalias !5024

.noexc.i:                                         ; preds = %bb.d
  %i.m = icmp eq i8 %i.l, 1
  br i1 %i.m, label %bb.e, label %"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$15on_follows_from17h3ef6825b0d8b3b3aE.exit.i"

bb.e:                                             ; preds = %.noexc.i
  %i.n = invoke fastcc noundef i8 @"_ZN18tracing_subscriber5layer7context16Context$LT$S$GT$16is_enabled_inner17hb352e279cb64f60eE"(ptr nonnull align 8 %0, i64 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i64 noundef %i.k)
          to label %.noexc9.i unwind label %bb.h, !noalias !5018

.noexc9.i:                                        ; preds = %bb.e
  %i.o = icmp eq i8 %i.n, 1
  br i1 %i.o, label %bb.f, label %"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$15on_follows_from17h3ef6825b0d8b3b3aE.exit.i"

bb.f:                                             ; preds = %.noexc9.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %.val9.i.i = load ptr, ptr %i.p, align 8, !alias.scope !5022, !noalias !5025, !align !55, !noundef !45 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val9.i.i, null
  br i1 %.not.i.i.i, label %"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$15on_follows_from17h3ef6825b0d8b3b3aE.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %.val10.i.i = load ptr, ptr %i.q, align 8, !alias.scope !5022, !noalias !5025, !nonnull !45, !noundef !45
  %i.r = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !45, !noalias !5026, !nonnull !45
  invoke void %i.s(ptr noundef nonnull align 1 %.val9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef nonnull align 8 %0, i64 noundef %i.k)
          to label %"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$15on_follows_from17h3ef6825b0d8b3b3aE.exit.i" unwind label %bb.h, !noalias !5018, !inline_history !5017

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = atomicrmw sub ptr %i.c, i32 1 release, align 4, !noalias !5018
  %i.v = add i32 %i.u, -1                         ; 2 uses
  %i.w = and i32 %i.v, -1073741825
  %or.cond.not.i.i.i = icmp eq i32 %i.w, -2147483648
  br i1 %or.cond.not.i.i.i, label %bb.i, label %"_ZN4core3ptr890drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$$GT$$GT$17h73579deac0a494eeE.exit21.i", !prof !72

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.c, i32 noundef %i.v)
          to label %"_ZN4core3ptr890drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$$GT$$GT$17h73579deac0a494eeE.exit21.i" unwind label %bb.j, !noalias !5018

"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$15on_follows_from17h3ef6825b0d8b3b3aE.exit.i": ; preds = %bb.g, %bb.f, %.noexc9.i, %.noexc.i
  %i.x = atomicrmw sub ptr %i.c, i32 1 release, align 4, !noalias !5018
  %i.y = add i32 %i.x, -1                         ; 2 uses
  %i.z = and i32 %i.y, -1073741825
  %or.cond.not.i.i12.i = icmp eq i32 %i.z, -2147483648
  br i1 %or.cond.not.i.i12.i, label %"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit14.sink.split.i", label %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$15on_follows_from17h0da6b94484a93befE.exit", !prof !72

"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit14.sink.split.i": ; preds = %bb.p, %"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$15on_follows_from17h3ef6825b0d8b3b3aE.exit.i"
  %.sink.i = phi i32 [ %i.ag, %bb.p ], [ %i.y, %"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$15on_follows_from17h3ef6825b0d8b3b3aE.exit.i" ]
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.c, i32 noundef %.sink.i), !noalias !5018
  br label %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$15on_follows_from17h0da6b94484a93befE.exit"

bb.j:                                             ; preds = %"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit.sink.split.i19.i", %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !5018
  unreachable

bb.k:                                             ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i
  %i.ab = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !5020
  %i.ac = and i64 %i.ab, 9223372036854775807
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %bb.n unwind label %bb.q, !noalias !5020

bb.m:                                             ; preds = %bb.n, %bb.k
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @38, i64 noundef 13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #43
          to label %bb.o unwind label %bb.q, !noalias !5020

bb.n:                                             ; preds = %bb.l
  br i1 %i.ae, label %bb.m, label %bb.p, !prof !47

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.af = atomicrmw sub ptr %i.c, i32 1 release, align 4, !noalias !5020
  %i.ag = add i32 %i.af, -1                       ; 2 uses
  %i.ah = and i32 %i.ag, -1073741825
  %or.cond.not.i.i.i15.i = icmp eq i32 %i.ah, -2147483648
  br i1 %or.cond.not.i.i.i15.i, label %"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit14.sink.split.i", label %"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$15on_follows_from17h0da6b94484a93befE.exit", !prof !72

"_ZN4core3ptr890drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$$GT$$GT$17h73579deac0a494eeE.exit21.i": ; preds = %"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit.sink.split.i19.i", %bb.q, %bb.i, %bb.h
  %.pn30.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.q ], [ %i.t, %bb.i ], [ %lpad.thr_comm.i, %"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit.sink.split.i19.i" ], [ %i.t, %bb.h ]
  resume { ptr, i32 } %.pn30.i

bb.q:                                             ; preds = %bb.m, %bb.l
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = atomicrmw sub ptr %i.c, i32 1 release, align 4, !noalias !5020
  %i.aj = add i32 %i.ai, -1                       ; 2 uses
  %i.ak = and i32 %i.aj, -1073741825
  %or.cond.not.i.i.i18.i = icmp eq i32 %i.ak, -2147483648
  br i1 %or.cond.not.i.i.i18.i, label %"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit.sink.split.i19.i", label %"_ZN4core3ptr890drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$$GT$$GT$17h73579deac0a494eeE.exit21.i", !prof !72

"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit.sink.split.i19.i": ; preds = %bb.q
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.c, i32 noundef %i.aj)
          to label %"_ZN4core3ptr890drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$$GT$$GT$17h73579deac0a494eeE.exit21.i" unwind label %bb.j, !noalias !5020

"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$15on_follows_from17h0da6b94484a93befE.exit": ; preds = %"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$15on_follows_from17h3ef6825b0d8b3b3aE.exit.i", %"_ZN4core3ptr421drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17h0db54a8eadde1c86E.exit14.sink.split.i", %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$19record_follows_from17hcbb67d3b97359651E"(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call fastcc void @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$19record_follows_from17ha0a6a13bbf6b24b2E"(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5041)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !5041, !noalias !5042, !nonnull !45, !noundef !45 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 10 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4, !noalias !5043 ; 3 uses
  %or.cond3.i.i = icmp ult i32 %i.d, 1073741822
  br i1 %or.cond3.i.i, label %bb.b, label %bb.c, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw nsw i32 %i.d, 1
  %i.f = cmpxchg weak ptr %i.c, i32 %i.d, i32 %i.e acquire monotonic, align 4, !noalias !5043
  %i.g = extractvalue { i32, i1 } %i.f, 1
  br i1 %i.g, label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock14read_contended17hd5223ca2cc4f107aE(ptr noundef nonnull align 4 %i.c), !noalias !5043
  br label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i

_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load atomic i8, ptr %i.h monotonic, align 4, !noalias !5044
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5045)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !5045, !noalias !5046, !noundef !45 ; 3 uses
  %i.l = invoke fastcc noundef i8 @"_ZN18tracing_subscriber5layer7context16Context$LT$S$GT$16is_enabled_inner17h22ed78b7a4e6b331E"(ptr nonnull align 8 %i.a, i64 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.k)
          to label %.noexc.i unwind label %bb.g, !noalias !5047

.noexc.i:                                         ; preds = %bb.d
  %i.m = icmp eq i8 %i.l, 1
end_hunk_0
