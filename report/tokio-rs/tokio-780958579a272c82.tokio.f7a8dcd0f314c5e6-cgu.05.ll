Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.05?download=true
inline.NumInlined: 431
inline.NumDeleted: 241
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs2_NtNtCslghKHtsL3a4_5tokio4task5localNtB5_8LocalSet4tick:bb.a
  %exitcond = icmp eq i64 %i.k, 61
  br i1 %exitcond, label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4task5localNtB5_8LocalSet9next_task.exit.thread, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define { ptr, i1 } @_RNvMs2_NtNtCslghKHtsL3a4_5tokio4task5localNtB5_8LocalSet5enter(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !5, !noundef !4
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.thread.i.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.i.i, !prof !6

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.i.i: ; preds = %bb.a
  %i.e = tail call noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio4task5local9LocalDataE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.a) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.thread.i.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.i.i, %bb.a
  %.sroa.0.0.i.i2.i.i = phi ptr [ %i.e, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.i = icmp ne i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.j, ptr %i.g, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio4task5local9LocalDataE4withNCNvMs2_BW_NtBW_8LocalSet5enter0NtBW_15LocalEnterGuardEB10_.exit, !prof !8

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.thread.i.i
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20
  unreachable

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio4task5local9LocalDataE4withNCNvMs2_BW_NtBW_8LocalSet5enter0NtBW_15LocalEnterGuardEB10_.exit: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.thread.i.i
  %i.l = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.m = load ptr, ptr %.sroa.0.0.i.i2.i.i, align 8, !noundef !4
  store ptr %i.l, ptr %.sroa.0.0.i.i2.i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 8 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !range !9, !noundef !4
  store i8 1, ptr %i.n, align 8
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = insertvalue { ptr, i1 } poison, ptr %i.m, 0
  %i.r = insertvalue { ptr, i1 } %i.q, i1 %i.p, 1
  ret { ptr, i1 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB5_16CachedParkThread12park_timeout(ptr noalias nofree noundef nonnull readnone captures(none) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noalias !439, !noundef !4
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE6unwrapCslghKHtsL3a4_5tokio.exit, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.i, !prof !6

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.i: ; preds = %bb.a
  %i.f = tail call noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime4park10ParkThreaduE16get_or_init_slowNvNvB1g_14CURRENT_PARKER27___rust_std_internal_init_fnEB1k_(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef align 8 dereferenceable_or_null(8) null) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE6unwrapCslghKHtsL3a4_5tokio.exit, !prof !11

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.i
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #20
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE6unwrapCslghKHtsL3a4_5tokio.exit: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.i, %bb.a
  %.sroa.0.0.i.i.i2.i = phi ptr [ %i.f, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.i ], [ %i.b, %bb.a ]
  %.val6.i = load ptr, ptr %.sroa.0.0.i.i.i2.i, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  tail call fastcc void @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB4_5Inner12park_timeout(ptr noundef nonnull align 8 %i.h, i64 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias nofree noundef nonnull readnone captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noalias !446, !noundef !4
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE6unwrapCslghKHtsL3a4_5tokio.exit, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.i, !prof !6

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.i: ; preds = %bb.a
  %i.f = tail call noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime4park10ParkThreaduE16get_or_init_slowNvNvB1g_14CURRENT_PARKER27___rust_std_internal_init_fnEB1k_(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef align 8 dereferenceable_or_null(8) null) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE6unwrapCslghKHtsL3a4_5tokio.exit, !prof !11

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.i
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #20
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE6unwrapCslghKHtsL3a4_5tokio.exit: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.i, %bb.a
  %.sroa.0.0.i.i.i2.i = phi ptr [ %i.f, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.i ], [ %i.b, %bb.a ]
  %.val.i = load ptr, ptr %.sroa.0.0.i.i.i2.i, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  tail call fastcc void @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB4_5Inner4park(ptr noundef nonnull align 8 %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !5, !noalias !453, !noundef !4
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.thread.i.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.i.i, !prof !6

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.i.i: ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime4park10ParkThreaduE16get_or_init_slowNvNvB1g_14CURRENT_PARKER27___rust_std_internal_init_fnEB1k_(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(8) null) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB5_16CachedParkThread6unpark.exit, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.thread.i.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.i.i, %bb.a
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.e, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.i.i ], [ %i.a, %bb.a ]
  %.val.i.i = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = atomicrmw add ptr %.val.i.i, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB5_16CachedParkThread6unpark.exit

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.thread.i.i
  tail call void @llvm.trap()
  unreachable

_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB5_16CachedParkThread6unpark.exit: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.i.i, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.thread.i.i
  %.sroa.0.0.i.i = phi ptr [ null, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.i.i ], [ %.val.i.i, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime4park14CURRENT_PARKER00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtB8_10ParkThreadEEEE9call_onceBc_.exit.thread.i.i ] ; 2 uses
  %i.i = icmp eq ptr %.sroa.0.0.i.i, null         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %.sroa.3.0 = select i1 %i.i, ptr undef, ptr %i.j
  %.sroa.0.0 = select i1 %i.i, ptr null, ptr @48
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs9_NtNtCslghKHtsL3a4_5tokio4task5localNtB5_6Shared8schedule(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !5, !noundef !4
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.thread.i.i, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio4task5local9LocalDataE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.f)
          to label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.i.i unwind label %bb.ah ; 2 uses

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.i.i: ; preds = %bb.b
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.aj, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit._RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.thread_crit_edge.i.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit._RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.thread_crit_edge.i.i: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.i.i
  %.pre.i.i = load ptr, ptr %i.d, align 8
  %.pre8.i.i = load ptr, ptr %i.e, align 8
  br label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.thread.i.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit._RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.thread_crit_edge.i.i, %bb.a
  %i.l = phi ptr [ %.pre8.i.i, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit._RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.thread_crit_edge.i.i ], [ %1, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %.pre.i.i, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit._RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.thread_crit_edge.i.i ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.i.i7.i.i = phi ptr [ %i.j, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit._RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.thread_crit_edge.i.i ], [ %i.f, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr %i.l, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = load ptr, ptr %.sroa.0.0.i.i7.i.i, align 8, !noundef !4 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio4util7rc_cellINtB2_6RcCellNtNtNtB6_4task5local7ContextE3getB6_.exit.thread.i.i.i, label %bb.c

_RNvMNtNtCslghKHtsL3a4_5tokio4util7rc_cellINtB2_6RcCellNtNtNtB6_4task5local7ContextE3getB6_.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.thread.i.i
  store ptr null, ptr %i.b, align 8
  br label %bb.g

bb.c:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.thread.i.i
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %i.q = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add i64 %i.p, 1                          ; 2 uses
  store i64 %i.r, ptr %i.o, align 8
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.f, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit33.i.i.i: ; preds = %bb.af, %bb.ae, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit.i.i.i, %bb.e
  %.pn14.i.i.i = phi { ptr, i32 } [ %i.t, %bb.e ], [ %.pn.i.i.i, %bb.ae ], [ %.pn.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit.i.i.i ], [ %.pn.i.i.i, %bb.af ] ; 2 uses
  %.sroa.07.0.i.i.i = phi i8 [ %.sroa.07.5.i.i.i, %bb.e ], [ %.sroa.07.2.i.i.i, %bb.ae ], [ %.sroa.07.2.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit.i.i.i ], [ %.sroa.07.2.i.i.i, %bb.af ]
  %2 = trunc nuw i8 %.sroa.07.0.i.i.i to i1
  br i1 %2, label %bb.ag, label %.body.thread.i.i

bb.e:                                             ; preds = %bb.aa
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit33.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %.sroa.0.0.i.i7.i.i, align 8, !nonnull !4, !noundef !4 ; 7 uses
  store ptr %i.u, ptr %i.b, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = icmp eq ptr %i.x, %i.m
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f, %_RNvMNtNtCslghKHtsL3a4_5tokio4util7rc_cellINtB2_6RcCellNtNtNtB6_4task5local7ContextE3getB6_.exit.thread.i.i.i
  %i.z = invoke noundef i64 @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7context9thread_id()
          to label %bb.o unwind label %bb.m       ; 2 uses

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i7.i.i, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !range !9, !noundef !4
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.u, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.ae = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtB9_4sync3ArcNtNtNtB1c_4task5local6SharedEEE13push_back_mutB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull %i.l)
          to label %_RNvMsc_NtNtCslghKHtsL3a4_5tokio4task5localNtB5_10LocalState14task_push_back.exit.i.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load i64, ptr %i.u, align 8, !noalias !470, !noundef !4
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  store i64 %i.ah, ptr %i.u, align 8, !noalias !470
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %.body.thread.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
          to label %.body.thread.i.i unwind label %bb.n

_RNvMsc_NtNtCslghKHtsL3a4_5tokio4task5localNtB5_10LocalState14task_push_back.exit.i.i.i: ; preds = %bb.i
  %i.aj = load i64, ptr %i.u, align 8, !noalias !471, !noundef !4
  %i.ak = add i64 %i.aj, -1                       ; 2 uses
  store i64 %i.ak, ptr %i.u, align 8, !noalias !471
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.l, label %.thread.i.i.i

bb.l:                                             ; preds = %_RNvMsc_NtNtCslghKHtsL3a4_5tokio4task5localNtB5_10LocalState14task_push_back.exit.i.i.i
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
          to label %.thread.i.i.i unwind label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit.i.i.i: ; preds = %bb.ad, %bb.ac, %.thread43.i.i.i, %bb.m
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ao, %bb.m ], [ %lpad.thr_comm.i.i.i, %.thread43.i.i.i ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.ad ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.ac ] ; 3 uses
  %.sroa.07.2.i.i.i = phi i8 [ %.sroa.07.3.i.i.i, %bb.m ], [ 0, %.thread43.i.i.i ], [ 0, %bb.ad ], [ 0, %bb.ac ] ; 3 uses
  %.sroa.06.0.i.i.i = phi i1 [ %.sroa.06.1.i.i.i, %bb.m ], [ true, %.thread43.i.i.i ], [ true, %bb.ad ], [ true, %bb.ac ]
  %i.am = load ptr, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.an = icmp ne ptr %i.am, null
  %or.cond.i.i.i = and i1 %.sroa.06.0.i.i.i, %i.an
  br i1 %or.cond.i.i.i, label %bb.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit33.i.i.i

bb.m:                                             ; preds = %bb.w, %bb.s, %_RNvMsc_NtNtCslghKHtsL3a4_5tokio4task5localNtB5_10LocalState14task_push_back.exit22.i.i.i, %bb.q, %bb.l, %bb.g
  %.sroa.07.3.i.i.i = phi i8 [ 1, %bb.w ], [ 1, %bb.s ], [ 0, %bb.l ], [ 0, %_RNvMsc_NtNtCslghKHtsL3a4_5tokio4task5localNtB5_10LocalState14task_push_back.exit22.i.i.i ], [ 0, %bb.q ], [ 1, %bb.g ]
  %.sroa.06.1.i.i.i = phi i1 [ true, %bb.w ], [ true, %bb.s ], [ false, %bb.l ], [ true, %_RNvMsc_NtNtCslghKHtsL3a4_5tokio4task5localNtB5_10LocalState14task_push_back.exit22.i.i.i ], [ true, %bb.q ], [ true, %bb.g ]
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit.i.i.i

.thread.i.i.i:                                    ; preds = %bb.l, %_RNvMsc_NtNtCslghKHtsL3a4_5tokio4task5localNtB5_10LocalState14task_push_back.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio4task5local9LocalDataE4withNCNvMs9_BW_NtBW_6Shared8schedule0uEB10_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit28.i.i.i: ; preds = %bb.aa, %bb.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtBK_7runtime4task8NotifiedINtNtB25_4sync3ArcNtNtNtBK_4task5local6SharedEEEEEEBK_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %3 = trunc nuw i8 %.sroa.07.5.i.i.i to i1
  br i1 %3, label %bb.ab, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio4task5local9LocalDataE4withNCNvMs9_BW_NtBW_6Shared8schedule0uEB10_.exit

bb.n:                                             ; preds = %bb.ag, %bb.af, %bb.ad, %bb.k
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.o:                                             ; preds = %bb.g
  %i.aq = icmp eq i64 %i.z, 0
  %.pre.i.i.i = load ptr, ptr %i.c, align 8       ; 4 uses
  br i1 %i.aq, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = load i64, ptr %.pre.i.i.i, align 8, !range !21, !noundef !4
  %i.as = icmp eq i64 %i.z, %i.ar
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 40
  %i.av = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtB9_4sync3ArcNtNtNtB1c_4task5local6SharedEEE13push_back_mutB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull %i.at)
          to label %_RNvMsc_NtNtCslghKHtsL3a4_5tokio4task5localNtB5_10LocalState14task_push_back.exit22.i.i.i unwind label %bb.m ; 0 uses

_RNvMsc_NtNtCslghKHtsL3a4_5tokio4task5localNtB5_10LocalState14task_push_back.exit22.i.i.i: ; preds = %bb.q
  %i.aw = load ptr, ptr %i.c, align 8, !nonnull !4, !align !10, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  invoke void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.ax)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtBK_7runtime4task8NotifiedINtNtB25_4sync3ArcNtNtNtBK_4task5local6SharedEEEEEEBK_.exit.i.i.i unwind label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtBK_7runtime4task8NotifiedINtNtB25_4sync3ArcNtNtNtBK_4task5local6SharedEEEEEEBK_.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtBK_7runtime4task8NotifiedINtNtB25_4sync3ArcNtNtNtBK_4task5local6SharedEEEEEEBK_.exit26.i.i.i, %bb.w, %bb.v, %_RNvMsc_NtNtCslghKHtsL3a4_5tokio4task5localNtB5_10LocalState14task_push_back.exit22.i.i.i
  %.sroa.07.5.i.i.i = phi i8 [ 0, %_RNvMsc_NtNtCslghKHtsL3a4_5tokio4task5localNtB5_10LocalState14task_push_back.exit22.i.i.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtBK_7runtime4task8NotifiedINtNtB25_4sync3ArcNtNtNtBK_4task5local6SharedEEEEEEBK_.exit26.i.i.i ], [ 1, %bb.w ], [ 1, %bb.v ] ; 2 uses
  %i.ay = load ptr, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %.not13.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not13.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit28.i.i.i, label %bb.z

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 72 ; 8 uses
  %i.ba = cmpxchg weak ptr %i.az, i8 0, i8 1 acquire monotonic, align 1
  %i.bb = extractvalue { i8, i1 } %i.ba, 1
  br i1 %i.bb, label %bb.t, label %bb.s, !prof !6

bb.s:                                             ; preds = %bb.r
  %i.bc = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.az, i64 undef, i32 noundef -1)
          to label %bb.t unwind label %bb.m       ; 0 uses

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 80 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !range !12, !noundef !4
  %.not11.i.i.i = icmp eq i64 %i.be, -1
  br i1 %.not11.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.bg = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtB9_4sync3ArcNtNtNtB1c_4task5local6SharedEEE13push_back_mutB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull %i.bf)
          to label %bb.x unwind label %bb.ac      ; 0 uses

