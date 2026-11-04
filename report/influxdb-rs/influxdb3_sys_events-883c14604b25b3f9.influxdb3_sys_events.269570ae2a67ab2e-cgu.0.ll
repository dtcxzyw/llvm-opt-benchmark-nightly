Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_sys_events-883c14604b25b3f9.influxdb3_sys_events.269570ae2a67ab2e-cgu.0?download=true
inline.NumInlined: 106
inline.NumDeleted: 84
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local local_unnamed_addr global { { { [2 x i64] } }, i8, [7 x i8] }
@1 = private unnamed_addr constant [34 x i8] c"assertion failed: shard_amount > 1", align 1
@2 = private unnamed_addr constant [94 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/dashmap-6.2.1/src/lib.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"]\00\00\00\00\00\00\00\12\01\00\00\09\00\00\00" }>, align 8
@4 = private unnamed_addr constant [48 x i8] c"assertion failed: shard_amount.is_power_of_two()", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"]\00\00\00\00\00\00\00\13\01\00\00\09\00\00\00" }>, align 8
@_RNvNvMCs3jnAfLLZpZq_20influxdb3_sys_eventsNtB4_13SysEventStore6record10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMCs3jnAfLLZpZq_20influxdb3_sys_eventsNtB6_13SysEventStore6record10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@6 = private unnamed_addr constant [40 x i8] c"event influxdb3_sys_events/src/lib.rs:65", align 1
@7 = private unnamed_addr constant [20 x i8] c"influxdb3_sys_events", align 1
@8 = private unnamed_addr constant [7 x i8] c"message", align 1
@9 = private unnamed_addr constant [9 x i8] c"sys_event", align 1
@10 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @8, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @9, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs4BfJs7E7SEE_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCs4BfJs7E7SEE_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCs4BfJs7E7SEE_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs3jnAfLLZpZq_20influxdb3_sys_events }>, align 8
@12 = private unnamed_addr constant [31 x i8] c"influxdb3_sys_events/src/lib.rs", align 1
@_RNvNvNvMCs3jnAfLLZpZq_20influxdb3_sys_eventsNtB6_13SysEventStore6record10___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00A\00\00\00", ptr @6, [8 x i8] c"(\00\00\00\00\00\00\00", ptr @7, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @10, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @_RNvNvMCs3jnAfLLZpZq_20influxdb3_sys_eventsNtB4_13SysEventStore6record10___CALLSITE, ptr @11, ptr @7, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @12, [9 x i8] c"\1F\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@13 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7576425159912132170 to ptr), ptr inttoptr (i64 19745073314560191 to ptr) }>, align 8

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_RNtNtBG_5alloc6GlobalEECs3jnAfLLZpZq_20influxdb3_sys_events(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %_RNvXsN_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_RNtNtB7_5alloc6GlobalENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3jnAfLLZpZq_20influxdb3_sys_events.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RNvXsN_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_RNtNtB7_5alloc6GlobalENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3jnAfLLZpZq_20influxdb3_sys_events.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !3, !invariant.load !4
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !5, !invariant.load !4
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 8) ; 3 uses
  %i.j = add nuw i64 %i.f, 15
  %i.k = add nuw i64 %i.j, %i.i
  %i.l = sub nsw i64 0, %i.i
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXsN_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_RNtNtB7_5alloc6GlobalENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3jnAfLLZpZq_20influxdb3_sys_events.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.m, i64 noundef range(i64 1, 536870913) %i.i) #15
  br label %_RNvXsN_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_RNtNtB7_5alloc6GlobalENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3jnAfLLZpZq_20influxdb3_sys_events.exit

_RNvXsN_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_RNtNtB7_5alloc6GlobalENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3jnAfLLZpZq_20influxdb3_sys_events.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCs3jnAfLLZpZq_20influxdb3_sys_eventsNtB2_13SysEventStore3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !62, !noalias !63, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs3jnAfLLZpZq_20influxdb3_sys_events.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i, !prof !64

