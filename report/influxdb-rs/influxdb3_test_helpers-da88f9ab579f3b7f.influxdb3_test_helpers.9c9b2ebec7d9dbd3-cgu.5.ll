Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_test_helpers-da88f9ab579f3b7f.influxdb3_test_helpers.9c9b2ebec7d9dbd3-cgu.5?download=true
inline.NumInlined: 177
inline.NumDeleted: 122
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SenderjEECsdrBSO4t3gk1_22influxdb3_test_helpers:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !41, !nonnull !6, !noundef !6
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !41
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEEECsdrBSO4t3gk1_22influxdb3_test_helpers.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEE9drop_slowCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEEECsdrBSO4t3gk1_22influxdb3_test_helpers.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !44, !nonnull !6, !noundef !6
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !44
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEEECsdrBSO4t3gk1_22influxdb3_test_helpers.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEE9drop_slowCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEEECsdrBSO4t3gk1_22influxdb3_test_helpers.exit1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEEECsdrBSO4t3gk1_22influxdb3_test_helpers.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEEECsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !6
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr %.val)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync6notify8NotifiedECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsb_NtNtCseCDlJsl44RV_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.b, align 8, !align !7, !noundef !6 ; 2 uses
  %i.c = icmp eq ptr %.val2, null
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync6notify6WaiterECsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 40
  %.val3 = load ptr, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  invoke void %i.f(ptr noundef %.val3)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync6notify6WaiterECsdrBSO4t3gk1_22influxdb3_test_helpers.exit unwind label %bb.f, !inline_history !0

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.g, align 8, !align !7, !noundef !6 ; 2 uses
  %i.h = icmp eq ptr %.val, null
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync6notify6WaiterECsdrBSO4t3gk1_22influxdb3_test_helpers.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 40
  %.val1 = load ptr, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6
  tail call void %i.k(ptr noundef %.val1), !inline_history !45
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync6notify6WaiterECsdrBSO4t3gk1_22influxdb3_test_helpers.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync6notify6WaiterECsdrBSO4t3gk1_22influxdb3_test_helpers.exit4: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync6notify6WaiterECsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock14MockStoreStateENCNvMs9_B10_BX_3new0EB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #2 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noundef initializes((72, 73)) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 2, ptr %i.a, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.c = load i64, ptr %i.b, align 8, !range !71, !alias.scope !72, !noundef !6 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !76, !nonnull !6, !noundef !6
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !76
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsdrBSO4t3gk1_22influxdb3_test_helpers.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsdrBSO4t3gk1_22influxdb3_test_helpers.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !79, !nonnull !6, !noundef !6
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !79
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsdrBSO4t3gk1_22influxdb3_test_helpers.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsdrBSO4t3gk1_22influxdb3_test_helpers.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop()
          to label %.noexc2.i unwind label %bb.h

.noexc2.i:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEE8grow_oneBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !6
  %i.b = tail call fastcc { i64, i64 } @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 dereferenceable(16) %0, i64 noundef %i.a) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 0, -1) %1) unnamed_addr #4 {
bb.a:
  %i.a = mul nuw nsw i64 %1, 384                  ; 4 uses
  %or.cond = icmp ult i64 %1, 24019198012642646
  br i1 %or.cond, label %bb.b, label %bb.f, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator4grow.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.c = mul nuw i64 %.0.val, 384
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.c, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #24
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.g = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.e, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator4grow.exit ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = icmp eq ptr %.pn8, null
  br i1 %i.h, label %bb.e, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.i, align 8
  br label %bb.f

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.k, align 8
  store i64 %storemerge13, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = add nuw i64 %1, 1
  %i.c = load i64, ptr %0, align 8, !range !8, !noundef !6 ; 2 uses
  %i.d = shl nuw i64 %i.c, 1
  %.sroa.0.0.i = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %i.b, i64 range(i64 0, -1) %i.d)
  %.sroa.0.0.i14 = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %.sroa.0.0.i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.e, align 8
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13, i64 noundef %.sroa.0.0.i14)
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c, %bb.d
  %.sroa.5.0 = phi i64 [ undef, %bb.d ], [ %i.m, %bb.c ]
  %.sroa.0.0 = phi i64 [ -1, %bb.d ], [ %i.k, %bb.c ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.j

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !range !81, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.n, ptr %i.e, align 8
  %i.o = icmp sgt i64 %.sroa.0.0.i14, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %.sroa.0.0.i14, ptr %0, align 8
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !12
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  br i1 %2, label %bb.g, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit
  %.pn12 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn12, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn12, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdIBw_DNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB1E_6marker4SendNtB2X_4SyncEL_EINtNtB1E_4hash18BuildHasherDefaultNtB2f_8IdHasherEEE13new_uninit_inCsdrBSO4t3gk1_22influxdb3_test_helpers() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #24 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCsuxFxh2mtOX_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCsuxFxh2mtOX_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @12, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCsuxFxh2mtOX_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBM_14AttributeValueNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  tail call void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtBO_6marker4SendNtB2B_4SyncEL_EINtNtBO_4hash18BuildHasherDefaultNtB1T_8IdHasherEENtNtBO_5clone5Clone5cloneCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEENtNtBT_5clone5Clone5cloneCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtCs2AWtUsOyxgP_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_strCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = tail call noundef ptr @_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.c, align 8, !noundef !6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr %.val)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  ret i1 %.not

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.c, align 8
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.b
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.c
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop() unnamed_addr #6 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call noundef ptr @_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull %i.a, ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 123 to ptr))
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr %i.b)
  call void @_RNvNtCs2AWtUsOyxgP_3std7process5abort() #25
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtNtCs4NRVxsYgnAr_4core6future7poll_fnINtB5_6PollFnNCNCNvNtCseCDlJsl44RV_5tokio5trace16async_trace_leaf00ENtNtB7_6future6Future4pollCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream7flattenINtB5_7FlattenINtNtB9_4once4OnceNCNvXsk_NtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mockNtB1D_9MockStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_streams_0EINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB3X_6result6ResultNtNtB2U_4path4PathNtB2U_5ErrorENtNtB3X_6marker4SendEL_EEEB4X_9poll_nextB1H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [64 x i8], align 8            ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 8 uses
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr i8, ptr %1, i64 296        ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre = load ptr, ptr %i.c, align 8
  %i.g = icmp eq ptr %.pre, null
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.not = phi i1 [ %i.g, %bb.a ], [ %.not.be, %.backedge ] ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2s_5ErrorENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.h = load i64, ptr %i.b, align 8, !range !82, !noundef !6 ; 3 uses
  %i.i = icmp eq i64 %i.h, -3
  br i1 %i.i, label %bb.n, label %bb.o

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCs5SRHcsv2kA9_12futures_util6stream4onceINtB4_4OnceNCNvXsk_NtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mockNtB15_9MockStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_streams_0ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextB19_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.j = load i64, ptr %i.a, align 8, !range !11, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.e, align 8, !noundef !6 ; 3 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %bb.l, label %bb.g

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2d_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i: ; preds = %bb.k, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i
  store ptr %i.l, ptr %i.c, align 8
  store ptr %i.m, ptr %i.d, align 8
  br label %common.resume

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.val20 = load ptr, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %.val21 = load ptr, ptr %i.d, align 8           ; 6 uses
  %i.n = icmp eq ptr %.val20, null
  br i1 %i.n, label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2U_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  %i.o = load ptr, ptr %.val21, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.o(ptr noundef nonnull %.val20)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %.val21, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !8, !invariant.load !6 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2U_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !9, !invariant.load !6
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #24
  br label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2U_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %.val21, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !8, !invariant.load !6 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2d_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !9, !invariant.load !6
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.z) #24
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2d_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i