bb.v:                                             ; preds = %bb.t
  %i.bh = cmpxchg ptr %i.az, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i.i.i.i = extractvalue { i8, i1 } %i.bh, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtBK_7runtime4task8NotifiedINtNtB25_4sync3ArcNtNtNtBK_4task5local6SharedEEEEEEBK_.exit.i.i.i, label %bb.w, !prof !6

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.az, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtBK_7runtime4task8NotifiedINtNtB25_4sync3ArcNtNtNtBK_4task5local6SharedEEEEEEBK_.exit.i.i.i unwind label %bb.m

.thread43.i.i.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtBK_7runtime4task8NotifiedINtNtB25_4sync3ArcNtNtNtBK_4task5local6SharedEEEEEEBK_.exit26.i.i.i, %bb.y
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit.i.i.i

bb.x:                                             ; preds = %bb.u
  %i.bi = cmpxchg ptr %i.az, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i24.i.i.i = extractvalue { i8, i1 } %i.bi, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i24.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtBK_7runtime4task8NotifiedINtNtB25_4sync3ArcNtNtNtBK_4task5local6SharedEEEEEEBK_.exit26.i.i.i, label %bb.y, !prof !6

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.az, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtBK_7runtime4task8NotifiedINtNtB25_4sync3ArcNtNtNtBK_4task5local6SharedEEEEEEBK_.exit26.i.i.i unwind label %.thread43.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtBK_7runtime4task8NotifiedINtNtB25_4sync3ArcNtNtNtBK_4task5local6SharedEEEEEEBK_.exit26.i.i.i: ; preds = %bb.y, %bb.x
  %i.bj = load ptr, ptr %i.c, align 8, !nonnull !4, !align !10, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  invoke void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.bk)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtBK_7runtime4task8NotifiedINtNtB25_4sync3ArcNtNtNtBK_4task5local6SharedEEEEEEBK_.exit.i.i.i unwind label %.thread43.i.i.i

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtBK_7runtime4task8NotifiedINtNtB25_4sync3ArcNtNtNtBK_4task5local6SharedEEEEEEBK_.exit.i.i.i
  %i.bl = load i64, ptr %i.ay, align 8, !noalias !472, !noundef !4
  %i.bm = add i64 %i.bl, -1                       ; 2 uses
  store i64 %i.bm, ptr %i.ay, align 8, !noalias !472
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit28.i.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #22
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit28.i.i.i unwind label %bb.e