._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs3jnAfLLZpZq_20influxdb3_sys_events.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.c, align 8, !noalias !65 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !65
  %i.g = insertvalue { i64, i64 } poison, i64 %.pre.i.i, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.pre1.i.i, 1
  br label %bb.d

_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i: ; preds = %bb.a
  %i.i = invoke { i64, i64 } @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc unwind label %bb.b     ; 3 uses

.noexc:                                           ; preds = %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.k, ptr %i.l, align 8, !noalias !66
  store i8 1, ptr %i.d, align 8, !noalias !66
  br label %bb.d

bb.b:                                             ; preds = %.invoke, %bb.g, %bb.d, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !67
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECs3jnAfLLZpZq_20influxdb3_sys_events.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_E9drop_slowCs3jnAfLLZpZq_20influxdb3_sys_events(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECs3jnAfLLZpZq_20influxdb3_sys_events.exit unwind label %bb.h

bb.d:                                             ; preds = %.noexc, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs3jnAfLLZpZq_20influxdb3_sys_events.exit_crit_edge.i.i
  %i.p = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs3jnAfLLZpZq_20influxdb3_sys_events.exit_crit_edge.i.i ], [ %i.j, %.noexc ]
  %.merged.i = phi { i64, i64 } [ %i.h, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs3jnAfLLZpZq_20influxdb3_sys_events.exit_crit_edge.i.i ], [ %i.i, %.noexc ] ; 2 uses
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.c, align 8, !noalias !65
  %i.r = invoke noundef i64 @_RNvCshxQpDNzqVNo_7dashmap20default_shard_amount()
          to label %.noexc2 unwind label %bb.b    ; 9 uses

.noexc2:                                          ; preds = %bb.d
  %i.s = icmp ugt i64 %i.r, 1
  br i1 %i.s, label %bb.e, label %.invoke, !prof !64

bb.e:                                             ; preds = %.noexc2
  %i.t = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.r)
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %.invoke, !prof !64

.invoke:                                          ; preds = %bb.e, %.noexc2
  %i.v = phi ptr [ @1, %.noexc2 ], [ @4, %bb.e ]
  %i.w = phi i64 [ 34, %.noexc2 ], [ 48, %bb.e ]
  %i.x = phi ptr [ @3, %.noexc2 ], [ @5, %bb.e ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x) #16
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.y = shl i64 %i.r, 7                          ; 3 uses
  %i.z = icmp ult i64 %i.r, 144115188075855872
  %i.aa = icmp ult i64 %i.y, 9223372036854775681
  %or.cond.i.i.i.i.i.i.i.i.i = and i1 %i.z, %i.aa
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i, label %bb.g, !prof !68

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !69
  %i.ab = tail call noundef align 128 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775681) %i.y, i64 noundef 128) #15, !noalias !69 ; 7 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.g, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.ad = icmp ult i64 %i.r, 4
  br i1 %i.ad, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.r, 144115188075855868
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i, %bb.f
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 128, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.f ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %i.y) #16
          to label %.noexc5 unwind label %bb.b

.noexc5:                                          ; preds = %bb.g
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.aj, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.ab, i64 %.val7.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  store i64 0, ptr %i.ae, align 128, !noalias !70
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !70
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 24, i1 false), !noalias !71
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.ab, i64 %.val7.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  store i64 0, ptr %i.ag, align 128, !noalias !70
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  store ptr @0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !70
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i8 0, i64 24, i1 false), !noalias !71
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.ab, i64 %.val7.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 256
  store i64 0, ptr %i.ai, align 128, !noalias !70
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.ah, i64 264
  store ptr @0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !70
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.ah, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i8 0, i64 24, i1 false), !noalias !71
  %i.aj = add nuw nsw i64 %.val7.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw [128 x i8], ptr %i.ab, i64 %.val7.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 384
  store i64 0, ptr %i.al, align 128, !noalias !70
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 392
  store ptr @0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !70
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i8 0, i64 24, i1 false), !noalias !71
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i