common.resume:                                    ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2d_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i28, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2d_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2d_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i ], [ %i.ah, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2d_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i28 ]
  resume { ptr, i32 } %common.resume.op

_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2U_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.j, %bb.g
  store ptr %i.l, ptr %i.c, align 8
  store ptr %i.m, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.backedge

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.l
  %.sroa.01.0 = phi i64 [ %i.h, %bb.p ], [ -2, %bb.l ]
  store i64 %.sroa.01.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, i64 64, i1 false)
  br label %bb.v

bb.n:                                             ; preds = %bb.c
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.o:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx4, i64 64, i1 false)
  %.not13 = icmp eq i64 %i.h, -2
  br i1 %.not13, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2d_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i28: ; preds = %bb.u, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i27
  store ptr null, ptr %i.c, align 8
  br label %common.resume

bb.q:                                             ; preds = %bb.o
  %.val24 = load ptr, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %.val25 = load ptr, ptr %i.d, align 8           ; 6 uses
  %i.aa = icmp eq ptr %.val24, null
  br i1 %i.aa, label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2U_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  %i.ab = load ptr, ptr %.val25, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i26, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void %i.ab(ptr noundef nonnull %.val24)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ac = getelementptr inbounds nuw i8, ptr %.val25, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !8, !invariant.load !6 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2U_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i29

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i29: ; preds = %bb.t
  %i.af = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !9, !invariant.load !6
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.ag) #24
  br label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2U_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

bb.u:                                             ; preds = %bb.s
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = getelementptr inbounds nuw i8, ptr %.val25, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !8, !invariant.load !6 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2d_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i28, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i27

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i27: ; preds = %bb.u
  %i.al = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !9, !invariant.load !6
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) %i.am) #24
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2d_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i28

_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2U_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i29, %bb.t, %bb.q
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.backedge

.backedge:                                        ; preds = %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2U_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2U_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16
  %.not.be = xor i1 %.not, true
  br label %bb.b

bb.v:                                             ; preds = %bb.e, %bb.n, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream7flattenINtB5_7FlattenINtNtB9_4once4OnceNCNvXsk_NtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mockNtB1D_9MockStoreNtCs1LivM9IBWqb_12object_store11ObjectStore16list_with_offsets_0EINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB40_6result6ResultNtB2U_10ObjectMetaNtB2U_5ErrorENtNtB40_6marker4SendEL_EEEB50_9poll_nextB1H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [88 x i8], align 8            ; 2 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 8 uses
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr i8, ptr %1, i64 296        ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre = load ptr, ptr %i.c, align 8
  %i.g = icmp eq ptr %.pre, null
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.not = phi i1 [ %i.g, %bb.a ], [ %.not.be, %.backedge ] ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2q_5ErrorENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.h = load i64, ptr %i.b, align 8, !range !13, !noundef !6 ; 3 uses
  %i.i = icmp eq i64 %i.h, -3
  br i1 %i.i, label %bb.n, label %bb.o

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCs5SRHcsv2kA9_12futures_util6stream4onceINtB4_4OnceNCNvXsk_NtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mockNtB15_9MockStoreNtCs1LivM9IBWqb_12object_store11ObjectStore16list_with_offsets_0ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextB19_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.j = load i64, ptr %i.a, align 8, !range !11, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.e, align 8, !noundef !6 ; 3 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %bb.l, label %bb.g

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i: ; preds = %bb.k, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i
  store ptr %i.l, ptr %i.c, align 8
  store ptr %i.m, ptr %i.d, align 8
  br label %common.resume

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.val20 = load ptr, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %.val21 = load ptr, ptr %i.d, align 8           ; 6 uses
  %i.n = icmp eq ptr %.val20, null
  br i1 %i.n, label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  %i.o = load ptr, ptr %.val21, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.o(ptr noundef nonnull %.val20)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %.val21, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !8, !invariant.load !6 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !9, !invariant.load !6
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #24
  br label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %.val21, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !8, !invariant.load !6 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !9, !invariant.load !6
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.z) #24
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i

common.resume:                                    ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i28, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i ], [ %i.ah, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i28 ]
  resume { ptr, i32 } %common.resume.op

_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.j, %bb.g
  store ptr %i.l, ptr %i.c, align 8
  store ptr %i.m, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.backedge

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.l
  %.sroa.01.0 = phi i64 [ %i.h, %bb.p ], [ -2, %bb.l ]
  store i64 %.sroa.01.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false)
  br label %bb.v

bb.n:                                             ; preds = %bb.c
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.o:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx4, i64 88, i1 false)
  %.not13 = icmp eq i64 %i.h, -2
  br i1 %.not13, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i28: ; preds = %bb.u, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i27
  store ptr null, ptr %i.c, align 8
  br label %common.resume

bb.q:                                             ; preds = %bb.o
  %.val24 = load ptr, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %.val25 = load ptr, ptr %i.d, align 8           ; 6 uses
  %i.aa = icmp eq ptr %.val24, null
  br i1 %i.aa, label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  %i.ab = load ptr, ptr %.val25, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i26, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void %i.ab(ptr noundef nonnull %.val24)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ac = getelementptr inbounds nuw i8, ptr %.val25, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !8, !invariant.load !6 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i29

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i29: ; preds = %bb.t
  %i.af = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !9, !invariant.load !6
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.ag) #24
  br label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

bb.u:                                             ; preds = %bb.s
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = getelementptr inbounds nuw i8, ptr %.val25, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !8, !invariant.load !6 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i28, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i27

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i27: ; preds = %bb.u
  %i.al = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !9, !invariant.load !6
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) %i.am) #24
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i28

_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i29, %bb.t, %bb.q
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.backedge

.backedge:                                        ; preds = %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16
  %.not.be = xor i1 %.not, true
  br label %bb.b

bb.v:                                             ; preds = %bb.e, %bb.n, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream7flattenINtB5_7FlattenINtNtB9_4once4OnceNCNvXsk_NtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mockNtB1D_9MockStoreNtCs1LivM9IBWqb_12object_store11ObjectStore4lists_0EINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB3N_6result6ResultNtB2U_10ObjectMetaNtB2U_5ErrorENtNtB3N_6marker4SendEL_EEEB4N_9poll_nextB1H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [88 x i8], align 8            ; 2 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 8 uses
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr i8, ptr %1, i64 296        ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre = load ptr, ptr %i.c, align 8
  %i.g = icmp eq ptr %.pre, null
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.not = phi i1 [ %i.g, %bb.a ], [ %.not.be, %.backedge ] ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2q_5ErrorENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.h = load i64, ptr %i.b, align 8, !range !13, !noundef !6 ; 3 uses
  %i.i = icmp eq i64 %i.h, -3
  br i1 %i.i, label %bb.n, label %bb.o

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCs5SRHcsv2kA9_12futures_util6stream4onceINtB4_4OnceNCNvXsk_NtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mockNtB15_9MockStoreNtCs1LivM9IBWqb_12object_store11ObjectStore4lists_0ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextB19_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.j = load i64, ptr %i.a, align 8, !range !11, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.e, align 8, !noundef !6 ; 3 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %bb.l, label %bb.g

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i: ; preds = %bb.k, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i
  store ptr %i.l, ptr %i.c, align 8
  store ptr %i.m, ptr %i.d, align 8
  br label %common.resume

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.val20 = load ptr, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %.val21 = load ptr, ptr %i.d, align 8           ; 6 uses
  %i.n = icmp eq ptr %.val20, null
  br i1 %i.n, label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  %i.o = load ptr, ptr %.val21, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.o(ptr noundef nonnull %.val20)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %.val21, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !8, !invariant.load !6 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !9, !invariant.load !6
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #24
  br label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %.val21, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !8, !invariant.load !6 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !9, !invariant.load !6
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.z) #24
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i