bb.ab:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit28.i.i.i
  call void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB9_4task5local6SharedEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio4task5local9LocalDataE4withNCNvMs9_BW_NtBW_6Shared8schedule0uEB10_.exit

bb.ac:                                            ; preds = %bb.u
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = cmpxchg ptr %i.az, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i29.i.i.i = extractvalue { i8, i1 } %i.bo, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i29.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit.i.i.i, label %bb.ad, !prof !6

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.az, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit.i.i.i unwind label %bb.n

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit.i.i.i
  %i.bp = load i64, ptr %i.am, align 8, !noalias !473, !noundef !4
  %i.bq = add i64 %i.bp, -1                       ; 2 uses
  store i64 %i.bq, ptr %i.am, align 8, !noalias !473
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit33.i.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #22
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit33.i.i.i unwind label %bb.n

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit33.i.i.i
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB9_4task5local6SharedEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.body.thread.i.i unwind label %bb.n

.body.thread.i.i:                                 ; preds = %bb.ah, %bb.ag, %bb.k, %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit33.i.i.i
  %eh.lpad-body3.i.i = phi { ptr, i32 } [ %i.bs, %bb.ah ], [ %i.af, %bb.k ], [ %.pn14.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit33.i.i.i ], [ %.pn14.i.i.i, %bb.ag ], [ %i.af, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body3.i.i

bb.ah:                                            ; preds = %bb.b
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB9_4task5local6SharedEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body.thread.i.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.aj:                                            ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio4task5local7CURRENT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_9LocalDataEEEE9call_onceBc_.exit.i.i
  call void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB9_4task5local6SharedEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20
  unreachable

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio4task5local9LocalDataE4withNCNvMs9_BW_NtBW_6Shared8schedule0uEB10_.exit: ; preds = %.thread.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextEEB1c_.exit28.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB4_5Inner12park_timeout(ptr noundef nonnull align 8 %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = cmpxchg ptr %0, i64 2, i64 0 seq_cst seq_cst, align 8
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %1, 0
  %i.i = icmp eq i32 %2, 0
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.k = cmpxchg weak ptr %i.j, i8 0, i8 1 acquire monotonic, align 1
  %i.l = extractvalue { i8, i1 } %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.d, !prof !6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit: ; preds = %bb.n, %bb.t, %bb.s, %bb.m, %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.j, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = cmpxchg ptr %0, i64 0, i64 1 seq_cst seq_cst, align 8 ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  %i.p = extractvalue { i64, i1 } %i.n, 0         ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %bb.s, label %bb.u, !prof !6

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !476
  %i.s = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc.i unwind label %bb.h, !noalias !476 ; 2 uses

.noexc.i:                                         ; preds = %bb.g
  %i.t = extractvalue { i64, i32 } %i.s, 0
  %i.u = extractvalue { i64, i32 } %i.s, 1
  store i64 %i.t, ptr %i.a, align 8, !noalias !476
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.u, ptr %i.v, align 8, !noalias !476
  %i.w = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant11checked_add(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2)
          to label %.noexc2.i unwind label %bb.h, !noalias !476 ; 2 uses

.noexc2.i:                                        ; preds = %.noexc.i
  %i.x = extractvalue { i64, i32 } %i.w, 0
  %i.y = extractvalue { i64, i32 } %i.w, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !476
  %i.z = invoke noundef zeroext i1 @_RNvMs_NtCsfC2LXmwPSoN_11parking_lot7condvarNtB4_7Condvar19wait_until_internal(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull %i.j, i64 %i.x, i32 noundef %i.y)
          to label %bb.k unwind label %bb.h, !noalias !476 ; 0 uses

bb.h:                                             ; preds = %.noexc2.i, %.noexc.i, %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = cmpxchg ptr %i.j, i8 1, i8 0 release monotonic, align 1, !noalias !476
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i8, i1 } %i.ab, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %.thread41, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.j, i1 noundef zeroext false)
          to label %.thread41 unwind label %bb.j, !noalias !476

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !476
  unreachable