.unr-lcssa:                                       ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %.unr-lcssa, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aj, %.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.epil

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.epil: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.epil, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.am, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.val7.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.am = add nuw nsw i64 %.val7.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.ab, i64 %.val7.i.i.i.i.i.i.i.i.i.i.i.i.epil ; 3 uses
  store i64 0, ptr %i.an, align 128, !noalias !70
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !70
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, i8 0, i64 24, i1 false), !noalias !71
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !61

.epilog-lcssa:                                    ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events.exit.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.unr-lcssa
  %i.ao = extractvalue { i64, i64 } %.merged.i, 1
  %i.ap = extractvalue { i64, i64 } %.merged.i, 0
  %i.aq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.r, i1 true)
  %i.ar = sub nuw nsw i64 64, %i.aq
  store ptr %i.ab, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ar, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ap, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ao, ptr %.sroa.7.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.at, align 8
  ret void

bb.h:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECs3jnAfLLZpZq_20influxdb3_sys_events.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.m
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_E9drop_slowCs3jnAfLLZpZq_20influxdb3_sys_events(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !5, !invariant.load !4 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_ECs3jnAfLLZpZq_20influxdb3_sys_events.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  invoke void %.val(ptr noundef nonnull %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_ECs3jnAfLLZpZq_20influxdb3_sys_events.exit unwind label %bb.c, !inline_history !73

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_RNtNtBG_5alloc6GlobalEECs3jnAfLLZpZq_20influxdb3_sys_events(ptr nonnull %i.a, ptr nonnull %i.c) #18
  resume { ptr, i32 } %i.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_ECs3jnAfLLZpZq_20influxdb3_sys_events.exit: ; preds = %bb.a, %bb.b
  %i.k = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_RNtNtBG_5alloc6GlobalEECs3jnAfLLZpZq_20influxdb3_sys_events.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_ECs3jnAfLLZpZq_20influxdb3_sys_events.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_RNtNtBG_5alloc6GlobalEECs3jnAfLLZpZq_20influxdb3_sys_events.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !3, !invariant.load !4
  %i.q = tail call i64 @llvm.umax.i64(i64 %i.e, i64 8) ; 3 uses
  %i.r = add nuw nsw i64 %i.q, 15
  %i.s = add nuw i64 %i.r, %i.p
  %i.t = sub nsw i64 0, %i.q
  %i.u = and i64 %i.s, %i.t                       ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_RNtNtBG_5alloc6GlobalEECs3jnAfLLZpZq_20influxdb3_sys_events.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036317904881) %i.u, i64 noundef range(i64 1, 536870913) %i.q) #15
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_RNtNtBG_5alloc6GlobalEECs3jnAfLLZpZq_20influxdb3_sys_events.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_RNtNtBG_5alloc6GlobalEECs3jnAfLLZpZq_20influxdb3_sys_events.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_ECs3jnAfLLZpZq_20influxdb3_sys_events.exit, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs4BfJs7E7SEE_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs4BfJs7E7SEE_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs3jnAfLLZpZq_20influxdb3_sys_events(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @13, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvCshxQpDNzqVNo_7dashmap20default_shard_amount() unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs4BfJs7E7SEE_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys6random5linux19hashmap_random_keys() unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i64 0, i64 -9223372036854775808}
!4 = !{}
!5 = !{i64 1, i64 536870913}
!6 = !{i64 8}
!7 = distinct !{!7, i1 true, !"_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECs3jnAfLLZpZq_20influxdb3_sys_events"}
!8 = distinct !{!8, !7, !"_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!9 = distinct !{!9, i1 true, !"_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs3jnAfLLZpZq_20influxdb3_sys_events"}
!10 = distinct !{!10, !9, !"_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!11 = distinct !{!11, i1 true, !"_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs3jnAfLLZpZq_20influxdb3_sys_events"}
!12 = distinct !{!12, !11, !"_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!13 = distinct !{!13, i1 true, !"_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3jnAfLLZpZq_20influxdb3_sys_events"}
!14 = distinct !{!14, !13, !"_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!15 = distinct !{!15, i1 true, !"_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3jnAfLLZpZq_20influxdb3_sys_events"}
!16 = distinct !{!16, !15, !"_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!17 = distinct !{!17, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECs3jnAfLLZpZq_20influxdb3_sys_events"}
!18 = distinct !{!18, !17, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!19 = distinct !{!19, i1 true, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3jnAfLLZpZq_20influxdb3_sys_events"}
!20 = distinct !{!20, !19, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!21 = distinct !{!21, i1 true, !"_RNvMs1_CshxQpDNzqVNo_7dashmapINtB5_7DashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBH_3AnyNtNtBJ_6marker4SendNtB1X_4SyncEL_EE24with_capacity_and_hasherCs3jnAfLLZpZq_20influxdb3_sys_events"}
!22 = distinct !{!22, !21, !"_RNvMs1_CshxQpDNzqVNo_7dashmapINtB5_7DashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBH_3AnyNtNtBJ_6marker4SendNtB1X_4SyncEL_EE24with_capacity_and_hasherCs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!23 = distinct !{!23, i1 true, !"_RNvMs1_CshxQpDNzqVNo_7dashmapINtB5_7DashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBH_3AnyNtNtBJ_6marker4SendNtB1X_4SyncEL_EE41with_capacity_and_hasher_and_shard_amountCs3jnAfLLZpZq_20influxdb3_sys_events"}
!24 = distinct !{!24, !23, !"_RNvMs1_CshxQpDNzqVNo_7dashmapINtB5_7DashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBH_3AnyNtNtBJ_6marker4SendNtB1X_4SyncEL_EE41with_capacity_and_hasher_and_shard_amountCs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!25 = distinct !{!25, i1 true, !"_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2A_4util11SharedValueIBF_DNtB42_3AnyNtNtB44_6marker4SendNtB5g_4SyncEL_EEEEEEEINtNtNtNtB44_4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB60_8adapters3map3MapINtNtNtB44_3ops5range5RangejENCNvMs1_B2A_INtB2A_7DashMapB40_B4Z_E41with_capacity_and_hasher_and_shard_amount0EECs3jnAfLLZpZq_20influxdb3_sys_events"}
!26 = distinct !{!26, !25, !"_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2A_4util11SharedValueIBF_DNtB42_3AnyNtNtB44_6marker4SendNtB5g_4SyncEL_EEEEEEEINtNtNtNtB44_4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB60_8adapters3map3MapINtNtNtB44_3ops5range5RangejENCNvMs1_B2A_INtB2A_7DashMapB40_B4Z_E41with_capacity_and_hasher_and_shard_amount0EECs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!27 = distinct !{!27, i1 true, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs1_CshxQpDNzqVNo_7dashmapINtB1r_7DashMapNtNtBc_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB24_3AnyNtNtBc_6marker4SendNtB35_4SyncEL_EE41with_capacity_and_hasher_and_shard_amount0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB2p_3vec3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtB1r_4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTB22_INtNtB1r_4util11SharedValueB2k_EEEEEEECs3jnAfLLZpZq_20influxdb3_sys_events"}
!28 = distinct !{!28, !27, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs1_CshxQpDNzqVNo_7dashmapINtB1r_7DashMapNtNtBc_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB24_3AnyNtNtBc_6marker4SendNtB35_4SyncEL_EE41with_capacity_and_hasher_and_shard_amount0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB2p_3vec3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtB1r_4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTB22_INtNtB1r_4util11SharedValueB2k_EEEEEEECs3jnAfLLZpZq_20influxdb3_sys_events: argument 1"}
!29 = distinct !{!29, !27, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs1_CshxQpDNzqVNo_7dashmapINtB1r_7DashMapNtNtBc_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB24_3AnyNtNtBc_6marker4SendNtB35_4SyncEL_EE41with_capacity_and_hasher_and_shard_amount0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB2p_3vec3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtB1r_4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTB22_INtNtB1r_4util11SharedValueB2k_EEEEEEECs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!30 = distinct !{!30, i1 true, !"_RINvXse_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2q_4util11SharedValueINtNtB8_5boxed3BoxDNtB3S_3AnyNtNtB3U_6marker4SendNtB5k_4SyncEL_EEEEEEEINtNtNtNtB3U_4iter6traits7collect12FromIteratorBF_E9from_iterINtNtNtB64_8adapters3map3MapINtNtNtB3U_3ops5range5RangejENCNvMs1_B2q_INtB2q_7DashMapB3Q_B4P_E41with_capacity_and_hasher_and_shard_amount0EECs3jnAfLLZpZq_20influxdb3_sys_events"}
!31 = distinct !{!31, !30, !"_RINvXse_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2q_4util11SharedValueINtNtB8_5boxed3BoxDNtB3S_3AnyNtNtB3U_6marker4SendNtB5k_4SyncEL_EEEEEEEINtNtNtNtB3U_4iter6traits7collect12FromIteratorBF_E9from_iterINtNtNtB64_8adapters3map3MapINtNtNtB3U_3ops5range5RangejENCNvMs1_B2q_INtB2q_7DashMapB3Q_B4P_E41with_capacity_and_hasher_and_shard_amount0EECs3jnAfLLZpZq_20influxdb3_sys_events: argument 1"}
!32 = distinct !{!32, !30, !"_RINvXse_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2q_4util11SharedValueINtNtB8_5boxed3BoxDNtB3S_3AnyNtNtB3U_6marker4SendNtB5k_4SyncEL_EEEEEEEINtNtNtNtB3U_4iter6traits7collect12FromIteratorBF_E9from_iterINtNtNtB64_8adapters3map3MapINtNtNtB3U_3ops5range5RangejENCNvMs1_B2q_INtB2q_7DashMapB3Q_B4P_E41with_capacity_and_hasher_and_shard_amount0EECs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!33 = distinct !{!33, i1 true, !"_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2E_4util11SharedValueINtNtB6_5boxed3BoxDNtB46_3AnyNtNtB48_6marker4SendNtB5y_4SyncEL_EEEEEEEINtB2_12SpecFromIterBT_INtNtNtNtB48_4iter8adapters3map3MapINtNtNtB48_3ops5range5RangejENCNvMs1_B2E_INtB2E_7DashMapB44_B53_E41with_capacity_and_hasher_and_shard_amount0EE9from_iterCs3jnAfLLZpZq_20influxdb3_sys_events"}
!34 = distinct !{!34, !33, !"_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2E_4util11SharedValueINtNtB6_5boxed3BoxDNtB46_3AnyNtNtB48_6marker4SendNtB5y_4SyncEL_EEEEEEEINtB2_12SpecFromIterBT_INtNtNtNtB48_4iter8adapters3map3MapINtNtNtB48_3ops5range5RangejENCNvMs1_B2E_INtB2E_7DashMapB44_B53_E41with_capacity_and_hasher_and_shard_amount0EE9from_iterCs3jnAfLLZpZq_20influxdb3_sys_events: argument 1"}
!35 = distinct !{!35, !33, !"_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2E_4util11SharedValueINtNtB6_5boxed3BoxDNtB46_3AnyNtNtB48_6marker4SendNtB5y_4SyncEL_EEEEEEEINtB2_12SpecFromIterBT_INtNtNtNtB48_4iter8adapters3map3MapINtNtNtB48_3ops5range5RangejENCNvMs1_B2E_INtB2E_7DashMapB44_B53_E41with_capacity_and_hasher_and_shard_amount0EE9from_iterCs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!36 = distinct !{!36, i1 true, !"_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2N_4util11SharedValueINtNtB8_5boxed3BoxDNtB4f_3AnyNtNtB4h_6marker4SendNtB5H_4SyncEL_EEEEEEEINtB4_18SpecFromIterNestedB12_INtNtNtNtB4h_4iter8adapters3map3MapINtNtNtB4h_3ops5range5RangejENCNvMs1_B2N_INtB2N_7DashMapB4d_B5c_E41with_capacity_and_hasher_and_shard_amount0EE9from_iterCs3jnAfLLZpZq_20influxdb3_sys_events"}
!37 = distinct !{!37, !36, !"_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2N_4util11SharedValueINtNtB8_5boxed3BoxDNtB4f_3AnyNtNtB4h_6marker4SendNtB5H_4SyncEL_EEEEEEEINtB4_18SpecFromIterNestedB12_INtNtNtNtB4h_4iter8adapters3map3MapINtNtNtB4h_3ops5range5RangejENCNvMs1_B2N_INtB2N_7DashMapB4d_B5c_E41with_capacity_and_hasher_and_shard_amount0EE9from_iterCs3jnAfLLZpZq_20influxdb3_sys_events: argument 1"}
!38 = distinct !{!38, !36, !"_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2N_4util11SharedValueINtNtB8_5boxed3BoxDNtB4f_3AnyNtNtB4h_6marker4SendNtB5H_4SyncEL_EEEEEEEINtB4_18SpecFromIterNestedB12_INtNtNtNtB4h_4iter8adapters3map3MapINtNtNtB4h_3ops5range5RangejENCNvMs1_B2N_INtB2N_7DashMapB4d_B5c_E41with_capacity_and_hasher_and_shard_amount0EE9from_iterCs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!39 = distinct !{!39, i1 true, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3jnAfLLZpZq_20influxdb3_sys_events"}
!40 = distinct !{!40, !39, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!41 = distinct !{!41, i1 true, !"_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2D_4util11SharedValueINtNtB8_5boxed3BoxDNtB45_3AnyNtNtB47_6marker4SendNtB5x_4SyncEL_EEEEEEEINtB4_10SpecExtendBS_INtNtNtNtB47_4iter8adapters3map3MapINtNtNtB47_3ops5range5RangejENCNvMs1_B2D_INtB2D_7DashMapB43_B52_E41with_capacity_and_hasher_and_shard_amount0EE11spec_extendCs3jnAfLLZpZq_20influxdb3_sys_events"}
!42 = distinct !{!42, !41, !"_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2D_4util11SharedValueINtNtB8_5boxed3BoxDNtB45_3AnyNtNtB47_6marker4SendNtB5x_4SyncEL_EEEEEEEINtB4_10SpecExtendBS_INtNtNtNtB47_4iter8adapters3map3MapINtNtNtB47_3ops5range5RangejENCNvMs1_B2D_INtB2D_7DashMapB43_B52_E41with_capacity_and_hasher_and_shard_amount0EE11spec_extendCs3jnAfLLZpZq_20influxdb3_sys_events: argument 1"}
!43 = distinct !{!43, !41, !"_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2D_4util11SharedValueINtNtB8_5boxed3BoxDNtB45_3AnyNtNtB47_6marker4SendNtB5x_4SyncEL_EEEEEEEINtB4_10SpecExtendBS_INtNtNtNtB47_4iter8adapters3map3MapINtNtNtB47_3ops5range5RangejENCNvMs1_B2D_INtB2D_7DashMapB43_B52_E41with_capacity_and_hasher_and_shard_amount0EE11spec_extendCs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!44 = distinct !{!44, i1 true, !"_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2q_4util11SharedValueINtNtB8_5boxed3BoxDNtB3S_3AnyNtNtB3U_6marker4SendNtB5k_4SyncEL_EEEEEEE14extend_trustedINtNtNtNtB3U_4iter8adapters3map3MapINtNtNtB3U_3ops5range5RangejENCNvMs1_B2q_INtB2q_7DashMapB3Q_B4P_E41with_capacity_and_hasher_and_shard_amount0EECs3jnAfLLZpZq_20influxdb3_sys_events"}
!45 = distinct !{!45, !44, !"_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2q_4util11SharedValueINtNtB8_5boxed3BoxDNtB3S_3AnyNtNtB3U_6marker4SendNtB5k_4SyncEL_EEEEEEE14extend_trustedINtNtNtNtB3U_4iter8adapters3map3MapINtNtNtB3U_3ops5range5RangejENCNvMs1_B2q_INtB2q_7DashMapB3Q_B4P_E41with_capacity_and_hasher_and_shard_amount0EECs3jnAfLLZpZq_20influxdb3_sys_events: argument 1"}
!46 = distinct !{!46, !44, !"_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2q_4util11SharedValueINtNtB8_5boxed3BoxDNtB3S_3AnyNtNtB3U_6marker4SendNtB5k_4SyncEL_EEEEEEE14extend_trustedINtNtNtNtB3U_4iter8adapters3map3MapINtNtNtB3U_3ops5range5RangejENCNvMs1_B2q_INtB2q_7DashMapB3Q_B4P_E41with_capacity_and_hasher_and_shard_amount0EECs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!47 = distinct !{!47, i1 true, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs1_CshxQpDNzqVNo_7dashmapINtB1r_7DashMapNtNtBc_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB24_3AnyNtNtBc_6marker4SendNtB35_4SyncEL_EE41with_capacity_and_hasher_and_shard_amount0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtB2p_3vecINtB5b_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtB1r_4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTB22_INtNtB1r_4util11SharedValueB2k_EEEEEE14extend_trustedB3_E0ECs3jnAfLLZpZq_20influxdb3_sys_events"}
!48 = distinct !{!48, !47, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs1_CshxQpDNzqVNo_7dashmapINtB1r_7DashMapNtNtBc_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB24_3AnyNtNtBc_6marker4SendNtB35_4SyncEL_EE41with_capacity_and_hasher_and_shard_amount0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtB2p_3vecINtB5b_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtB1r_4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTB22_INtNtB1r_4util11SharedValueB2k_EEEEEE14extend_trustedB3_E0ECs3jnAfLLZpZq_20influxdb3_sys_events: argument 1"}
!49 = distinct !{!49, !47, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs1_CshxQpDNzqVNo_7dashmapINtB1r_7DashMapNtNtBc_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB24_3AnyNtNtBc_6marker4SendNtB35_4SyncEL_EE41with_capacity_and_hasher_and_shard_amount0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtB2p_3vecINtB5b_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtB1r_4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTB22_INtNtB1r_4util11SharedValueB2k_EEEEEE14extend_trustedB3_E0ECs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!50 = distinct !{!50, i1 true, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs1_CshxQpDNzqVNo_7dashmapINtB1x_7DashMapNtNtBc_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB2a_3AnyNtNtBc_6marker4SendNtB3b_4SyncEL_EE41with_capacity_and_hasher_and_shard_amount0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4r_8for_each4callINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtB1x_4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTB28_INtNtB1x_4util11SharedValueB2q_EEEEENCINvMsj_NtB2v_3vecINtB9a_3VecB5u_E14extend_trustedBN_E0E0ECs3jnAfLLZpZq_20influxdb3_sys_events"}
!51 = distinct !{!51, !50, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs1_CshxQpDNzqVNo_7dashmapINtB1x_7DashMapNtNtBc_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB2a_3AnyNtNtBc_6marker4SendNtB3b_4SyncEL_EE41with_capacity_and_hasher_and_shard_amount0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4r_8for_each4callINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtB1x_4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTB28_INtNtB1x_4util11SharedValueB2q_EEEEENCINvMsj_NtB2v_3vecINtB9a_3VecB5u_E14extend_trustedBN_E0E0ECs3jnAfLLZpZq_20influxdb3_sys_events: argument 1"}
!52 = distinct !{!52, !50, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs1_CshxQpDNzqVNo_7dashmapINtB1x_7DashMapNtNtBc_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB2a_3AnyNtNtBc_6marker4SendNtB3b_4SyncEL_EE41with_capacity_and_hasher_and_shard_amount0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4r_8for_each4callINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtB1x_4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTB28_INtNtB1x_4util11SharedValueB2q_EEEEENCINvMsj_NtB2v_3vecINtB9a_3VecB5u_E14extend_trustedBN_E0E0ECs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!53 = distinct !{!53, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB3Q_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB5i_3AnyNtNtBa_6marker4SendNtB6K_4SyncEL_EEEEEEuNCNvMs1_B3Q_INtB3Q_7DashMapB5g_B5Z_E41with_capacity_and_hasher_and_shard_amount0NCINvNvBL_8for_each4callB25_NCINvMsj_NtB64_3vecINtB9f_3VecB25_E14extend_trustedINtB1B_3MapB3_B7m_EE0E0E0ECs3jnAfLLZpZq_20influxdb3_sys_events"}
!54 = distinct !{!54, !53, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB3Q_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB5i_3AnyNtNtBa_6marker4SendNtB6K_4SyncEL_EEEEEEuNCNvMs1_B3Q_INtB3Q_7DashMapB5g_B5Z_E41with_capacity_and_hasher_and_shard_amount0NCINvNvBL_8for_each4callB25_NCINvMsj_NtB64_3vecINtB9f_3VecB25_E14extend_trustedINtB1B_3MapB3_B7m_EE0E0E0ECs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!55 = distinct !{!55, i1 true, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events"}
!56 = distinct !{!56, !55, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBa_3any6TypeIdINtNtB2G_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB48_3AnyNtNtBa_6marker4SendNtB5A_4SyncEL_EEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B4P_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB4U_3vecINtB8z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6c_EE0E0E0Cs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!57 = distinct !{!57, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBe_3any6TypeIdINtNtB30_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4s_3AnyNtNtBe_6marker4SendNtB5U_4SyncEL_EEEEEENCINvMsj_NtB5e_3vecINtB6E_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNvMs1_B30_INtB30_7DashMapB4q_B59_E41with_capacity_and_hasher_and_shard_amount0EE0E0Cs3jnAfLLZpZq_20influxdb3_sys_events"}
!58 = distinct !{!58, !57, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtBe_3any6TypeIdINtNtB30_4util11SharedValueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4s_3AnyNtNtBe_6marker4SendNtB5U_4SyncEL_EEEEEENCINvMsj_NtB5e_3vecINtB6E_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNvMs1_B30_INtB30_7DashMapB4q_B59_E41with_capacity_and_hasher_and_shard_amount0EE0E0Cs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!59 = distinct !{!59, i1 true, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2s_4util11SharedValueINtNtBa_5boxed3BoxDNtB3U_3AnyNtNtB3W_6marker4SendNtB5m_4SyncEL_EEEEEEE14extend_trustedINtNtNtNtB3W_4iter8adapters3map3MapINtNtNtB3W_3ops5range5RangejENCNvMs1_B2s_INtB2s_7DashMapB3S_B4R_E41with_capacity_and_hasher_and_shard_amount0EE0Cs3jnAfLLZpZq_20influxdb3_sys_events"}
!60 = distinct !{!60, !59, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecINtNtCsd3aizYNvF5o_15crossbeam_utils12cache_padded11CachePaddedINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB2s_4util11SharedValueINtNtBa_5boxed3BoxDNtB3U_3AnyNtNtB3W_6marker4SendNtB5m_4SyncEL_EEEEEEE14extend_trustedINtNtNtNtB3W_4iter8adapters3map3MapINtNtNtB3W_3ops5range5RangejENCNvMs1_B2s_INtB2s_7DashMapB3S_B4R_E41with_capacity_and_hasher_and_shard_amount0EE0Cs3jnAfLLZpZq_20influxdb3_sys_events: argument 0"}
!61 = distinct !{!61, !72}
!62 = !{i8 0, i8 2}
!63 = !{!14, !12, !10, !8}
!64 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!65 = !{!8}
!66 = !{!16, !8}
!67 = !{!20, !18}
!68 = !{!"branch_weights", i32 2000, i32 2002}
!69 = !{!40, !38, !37, !35, !34, !32, !31, !29, !28, !26, !24, !22}
!70 = !{!60, !58, !56, !54, !52, !51, !49, !48, !46, !45, !43, !42, !38, !37, !35, !34, !32, !31, !29, !28, !26, !24, !22}
!71 = !{!24, !22}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = distinct !{null}
end_hunk_0