common.resume:                                    ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i28, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i ], [ %i.ah, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i28 ]
  resume { ptr, i32 } %common.resume.op

_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.j, %bb.g
  store ptr %i.l, ptr %i.c, align 8
  store ptr %i.m, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.backedge

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.l
  %.sroa.01.0 = phi i64 [ %i.h, %bb.p ], [ -2, %bb.l ]
  store i64 %.sroa.01.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false)
  br label %bb.v

bb.n:                                             ; preds = %bb.c
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.o:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx4, i64 88, i1 false)
  %.not13 = icmp eq i64 %i.h, -2
  br i1 %.not13, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i28: ; preds = %bb.u, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i27
  store ptr null, ptr %i.c, align 8
  br label %common.resume

bb.q:                                             ; preds = %bb.o
  %.val24 = load ptr, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %.val25 = load ptr, ptr %i.d, align 8           ; 6 uses
  %i.aa = icmp eq ptr %.val24, null
  br i1 %i.aa, label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  %i.ab = load ptr, ptr %.val25, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i26, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void %i.ab(ptr noundef nonnull %.val24)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ac = getelementptr inbounds nuw i8, ptr %.val25, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !8, !invariant.load !6 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i29

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i29: ; preds = %bb.t
  %i.af = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !9, !invariant.load !6
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.ag) #24
  br label %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

bb.u:                                             ; preds = %bb.s
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = getelementptr inbounds nuw i8, ptr %.val25, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !8, !invariant.load !6 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i28, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i27

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i27: ; preds = %bb.u
  %i.al = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !9, !invariant.load !6
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) %i.am) #24
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2b_5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers.exit5.i.i.i28

_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i29, %bb.t, %bb.q
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.backedge

.backedge:                                        ; preds = %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, %_RNvMs5_NtCs4NRVxsYgnAr_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2S_5ErrorENtNtB7_6marker4SendEL_EEEE3setCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16
  %.not.be = xor i1 %.not, true
  br label %bb.b

bb.v:                                             ; preds = %bb.e, %bb.n, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4NRVxsYgnAr_4core4hashINtB5_18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtB5_11BuildHasher12build_hasherCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.a = load atomic ptr, ptr @_RNvNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds5SEEDS acquire, align 8, !noalias !85 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvXs0_Cs3L39Jvi82fL_5ahashNtNtB5_13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core7default7Default7default.exit, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds0E0ECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noundef nonnull align 8 @_RNvNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds5SEEDS), !noalias !85
  br label %_RNvXs0_Cs3L39Jvi82fL_5ahashNtNtB5_13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core7default7Default7default.exit

_RNvXs0_Cs3L39Jvi82fL_5ahashNtNtB5_13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core7default7Default7default.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load <2 x i64>, ptr %.sroa.0.0.i.i, align 8, !noalias !85
  %i.g = shufflevector <2 x i64> %i.f, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.g, ptr %i.e, align 8, !alias.scope !85
  %i.h = load <2 x i64>, ptr %i.d, align 8, !noalias !85
  store <2 x i64> %i.h, ptr %0, align 8, !alias.scope !85
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCseCDlJsl44RV_5tokio4sync7barrier7BarrierEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangeyEENtNtBQ_4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs1LivM9IBWqb_12object_store10ObjectMetaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 96
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1LivM9IBWqb_12object_store4path4PathENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 376
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 384
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapIBW_INtNtB9_4iter4IterINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterRShKj2_EENvMNtCsuxFxh2mtOX_5bytes5bytesNtB2n_5Bytes11from_staticENcNtINtNtB1y_6result6ResultB2O_NtCs1LivM9IBWqb_12object_store5ErrorE2Ok0ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !90
  call void @_RNvXs0_NtNtCs5SRHcsv2kA9_12futures_util6stream4iterINtB5_4IterINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterRShKj2_EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !91
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !90, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90
  store i64 -3, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !90, !noundef !6 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @12, ptr %i.c, align 8
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %.sroa.3.0..sroa_idx3, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.k, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx3.sroa_idx, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr null, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx3.sroa_idx, align 8
  call void @_RNvXs_NtCs5SRHcsv2kA9_12futures_util3fnsNcNtINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorE2Ok0INtB4_6FnMut1B1i_E8call_mutCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c)
  %.sroa.04.0.copyload = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.04.0 = phi i64 [ %.sroa.04.0.copyload, %bb.d ], [ -2, %bb.c ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.56.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapIBW_INtNtB9_4iter4IterINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterRShKj2_EENvMNtCsuxFxh2mtOX_5bytes5bytesNtB2n_5Bytes11from_staticENcNtINtNtB1y_6result6ResultB2O_NtCs1LivM9IBWqb_12object_store5ErrorE2Ok0ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9size_hintCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs0_NtNtCs5SRHcsv2kA9_12futures_util6stream4iterINtB5_4IterINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterRShKj2_EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9size_hintCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCs6gU0GsN6MoR_8lock_api5mutex5MutexNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexNtNtNtCseCDlJsl44RV_5tokio4sync7barrier12BarrierStateENtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 7 uses
  %i.e = load atomic i8, ptr %i.d monotonic, align 8, !noalias !94
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.03.0.i.i = phi i8 [ %i.e, %bb.a ], [ %i.k, %bb.c ] ; 3 uses
  %i.f = and i8 %.sroa.03.0.i.i, 1
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNvXNtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCs6gU0GsN6MoR_8lock_api5mutex8RawMutex8try_lock.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = or disjoint i8 %.sroa.03.0.i.i, 1
  %i.i = cmpxchg weak ptr %i.d, i8 %.sroa.03.0.i.i, i8 %i.h acquire monotonic, align 1, !noalias !94 ; 2 uses
  %i.j = extractvalue { i8, i1 } %i.i, 1
  %i.k = extractvalue { i8, i1 } %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.b

_RNvXNtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCs6gU0GsN6MoR_8lock_api5mutex8RawMutex8try_lock.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !94
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 5)
  %i.l = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 4, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22)
  %i.m = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !94
  br label %_RNvXs7_NtCs6gU0GsN6MoR_8lock_api5mutexINtB5_5MutexNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexNtNtNtCseCDlJsl44RV_5tokio4sync7barrier12BarrierStateENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !94
  invoke void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 5)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1, !noalias !94
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex10MutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexNtNtNtCseCDlJsl44RV_5tokio4sync7barrier12BarrierStateEECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.d, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex10MutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexNtNtNtCseCDlJsl44RV_5tokio4sync7barrier12BarrierStateEECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !94
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.q, ptr %i.b, align 8, !noalias !94
  %i.r = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.s = invoke noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %bb.i unwind label %bb.e       ; 2 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !94
  %i.t = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1, !noalias !94
  %i.u = extractvalue { i8, i1 } %i.t, 1
  br i1 %i.u, label %_RNvXs7_NtCs6gU0GsN6MoR_8lock_api5mutexINtB5_5MutexNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexNtNtNtCseCDlJsl44RV_5tokio4sync7barrier12BarrierStateENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  call void @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.d, i1 noundef zeroext false)
  br label %_RNvXs7_NtCs6gU0GsN6MoR_8lock_api5mutexINtB5_5MutexNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexNtNtNtCseCDlJsl44RV_5tokio4sync7barrier12BarrierStateENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

