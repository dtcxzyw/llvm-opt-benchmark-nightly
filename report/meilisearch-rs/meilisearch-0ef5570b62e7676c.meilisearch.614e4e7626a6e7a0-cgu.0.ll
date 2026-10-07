Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@"_ZN108_$LT$tracing_subscriber..reload..Layer$LT$L$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$12downcast_raw17hf3cefa12876716b3E":bb.a
bb.i:                                             ; preds = %bb.h
  call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.d, i32 noundef %i.y)
  br label %"_ZN4core3ptr2814drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Op"

bb.j:                                             ; preds = %"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..19", %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.k:                                             ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit
  %i.ab = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.ac = and i64 %i.ab, 9223372036854775807
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %bb.n unwind label %bb.p

bb.m:                                             ; preds = %bb.k, %bb.n
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @38, i64 noundef 13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #43
          to label %bb.o unwind label %bb.p

bb.n:                                             ; preds = %bb.l
  br i1 %i.ae, label %bb.m, label %"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..12", !prof !47

bb.o:                                             ; preds = %bb.m
  unreachable

"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..12": ; preds = %bb.n
  %i.af = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.ag = add i32 %i.af, -1                       ; 2 uses
  %i.ah = and i32 %i.ag, -1073741825
  %or.cond.not.i.i.i = icmp eq i32 %i.ah, -2147483648
  br i1 %or.cond.not.i.i.i, label %"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..B2", label %"_ZN4core3ptr2814drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Op", !prof !72

"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..B2": ; preds = %"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..12"
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.d, i32 noundef %i.ag)
  br label %"_ZN4core3ptr2814drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Op"

"_ZN4core3ptr2814drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..22": ; preds = %bb.g, %bb.f, %bb.p, %"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..19"
  %.pn11 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.p ], [ %i.r, %bb.g ], [ %lpad.thr_comm, %"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..19" ], [ %i.r, %bb.f ]
  resume { ptr, i32 } %.pn11

bb.p:                                             ; preds = %bb.l, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.aj = add i32 %i.ai, -1                       ; 2 uses
  %i.ak = and i32 %i.aj, -1073741825
  %or.cond.not.i.i.i15 = icmp eq i32 %i.ak, -2147483648
  br i1 %or.cond.not.i.i.i15, label %"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..19", label %"_ZN4core3ptr2814drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..22", !prof !72

"_ZN4core3ptr1383drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..19": ; preds = %bb.p
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.d, i32 noundef %i.aj)
          to label %"_ZN4core3ptr2814drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..22" unwind label %bb.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN10actix_cors7builder25intersperse_header_values17h6706978bf2b216e7E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !922, !noalias !923, !nonnull !45, !noundef !45 ; 3 uses
  %.val13.i.i = load <16 x i8>, ptr %i.d, align 16, !noalias !924
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !922, !noalias !923, !noundef !45
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !925
  %i.g = tail call noundef ptr @mi_malloc_aligned(i64 noundef 64, i64 noundef range(i64 1, 9) 1) #38, !noalias !925 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 64, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #43
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit": ; preds = %bb.a
  %i.i = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.j = bitcast <16 x i1> %i.i to i16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  br label %.outer.i.i.i