bb.k:                                             ; preds = %.noexc2.i
  %i.ad = atomicrmw xchg ptr %0, i64 0 seq_cst, align 8 ; 2 uses
  %.off = add i64 %i.ad, -1
  %switch = icmp ult i64 %.off, 2
  br i1 %switch, label %bb.m, label %bb.l, !prof !19

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.ad, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #23
          to label %bb.q unwind label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ae = cmpxchg ptr %i.j, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i8, i1 } %i.ae, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit, label %bb.n, !prof !6

bb.n:                                             ; preds = %bb.m
  call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.j, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit

bb.o:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = cmpxchg ptr %i.j, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i23 = extractvalue { i8, i1 } %i.ag, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i23, label %.thread41, label %bb.p, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.j, i1 noundef zeroext false)
          to label %.thread41 unwind label %bb.r

bb.q:                                             ; preds = %bb.u, %bb.l
  unreachable

bb.r:                                             ; preds = %bb.w, %bb.p
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.s:                                             ; preds = %bb.f
  %i.ai = atomicrmw xchg ptr %0, i64 0 seq_cst, align 8 ; 0 uses
  %i.aj = cmpxchg ptr %i.j, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i26 = extractvalue { i8, i1 } %i.aj, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i26, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.j, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit

bb.u:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.p, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @50, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #23
          to label %bb.q unwind label %bb.v

.thread41:                                        ; preds = %bb.v, %bb.w, %bb.p, %bb.o, %bb.i, %bb.h
  %.pn37 = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.af, %bb.p ], [ %i.ak, %bb.v ], [ %i.aa, %bb.i ], [ %i.af, %bb.o ], [ %i.ak, %bb.w ]
  resume { ptr, i32 } %.pn37

bb.v:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = cmpxchg ptr %i.j, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i28 = extractvalue { i8, i1 } %i.al, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i28, label %.thread41, label %bb.w, !prof !6

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.j, i1 noundef zeroext false)
          to label %.thread41 unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB4_5Inner4park(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = cmpxchg ptr %0, i64 2, i64 0 seq_cst seq_cst, align 8
  %i.d = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.f = cmpxchg weak ptr %i.e, i8 0, i8 1 acquire monotonic, align 1
  %i.g = extractvalue { i8, i1 } %i.f, 1
end_hunk_0