bb.k:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex10MutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexNtNtNtCseCDlJsl44RV_5tokio4sync7barrier12BarrierStateEECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.n

_RNvXs7_NtCs6gU0GsN6MoR_8lock_api5mutexINtB5_5MutexNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexNtNtNtCseCDlJsl44RV_5tokio4sync7barrier12BarrierStateENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %_RNvXNtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCs6gU0GsN6MoR_8lock_api5mutex8RawMutex8try_lock.exit.i, %bb.i, %bb.j
  %.sroa.0.0.in.i = phi i1 [ %i.m, %_RNvXNtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCs6gU0GsN6MoR_8lock_api5mutex8RawMutex8try_lock.exit.i ], [ %i.s, %bb.i ], [ %i.s, %bb.j ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjENtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !97
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 6)
  %i.e = load atomic i64, ptr %i.d monotonic, align 8, !noalias !97 ; 4 uses
  %i.f = and i64 %i.e, 8
  %i.g = icmp ne i64 %i.f, 0
  %i.h = icmp ugt i64 %i.e, -17
  %or.cond.i.i.i = or i1 %i.h, %i.g
  br i1 %or.cond.i.i.i, label %_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.i, label %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, !prof !12

_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i: ; preds = %bb.a
  %i.i = add nuw i64 %i.e, 16
  %i.j = cmpxchg weak ptr %i.d, i64 %i.e, i64 %i.i acquire monotonic, align 8, !noalias !97
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.thread.i, label %_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.i, !prof !5

_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.i: ; preds = %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_slow(ptr noundef nonnull align 8 %i.d, i1 noundef zeroext false)
  br i1 %i.l, label %_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !97
  store ptr @34, ptr %i.a, align 8, !noalias !97
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 17 to ptr), ptr %i.m, align 8, !noalias !97
  %i.n = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !97
  br label %_RNvXsd_NtCs6gU0GsN6MoR_8lock_api6rwlockINtB5_6RwLockNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.thread.i: ; preds = %_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.i, %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.b, align 8, !noalias !97
  %i.p = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16)
          to label %bb.e unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.thread.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = atomicrmw sub ptr %i.d, i64 16 release, align 8, !noalias !97
  %i.s = and i64 %i.r, -14
  %i.t = icmp eq i64 %i.s, 18
  br i1 %i.t, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock15RwLockReadGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjEECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i, !prof !4

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock15RwLockReadGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjEECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i unwind label %bb.g

bb.e:                                             ; preds = %_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  %i.u = atomicrmw sub ptr %i.d, i64 16 release, align 8, !noalias !97
  %i.v = and i64 %i.u, -14
  %i.w = icmp eq i64 %i.v, 18
  br i1 %i.w, label %bb.f, label %_RNvXsd_NtCs6gU0GsN6MoR_8lock_api6rwlockINtB5_6RwLockNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, !prof !4

bb.f:                                             ; preds = %bb.e
  call void @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.d)
  br label %_RNvXsd_NtCs6gU0GsN6MoR_8lock_api6rwlockINtB5_6RwLockNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock15RwLockReadGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjEECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.q