.outer.i.i.i:                                     ; preds = %bb.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit"
  %.sroa.818.0 = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit" ], [ %i.au, %bb.i ] ; 10 uses
  %.sroa.6.0 = phi ptr [ %i.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit" ], [ %.sroa.6.0.copyload17, %bb.i ] ; 9 uses
  %.sroa.014.0 = phi i64 [ 64, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit" ], [ %.sroa.014.0.copyload15, %bb.i ] ; 4 uses
  %.sroa.3.0.i.i = phi ptr [ %i.k, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit" ], [ %.sroa.3.1.i.i, %bb.i ] ; 2 uses
  %.sroa.52.0.i.i = phi i16 [ %i.j, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit" ], [ %i.s, %bb.i ] ; 2 uses
  %.lcssa2428.i.i.i = phi ptr [ %i.d, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit" ], [ %.lcssa2427.i.i.i, %bb.i ] ; 2 uses
  %.sroa.0.0.ph.i.i.i = phi i64 [ %i.f, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit" ], [ %i.av, %bb.i ] ; 2 uses
  %.not21.i.i.i = icmp eq i16 %.sroa.52.0.i.i, 0
  br i1 %.not21.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.outer.i.i.i
  %i.o = icmp eq i64 %.sroa.0.0.ph.i.i.i, 0
  br i1 %i.o, label %"_ZN92_$LT$hashbrown..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbb3d0ef3a6e01b02E.exit", label %.lr.ph.split.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.split.i.i.i, %.outer.i.i.i
  %.sroa.3.1.i.i = phi ptr [ %.sroa.3.0.i.i, %.outer.i.i.i ], [ %i.ao, %.lr.ph.split.i.i.i ]
  %.lcssa2427.i.i.i = phi ptr [ %.lcssa2428.i.i.i, %.outer.i.i.i ], [ %i.an, %.lr.ph.split.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.52.0.i.i, %.outer.i.i.i ], [ %.cast.i.i.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [32 x i8], ptr %.lcssa2427.i.i.i, i64 %i.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !926
  store i64 %.sroa.014.0, ptr %i.b, align 8, !noalias !927
  store ptr %.sroa.6.0, ptr %i.n, align 8, !noalias !927
  store i64 %.sroa.818.0, ptr %i.m, align 8, !noalias !927
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32 ; 2 uses
  store ptr %i.v, ptr %i.l, align 8, !noalias !926
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %i.w = sub i64 %.sroa.014.0, %.sroa.818.0
  %i.x = icmp ult i64 %i.w, 2
  br i1 %i.x, label %bb.c, label %bb.f, !prof !47

bb.c:                                             ; preds = %._crit_edge.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hef594eaabfc18d82E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.sroa.818.0, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.d, !noalias !931

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !932, !noalias !931
  %.pre = load ptr, ptr %i.n, align 8, !alias.scope !932, !noalias !931
  br label %bb.f

bb.d:                                             ; preds = %bb.h, %bb.f, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !934, !noalias !931
  %i.z = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.z, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !934, !noalias !931, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i.i.i.i.i.i.i) #38, !noalias !935
  br label %common.resume

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i, %._crit_edge.i.i.i
  %i.aa = phi ptr [ %.sroa.6.0, %._crit_edge.i.i.i ], [ %.pre, %.noexc.i.i.i.i.i.i ] ; 2 uses
  %i.ab = phi i64 [ %.sroa.818.0, %._crit_edge.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i ] ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  store i16 8236, ptr %i.ad, align 1, !noalias !936
  %i.ae = add nuw i64 %i.ab, 2                    ; 4 uses
  store i64 %i.ae, ptr %i.m, align 8, !alias.scope !932, !noalias !931
  %i.af = invoke { ptr, i64 } @"_ZN82_$LT$http..header..name..HeaderName$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17hfe351229cc62b671E"(ptr noundef nonnull align 8 %i.v)
          to label %bb.g unwind label %bb.d, !noalias !937 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ag = extractvalue { ptr, i64 } %i.af, 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.ah = load i64, ptr %i.b, align 8, !range !46, !alias.scope !940, !noalias !931, !noundef !45 ; 2 uses
  %i.ai = sub i64 %i.ah, %i.ae
  %i.aj = icmp ugt i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.h, label %._crit_edge, !prof !47

._crit_edge:                                      ; preds = %bb.g
  %.sroa.6.0.copyload17.pre = load ptr, ptr %i.n, align 8, !noalias !927
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hef594eaabfc18d82E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ae, i64 noundef %i.ag, i64 noundef 1, i64 noundef 1)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.d, !noalias !931

.noexc2.i.i.i.i.i.i:                              ; preds = %bb.h
  %.pre.i.i1.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !941, !noalias !931
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !941, !noalias !931 ; 2 uses
  %.sroa.014.0.copyload15.pre = load i64, ptr %i.b, align 8, !noalias !927
  br label %bb.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.lr.ph.split.i.i.i
  %i.ak = phi ptr [ %i.ao, %.lr.ph.split.i.i.i ], [ %.sroa.3.0.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.al = phi ptr [ %i.an, %.lr.ph.split.i.i.i ], [ %.lcssa2428.i.i.i, %.lr.ph.i.i.i ]
  %.val1317.i.i.i = load <16 x i8>, ptr %i.ak, align 16, !noalias !942
  %i.am = icmp sgt <16 x i8> %.val1317.i.i.i, splat (i8 -1)
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -512 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.am to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.split.i.i.i, label %._crit_edge.i.i.i

bb.i:                                             ; preds = %._crit_edge, %.noexc2.i.i.i.i.i.i
  %.sroa.6.0.copyload17 = phi ptr [ %.sroa.6.0.copyload17.pre, %._crit_edge ], [ %.pre.i.i.i.i.i.i, %.noexc2.i.i.i.i.i.i ]
  %.sroa.014.0.copyload15 = phi i64 [ %i.ah, %._crit_edge ], [ %.sroa.014.0.copyload15.pre, %.noexc2.i.i.i.i.i.i ]
  %i.ap = phi ptr [ %i.aa, %._crit_edge ], [ %.pre.i.i.i.i.i.i, %.noexc2.i.i.i.i.i.i ]
  %i.aq = phi i64 [ %i.ae, %._crit_edge ], [ %.pre.i.i1.i.i.i.i.i.i, %.noexc2.i.i.i.i.i.i ] ; 3 uses
  %i.ar = extractvalue { ptr, i64 } %i.af, 0
  %i.as = icmp sgt i64 %i.aq, -1
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %i.ar, i64 %i.ag, i1 false), !noalias !943
  %i.au = add i64 %i.aq, %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !926
  %i.av = add i64 %.sroa.0.0.ph.i.i.i, -1
  br label %.outer.i.i.i

common.resume:                                    ; preds = %bb.k, %bb.l, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.y, %bb.e ], [ %i.bb, %bb.l ], [ %i.bb, %bb.k ]
  resume { ptr, i32 } %common.resume.op

"_ZN92_$LT$hashbrown..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbb3d0ef3a6e01b02E.exit": ; preds = %.lr.ph.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  %.not.i = icmp ugt i64 %.sroa.818.0, 2
  br i1 %.not.i, label %bb.j, label %.split.i

.split.i:                                         ; preds = %"_ZN92_$LT$hashbrown..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbb3d0ef3a6e01b02E.exit"
  %i.aw = icmp eq i64 %.sroa.818.0, 2
  br i1 %i.aw, label %.thread31, label %bb.q

.thread31:                                        ; preds = %.split.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 2
  br label %._crit_edge.i

bb.j:                                             ; preds = %"_ZN92_$LT$hashbrown..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbb3d0ef3a6e01b02E.exit"
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 2 ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !944, !noundef !45
  %i.ba = icmp sgt i8 %i.az, -65
  br i1 %i.ba, label %bb.m, label %bb.q

bb.k:                                             ; preds = %._crit_edge.i, %bb.s, %bb.q
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = icmp eq i64 %.sroa.014.0, 0
  br i1 %i.bc, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @mi_free(ptr noundef nonnull %.sroa.6.0) #38, !noalias !945
  br label %common.resume

bb.m:                                             ; preds = %bb.j
  %i.bd = add i64 %.sroa.818.0, -2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  %i.be = getelementptr i8, ptr %.sroa.6.0, i64 %.sroa.818.0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.p
  %.sroa.04.08.i = phi ptr [ %i.bf, %bb.p ], [ %i.ay, %bb.m ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 1 ; 2 uses
  %i.bg = load i8, ptr %.sroa.04.08.i, align 1, !alias.scope !947, !noalias !946, !noundef !45 ; 3 uses
  %i.bh = icmp ugt i8 %i.bg, 31
  br i1 %i.bh, label %bb.o, label %bb.n

._crit_edge.i:                                    ; preds = %bb.p, %.thread31
  %i.bi = phi ptr [ %i.ax, %.thread31 ], [ %i.ay, %bb.p ]
  %i.bj = phi i64 [ 0, %.thread31 ], [ %i.bd, %bb.p ]
  invoke void @_ZN5bytes5bytes5Bytes15copy_from_slice17hadf080abce5a0c12E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bi, i64 noundef %i.bj)
          to label %bb.t unwind label %bb.k

bb.n:                                             ; preds = %.lr.ph.i
  %i.bk = icmp eq i8 %i.bg, 9
  br i1 %i.bk, label %bb.p, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %cond.i = icmp eq i8 %i.bg, 127
  br i1 %cond.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bl = icmp eq ptr %i.bf, %i.be
  br i1 %i.bl, label %._crit_edge.i, label %.lr.ph.i

bb.q:                                             ; preds = %bb.j, %.split.i
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.6.0, i64 noundef %.sroa.818.0, i64 noundef 2, i64 noundef %.sroa.818.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #43
          to label %bb.r unwind label %bb.k

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.n, %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 2, ptr %i.bm, align 8, !alias.scope !946, !noalias !947
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1072, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1082, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #43
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %._crit_edge.i
  %.sroa.4.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx.i8, align 8, !alias.scope !946, !noalias !947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !alias.scope !948, !noalias !949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bn = icmp eq i64 %.sroa.014.0, 0
  br i1 %i.bn, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit12", label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @mi_free(ptr noundef nonnull %.sroa.6.0) #38, !noalias !950
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit12"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit12": ; preds = %bb.t, %bb.u
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN10actix_http12http_message11HttpMessage7chunked17hed6893475935e281E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %.24.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [32 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.24.val, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @83, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  %i.e = invoke fastcc noundef align 8 ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17hee18f205043bf0faE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !998, !noalias !999, !noundef !45 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h35eb444e6acc7001E.exit.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !1004, !nonnull !45, !noundef !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1005, !noalias !999, !noundef !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1005, !noalias !999, !noundef !45
  invoke void %i.j(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.m, i64 noundef %i.o)
          to label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h35eb444e6acc7001E.exit.i.i" unwind label %bb.f, !noalias !999, !inline_history !0

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  %i.p = load ptr, ptr %i.b, align 8, !alias.scope !1008, !noalias !999, !noundef !45 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN10actix_http6header3map9HeaderMap9get_value17he72a6e54d72df355E.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1013, !nonnull !45, !noundef !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1014, !noalias !999, !noundef !45
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !1014, !noalias !999, !noundef !45
  call void %i.s(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %i.v, i64 noundef %i.x), !noalias !999, !inline_history !981
  br label %_ZN10actix_http6header3map9HeaderMap9get_value17he72a6e54d72df355E.exit.i

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !999
  unreachable

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h35eb444e6acc7001E.exit.i.i": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN10actix_http6header3map9HeaderMap9get_value17he72a6e54d72df355E.exit.i: ; preds = %bb.e, %bb.d
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN10actix_http6header3map9HeaderMap9get_value17he72a6e54d72df355E.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.aa = call noundef nonnull align 8 ptr @_ZN10actix_http6header3map5Value5first17h93c1a60b16efcf56E(ptr noundef nonnull align 8 %i.z), !noalias !1015 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val8 = load ptr, ptr %i.ab, align 8, !nonnull !45, !noundef !45 ; 3 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val9 = load i64, ptr %i.ac, align 8, !noundef !45 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val8, i64 %.val9
  %i.ae = icmp samesign eq i64 %.val9, 0
  br i1 %i.ae, label %.loopexit, label %.lr.ph.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i, i64 1 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.ad
  br i1 %i.ag, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.sroa.03.01.i = phi ptr [ %i.af, %bb.h ], [ %.val8, %bb.g ] ; 2 uses
  %i.ah = load i8, ptr %.sroa.03.01.i, align 1, !noundef !45 ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h8cbda1919bca6ec4E":bb.a
  %.sroa.011.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.011.0.i, %bb.d ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.0.0.i11, %bb.d ] ; 3 uses
  %i.r = icmp ult i64 %.sroa.0.1.i, %.sroa.0.0.i
  br i1 %i.r, label %bb.g, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !39561, !noundef !45
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.0.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.011.1.i
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit: ; preds = %bb.f, %bb.g
  %.sroa.011.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.011.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.011.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !45
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub i64 %2, %.sroa.0.0                  ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted21 = load i64, ptr %i.aj, align 8
  %.promoted22 = load i64, ptr %i.ak, align 8, !alias.scope !39562
  %.promoted24 = load i64, ptr %i.al, align 8, !alias.scope !39562
  br label %bb.q

bb.i:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !45
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !39563, !noundef !45
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !39563, !noundef !45 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !39563, !noundef !45
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !39563
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !39563
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !39563
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !39562
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !39562
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.04.0.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.lcssa
  %.sroa.014.0.copyload.i18 = load i32, ptr %i.bl, align 1, !alias.scope !39564
  %i.bm = zext i32 %.sroa.014.0.copyload.i18 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.011.0.i12 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.sroa.0.0.i13 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %i.bn = or disjoint i64 %.sroa.0.0.i13, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.04.0.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.0.0.i13
  %.sroa.015.0.copyload.i17 = load i16, ptr %i.bq, align 1, !alias.scope !39564
  %i.br = zext i16 %.sroa.015.0.copyload.i17 to i64
  %i.bs = shl nuw nsw i64 %.sroa.0.0.i13, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.011.0.i12
  %i.bv = or disjoint i64 %.sroa.0.0.i13, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.011.1.i14 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.011.0.i12, %bb.m ] ; 2 uses
  %.sroa.0.1.i15 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.0.0.i13, %bb.m ] ; 3 uses
  %i.bw = icmp samesign ult i64 %.sroa.0.1.i15, %i.ag
  br i1 %i.bw, label %bb.p, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.0.1.i15, %.sroa.04.0.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !39564, !noundef !45
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.0.1.i15, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.011.1.i14
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19: ; preds = %bb.o, %bb.p
  %.sroa.011.2.i16 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.011.1.i14, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.011.2.i16, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted24, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted21, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.04.020 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.020
  %.sroa.08.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.08.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.08.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.04.020, 8            ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72d9b7697f38631E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !39574, !noalias !39575, !noundef !45 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.split5

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.split, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit"

.split5:                                          ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.g, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4", label %.split6

.split:                                           ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4", label %.split6

"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit": ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.i, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4", label %.split6

.split6:                                          ; preds = %.split5, %.split, %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit"
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.j, align 8
  %.val = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !45, !noalias !39576, !nonnull !45
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2032, i64 noundef 2), !noalias !39576, !inline_history !39570
  br i1 %i.m, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4", label %bb.c

bb.c:                                             ; preds = %.split6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.a, align 8, !alias.scope !39577, !noalias !39578, !noundef !45 ; 2 uses
  %i.p = and i32 %i.o, 33554432
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = and i32 %i.o, 67108864
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.t = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4"

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4"

bb.g:                                             ; preds = %bb.d
  %i.v = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4"

"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4": ; preds = %bb.g, %bb.f, %bb.e, %.split6, %.split5, %.split, %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit"
  %.sroa.0.0 = phi i1 [ %i.t, %bb.e ], [ true, %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit" ], [ true, %.split6 ], [ true, %.split ], [ true, %.split5 ], [ %i.u, %bb.f ], [ %i.v, %bb.g ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h15ee634df99e6a27E"(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !45, !nonnull !45
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h2293b590ed749aaaE"(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !45, !nonnull !45
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h3f09ee0973c53766E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !45, !nonnull !45
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef align 1 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h67aada7327e2efb1E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !45, !nonnull !45
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef align 1 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17hdb4f672457e046a6E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.021 = alloca [96 x i8], align 8          ; 3 uses
  %i.e = alloca [72 x i8], align 8                ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39673)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !39673, !noalias !39672, !noundef !45 ; 8 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !alias.scope !39672, !noalias !39673 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !39672, !noalias !39673 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @86, i64 32, i1 false), !noalias !39673
  %i.k = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.k, label %"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h3ac5d4eae2d40ac0E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i: ; preds = %bb.b
  %or.cond.i.i.i = icmp slt i64 %.sroa.4.0.copyload.i, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i)
  %i.l = shl i64 %.sroa.4.0.copyload.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %.not154 = and i64 %i.l, -16
  %i.m = xor i64 %.not154, -16
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %i.m
  tail call void @mi_free(ptr noundef nonnull %i.n) #38, !noalias !39674
  br label %"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h3ac5d4eae2d40ac0E.exit"