_RNvXsd_NtCs6gU0GsN6MoR_8lock_api6rwlockINtB5_6RwLockNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %bb.b, %bb.e, %bb.f
  %i.y = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97
  ret i1 %i.y
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1q_4SyncEL_ENtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !noalias !101, !nonnull !6
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !100
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1LivM9IBWqb_12object_store6upload15MultipartUploadEL_ENtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !noalias !105, !nonnull !6
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !104
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB1t_14AttributeValueENtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !113
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !116, !noalias !117, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !116, !noalias !117, !noundef !6
  %i.g = add i64 %i.f, 1
  call void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBW_14AttributeValueEE3newCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef %i.g), !noalias !116
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !116, !noalias !117, !noundef !6
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !114, !noalias !118
  %i.j = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeRNtB15_14AttributeValueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterB13_B1W_EECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !113
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs6P5GRezSnwZ_4http10extensions10ExtensionsNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtCs6P5GRezSnwZ_4http10extensionsNtB5_10ExtensionsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCsuxFxh2mtOX_5bytes3fmt5debugNtNtB8_5bytes5BytesNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !122
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !noalias !122
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 11, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !122
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCs2AWtUsOyxgP_3std2io5errorNtB2_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCseCDlJsl44RV_5tokio4sync7barrier12BarrierStateNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !126
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.a, align 8, !noalias !126
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 5, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 7, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !126
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task5errorNtB5_9JoinErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtReNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !130, !noalias !131, !noundef !6 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXse_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXsg_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !135, !noalias !136, !noundef !6 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRuNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter3pad(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRyNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !140, !noalias !141, !noundef !6 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXsC_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXsE_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_5Debug3fmt.exit

_RNvXsX_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXs6_NtNtCseCDlJsl44RV_5tokio4task4coopINtB5_4CoopNCINvNtNtB9_4sync5watch12changed_impljE0ENtNtNtCs4NRVxsYgnAr_4core6future6future6Future4pollCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 14 uses
  %i.b = alloca [3 x i8], align 4                 ; 8 uses
  %i.c = alloca [2 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCseCDlJsl44RV_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !150, !noalias !151, !noundef !6
  switch i8 %i.f, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseCDlJsl44RV_5tokio4task4coop16RestoreOnPendingENtNtNtCs2AWtUsOyxgP_3std6thread5local11AccessErrorE9unwrap_orCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.thread
  ], !prof !152

default.unreachable:                              ; preds = %bb.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseCDlJsl44RV_5tokio4task4coop16RestoreOnPendingENtNtNtCs2AWtUsOyxgP_3std6thread5local11AccessErrorE9unwrap_orCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.thread, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.d, ptr noundef nonnull @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextECsdrBSO4t3gk1_22influxdb3_test_helpers), !noalias !151
  store i8 1, ptr %i.e, align 8, !noalias !151
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.h = load i8, ptr %i.g, align 4, !range !153, !noalias !154, !noundef !6 ; 2 uses
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 69 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !noalias !154 ; 4 uses
  br i1 %i.i, label %bb.d, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseCDlJsl44RV_5tokio4task4coop16RestoreOnPendingENtNtNtCs2AWtUsOyxgP_3std6thread5local11AccessErrorE9unwrap_orCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.d
  tail call void @_RNvNtNtCseCDlJsl44RV_5tokio4task4coop14register_waker(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i24 0, ptr %i.b, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @_RNvXs4_NtNtCseCDlJsl44RV_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aq

bb.e:                                             ; preds = %bb.d
  %i.m = add i8 %i.k, -1
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseCDlJsl44RV_5tokio4task4coop16RestoreOnPendingENtNtNtCs2AWtUsOyxgP_3std6thread5local11AccessErrorE9unwrap_orCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseCDlJsl44RV_5tokio4task4coop16RestoreOnPendingENtNtNtCs2AWtUsOyxgP_3std6thread5local11AccessErrorE9unwrap_orCsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %bb.e, %bb.c
  %.sroa.33.0.i.i.i = phi i8 [ %i.m, %bb.e ], [ %i.k, %bb.c ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.j, align 1, !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i24 0, ptr %i.b, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @_RNvXs4_NtNtCseCDlJsl44RV_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseCDlJsl44RV_5tokio4task4coop16RestoreOnPendingENtNtNtCs2AWtUsOyxgP_3std6thread5local11AccessErrorE9unwrap_orCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.thread

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseCDlJsl44RV_5tokio4task4coop16RestoreOnPendingENtNtNtCs2AWtUsOyxgP_3std6thread5local11AccessErrorE9unwrap_orCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.thread: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseCDlJsl44RV_5tokio4task4coop16RestoreOnPendingENtNtNtCs2AWtUsOyxgP_3std6thread5local11AccessErrorE9unwrap_orCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, %bb.a
  %.sroa.03.011.i21.off8 = phi i8 [ %i.h, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseCDlJsl44RV_5tokio4task4coop16RestoreOnPendingENtNtNtCs2AWtUsOyxgP_3std6thread5local11AccessErrorE9unwrap_orCsdrBSO4t3gk1_22influxdb3_test_helpers.exit ], [ 0, %bb.a ]
  %.sroa.03.011.i21.off16 = phi i8 [ %i.k, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseCDlJsl44RV_5tokio4task4coop16RestoreOnPendingENtNtNtCs2AWtUsOyxgP_3std6thread5local11AccessErrorE9unwrap_orCsdrBSO4t3gk1_22influxdb3_test_helpers.exit ], [ 0, %bb.a ]
  store i8 %.sroa.03.011.i21.off8, ptr %i.c, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.sroa.03.011.i21.off16, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 4 uses
  %i.q = load i8, ptr %i.p, align 1, !range !155, !noalias !156, !noundef !6
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %.thread.i
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.f
  ]

bb.f:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseCDlJsl44RV_5tokio4task4coop16RestoreOnPendingENtNtNtCs2AWtUsOyxgP_3std6thread5local11AccessErrorE9unwrap_orCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !156
  br label %bb.q

.thread.i:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseCDlJsl44RV_5tokio4task4coop16RestoreOnPendingENtNtNtCs2AWtUsOyxgP_3std6thread5local11AccessErrorE9unwrap_orCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.r, align 8, !noalias !156
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !noalias !156
  store <2 x ptr> %i.t, ptr %0, align 8, !noalias !156
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.u, align 8, !noalias !156
  br label %bb.m

bb.g:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseCDlJsl44RV_5tokio4task4coop16RestoreOnPendingENtNtNtCs2AWtUsOyxgP_3std6thread5local11AccessErrorE9unwrap_orCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.thread
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #25
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseCDlJsl44RV_5tokio4task4coop16RestoreOnPendingENtNtNtCs2AWtUsOyxgP_3std6thread5local11AccessErrorE9unwrap_orCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.thread
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #25
          to label %.noexc18 unwind label %bb.an

.noexc18:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseCDlJsl44RV_5tokio4task4coop16RestoreOnPendingENtNtNtCs2AWtUsOyxgP_3std6thread5local11AccessErrorE9unwrap_orCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.thread
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !157, !noalias !156
  switch i8 %.pre.i, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #25
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #25
          to label %.noexc26.i unwind label %bb.l

.noexc26.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %bb.i, %bb.i, %.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.w, align 8, !noalias !156
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync6notify8NotifiedECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !156
  %i.x = load ptr, ptr %0, align 8, !noalias !156, !nonnull !6, !align !7, !noundef !6
  invoke void @_RNvMNtNtNtCseCDlJsl44RV_5tokio4sync5watch10big_notifyNtB2_9BigNotify8notified(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull align 8 %i.x)
          to label %bb.ab unwind label %bb.aa

bb.o:                                             ; preds = %bb.am, %bb.r
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.p:                                             ; preds = %.body34.i, %bb.l
  %.pn23.pn.i = phi { ptr, i32 } [ %.pn23.i, %.body34.i ], [ %i.v, %bb.l ]
  store i8 2, ptr %i.p, align 1, !noalias !156
  br label %.body

bb.q:                                             ; preds = %bb.al, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.aa = invoke noundef zeroext i1 @_RNvXsa_NtNtCseCDlJsl44RV_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCs4NRVxsYgnAr_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.z, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync6notify8NotifiedECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noundef nonnull align 8 %i.z) #27
          to label %.body.i unwind label %bb.o

bb.s:                                             ; preds = %bb.q
  br i1 %i.aa, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !156
  store i8 4, ptr %i.p, align 1, !noalias !156
  br label %bb.ap

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsb_NtNtCseCDlJsl44RV_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.z)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 72
  %.val2.i.i = load ptr, ptr %i.ad, align 8, !noalias !156, !align !7, !noundef !6 ; 2 uses
  %i.ae = icmp eq ptr %.val2.i.i, null
  br i1 %i.ae, label %.body.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.af = getelementptr i8, ptr %0, i64 80
  %.val3.i.i = load ptr, ptr %i.af, align 8, !noalias !156
  %i.ag = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !6, !noundef !6
  invoke void %i.ah(ptr noundef %.val3.i.i)
          to label %.body.i unwind label %bb.y, !inline_history !0

bb.w:                                             ; preds = %bb.t
  %i.ai = getelementptr i8, ptr %0, i64 72
  %.val.i.i = load ptr, ptr %i.ai, align 8, !noalias !156, !align !7, !noundef !6 ; 2 uses
  %i.aj = icmp eq ptr %.val.i.i, null
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync6notify8NotifiedECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = getelementptr i8, ptr %0, i64 80
  %.val1.i.i = load ptr, ptr %i.ak, align 8, !noalias !156
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !6, !noundef !6
  invoke void %i.am(ptr noundef %.val1.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync6notify8NotifiedECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i unwind label %bb.z, !inline_history !158

bb.y:                                             ; preds = %bb.v
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync6notify8NotifiedECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i: ; preds = %bb.x, %bb.w
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.ap, align 8, !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !156
  br label %bb.n

bb.aa:                                            ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

bb.ab:                                            ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i8 1, ptr %i.ar, align 8, !noalias !156
  %i.as = load ptr, ptr %0, align 8, !noalias !156, !nonnull !6, !align !7, !noundef !6
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !156, !nonnull !6, !align !7, !noundef !6
  %i.av = invoke noundef i8 @_RINvNtNtCseCDlJsl44RV_5tokio4sync5watch13maybe_changedjECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noundef nonnull align 8 %i.as, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %bb.ad unwind label %bb.ac     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ad:                                            ; preds = %bb.ab
  %.not.i = icmp eq i8 %i.av, 2
  br i1 %.not.i, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXsb_NtNtCseCDlJsl44RV_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.a)
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val2.i28.i = load ptr, ptr %i.ay, align 8, !noalias !156, !align !7, !noundef !6 ; 2 uses
  %i.az = icmp eq ptr %.val2.i28.i, null
  br i1 %i.az, label %.body34.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val3.i29.i = load ptr, ptr %i.ba, align 8, !noalias !156
  %i.bb = getelementptr inbounds nuw i8, ptr %.val2.i28.i, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !6, !noundef !6
  invoke void %i.bc(ptr noundef %.val3.i29.i)
          to label %.body34.i unwind label %bb.aj, !inline_history !0

bb.ah:                                            ; preds = %bb.ae
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i31.i = load ptr, ptr %i.bd, align 8, !noalias !156, !align !7, !noundef !6 ; 2 uses
  %i.be = icmp eq ptr %.val.i31.i, null
  br i1 %i.be, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val1.i32.i = load ptr, ptr %i.bf, align 8, !noalias !156
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i31.i, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !6, !noundef !6
  invoke void %i.bh(ptr noundef %.val1.i32.i)
          to label %bb.ao unwind label %bb.ak, !inline_history !158

bb.aj:                                            ; preds = %bb.ag
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

.body34.i:                                        ; preds = %bb.am, %.body.i, %bb.ak, %bb.ag, %bb.af, %bb.aa
  %.pn23.i = phi { ptr, i32 } [ %i.aq, %bb.aa ], [ %.pn20.pn.i, %bb.am ], [ %.pn20.pn.i, %.body.i ], [ %i.bk, %bb.ak ], [ %i.ax, %bb.ag ], [ %i.ax, %bb.af ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.bj, align 8, !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !156
  br label %bb.p

bb.ak:                                            ; preds = %bb.ai
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

bb.al:                                            ; preds = %bb.ad
  store i8 0, ptr %i.ar, align 8, !noalias !156
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !156
  br label %bb.q

.body.i:                                          ; preds = %bb.r, %bb.u, %bb.v, %bb.z, %bb.ac
  %.pn20.pn.i = phi { ptr, i32 } [ %i.aw, %bb.ac ], [ %i.ac, %bb.u ], [ %i.ab, %bb.r ], [ %i.ao, %bb.z ], [ %i.ac, %bb.v ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load i8, ptr %i.bm, align 8, !range !153, !noalias !156, !noundef !6
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.am, label %.body34.i

bb.am:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync6notify8NotifiedECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noundef nonnull align 8 %i.a) #27
          to label %.body34.i unwind label %bb.o

bb.an:                                            ; preds = %bb.h, %bb.g
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.an
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.an ], [ %.pn23.pn.i, %bb.p ]
  invoke void @_RNvXs4_NtNtCseCDlJsl44RV_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4task4coop16RestoreOnPendingECsdrBSO4t3gk1_22influxdb3_test_helpers.exit unwind label %bb.ar

bb.ao:                                            ; preds = %bb.ai, %bb.ah
  store i8 0, ptr %i.ar, align 8, !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !156
  store i8 1, ptr %i.p, align 1, !noalias !156
  store i8 0, ptr %i.c, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %.thread, %bb.ao
  %.sroa.0.0 = phi i8 [ %i.av, %bb.ao ], [ 2, %.thread ]
  call void @_RNvXs4_NtNtCseCDlJsl44RV_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.c)
  br label %bb.aq

bb.aq:                                            ; preds = %.critedge, %bb.ap
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %bb.ap ], [ 2, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i8 %.sroa.0.1

bb.ar:                                            ; preds = %.body
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4task4coop16RestoreOnPendingECsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCseCDlJsl44RV_5tokio4sync5watchINtB5_6SenderjENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 6, ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBM_14AttributeValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !noundef !6
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -48
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.h, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCs2AWtUsOyxgP_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock14MockStoreStateEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB1r_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtB5_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtNtBa_5slice4iter4IterB14_EECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXst_NtCs4NRVxsYgnAr_4core3fmtINtNtB7_6marker11PhantomDataINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexNtNtNtCseCDlJsl44RV_5tokio4sync7barrier12BarrierStateEENtB5_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @37, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 67, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !7, !noundef !6
  %i.g = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @38, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXst_NtCs4NRVxsYgnAr_4core3fmtINtNtB7_6marker11PhantomDataINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockjEENtB5_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @39, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 40, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !7, !noundef !6
  %i.g = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @38, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !164
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !164
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !164
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !164
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !164
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !164
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !164
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !164
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !164
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !164
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !165, !noalias !166, !nonnull !6, !noundef !6
  %i.ac = call noundef ptr @_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i), !noalias !165 ; 3 uses
  %.not.i = icmp ne ptr %i.ac, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtCs2AWtUsOyxgP_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_strCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

bb.h:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !165, !noalias !166, !noundef !6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr %.val.i)
          to label %bb.j unwind label %bb.i, !noalias !165

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !165, !noalias !166
  resume { ptr, i32 } %i.ae

bb.j:                                             ; preds = %bb.h
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !165, !noalias !166
  br label %_RNvXNvNtCs2AWtUsOyxgP_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_strCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