bb.c:                                             ; preds = %bb.i, %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.x, 0
  br i1 %i.p, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.f, align 8, !alias.scope !39672, !noalias !39673, !nonnull !45, !noundef !45
  %i.r = add i64 %i.x, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 -1, i64 %i.r, i1 false), !noalias !39674
  %i.s = icmp ult i64 %i.x, 8
  %i.t = add i64 %i.x, 1
  %i.u = lshr i64 %i.t, 3
  %i.v = mul nuw i64 %i.u, 7
  %spec.select.i.i.i.i = select i1 %i.s, i64 %i.x, i64 %i.v
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !39672, !noalias !39673, !noundef !45 ; 9 uses
  %.not.i = icmp eq i64 %i.x, %i.i
  br i1 %.not.i, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.f, align 8, !alias.scope !39675, !noalias !39676
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.y = add i64 %i.i, 1                          ; 3 uses
  %or.cond.i.i4.i = icmp ugt i64 %i.y, 2305843009213693950
  br i1 %or.cond.i.i4.i, label %bb.h, label %bb.g, !prof !87

bb.g:                                             ; preds = %bb.f
  %i.z = shl nuw i64 %i.y, 3
  %i.aa = add nuw i64 %i.z, 8
  %i.ab = and i64 %i.aa, -16                      ; 3 uses
  %i.ac = add nsw i64 %i.i, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  %i.af = icmp ugt i64 %i.ad, 9223372036854775792
  %or.cond.i.i = or i1 %i.ae, %i.af
  br i1 %or.cond.i.i, label %bb.h, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i5.i, !prof !92

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i5.i: ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39677
  %i.ag = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #38, !noalias !39677 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h426e5247b99c5843E(i1 noundef zeroext true)
          to label %.noexc.i unwind label %bb.c, !noalias !39674 ; 2 uses