_RNvXNvNtCs2AWtUsOyxgP_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_strCsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtQINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBV_3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCsdrBSO4t3gk1_22influxdb3_test_helpers.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !167
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_5causeCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtNtCseCDlJsl44RV_5tokio4sync5watchINtB5_6SenderjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsb_NtNtCseCDlJsl44RV_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtNtCseCDlJsl44RV_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef dereferenceable(2)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 1, 0) i32 @_RNvNtNtNtCs2pCB8NNwrfc_9getrandom8backends8use_file9util_libc13last_os_error() unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtNtCseCDlJsl44RV_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCs4NRVxsYgnAr_4core6future6future6Future4poll(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCseCDlJsl44RV_5tokio4sync5watch10big_notifyNtB2_9BigNotify8notified(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RINvNtNtCseCDlJsl44RV_5tokio4sync5watch13maybe_changedjECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCseCDlJsl44RV_5tokio4task4coop14register_waker(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs2pCB8NNwrfc_9getrandom5errorNtB4_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsuxFxh2mtOX_5bytes5bytes13static_to_vec(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsuxFxh2mtOX_5bytes5bytes13static_to_mut(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local11destructors10linux_like8register(ptr noundef, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBW_14AttributeValueEE3newCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #19

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCs2pCB8NNwrfc_9getrandom8backends27linux_android_with_fallback4init() unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef i32 @_RNvNtNtCs2pCB8NNwrfc_9getrandom8backends27linux_android_with_fallback17use_file_fallback(ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8) unnamed_addr #21

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_slow(ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #21

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull, i1 noundef zeroext) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEENtNtBT_5clone5Clone5cloneCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCs2AWtUsOyxgP_3std7process5abort() unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs5SRHcsv2kA9_12futures_util6stream4onceINtB4_4OnceNCNvXsk_NtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mockNtB15_9MockStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_streams_0ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextB19_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2s_5ErrorENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs5SRHcsv2kA9_12futures_util6stream4onceINtB4_4OnceNCNvXsk_NtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mockNtB15_9MockStoreNtCs1LivM9IBWqb_12object_store11ObjectStore16list_with_offsets_0ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextB19_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2q_5ErrorENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs5SRHcsv2kA9_12futures_util6stream4onceINtB4_4OnceNCNvXsk_NtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mockNtB15_9MockStoreNtCs1LivM9IBWqb_12object_store11ObjectStore4lists_0ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextB19_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs5SRHcsv2kA9_12futures_util3fnsNcNtINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorE2Ok0INtB4_6FnMut1B1i_E8call_mutCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs5SRHcsv2kA9_12futures_util6stream4iterINtB5_4IterINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterRShKj2_EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs5SRHcsv2kA9_12futures_util6stream4iterINtB5_4IterINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterRShKj2_EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9size_hintCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs6P5GRezSnwZ_4http10extensionsNtB5_10ExtensionsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCsuxFxh2mtOX_5bytes3fmt5debugNtNtB8_5bytes5BytesNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs2AWtUsOyxgP_3std2io5errorNtB2_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task5errorNtB5_9JoinErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9debug_map(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeRNtB15_14AttributeValueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterB13_B1W_EECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs7_NtCs6gU0GsN6MoR_8lock_api5mutexINtB8_5MutexppENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtNtB2_17LockedPlaceholderBS_3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEENtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEE9drop_slowCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtCs4NRVxsYgnAr_4core3fmtNtB5_9ArgumentsNtB5_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtNtBa_5slice4iter4IterB14_EECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter3pad(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { cold }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!4 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!5 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!6 = !{}
!7 = !{i64 8}
!8 = !{i64 0, i64 -9223372036854775808}
!9 = !{i64 1, i64 536870913}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{i64 0, i64 2}
!12 = !{!"branch_weights", i32 2002, i32 2000}
!13 = !{i64 -3, i64 -9223372036854775808}
!14 = distinct !{!14, !"_RNvCs2pCB8NNwrfc_9getrandom4fill"}
!15 = distinct !{!15, !14, !"_RNvCs2pCB8NNwrfc_9getrandom4fill: argument 0"}
!16 = distinct !{!16, !"_RNvNtNtCs2pCB8NNwrfc_9getrandom8backends27linux_android_with_fallback10fill_inner"}
!17 = distinct !{!17, !16, !"_RNvNtNtCs2pCB8NNwrfc_9getrandom8backends27linux_android_with_fallback10fill_inner: argument 0"}
!18 = distinct !{!18, !"_RINvNtNtNtCs2pCB8NNwrfc_9getrandom8backends8use_file9util_libc14sys_fill_exactNCNvNtB6_27linux_android_with_fallback10fill_inner0ECsdrBSO4t3gk1_22influxdb3_test_helpers"}
!19 = distinct !{!19, !18, !"_RINvNtNtNtCs2pCB8NNwrfc_9getrandom8backends8use_file9util_libc14sys_fill_exactNCNvNtB6_27linux_android_with_fallback10fill_inner0ECsdrBSO4t3gk1_22influxdb3_test_helpers: argument 1"}
!20 = distinct !{null, null, null, null, null, null}
!21 = distinct !{!21, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxAAyj4_j2_E3newCsdrBSO4t3gk1_22influxdb3_test_helpers"}
!22 = distinct !{!22, !21, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxAAyj4_j2_E3newCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!23 = !{!17, !15}
!24 = !{!19}
!25 = !{!"branch_weights", i32 2000, i32 6004}
!26 = !{!22}
!27 = distinct !{!27, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECsdrBSO4t3gk1_22influxdb3_test_helpers"}
!28 = distinct !{!28, !27, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!29 = !{!28}
!30 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!31 = distinct !{!31, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEEECsdrBSO4t3gk1_22influxdb3_test_helpers"}
!32 = distinct !{!32, !31, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEEECsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!33 = distinct !{!33, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers"}
!34 = distinct !{!34, !33, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!35 = distinct !{!35, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEEECsdrBSO4t3gk1_22influxdb3_test_helpers"}
!36 = distinct !{!36, !35, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEEECsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!37 = distinct !{!37, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers"}
!38 = distinct !{!38, !37, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync5watch6SharedjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!39 = !{!32}
!40 = !{!34}
!41 = !{!34, !32}
!42 = !{!36}
!43 = !{!38}
!44 = !{!38, !36}
!45 = distinct !{null, null, null, null, null, null}
!46 = distinct !{!46, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextECsdrBSO4t3gk1_22influxdb3_test_helpers"}
!47 = distinct !{!47, !46, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextECsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!48 = distinct !{!48, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCseCDlJsl44RV_5tokio7runtime7context7current10HandleCellECsdrBSO4t3gk1_22influxdb3_test_helpers"}
!49 = distinct !{!49, !48, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCseCDlJsl44RV_5tokio7runtime7context7current10HandleCellECsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!50 = distinct !{!50, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleEEECsdrBSO4t3gk1_22influxdb3_test_helpers"}
!51 = distinct !{!51, !50, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleEEECsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!52 = distinct !{!52, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleEEECsdrBSO4t3gk1_22influxdb3_test_helpers"}
!53 = distinct !{!53, !52, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleEEECsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!54 = distinct !{!54, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleEECsdrBSO4t3gk1_22influxdb3_test_helpers"}
!55 = distinct !{!55, !54, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleEECsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!56 = distinct !{!56, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECsdrBSO4t3gk1_22influxdb3_test_helpers"}
!57 = distinct !{!57, !56, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!58 = distinct !{!58, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleEECsdrBSO4t3gk1_22influxdb3_test_helpers"}
!59 = distinct !{!59, !58, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleEECsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!60 = distinct !{!60, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers"}
!61 = distinct !{!61, !60, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!62 = distinct !{!62, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsdrBSO4t3gk1_22influxdb3_test_helpers"}
!63 = distinct !{!63, !62, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!64 = distinct !{!64, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers"}
!65 = distinct !{!65, !64, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!66 = !{!47}
!67 = !{!49}
!68 = !{!51}
!69 = !{!53}
!70 = !{!55}
!71 = !{i64 0, i64 3}
!72 = !{!55, !53, !51, !49, !47}
!73 = !{!57}
!74 = !{!59}
!75 = !{!61}
!76 = !{!61, !59, !57, !55, !53, !51, !49, !47}
!77 = !{!63}
!78 = !{!65}
!79 = !{!65, !63, !57, !55, !53, !51, !49, !47}
!80 = !{!"branch_weights", i32 2000, i32 2002}
!81 = !{i64 0, i64 -9223372036854775807}
!82 = !{i64 -3, i64 -9223372036854775790}
!83 = distinct !{!83, !"_RNvXs0_Cs3L39Jvi82fL_5ahashNtNtB5_13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core7default7Default7default"}
!84 = distinct !{!84, !83, !"_RNvXs0_Cs3L39Jvi82fL_5ahashNtNtB5_13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core7default7Default7default: argument 0"}
!85 = !{!84}
!86 = distinct !{!86, !"_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_4iter4IterINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterRShKj2_EENvMNtCsuxFxh2mtOX_5bytes5bytesNtB2j_5Bytes11from_staticENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsdrBSO4t3gk1_22influxdb3_test_helpers"}
!87 = distinct !{!87, !86, !"_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_4iter4IterINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterRShKj2_EENvMNtCsuxFxh2mtOX_5bytes5bytesNtB2j_5Bytes11from_staticENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 2"}
!88 = distinct !{!88, !86, !"_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_4iter4IterINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterRShKj2_EENvMNtCsuxFxh2mtOX_5bytes5bytesNtB2j_5Bytes11from_staticENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 1"}
!89 = distinct !{!89, !86, !"_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_4iter4IterINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterRShKj2_EENvMNtCsuxFxh2mtOX_5bytes5bytesNtB2j_5Bytes11from_staticENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!90 = !{!89, !88, !87}
!91 = !{!89}
!92 = distinct !{!92, !"_RNvXs7_NtCs6gU0GsN6MoR_8lock_api5mutexINtB5_5MutexNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexNtNtNtCseCDlJsl44RV_5tokio4sync7barrier12BarrierStateENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers"}
!93 = distinct !{!93, !92, !"_RNvXs7_NtCs6gU0GsN6MoR_8lock_api5mutexINtB5_5MutexNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexNtNtNtCseCDlJsl44RV_5tokio4sync7barrier12BarrierStateENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!94 = !{!93}
!95 = distinct !{!95, !"_RNvXsd_NtCs6gU0GsN6MoR_8lock_api6rwlockINtB5_6RwLockNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers"}
!96 = distinct !{!96, !95, !"_RNvXsd_NtCs6gU0GsN6MoR_8lock_api6rwlockINtB5_6RwLockNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!97 = !{!96}
!98 = distinct !{!98, !"_RNvXsn_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtBL_3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers"}
!99 = distinct !{!99, !98, !"_RNvXsn_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtBL_3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!100 = distinct !{null}
!101 = !{!99}
!102 = distinct !{!102, !"_RNvXsn_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs1LivM9IBWqb_12object_store6upload15MultipartUploadEL_ENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers"}
!103 = distinct !{!103, !102, !"_RNvXsn_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs1LivM9IBWqb_12object_store6upload15MultipartUploadEL_ENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!104 = distinct !{null}
!105 = !{!103}
!106 = distinct !{!106, !"_RNvXs6_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB15_14AttributeValueENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers"}
!107 = distinct !{!107, !106, !"_RNvXs6_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB15_14AttributeValueENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!108 = distinct !{!108, !106, !"_RNvXs6_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB15_14AttributeValueENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 1"}
!109 = distinct !{!109, !"_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB15_14AttributeValueE4iterCsdrBSO4t3gk1_22influxdb3_test_helpers"}
!110 = distinct !{!110, !109, !"_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB15_14AttributeValueE4iterCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!111 = distinct !{!111, !109, !"_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB15_14AttributeValueE4iterCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 1"}
!112 = !{!107}
!113 = !{!107, !108}
!114 = !{!110}
!115 = !{!111}
!116 = !{!111, !107}
!117 = !{!110, !108}
!118 = !{!111, !107, !108}
!119 = distinct !{!119, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt"}
!120 = distinct !{!120, !119, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt: argument 1"}
!121 = distinct !{!121, !119, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt: argument 0"}
!122 = !{!121, !120}
!123 = distinct !{!123, !"_RNvXs1_NtNtCseCDlJsl44RV_5tokio4sync7barrierNtB5_12BarrierStateNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt"}
!124 = distinct !{!124, !123, !"_RNvXs1_NtNtCseCDlJsl44RV_5tokio4sync7barrierNtB5_12BarrierStateNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt: argument 1"}
!125 = distinct !{!125, !123, !"_RNvXs1_NtNtCseCDlJsl44RV_5tokio4sync7barrierNtB5_12BarrierStateNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt: argument 0"}
!126 = !{!125, !124}
!127 = distinct !{!127, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Debug3fmt"}
!128 = distinct !{!128, !127, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Debug3fmt: argument 1"}
!129 = distinct !{!129, !127, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Debug3fmt: argument 0"}
!130 = !{!128}
!131 = !{!129}
!132 = distinct !{!132, !"_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt"}
!133 = distinct !{!133, !132, !"_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt: argument 1"}
!134 = distinct !{!134, !132, !"_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt: argument 0"}
!135 = !{!133}
!136 = !{!134}
!137 = distinct !{!137, !"_RNvXsX_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_5Debug3fmt"}
!138 = distinct !{!138, !137, !"_RNvXsX_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_5Debug3fmt: argument 1"}
!139 = distinct !{!139, !137, !"_RNvXsX_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_5Debug3fmt: argument 0"}
!140 = !{!138}
!141 = !{!139}
!142 = distinct !{!142, !"_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetINtNtNtCs4NRVxsYgnAr_4core4task4poll4PollNtNtNtB10_4task4coop16RestoreOnPendingENCNvB2O_12poll_proceed0E0B27_ECsdrBSO4t3gk1_22influxdb3_test_helpers"}
!143 = distinct !{!143, !142, !"_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetINtNtNtCs4NRVxsYgnAr_4core4task4poll4PollNtNtNtB10_4task4coop16RestoreOnPendingENCNvB2O_12poll_proceed0E0B27_ECsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!144 = distinct !{!144, !"_RNCINvNtNtCseCDlJsl44RV_5tokio7runtime7context6budgetINtNtNtCs4NRVxsYgnAr_4core4task4poll4PollNtNtNtB8_4task4coop16RestoreOnPendingENCNvB1w_12poll_proceed0E0CsdrBSO4t3gk1_22influxdb3_test_helpers"}
!145 = distinct !{!145, !144, !"_RNCINvNtNtCseCDlJsl44RV_5tokio7runtime7context6budgetINtNtNtCs4NRVxsYgnAr_4core4task4poll4PollNtNtNtB8_4task4coop16RestoreOnPendingENCNvB1w_12poll_proceed0E0CsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!146 = distinct !{!146, !"_RNCNvNtNtCseCDlJsl44RV_5tokio4task4coop12poll_proceed0CsdrBSO4t3gk1_22influxdb3_test_helpers"}
!147 = distinct !{!147, !146, !"_RNCNvNtNtCseCDlJsl44RV_5tokio4task4coop12poll_proceed0CsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!148 = distinct !{!148, !"_RNCINvNtNtCseCDlJsl44RV_5tokio4sync5watch12changed_impljE0CsdrBSO4t3gk1_22influxdb3_test_helpers"}
!149 = distinct !{!149, !148, !"_RNCINvNtNtCseCDlJsl44RV_5tokio4sync5watch12changed_impljE0CsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!150 = !{i8 0, i8 3}
!151 = !{!143}
!152 = !{!"branch_weights", i32 1, i32 1, i32 2000, i32 2000}
!153 = !{i8 0, i8 2}
!154 = !{!147, !145, !143}
!155 = !{i8 0, i8 5}
!156 = !{!149}
!157 = !{i8 0, i8 4}
!158 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync6notify8NotifiedECsdrBSO4t3gk1_22influxdb3_test_helpers}
!159 = distinct !{!159, !"_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw"}
!160 = distinct !{!160, !159, !"_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw: argument 0"}
!161 = distinct !{!161, !"_RNvXNvNtCs2AWtUsOyxgP_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_strCsdrBSO4t3gk1_22influxdb3_test_helpers"}
!162 = distinct !{!162, !161, !"_RNvXNvNtCs2AWtUsOyxgP_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_strCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 0"}
!163 = distinct !{!163, !161, !"_RNvXNvNtCs2AWtUsOyxgP_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_strCsdrBSO4t3gk1_22influxdb3_test_helpers: argument 1"}
!164 = !{!160}
!165 = !{!162}
!166 = !{!163}
!167 = distinct !{null}
end_hunk_0