.noexc.i:                                         ; preds = %bb.h
  %i.aj = extractvalue { i64, i64 } %i.ai, 0
  %i.ak = extractvalue { i64, i64 } %i.ai, 1
  br label %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17h3b9301694f7edaa8E.exit.i

bb.i:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i5.i
  %i.al = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hbda1b32cb3f89ae5E(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ad)
          to label %.noexc6.i unwind label %bb.c, !noalias !39674 ; 2 uses

.noexc6.i:                                        ; preds = %bb.i
  %i.am = extractvalue { i64, i64 } %i.al, 0
  %i.an = extractvalue { i64, i64 } %i.al, 1
  br label %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17h3b9301694f7edaa8E.exit.i

bb.j:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i5.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ab
  %i.ap = icmp ult i64 %i.i, 8
  %i.aq = lshr i64 %i.y, 3
  %i.ar = mul nuw nsw i64 %i.aq, 7
  %.sroa.09.0.i.i = select i1 %i.ap, i64 %i.i, i64 %i.ar
  br label %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17h3b9301694f7edaa8E.exit.i

bb.k:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17h3b9301694f7edaa8E.exit.i, %._crit_edge.i
  %i.as = phi i64 [ %i.i, %._crit_edge.i ], [ %.sroa.412.0.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i ], [ %.sroa.412.0.i, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17h3b9301694f7edaa8E.exit.i ]
  %i.at = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.sroa.011.0.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i ], [ %.sroa.011.0.i, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17h3b9301694f7edaa8E.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39679)
  %i.au = load ptr, ptr %i.g, align 8, !alias.scope !39676, !noalias !39675, !nonnull !45, !noundef !45 ; 5 uses
end_hunk_1
