inline.NumInlined: 971
inline.NumDeleted: 523
begin_hunk_0_@_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB2i_:bb.a
bb.p:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !4, !invariant.load !3, !noalias !841 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !5, !invariant.load !3, !noalias !841
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #11, !noalias !841
  br label %.body

bb.r:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.r ], [ %i.y, %bb.q ], [ %i.y, %bb.p ]
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapxNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.o, %bb.n, %bb.k, %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2e_.exit, %bb.j
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB2i_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !842
  store i32 2, ptr %i.a, align 8, !noalias !842
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2c_(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !842
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #11
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #11
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2i_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_NCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2w_22test_concurrent_writes00NCNvMB2w_NtB2w_6Worker3new0E00EEINtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEEB2y_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2i_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2i_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollB2i_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2i_.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2i_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2e_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !845
  store ptr %i.i, ptr %i.g, align 8, !noalias !854
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !854
  %.sroa.13.sroa.673.0..sroa.13.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.13.sroa.673.0..sroa.13.8..sroa_idx.sroa_idx.i.i, align 8, !noalias !854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !854
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollB2c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.g unwind label %bb.c, !noalias !855

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !845
  store i32 2, ptr %i.f, align 8, !noalias !845
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2c_(ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !845

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #12, !noalias !845
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !845
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !854 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !854
  unreachable

bb.f:                                             ; preds = %.body.i.i
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i64, ptr %i.t, align 8, !range !733, !noalias !854, !noundef !3
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = insertelement <2 x ptr> poison, ptr %i.v, i64 0
  %i.x = insertelement <2 x ptr> %i.w, ptr %i.r, i64 1
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !845
  %.sroa.081.0.copyload.i.i = load ptr, ptr %i.h, align 8, !noalias !854 ; 2 uses
  %.sroa.482.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.y = load <2 x ptr>, ptr %.sroa.482.0..sroa_idx.i.i, align 8, !noalias !854
  %.sroa.683.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.683.0.copyload.i.i = load ptr, ptr %.sroa.683.0..sroa_idx.i.i, align 8, !noalias !854
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.z = load <2 x i64>, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !854
  %i.aa = icmp eq ptr %.sroa.081.0.copyload.i.i, null
  br i1 %i.aa, label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2e_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.612.sroa.6.sroa.6.0.i.i = phi ptr [ %i.s, %bb.f ], [ %.sroa.683.0.copyload.i.i, %bb.g ]
  %.sroa.010.0.i.i = phi ptr [ null, %bb.f ], [ %.sroa.081.0.copyload.i.i, %bb.g ]
  %i.ab = phi <2 x i64> [ undef, %bb.f ], [ %i.z, %bb.g ]
  %i.ac = phi <2 x ptr> [ %i.x, %bb.f ], [ %i.y, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !856
  store ptr %.sroa.010.0.i.i, ptr %i.ad, align 8, !noalias !854
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <2 x ptr> %i.ac, ptr %.sroa.10.8..sroa_idx.i.i, align 8, !noalias !854
  %.sroa.11.sroa.4.0..sroa.11.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.612.sroa.6.sroa.6.0.i.i, ptr %.sroa.11.sroa.4.0..sroa.11.8..sroa_idx.sroa_idx.i.i, align 8, !noalias !854
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store <2 x i64> %i.ab, ptr %.sroa.12.8..sroa_idx.i.i, align 8, !noalias !854
  store i32 1, ptr %i.e, align 8, !noalias !856
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2c_(ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.e)
          to label %.thread119.i.i unwind label %bb.i, !noalias !854

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.af)
          to label %bb.k unwind label %bb.j, !noalias !854 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !854
  unreachable

.thread119.i.i:                                   ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !856
  br label %bb.w

bb.k:                                             ; preds = %bb.i
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0      ; 4 uses
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %.not56.i.i = icmp eq ptr %i.ai, null
  br i1 %.not56.i.i, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !3, !noalias !854 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ak(ptr noundef nonnull %i.ai)
          to label %bb.n unwind label %bb.p, !noalias !854

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !4, !invariant.load !3, !noalias !854 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !5, !invariant.load !3, !noalias !854
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef range(i64 1, 0) %i.am, i64 noundef range(i64 1, 536870913) %i.ap) #11, !noalias !854
  br label %bb.w

bb.p:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !4, !invariant.load !3, !noalias !854 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !5, !invariant.load !3, !noalias !854
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef range(i64 1, 0) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #11, !noalias !854
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i: ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.aq

bb.r:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2c_(ptr noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ay)
          to label %bb.v unwind label %bb.t       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2e_.exit.i

bb.v:                                             ; preds = %bb.s
  %i.bb = extractvalue { ptr, ptr } %i.az, 0
  %i.bc = extractvalue { ptr, ptr } %i.az, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2e_.exit.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2e_.exit.i: ; preds = %bb.v, %bb.u
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.u ], [ %i.bc, %bb.v ]
  %.sroa.63.0.i.i = phi ptr [ null, %bb.u ], [ %i.bb, %bb.v ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 8, !range !733, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %i.bd, align 8
  %.sroa.5.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i1.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2c_(ptr noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2i_.exit.thread

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2e_.exit.i: ; preds = %bb.g
  %i.be = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.be, label %default.unreachable [
    i8 3, label %bb.x
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2i_.exit.thread12
    i8 1, label %bb.ac
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2i_.exit
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2i_.exit.thread12: ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2e_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2i_.exit

bb.w:                                             ; preds = %bb.o, %bb.n, %bb.k, %.thread119.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2i_.exit.thread

bb.x:                                             ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2e_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2c_(ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bg)
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2i_.exit.thread8

bb.ab:                                            ; preds = %bb.y
  %i.bj = extractvalue { ptr, ptr } %i.bh, 0
  %i.bk = extractvalue { ptr, ptr } %i.bh, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2i_.exit.thread8

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2i_.exit.thread8: ; preds = %bb.aa, %bb.ab
  %.sroa.8.0.i2.i = phi ptr [ undef, %bb.aa ], [ %i.bk, %bb.ab ]
  %.sroa.63.0.i3.i = phi ptr [ null, %bb.aa ], [ %i.bj, %bb.ab ]
  %.sroa.02.0.in.i4.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i5.i = load i64, ptr %.sroa.02.0.in.i4.i, align 8, !range !733, !noundef !3
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputB2i_:bb.a
bb.p:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !4, !invariant.load !3, !noalias !874 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !5, !invariant.load !3, !noalias !874
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #11, !noalias !874
  br label %.body

bb.r:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.r ], [ %i.y, %bb.q ], [ %i.y, %bb.p ]
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapxNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.o, %bb.n, %bb.k, %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0B2e_.exit, %bb.j
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE21drop_join_handle_slowB2i_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !875
  store i32 2, ptr %i.a, align 8, !noalias !875
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB2c_(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !875
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #11
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #11
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB2i_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_NCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2w_22test_concurrent_writes00NCNvMB2w_NtB2w_6Worker3new0E00EEINtNtBL_4sync3ArcNtNtNtNtB1m_9scheduler12multi_thread6handle6HandleEEEEB2y_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB2i_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB2i_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollB2i_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB2i_.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2i_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB2e_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !878
  store ptr %i.i, ptr %i.g, align 8, !noalias !887
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !887
  %.sroa.13.sroa.673.0..sroa.13.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.13.sroa.673.0..sroa.13.8..sroa_idx.sroa_idx.i.i, align 8, !noalias !887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !887
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollB2c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.g unwind label %bb.c, !noalias !888

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !878
  store i32 2, ptr %i.f, align 8, !noalias !878
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB2c_(ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !878

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #12, !noalias !878
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !878
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !887 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !887
  unreachable

bb.f:                                             ; preds = %.body.i.i
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i64, ptr %i.t, align 8, !range !733, !noalias !887, !noundef !3
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = insertelement <2 x ptr> poison, ptr %i.v, i64 0
  %i.x = insertelement <2 x ptr> %i.w, ptr %i.r, i64 1
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !878
  %.sroa.081.0.copyload.i.i = load ptr, ptr %i.h, align 8, !noalias !887 ; 2 uses
  %.sroa.482.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.y = load <2 x ptr>, ptr %.sroa.482.0..sroa_idx.i.i, align 8, !noalias !887
  %.sroa.683.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.683.0.copyload.i.i = load ptr, ptr %.sroa.683.0..sroa_idx.i.i, align 8, !noalias !887
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.z = load <2 x i64>, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !887
  %i.aa = icmp eq ptr %.sroa.081.0.copyload.i.i, null
  br i1 %i.aa, label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB2e_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.612.sroa.6.sroa.6.0.i.i = phi ptr [ %i.s, %bb.f ], [ %.sroa.683.0.copyload.i.i, %bb.g ]
  %.sroa.010.0.i.i = phi ptr [ null, %bb.f ], [ %.sroa.081.0.copyload.i.i, %bb.g ]
  %i.ab = phi <2 x i64> [ undef, %bb.f ], [ %i.z, %bb.g ]
  %i.ac = phi <2 x ptr> [ %i.x, %bb.f ], [ %i.y, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !889
  store ptr %.sroa.010.0.i.i, ptr %i.ad, align 8, !noalias !887
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <2 x ptr> %i.ac, ptr %.sroa.10.8..sroa_idx.i.i, align 8, !noalias !887
  %.sroa.11.sroa.4.0..sroa.11.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.612.sroa.6.sroa.6.0.i.i, ptr %.sroa.11.sroa.4.0..sroa.11.8..sroa_idx.sroa_idx.i.i, align 8, !noalias !887
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store <2 x i64> %i.ab, ptr %.sroa.12.8..sroa_idx.i.i, align 8, !noalias !887
  store i32 1, ptr %i.e, align 8, !noalias !889
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB2c_(ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.e)
          to label %.thread119.i.i unwind label %bb.i, !noalias !887

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.af)
          to label %bb.k unwind label %bb.j, !noalias !887 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !887
  unreachable

.thread119.i.i:                                   ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !889
  br label %bb.w

bb.k:                                             ; preds = %bb.i
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0      ; 4 uses
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %.not56.i.i = icmp eq ptr %i.ai, null
  br i1 %.not56.i.i, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !3, !noalias !887 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ak(ptr noundef nonnull %i.ai)
          to label %bb.n unwind label %bb.p, !noalias !887

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !4, !invariant.load !3, !noalias !887 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !5, !invariant.load !3, !noalias !887
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef range(i64 1, 0) %i.am, i64 noundef range(i64 1, 536870913) %i.ap) #11, !noalias !887
  br label %bb.w

bb.p:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !4, !invariant.load !3, !noalias !887 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !5, !invariant.load !3, !noalias !887
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef range(i64 1, 0) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #11, !noalias !887
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i: ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.aq

bb.r:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB2c_(ptr noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ay)
          to label %bb.v unwind label %bb.t       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB2e_.exit.i

bb.v:                                             ; preds = %bb.s
  %i.bb = extractvalue { ptr, ptr } %i.az, 0
  %i.bc = extractvalue { ptr, ptr } %i.az, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB2e_.exit.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB2e_.exit.i: ; preds = %bb.v, %bb.u
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.u ], [ %i.bc, %bb.v ]
  %.sroa.63.0.i.i = phi ptr [ null, %bb.u ], [ %i.bb, %bb.v ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 8, !range !733, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %i.bd, align 8
  %.sroa.5.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i1.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB2c_(ptr noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2i_.exit.thread

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB2e_.exit.i: ; preds = %bb.g
  %i.be = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.be, label %default.unreachable [
    i8 3, label %bb.x
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2i_.exit.thread12
    i8 1, label %bb.ac
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2i_.exit
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2i_.exit.thread12: ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB2e_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB2i_.exit

bb.w:                                             ; preds = %bb.o, %bb.n, %bb.k, %.thread119.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2i_.exit.thread

bb.x:                                             ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB2e_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB2c_(ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bg)
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2i_.exit.thread8

bb.ab:                                            ; preds = %bb.y
  %i.bj = extractvalue { ptr, ptr } %i.bh, 0
  %i.bk = extractvalue { ptr, ptr } %i.bh, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2i_.exit.thread8

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2g_22test_concurrent_writes00NCNvMB2g_NtB2g_6Worker3new0E00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2i_.exit.thread8: ; preds = %bb.aa, %bb.ab
  %.sroa.8.0.i2.i = phi ptr [ undef, %bb.aa ], [ %i.bk, %bb.ab ]
  %.sroa.63.0.i3.i = phi ptr [ null, %bb.aa ], [ %i.bj, %bb.ab ]
  %.sroa.02.0.in.i4.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i5.i = load i64, ptr %.sroa.02.0.in.i4.i, align 8, !range !733, !noundef !3
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB2h_:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #12, !noalias !898
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2d_.exit: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.b, ptr noundef nonnull align 16 dereferenceable(144) %i.l, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !898
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 16, !range !762, !alias.scope !901, !noundef !3
  %.not.i = icmp eq i64 %i.n, 3
  br i1 %.not.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_NtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB1C_6errors15DeltaTableErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.i

bb.i:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2d_.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTjIBH_NtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB1c_6errors15DeltaTableErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 16 dereferenceable(144) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_NtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB1C_6errors15DeltaTableErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %1, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false)
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_NtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB1C_6errors15DeltaTableErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2d_.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %1, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB2h_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 16              ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !904
  store i32 2, ptr %i.a, align 16, !noalias !904
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2b_(ptr noundef nonnull align 16 %i.e, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !904
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #11
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #11
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_NCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEEB2x_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollB2h_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 16              ; 4 uses
  %i.b = alloca [160 x i8], align 16              ; 8 uses
  %i.c = alloca [160 x i8], align 16              ; 4 uses
  %i.d = alloca [160 x i8], align 16              ; 8 uses
  %i.e = alloca [160 x i8], align 16              ; 11 uses
  %i.f = alloca [160 x i8], align 16              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [144 x i8], align 16              ; 10 uses
  %.sroa.716.i.i = alloca [96 x i8], align 16     ; 5 uses
  %.sroa.12.sroa.7.i.i = alloca [96 x i8], align 16 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit.thread6
  ]

default.unreachable:                              ; preds = %bb.w, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.716.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !907
  store ptr %i.i, ptr %i.g, align 8, !noalias !916
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.l, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !916
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.14.8..sroa_idx.i.i, align 8, !noalias !916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !916
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollB2b_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.h, ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !917

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !907
  store i32 2, ptr %i.f, align 16, !noalias !907
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2b_(ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !907

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #12, !noalias !907
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !907
  %i.p = extractvalue { ptr, i32 } %i.n, 0
  %i.q = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.p)
          to label %.thread.i.i unwind label %bb.e, !noalias !916 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !916
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.q, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !907
  %.sroa.086.0.copyload.i.i = load ptr, ptr %i.h, align 16, !noalias !916 ; 2 uses
  %.sroa.487.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.487.0.copyload.i.i = load ptr, ptr %.sroa.487.0..sroa_idx.i.i, align 8, !noalias !916 ; 2 uses
  %.sroa.588.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.588.0.copyload.i.i = load i64, ptr %.sroa.588.0..sroa_idx.i.i, align 16, !noalias !916 ; 2 uses
  %.sroa.689.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.689.0.copyload.i.i = load i64, ptr %.sroa.689.0..sroa_idx.i.i, align 8, !noalias !916
  %.sroa.790.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.790.0.copyload.i.i = load ptr, ptr %.sroa.790.0..sroa_idx.i.i, align 16, !noalias !916
  %.sroa.891.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.891.0.copyload.i.i = load ptr, ptr %.sroa.891.0..sroa_idx.i.i, align 8, !noalias !916
  %.sroa.992.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.12.sroa.7.i.i, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.992.0..sroa_idx.i.i, i64 96, i1 false), !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !916
  switch i64 %.sroa.588.0.copyload.i.i, label %bb.h [
    i64 3, label %bb.g
    i64 2, label %bb.w
  ], !prof !918

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %.sroa.078.0101116.i.i = phi ptr [ %i.s, %.thread.i.i ], [ %.sroa.086.0.copyload.i.i, %bb.f ] ; 2 uses
  %.sroa.8.0103115.i.i = phi ptr [ %i.t, %.thread.i.i ], [ %.sroa.487.0.copyload.i.i, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.078.0101116.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0103115.i.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !733, !noalias !916, !noundef !3
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.716.i.i, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.12.sroa.7.i.i, i64 96, i1 false), !noalias !916
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.6.sroa.7.0.i.i = phi ptr [ %.sroa.891.0.copyload.i.i, %bb.h ], [ %.sroa.8.0103115.i.i, %bb.g ]
  %.sroa.6.sroa.6.0.i.i = phi ptr [ %.sroa.790.0.copyload.i.i, %bb.h ], [ %.sroa.078.0101116.i.i, %bb.g ]
  %.sroa.6.sroa.0.0.i.i = phi i64 [ %.sroa.689.0.copyload.i.i, %bb.h ], [ %i.v, %bb.g ]
  %.sroa.5.0.i.i = phi i64 [ %.sroa.588.0.copyload.i.i, %bb.h ], [ 2, %bb.g ]
  %.sroa.012.sroa.0.0.i.i = phi ptr [ %.sroa.086.0.copyload.i.i, %bb.h ], [ undef, %bb.g ]
  %.sroa.012.sroa.5.0.i.i = phi ptr [ %.sroa.487.0.copyload.i.i, %bb.h ], [ undef, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !919
  store ptr %.sroa.012.sroa.0.0.i.i, ptr %i.w, align 16, !noalias !916
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.012.sroa.5.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !916
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.5.0.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 16, !noalias !916
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.6.sroa.0.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !916
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.sroa.6.sroa.6.0.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i, align 16, !noalias !916
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.sroa.6.sroa.7.0.i.i, ptr %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !916
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.11.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.716.i.i, i64 96, i1 false), !noalias !916
  store i32 1, ptr %i.e, align 16, !noalias !919
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2b_(ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.e)
          to label %.thread127.i.i unwind label %bb.j, !noalias !916

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  %i.z = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.y)
          to label %bb.l unwind label %bb.k, !noalias !916 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !916
  unreachable

.thread127.i.i:                                   ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !919
  br label %bb.x

bb.l:                                             ; preds = %bb.j
  %i.ab = extractvalue { ptr, ptr } %i.z, 0       ; 4 uses
  %i.ac = extractvalue { ptr, ptr } %i.z, 1       ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !3, !noalias !916 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ad(ptr noundef nonnull %i.ab)
          to label %bb.n unwind label %bb.p, !noalias !916

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !4, !invariant.load !3, !noalias !916 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !5, !invariant.load !3, !noalias !916
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef range(i64 1, 0) %i.af, i64 noundef range(i64 1, 536870913) %i.ai) #11, !noalias !916
  br label %bb.x

bb.p:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !4, !invariant.load !3, !noalias !916 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !range !5, !invariant.load !3, !noalias !916
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef range(i64 1, 0) %i.al, i64 noundef range(i64 1, 536870913) %i.ao) #11, !noalias !916
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i: ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.aj

bb.r:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 16
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2b_(ptr noundef nonnull align 16 %i.ap, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.c)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ar)
          to label %bb.v unwind label %bb.t       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2d_.exit.i

bb.v:                                             ; preds = %bb.s
  %i.au = extractvalue { ptr, ptr } %i.as, 0
  %i.av = extractvalue { ptr, ptr } %i.as, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2d_.exit.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2d_.exit.i: ; preds = %bb.v, %bb.u
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.u ], [ %i.av, %bb.v ]
  %.sroa.63.0.i.i = phi ptr [ null, %bb.u ], [ %i.au, %bb.v ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 8, !range !733, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i, align 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 16
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2b_(ptr noundef nonnull align 16 %i.ap, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit.thread

bb.w:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i.i)
  %i.aw = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.aw, label %default.unreachable [
    i8 3, label %bb.y
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit.thread12
    i8 1, label %bb.ad
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit.thread12: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit

bb.x:                                             ; preds = %bb.o, %bb.n, %.thread127.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit.thread

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 16
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2b_(ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.a)
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ay)
          to label %bb.ac unwind label %bb.aa     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit.thread8

bb.ac:                                            ; preds = %bb.z
  %i.bb = extractvalue { ptr, ptr } %i.az, 0
  %i.bc = extractvalue { ptr, ptr } %i.az, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit.thread8

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit.thread8: ; preds = %bb.ab, %bb.ac
  %.sroa.8.0.i1.i = phi ptr [ undef, %bb.ab ], [ %i.bc, %bb.ac ]
  %.sroa.63.0.i2.i = phi ptr [ null, %bb.ab ], [ %i.bb, %bb.ac ]
  %.sroa.02.0.in.i3.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i4.i = load i64, ptr %.sroa.02.0.in.i3.i, align 8, !range !733, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 2, ptr %.sroa.4.0..sroa_idx.i5.i, align 16
  %.sroa.5.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.02.0.i4.i, ptr %.sroa.5.0..sroa_idx.i6.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.63.0.i2.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i7.i, align 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %.sroa.8.0.i1.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i8.i, align 8
  store i32 1, ptr %i.b, align 16
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2b_(ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit.thread

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit.thread6

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit.thread: ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2d_.exit.i, %bb.x, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit.thread8
  call fastcc void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2h_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit

bb.ad:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtBG_4task8Schedule9yield_nowCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noundef nonnull %0)
  %i.bd = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.bd, label %bb.ae, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_NCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEEB2x_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit: ; preds = %bb.a, %bb.ae, %bb.ad, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit.thread12, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit.thread6, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit.thread
  ret void

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit.thread6: ; preds = %bb.a, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2h_.exit
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_NCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEEB2x_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2h_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 16              ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef i64 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State22transition_to_complete(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.d = and i64 %i.c, 8
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, 16
  %.not1.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not1.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !924
end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputB2h_:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #12, !noalias !928
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0B2d_.exit: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.b, ptr noundef nonnull align 16 dereferenceable(144) %i.l, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !928
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 16, !range !762, !alias.scope !931, !noundef !3
  %.not.i = icmp eq i64 %i.n, 3
  br i1 %.not.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_NtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB1C_6errors15DeltaTableErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.i

bb.i:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0B2d_.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTjIBH_NtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB1c_6errors15DeltaTableErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 16 dereferenceable(144) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_NtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB1C_6errors15DeltaTableErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %1, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false)
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_NtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB1C_6errors15DeltaTableErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0B2d_.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %1, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE21drop_join_handle_slowB2h_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 16              ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !934
  store i32 2, ptr %i.a, align 16, !noalias !934
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB2b_(ptr noundef nonnull align 16 %i.e, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !934
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #11
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #11
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB2h_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_NCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtBL_4sync3ArcNtNtNtNtB1m_9scheduler12multi_thread6handle6HandleEEEEB2x_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB2h_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB2h_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollB2h_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 16              ; 4 uses
  %i.b = alloca [160 x i8], align 16              ; 8 uses
  %i.c = alloca [160 x i8], align 16              ; 4 uses
  %i.d = alloca [160 x i8], align 16              ; 8 uses
  %i.e = alloca [160 x i8], align 16              ; 11 uses
  %i.f = alloca [160 x i8], align 16              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [144 x i8], align 16              ; 10 uses
  %.sroa.716.i.i = alloca [96 x i8], align 16     ; 5 uses
  %.sroa.12.sroa.7.i.i = alloca [96 x i8], align 16 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB2h_.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit.thread6
  ]

default.unreachable:                              ; preds = %bb.w, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.716.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !937
  store ptr %i.i, ptr %i.g, align 8, !noalias !946
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.l, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !946
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.14.8..sroa_idx.i.i, align 8, !noalias !946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !946
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollB2b_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.h, ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !947

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !937
  store i32 2, ptr %i.f, align 16, !noalias !937
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB2b_(ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !937

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #12, !noalias !937
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !937
  %i.p = extractvalue { ptr, i32 } %i.n, 0
  %i.q = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.p)
          to label %.thread.i.i unwind label %bb.e, !noalias !946 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !946
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.q, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !937
  %.sroa.086.0.copyload.i.i = load ptr, ptr %i.h, align 16, !noalias !946 ; 2 uses
  %.sroa.487.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.487.0.copyload.i.i = load ptr, ptr %.sroa.487.0..sroa_idx.i.i, align 8, !noalias !946 ; 2 uses
  %.sroa.588.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.588.0.copyload.i.i = load i64, ptr %.sroa.588.0..sroa_idx.i.i, align 16, !noalias !946 ; 2 uses
  %.sroa.689.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.689.0.copyload.i.i = load i64, ptr %.sroa.689.0..sroa_idx.i.i, align 8, !noalias !946
  %.sroa.790.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.790.0.copyload.i.i = load ptr, ptr %.sroa.790.0..sroa_idx.i.i, align 16, !noalias !946
  %.sroa.891.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.891.0.copyload.i.i = load ptr, ptr %.sroa.891.0..sroa_idx.i.i, align 8, !noalias !946
  %.sroa.992.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.12.sroa.7.i.i, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.992.0..sroa_idx.i.i, i64 96, i1 false), !noalias !946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !946
  switch i64 %.sroa.588.0.copyload.i.i, label %bb.h [
    i64 3, label %bb.g
    i64 2, label %bb.w
  ], !prof !918

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %.sroa.078.0101116.i.i = phi ptr [ %i.s, %.thread.i.i ], [ %.sroa.086.0.copyload.i.i, %bb.f ] ; 2 uses
  %.sroa.8.0103115.i.i = phi ptr [ %i.t, %.thread.i.i ], [ %.sroa.487.0.copyload.i.i, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.078.0101116.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0103115.i.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !733, !noalias !946, !noundef !3
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.716.i.i, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.12.sroa.7.i.i, i64 96, i1 false), !noalias !946
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.6.sroa.7.0.i.i = phi ptr [ %.sroa.891.0.copyload.i.i, %bb.h ], [ %.sroa.8.0103115.i.i, %bb.g ]
  %.sroa.6.sroa.6.0.i.i = phi ptr [ %.sroa.790.0.copyload.i.i, %bb.h ], [ %.sroa.078.0101116.i.i, %bb.g ]
  %.sroa.6.sroa.0.0.i.i = phi i64 [ %.sroa.689.0.copyload.i.i, %bb.h ], [ %i.v, %bb.g ]
  %.sroa.5.0.i.i = phi i64 [ %.sroa.588.0.copyload.i.i, %bb.h ], [ 2, %bb.g ]
  %.sroa.012.sroa.0.0.i.i = phi ptr [ %.sroa.086.0.copyload.i.i, %bb.h ], [ undef, %bb.g ]
  %.sroa.012.sroa.5.0.i.i = phi ptr [ %.sroa.487.0.copyload.i.i, %bb.h ], [ undef, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !948
  store ptr %.sroa.012.sroa.0.0.i.i, ptr %i.w, align 16, !noalias !946
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.012.sroa.5.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !946
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.5.0.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 16, !noalias !946
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.6.sroa.0.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !946
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.sroa.6.sroa.6.0.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i, align 16, !noalias !946
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.sroa.6.sroa.7.0.i.i, ptr %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !946
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.11.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.716.i.i, i64 96, i1 false), !noalias !946
  store i32 1, ptr %i.e, align 16, !noalias !948
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB2b_(ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.e)
          to label %.thread127.i.i unwind label %bb.j, !noalias !946

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  %i.z = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.y)
          to label %bb.l unwind label %bb.k, !noalias !946 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !946
  unreachable

.thread127.i.i:                                   ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !948
  br label %bb.x

bb.l:                                             ; preds = %bb.j
  %i.ab = extractvalue { ptr, ptr } %i.z, 0       ; 4 uses
  %i.ac = extractvalue { ptr, ptr } %i.z, 1       ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !3, !noalias !946 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ad(ptr noundef nonnull %i.ab)
          to label %bb.n unwind label %bb.p, !noalias !946

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !4, !invariant.load !3, !noalias !946 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !5, !invariant.load !3, !noalias !946
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef range(i64 1, 0) %i.af, i64 noundef range(i64 1, 536870913) %i.ai) #11, !noalias !946
  br label %bb.x

bb.p:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !4, !invariant.load !3, !noalias !946 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !range !5, !invariant.load !3, !noalias !946
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef range(i64 1, 0) %i.al, i64 noundef range(i64 1, 536870913) %i.ao) #11, !noalias !946
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i: ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.aj

bb.r:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 16
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB2b_(ptr noundef nonnull align 16 %i.ap, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.c)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ar)
          to label %bb.v unwind label %bb.t       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB2d_.exit.i

bb.v:                                             ; preds = %bb.s
  %i.au = extractvalue { ptr, ptr } %i.as, 0
  %i.av = extractvalue { ptr, ptr } %i.as, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB2d_.exit.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB2d_.exit.i: ; preds = %bb.v, %bb.u
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.u ], [ %i.av, %bb.v ]
  %.sroa.63.0.i.i = phi ptr [ null, %bb.u ], [ %i.au, %bb.v ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 8, !range !733, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i, align 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 16
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB2b_(ptr noundef nonnull align 16 %i.ap, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit.thread

bb.w:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i.i)
  %i.aw = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.aw, label %default.unreachable [
    i8 3, label %bb.y
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit.thread12
    i8 1, label %bb.ad
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit.thread12: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB2h_.exit

bb.x:                                             ; preds = %bb.o, %bb.n, %.thread127.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit.thread

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 16
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB2b_(ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.a)
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ay)
          to label %bb.ac unwind label %bb.aa     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit.thread8

bb.ac:                                            ; preds = %bb.z
  %i.bb = extractvalue { ptr, ptr } %i.az, 0
  %i.bc = extractvalue { ptr, ptr } %i.az, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit.thread8

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit.thread8: ; preds = %bb.ab, %bb.ac
  %.sroa.8.0.i1.i = phi ptr [ undef, %bb.ab ], [ %i.bc, %bb.ac ]
  %.sroa.63.0.i2.i = phi ptr [ null, %bb.ab ], [ %i.bb, %bb.ac ]
  %.sroa.02.0.in.i3.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i4.i = load i64, ptr %.sroa.02.0.in.i3.i, align 8, !range !733, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 2, ptr %.sroa.4.0..sroa_idx.i5.i, align 16
  %.sroa.5.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.02.0.i4.i, ptr %.sroa.5.0..sroa_idx.i6.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.63.0.i2.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i7.i, align 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %.sroa.8.0.i1.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i8.i, align 8
  store i32 1, ptr %i.b, align 16
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB2b_(ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit.thread

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit.thread6

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit.thread: ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB2d_.exit.i, %bb.x, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit.thread8
  call fastcc void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8completeB2h_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB2h_.exit

bb.ad:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvXs_NtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handleINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtB4_6HandleENtNtBa_4task8Schedule9yield_now(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noundef nonnull %0)
  %i.bd = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.bd, label %bb.ae, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB2h_.exit

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_NCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtBL_4sync3ArcNtNtNtNtB1m_9scheduler12multi_thread6handle6HandleEEEEB2x_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB2h_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB2h_.exit: ; preds = %bb.a, %bb.ae, %bb.ad, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit.thread12, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit.thread6, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit.thread
  ret void

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit.thread6: ; preds = %bb.a, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB2h_.exit
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_NCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtBL_4sync3ArcNtNtNtNtB1m_9scheduler12multi_thread6handle6HandleEEEEB2x_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB2h_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8completeB2h_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 16              ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef i64 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State22transition_to_complete(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.d = and i64 %i.c, 8
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, 16
  %.not1.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not1.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !953
end_hunk_3
begin_hunk_4_@_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE15try_read_outputCsfY7SmN0bPrO_14deltalake_test:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE11take_output0CsfY7SmN0bPrO_14deltalake_test.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE21drop_join_handle_slowCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !964
  store i32 2, ptr %i.a, align 16, !noalias !964
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 16 %i.e, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !964
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #11
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #11
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsfY7SmN0bPrO_14deltalake_test.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2R_8snapshotNtB41_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5z_5error5ErrorEEs_0EENtNtB2a_8schedule16BlockingScheduleEEECsfY7SmN0bPrO_14deltalake_test(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsfY7SmN0bPrO_14deltalake_test.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE4pollCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 8 uses
  %i.c = alloca [112 x i8], align 16              ; 4 uses
  %i.d = alloca [112 x i8], align 16              ; 8 uses
  %i.e = alloca [112 x i8], align 16              ; 9 uses
  %i.f = alloca [112 x i8], align 16              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.7.sroa.5.i.i = alloca [56 x i8], align 8 ; 5 uses
  %.sroa.12.sroa.5.sroa.5.i.i = alloca [56 x i8], align 8 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsfY7SmN0bPrO_14deltalake_test.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit.thread6
  ]

default.unreachable:                              ; preds = %bb.x, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !967
  store ptr %i.i, ptr %i.g, align 8, !noalias !976
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !976
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.14.8..sroa_idx.i.i, align 8, !noalias !976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !976
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE4pollCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.h, ptr noundef nonnull align 16 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !977

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !967
  store i32 2, ptr %i.f, align 16, !noalias !967
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 16 %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !967

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #12, !noalias !967
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !967
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %.thread.i.i unwind label %bb.e, !noalias !976 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !976
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.r = extractvalue { ptr, ptr } %i.p, 0
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !967
  %.sroa.086.0.copyload.i.i = load i64, ptr %i.h, align 16, !noalias !976 ; 2 uses
  %.sroa.487.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.487.0.copyload.i.i = load ptr, ptr %.sroa.487.0..sroa_idx.i.i, align 8, !noalias !976 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 16, !noalias !976 ; 2 uses
  %.sroa.688.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.t = load <2 x i64>, ptr %.sroa.688.0..sroa_idx.i.i, align 8, !noalias !976
  %.sroa.889.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.sroa.5.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.889.0..sroa_idx.i.i, i64 56, i1 false), !noalias !976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !976
  switch i64 %.sroa.086.0.copyload.i.i, label %bb.h [
    i64 -9223372036854775741, label %bb.g
    i64 -9223372036854775742, label %bb.x
  ], !prof !918

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %.sroa.8.0108.i.i = phi ptr [ %i.r, %.thread.i.i ], [ %.sroa.487.0.copyload.i.i, %bb.f ] ; 2 uses
  %.sroa.10.0107.i.i = phi ptr [ %i.s, %.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0108.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0107.i.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i64, ptr %i.u, align 16, !range !733, !noalias !976, !noundef !3
  %i.w = ptrtoint ptr %.sroa.10.0107.i.i to i64
  %i.x = inttoptr i64 %i.v to ptr
  %i.y = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.w, i64 0
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.sroa.5.sroa.5.i.i, i64 56, i1 false), !noalias !976
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.6.sroa.0.0.i.i = phi ptr [ %.sroa.487.0.copyload.i.i, %bb.h ], [ %i.x, %bb.g ]
  %.sroa.6.sroa.6.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.h ], [ %.sroa.8.0108.i.i, %bb.g ]
  %.sroa.012.0.i.i = phi i64 [ %.sroa.086.0.copyload.i.i, %bb.h ], [ -9223372036854775742, %bb.g ]
  %i.z = phi <2 x i64> [ %i.t, %bb.h ], [ %i.y, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !978
  store i64 %.sroa.012.0.i.i, ptr %i.aa, align 16, !noalias !976
  %.sroa.684.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.6.sroa.0.0.i.i, ptr %.sroa.684.0..sroa_idx.i.i, align 8, !noalias !976
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.6.sroa.6.0.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 16, !noalias !976
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store <2 x i64> %i.z, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !976
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.5.i.i, i64 56, i1 false), !noalias !976
  store i32 1, ptr %i.e, align 16, !noalias !978
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 16 %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.e)
          to label %.thread112.i.i unwind label %bb.j, !noalias !976

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ac)
          to label %bb.l unwind label %bb.k, !noalias !976 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !976
  unreachable

.thread112.i.i:                                   ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !978
  br label %bb.y

bb.l:                                             ; preds = %bb.j
  %i.af = extractvalue { ptr, ptr } %i.ad, 0      ; 4 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.y, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.ag, align 8, !invariant.load !3, !noalias !976 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void %i.ah(ptr noundef nonnull %i.af)
          to label %bb.o unwind label %bb.q, !noalias !976

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !4, !invariant.load !3, !noalias !976 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !5, !invariant.load !3, !noalias !976
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #11, !noalias !976
  br label %bb.y

bb.q:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !4, !invariant.load !3, !noalias !976 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !5, !invariant.load !3, !noalias !976
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, 0) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #11, !noalias !976
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i: ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %i.an

bb.s:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 16
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 16 %i.at, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.c)
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  %i.aw = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.av)
          to label %bb.w unwind label %bb.u       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleECsfY7SmN0bPrO_14deltalake_test.exit.i

bb.w:                                             ; preds = %bb.t
  %i.ay = extractvalue { ptr, ptr } %i.aw, 0
  %i.az = extractvalue { ptr, ptr } %i.aw, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleECsfY7SmN0bPrO_14deltalake_test.exit.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.w, %bb.v
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.v ], [ %i.az, %bb.w ]
  %.sroa.63.0.i.i = phi ptr [ null, %bb.v ], [ %i.ay, %bb.w ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 16, !range !733, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 -9223372036854775742, ptr %i.ba, align 16
  %.sroa.5.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i1.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 16
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 16 %i.at, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit.thread

bb.x:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i)
  %i.bb = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.bb, label %default.unreachable [
    i8 3, label %bb.z
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit.thread12
    i8 1, label %bb.ae
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit.thread12: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsfY7SmN0bPrO_14deltalake_test.exit

bb.y:                                             ; preds = %bb.p, %bb.o, %bb.l, %.thread112.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit.thread

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 16
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 16 %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.a)
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  %i.be = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bd)
          to label %bb.ad unwind label %bb.ab     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit.thread8

bb.ad:                                            ; preds = %bb.aa
  %i.bg = extractvalue { ptr, ptr } %i.be, 0
  %i.bh = extractvalue { ptr, ptr } %i.be, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit.thread8

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit.thread8: ; preds = %bb.ac, %bb.ad
  %.sroa.8.0.i2.i = phi ptr [ undef, %bb.ac ], [ %i.bh, %bb.ad ]
  %.sroa.63.0.i3.i = phi ptr [ null, %bb.ac ], [ %i.bg, %bb.ad ]
  %.sroa.02.0.in.i4.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.02.0.i5.i = load i64, ptr %.sroa.02.0.in.i4.i, align 16, !range !733, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 -9223372036854775742, ptr %i.bi, align 16
end_hunk_4
begin_hunk_5_@_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE15try_read_outputCsfY7SmN0bPrO_14deltalake_test:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE11take_output0CsfY7SmN0bPrO_14deltalake_test.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE21drop_join_handle_slowCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 16              ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !993
  store i32 2, ptr %i.a, align 16, !noalias !993
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE9set_stageCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 16 %i.e, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(208) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !993
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #11
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #11
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsfY7SmN0bPrO_14deltalake_test.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0ENtNtB2a_8schedule16BlockingScheduleEEECsfY7SmN0bPrO_14deltalake_test(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsfY7SmN0bPrO_14deltalake_test.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE4pollCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 16              ; 4 uses
  %i.b = alloca [208 x i8], align 16              ; 8 uses
  %i.c = alloca [208 x i8], align 16              ; 4 uses
  %i.d = alloca [208 x i8], align 16              ; 8 uses
  %i.e = alloca [208 x i8], align 16              ; 9 uses
  %i.f = alloca [208 x i8], align 16              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.7.sroa.5.i.i = alloca [56 x i8], align 8 ; 5 uses
  %.sroa.12.sroa.5.sroa.5.i.i = alloca [56 x i8], align 8 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsfY7SmN0bPrO_14deltalake_test.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit.thread6
  ]

default.unreachable:                              ; preds = %bb.x, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !996
  store ptr %i.i, ptr %i.g, align 8, !noalias !1005
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !1005
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.14.8..sroa_idx.i.i, align 8, !noalias !1005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1005
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE4pollCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.h, ptr noundef nonnull align 16 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !1006

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !996
  store i32 2, ptr %i.f, align 16, !noalias !996
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE9set_stageCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 16 %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(208) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !996

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #12, !noalias !996
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !996
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %.thread.i.i unwind label %bb.e, !noalias !1005 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !1005
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.r = extractvalue { ptr, ptr } %i.p, 0
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !996
  %.sroa.086.0.copyload.i.i = load i64, ptr %i.h, align 16, !noalias !1005 ; 2 uses
  %.sroa.487.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.487.0.copyload.i.i = load ptr, ptr %.sroa.487.0..sroa_idx.i.i, align 8, !noalias !1005 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 16, !noalias !1005 ; 2 uses
  %.sroa.688.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.t = load <2 x i64>, ptr %.sroa.688.0..sroa_idx.i.i, align 8, !noalias !1005
  %.sroa.889.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.sroa.5.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.889.0..sroa_idx.i.i, i64 56, i1 false), !noalias !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1005
  switch i64 %.sroa.086.0.copyload.i.i, label %bb.h [
    i64 -9223372036854775741, label %bb.g
    i64 -9223372036854775742, label %bb.x
  ], !prof !918

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %.sroa.8.0108.i.i = phi ptr [ %i.r, %.thread.i.i ], [ %.sroa.487.0.copyload.i.i, %bb.f ] ; 2 uses
  %.sroa.10.0107.i.i = phi ptr [ %i.s, %.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0108.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0107.i.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i64, ptr %i.u, align 16, !range !733, !noalias !1005, !noundef !3
  %i.w = ptrtoint ptr %.sroa.10.0107.i.i to i64
  %i.x = inttoptr i64 %i.v to ptr
  %i.y = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.w, i64 0
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.sroa.5.sroa.5.i.i, i64 56, i1 false), !noalias !1005
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.6.sroa.0.0.i.i = phi ptr [ %.sroa.487.0.copyload.i.i, %bb.h ], [ %i.x, %bb.g ]
  %.sroa.6.sroa.6.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.h ], [ %.sroa.8.0108.i.i, %bb.g ]
  %.sroa.012.0.i.i = phi i64 [ %.sroa.086.0.copyload.i.i, %bb.h ], [ -9223372036854775742, %bb.g ]
  %i.z = phi <2 x i64> [ %i.t, %bb.h ], [ %i.y, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1007
  store i64 %.sroa.012.0.i.i, ptr %i.aa, align 16, !noalias !1005
  %.sroa.684.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.6.sroa.0.0.i.i, ptr %.sroa.684.0..sroa_idx.i.i, align 8, !noalias !1005
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.6.sroa.6.0.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 16, !noalias !1005
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store <2 x i64> %i.z, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1005
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.5.i.i, i64 56, i1 false), !noalias !1005
  store i32 1, ptr %i.e, align 16, !noalias !1007
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE9set_stageCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 16 %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(208) %i.e)
          to label %.thread112.i.i unwind label %bb.j, !noalias !1005

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ac)
          to label %bb.l unwind label %bb.k, !noalias !1005 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !1005
  unreachable

.thread112.i.i:                                   ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1007
  br label %bb.y

bb.l:                                             ; preds = %bb.j
  %i.af = extractvalue { ptr, ptr } %i.ad, 0      ; 4 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.y, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.ag, align 8, !invariant.load !3, !noalias !1005 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void %i.ah(ptr noundef nonnull %i.af)
          to label %bb.o unwind label %bb.q, !noalias !1005

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !4, !invariant.load !3, !noalias !1005 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !5, !invariant.load !3, !noalias !1005
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #11, !noalias !1005
  br label %bb.y

bb.q:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !4, !invariant.load !3, !noalias !1005 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !5, !invariant.load !3, !noalias !1005
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, 0) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #11, !noalias !1005
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i: ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %i.an

bb.s:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 16
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE9set_stageCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 16 %i.at, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(208) %i.c)
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  %i.aw = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.av)
          to label %bb.w unwind label %bb.u       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleECsfY7SmN0bPrO_14deltalake_test.exit.i

bb.w:                                             ; preds = %bb.t
  %i.ay = extractvalue { ptr, ptr } %i.aw, 0
  %i.az = extractvalue { ptr, ptr } %i.aw, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleECsfY7SmN0bPrO_14deltalake_test.exit.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.w, %bb.v
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.v ], [ %i.az, %bb.w ]
  %.sroa.63.0.i.i = phi ptr [ null, %bb.v ], [ %i.ay, %bb.w ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 16, !range !733, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 -9223372036854775742, ptr %i.ba, align 16
  %.sroa.5.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i1.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 16
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE9set_stageCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 16 %i.at, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(208) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit.thread

bb.x:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i)
  %i.bb = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.bb, label %default.unreachable [
    i8 3, label %bb.z
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit.thread12
    i8 1, label %bb.ae
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit.thread12: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsfY7SmN0bPrO_14deltalake_test.exit

bb.y:                                             ; preds = %bb.p, %bb.o, %bb.l, %.thread112.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit.thread

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 16
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE9set_stageCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 16 %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(208) %i.a)
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  %i.be = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bd)
          to label %bb.ad unwind label %bb.ab     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit.thread8

bb.ad:                                            ; preds = %bb.aa
  %i.bg = extractvalue { ptr, ptr } %i.be, 0
  %i.bh = extractvalue { ptr, ptr } %i.be, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit.thread8

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsfY7SmN0bPrO_14deltalake_test.exit.thread8: ; preds = %bb.ac, %bb.ad
  %.sroa.8.0.i2.i = phi ptr [ undef, %bb.ac ], [ %i.bh, %bb.ad ]
  %.sroa.63.0.i3.i = phi ptr [ null, %bb.ac ], [ %i.bg, %bb.ad ]
  %.sroa.02.0.in.i4.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.02.0.i5.i = load i64, ptr %.sroa.02.0.in.i4.i, align 16, !range !733, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 -9223372036854775742, ptr %i.bi, align 16
end_hunk_5
begin_hunk_6_@_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB1d_:bb.a
bb.p:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !4, !invariant.load !3, !noalias !1025 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !5, !invariant.load !3, !noalias !1025
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #11, !noalias !1025
  br label %.body

bb.r:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.r ], [ %i.y, %bb.q ], [ %i.y, %bb.p ]
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapxNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.o, %bb.n, %bb.k, %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B19_.exit, %bb.j
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB1d_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1232 x i8], align 8              ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1026
  store i32 2, ptr %i.a, align 8, !noalias !1026
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB15_22test_concurrent_writes00NCNvMB15_NtB15_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB17_(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1232) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1026
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #11
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #11
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1d_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00INtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEEB2e_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1d_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1d_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1280
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollB1d_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1232 x i8], align 8              ; 4 uses
  %i.b = alloca [1232 x i8], align 8              ; 8 uses
  %i.c = alloca [1232 x i8], align 8              ; 4 uses
  %i.d = alloca [1232 x i8], align 8              ; 8 uses
  %i.e = alloca [1232 x i8], align 8              ; 8 uses
  %i.f = alloca [1232 x i8], align 8              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1d_.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1d_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB19_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1029
  store ptr %i.i, ptr %i.g, align 8, !noalias !1038
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !1038
  %.sroa.13.sroa.673.0..sroa.13.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.13.sroa.673.0..sroa.13.8..sroa_idx.sroa_idx.i.i, align 8, !noalias !1038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1038
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB15_22test_concurrent_writes00NCNvMB15_NtB15_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollB17_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.g unwind label %bb.c, !noalias !1039

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1029
  store i32 2, ptr %i.f, align 8, !noalias !1029
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB15_22test_concurrent_writes00NCNvMB15_NtB15_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB17_(ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1232) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !1029

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #12, !noalias !1029
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1029
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !1038 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !1038
  unreachable

bb.f:                                             ; preds = %.body.i.i
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i64, ptr %i.t, align 8, !range !733, !noalias !1038, !noundef !3
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = insertelement <2 x ptr> poison, ptr %i.v, i64 0
  %i.x = insertelement <2 x ptr> %i.w, ptr %i.r, i64 1
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1029
  %.sroa.081.0.copyload.i.i = load ptr, ptr %i.h, align 8, !noalias !1038 ; 2 uses
  %.sroa.482.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.y = load <2 x ptr>, ptr %.sroa.482.0..sroa_idx.i.i, align 8, !noalias !1038
  %.sroa.683.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.683.0.copyload.i.i = load ptr, ptr %.sroa.683.0..sroa_idx.i.i, align 8, !noalias !1038
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.z = load <2 x i64>, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1038
  %i.aa = icmp eq ptr %.sroa.081.0.copyload.i.i, null
  br i1 %i.aa, label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB19_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.612.sroa.6.sroa.6.0.i.i = phi ptr [ %i.s, %bb.f ], [ %.sroa.683.0.copyload.i.i, %bb.g ]
  %.sroa.010.0.i.i = phi ptr [ null, %bb.f ], [ %.sroa.081.0.copyload.i.i, %bb.g ]
  %i.ab = phi <2 x i64> [ undef, %bb.f ], [ %i.z, %bb.g ]
  %i.ac = phi <2 x ptr> [ %i.x, %bb.f ], [ %i.y, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1040
  store ptr %.sroa.010.0.i.i, ptr %i.ad, align 8, !noalias !1038
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <2 x ptr> %i.ac, ptr %.sroa.10.8..sroa_idx.i.i, align 8, !noalias !1038
  %.sroa.11.sroa.4.0..sroa.11.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.612.sroa.6.sroa.6.0.i.i, ptr %.sroa.11.sroa.4.0..sroa.11.8..sroa_idx.sroa_idx.i.i, align 8, !noalias !1038
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store <2 x i64> %i.ab, ptr %.sroa.12.8..sroa_idx.i.i, align 8, !noalias !1038
  store i32 1, ptr %i.e, align 8, !noalias !1040
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB15_22test_concurrent_writes00NCNvMB15_NtB15_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB17_(ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1232) %i.e)
          to label %.thread119.i.i unwind label %bb.i, !noalias !1038

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.af)
          to label %bb.k unwind label %bb.j, !noalias !1038 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !1038
  unreachable

.thread119.i.i:                                   ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1040
  br label %bb.w

bb.k:                                             ; preds = %bb.i
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0      ; 4 uses
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %.not56.i.i = icmp eq ptr %i.ai, null
  br i1 %.not56.i.i, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !3, !noalias !1038 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ak(ptr noundef nonnull %i.ai)
          to label %bb.n unwind label %bb.p, !noalias !1038

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !4, !invariant.load !3, !noalias !1038 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !5, !invariant.load !3, !noalias !1038
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef range(i64 1, 0) %i.am, i64 noundef range(i64 1, 536870913) %i.ap) #11, !noalias !1038
  br label %bb.w

bb.p:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !4, !invariant.load !3, !noalias !1038 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !5, !invariant.load !3, !noalias !1038
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef range(i64 1, 0) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #11, !noalias !1038
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i: ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.aq

bb.r:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB15_22test_concurrent_writes00NCNvMB15_NtB15_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB17_(ptr noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1232) %i.c)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ay)
          to label %bb.v unwind label %bb.t       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB19_.exit.i

bb.v:                                             ; preds = %bb.s
  %i.bb = extractvalue { ptr, ptr } %i.az, 0
  %i.bc = extractvalue { ptr, ptr } %i.az, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB19_.exit.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB19_.exit.i: ; preds = %bb.v, %bb.u
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.u ], [ %i.bc, %bb.v ]
  %.sroa.63.0.i.i = phi ptr [ null, %bb.u ], [ %i.bb, %bb.v ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 8, !range !733, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %i.bd, align 8
  %.sroa.5.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i1.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB15_22test_concurrent_writes00NCNvMB15_NtB15_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB17_(ptr noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1232) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1d_.exit.thread

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB19_.exit.i: ; preds = %bb.g
  %i.be = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.be, label %default.unreachable [
    i8 3, label %bb.x
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1d_.exit.thread12
    i8 1, label %bb.ac
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1d_.exit
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1d_.exit.thread12: ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB19_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1d_.exit

bb.w:                                             ; preds = %bb.o, %bb.n, %bb.k, %.thread119.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1d_.exit.thread

bb.x:                                             ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB19_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB15_22test_concurrent_writes00NCNvMB15_NtB15_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB17_(ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1232) %i.a)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bg)
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1d_.exit.thread8

bb.ab:                                            ; preds = %bb.y
  %i.bj = extractvalue { ptr, ptr } %i.bh, 0
  %i.bk = extractvalue { ptr, ptr } %i.bh, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1d_.exit.thread8

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1d_.exit.thread8: ; preds = %bb.aa, %bb.ab
  %.sroa.8.0.i2.i = phi ptr [ undef, %bb.aa ], [ %i.bk, %bb.ab ]
  %.sroa.63.0.i3.i = phi ptr [ null, %bb.aa ], [ %i.bj, %bb.ab ]
  %.sroa.02.0.in.i4.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i5.i = load i64, ptr %.sroa.02.0.in.i4.i, align 8, !range !733, !noundef !3
end_hunk_6
begin_hunk_7_@_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputB1d_:bb.a
bb.p:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !4, !invariant.load !3, !noalias !1058 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !5, !invariant.load !3, !noalias !1058
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #11, !noalias !1058
  br label %.body

bb.r:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.r ], [ %i.y, %bb.q ], [ %i.y, %bb.p ]
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapxNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.o, %bb.n, %bb.k, %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0B19_.exit, %bb.j
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE21drop_join_handle_slowB1d_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1232 x i8], align 8              ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1059
  store i32 2, ptr %i.a, align 8, !noalias !1059
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB15_22test_concurrent_writes00NCNvMB15_NtB15_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB17_(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1232) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1059
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #11
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #11
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB1d_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00INtNtBL_4sync3ArcNtNtNtNtB1m_9scheduler12multi_thread6handle6HandleEEEEB2e_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB1d_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB1d_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1280
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollB1d_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1232 x i8], align 8              ; 4 uses
  %i.b = alloca [1232 x i8], align 8              ; 8 uses
  %i.c = alloca [1232 x i8], align 8              ; 4 uses
  %i.d = alloca [1232 x i8], align 8              ; 8 uses
  %i.e = alloca [1232 x i8], align 8              ; 8 uses
  %i.f = alloca [1232 x i8], align 8              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB1d_.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1d_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB19_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1062
  store ptr %i.i, ptr %i.g, align 8, !noalias !1071
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !1071
  %.sroa.13.sroa.673.0..sroa.13.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.13.sroa.673.0..sroa.13.8..sroa_idx.sroa_idx.i.i, align 8, !noalias !1071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1071
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB15_22test_concurrent_writes00NCNvMB15_NtB15_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollB17_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.g unwind label %bb.c, !noalias !1072

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1062
  store i32 2, ptr %i.f, align 8, !noalias !1062
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB15_22test_concurrent_writes00NCNvMB15_NtB15_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB17_(ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1232) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !1062

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #12, !noalias !1062
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1062
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !1071 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !1071
  unreachable

bb.f:                                             ; preds = %.body.i.i
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i64, ptr %i.t, align 8, !range !733, !noalias !1071, !noundef !3
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = insertelement <2 x ptr> poison, ptr %i.v, i64 0
  %i.x = insertelement <2 x ptr> %i.w, ptr %i.r, i64 1
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1062
  %.sroa.081.0.copyload.i.i = load ptr, ptr %i.h, align 8, !noalias !1071 ; 2 uses
  %.sroa.482.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.y = load <2 x ptr>, ptr %.sroa.482.0..sroa_idx.i.i, align 8, !noalias !1071
  %.sroa.683.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.683.0.copyload.i.i = load ptr, ptr %.sroa.683.0..sroa_idx.i.i, align 8, !noalias !1071
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.z = load <2 x i64>, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1071
  %i.aa = icmp eq ptr %.sroa.081.0.copyload.i.i, null
  br i1 %i.aa, label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB19_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.612.sroa.6.sroa.6.0.i.i = phi ptr [ %i.s, %bb.f ], [ %.sroa.683.0.copyload.i.i, %bb.g ]
  %.sroa.010.0.i.i = phi ptr [ null, %bb.f ], [ %.sroa.081.0.copyload.i.i, %bb.g ]
  %i.ab = phi <2 x i64> [ undef, %bb.f ], [ %i.z, %bb.g ]
  %i.ac = phi <2 x ptr> [ %i.x, %bb.f ], [ %i.y, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1073
  store ptr %.sroa.010.0.i.i, ptr %i.ad, align 8, !noalias !1071
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <2 x ptr> %i.ac, ptr %.sroa.10.8..sroa_idx.i.i, align 8, !noalias !1071
  %.sroa.11.sroa.4.0..sroa.11.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.612.sroa.6.sroa.6.0.i.i, ptr %.sroa.11.sroa.4.0..sroa.11.8..sroa_idx.sroa_idx.i.i, align 8, !noalias !1071
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store <2 x i64> %i.ab, ptr %.sroa.12.8..sroa_idx.i.i, align 8, !noalias !1071
  store i32 1, ptr %i.e, align 8, !noalias !1073
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB15_22test_concurrent_writes00NCNvMB15_NtB15_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB17_(ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1232) %i.e)
          to label %.thread119.i.i unwind label %bb.i, !noalias !1071

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.af)
          to label %bb.k unwind label %bb.j, !noalias !1071 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !1071
  unreachable

.thread119.i.i:                                   ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1073
  br label %bb.w

bb.k:                                             ; preds = %bb.i
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0      ; 4 uses
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %.not56.i.i = icmp eq ptr %i.ai, null
  br i1 %.not56.i.i, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !3, !noalias !1071 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ak(ptr noundef nonnull %i.ai)
          to label %bb.n unwind label %bb.p, !noalias !1071

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !4, !invariant.load !3, !noalias !1071 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !5, !invariant.load !3, !noalias !1071
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef range(i64 1, 0) %i.am, i64 noundef range(i64 1, 536870913) %i.ap) #11, !noalias !1071
  br label %bb.w

bb.p:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !4, !invariant.load !3, !noalias !1071 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !5, !invariant.load !3, !noalias !1071
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef range(i64 1, 0) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #11, !noalias !1071
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i: ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.aq

bb.r:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB15_22test_concurrent_writes00NCNvMB15_NtB15_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB17_(ptr noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1232) %i.c)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ay)
          to label %bb.v unwind label %bb.t       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB19_.exit.i

bb.v:                                             ; preds = %bb.s
  %i.bb = extractvalue { ptr, ptr } %i.az, 0
  %i.bc = extractvalue { ptr, ptr } %i.az, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB19_.exit.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB19_.exit.i: ; preds = %bb.v, %bb.u
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.u ], [ %i.bc, %bb.v ]
  %.sroa.63.0.i.i = phi ptr [ null, %bb.u ], [ %i.bb, %bb.v ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 8, !range !733, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %i.bd, align 8
  %.sroa.5.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i1.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB15_22test_concurrent_writes00NCNvMB15_NtB15_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB17_(ptr noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1232) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1d_.exit.thread

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB19_.exit.i: ; preds = %bb.g
  %i.be = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.be, label %default.unreachable [
    i8 3, label %bb.x
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1d_.exit.thread12
    i8 1, label %bb.ac
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1d_.exit
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1d_.exit.thread12: ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB19_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB1d_.exit

bb.w:                                             ; preds = %bb.o, %bb.n, %bb.k, %.thread119.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1d_.exit.thread

bb.x:                                             ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB17_22test_concurrent_writes00NCNvMB17_NtB17_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB19_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB15_22test_concurrent_writes00NCNvMB15_NtB15_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB17_(ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1232) %i.a)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bg)
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1d_.exit.thread8

bb.ab:                                            ; preds = %bb.y
  %i.bj = extractvalue { ptr, ptr } %i.bh, 0
  %i.bk = extractvalue { ptr, ptr } %i.bh, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1d_.exit.thread8

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1b_22test_concurrent_writes00NCNvMB1b_NtB1b_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1d_.exit.thread8: ; preds = %bb.aa, %bb.ab
  %.sroa.8.0.i2.i = phi ptr [ undef, %bb.aa ], [ %i.bk, %bb.ab ]
  %.sroa.63.0.i3.i = phi ptr [ null, %bb.aa ], [ %i.bj, %bb.ab ]
  %.sroa.02.0.in.i4.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i5.i = load i64, ptr %.sroa.02.0.in.i4.i, align 8, !range !733, !noundef !3
end_hunk_7
begin_hunk_8_@_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB1c_:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #12, !noalias !1082
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B18_.exit: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.b, ptr noundef nonnull align 16 dereferenceable(144) %i.l, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1082
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 16, !range !762, !alias.scope !1085, !noundef !3
  %.not.i = icmp eq i64 %i.n, 3
  br i1 %.not.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_NtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB1C_6errors15DeltaTableErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.i

bb.i:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B18_.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTjIBH_NtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB1c_6errors15DeltaTableErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 16 dereferenceable(144) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_NtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB1C_6errors15DeltaTableErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %1, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false)
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_NtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB1C_6errors15DeltaTableErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B18_.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %1, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB1c_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [336 x i8], align 16              ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1088
  store i32 2, ptr %i.a, align 16, !noalias !1088
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB16_(ptr noundef nonnull align 16 %i.e, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1088
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #11
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #11
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEEB2d_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollB1c_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [336 x i8], align 16              ; 4 uses
  %i.b = alloca [336 x i8], align 16              ; 8 uses
  %i.c = alloca [336 x i8], align 16              ; 4 uses
  %i.d = alloca [336 x i8], align 16              ; 8 uses
  %i.e = alloca [336 x i8], align 16              ; 11 uses
  %i.f = alloca [336 x i8], align 16              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [144 x i8], align 16              ; 10 uses
  %.sroa.716.i.i = alloca [96 x i8], align 16     ; 5 uses
  %.sroa.12.sroa.7.i.i = alloca [96 x i8], align 16 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit.thread6
  ]

default.unreachable:                              ; preds = %bb.w, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.716.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1091
  store ptr %i.i, ptr %i.g, align 8, !noalias !1100
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.l, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !1100
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.14.8..sroa_idx.i.i, align 8, !noalias !1100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1100
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollB16_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.h, ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !1101

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1091
  store i32 2, ptr %i.f, align 16, !noalias !1091
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB16_(ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !1091

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #12, !noalias !1091
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1091
  %i.p = extractvalue { ptr, i32 } %i.n, 0
  %i.q = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.p)
          to label %.thread.i.i unwind label %bb.e, !noalias !1100 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !1100
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.q, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1091
  %.sroa.086.0.copyload.i.i = load ptr, ptr %i.h, align 16, !noalias !1100 ; 2 uses
  %.sroa.487.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.487.0.copyload.i.i = load ptr, ptr %.sroa.487.0..sroa_idx.i.i, align 8, !noalias !1100 ; 2 uses
  %.sroa.588.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.588.0.copyload.i.i = load i64, ptr %.sroa.588.0..sroa_idx.i.i, align 16, !noalias !1100 ; 2 uses
  %.sroa.689.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.689.0.copyload.i.i = load i64, ptr %.sroa.689.0..sroa_idx.i.i, align 8, !noalias !1100
  %.sroa.790.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.790.0.copyload.i.i = load ptr, ptr %.sroa.790.0..sroa_idx.i.i, align 16, !noalias !1100
  %.sroa.891.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.891.0.copyload.i.i = load ptr, ptr %.sroa.891.0..sroa_idx.i.i, align 8, !noalias !1100
  %.sroa.992.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.12.sroa.7.i.i, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.992.0..sroa_idx.i.i, i64 96, i1 false), !noalias !1100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1100
  switch i64 %.sroa.588.0.copyload.i.i, label %bb.h [
    i64 3, label %bb.g
    i64 2, label %bb.w
  ], !prof !918

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %.sroa.078.0101116.i.i = phi ptr [ %i.s, %.thread.i.i ], [ %.sroa.086.0.copyload.i.i, %bb.f ] ; 2 uses
  %.sroa.8.0103115.i.i = phi ptr [ %i.t, %.thread.i.i ], [ %.sroa.487.0.copyload.i.i, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.078.0101116.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0103115.i.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !733, !noalias !1100, !noundef !3
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.716.i.i, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.12.sroa.7.i.i, i64 96, i1 false), !noalias !1100
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.6.sroa.7.0.i.i = phi ptr [ %.sroa.891.0.copyload.i.i, %bb.h ], [ %.sroa.8.0103115.i.i, %bb.g ]
  %.sroa.6.sroa.6.0.i.i = phi ptr [ %.sroa.790.0.copyload.i.i, %bb.h ], [ %.sroa.078.0101116.i.i, %bb.g ]
  %.sroa.6.sroa.0.0.i.i = phi i64 [ %.sroa.689.0.copyload.i.i, %bb.h ], [ %i.v, %bb.g ]
  %.sroa.5.0.i.i = phi i64 [ %.sroa.588.0.copyload.i.i, %bb.h ], [ 2, %bb.g ]
  %.sroa.012.sroa.0.0.i.i = phi ptr [ %.sroa.086.0.copyload.i.i, %bb.h ], [ undef, %bb.g ]
  %.sroa.012.sroa.5.0.i.i = phi ptr [ %.sroa.487.0.copyload.i.i, %bb.h ], [ undef, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1102
  store ptr %.sroa.012.sroa.0.0.i.i, ptr %i.w, align 16, !noalias !1100
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.012.sroa.5.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1100
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.5.0.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 16, !noalias !1100
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.6.sroa.0.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1100
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.sroa.6.sroa.6.0.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i, align 16, !noalias !1100
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.sroa.6.sroa.7.0.i.i, ptr %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1100
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.11.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.716.i.i, i64 96, i1 false), !noalias !1100
  store i32 1, ptr %i.e, align 16, !noalias !1102
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB16_(ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.e)
          to label %.thread127.i.i unwind label %bb.j, !noalias !1100

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  %i.z = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.y)
          to label %bb.l unwind label %bb.k, !noalias !1100 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !1100
  unreachable

.thread127.i.i:                                   ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1102
  br label %bb.x

bb.l:                                             ; preds = %bb.j
  %i.ab = extractvalue { ptr, ptr } %i.z, 0       ; 4 uses
  %i.ac = extractvalue { ptr, ptr } %i.z, 1       ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !3, !noalias !1100 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ad(ptr noundef nonnull %i.ab)
          to label %bb.n unwind label %bb.p, !noalias !1100

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !4, !invariant.load !3, !noalias !1100 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !5, !invariant.load !3, !noalias !1100
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef range(i64 1, 0) %i.af, i64 noundef range(i64 1, 536870913) %i.ai) #11, !noalias !1100
  br label %bb.x

bb.p:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !4, !invariant.load !3, !noalias !1100 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !range !5, !invariant.load !3, !noalias !1100
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef range(i64 1, 0) %i.al, i64 noundef range(i64 1, 536870913) %i.ao) #11, !noalias !1100
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i: ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.aj

bb.r:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 16
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB16_(ptr noundef nonnull align 16 %i.ap, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.c)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ar)
          to label %bb.v unwind label %bb.t       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB18_.exit.i

bb.v:                                             ; preds = %bb.s
  %i.au = extractvalue { ptr, ptr } %i.as, 0
  %i.av = extractvalue { ptr, ptr } %i.as, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB18_.exit.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB18_.exit.i: ; preds = %bb.v, %bb.u
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.u ], [ %i.av, %bb.v ]
  %.sroa.63.0.i.i = phi ptr [ null, %bb.u ], [ %i.au, %bb.v ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 8, !range !733, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i, align 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 16
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB16_(ptr noundef nonnull align 16 %i.ap, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit.thread

bb.w:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i.i)
  %i.aw = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.aw, label %default.unreachable [
    i8 3, label %bb.y
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit.thread12
    i8 1, label %bb.ad
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit.thread12: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit

bb.x:                                             ; preds = %bb.o, %bb.n, %.thread127.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit.thread

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 16
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB16_(ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.a)
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ay)
          to label %bb.ac unwind label %bb.aa     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit.thread8

bb.ac:                                            ; preds = %bb.z
  %i.bb = extractvalue { ptr, ptr } %i.az, 0
  %i.bc = extractvalue { ptr, ptr } %i.az, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit.thread8

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit.thread8: ; preds = %bb.ab, %bb.ac
  %.sroa.8.0.i1.i = phi ptr [ undef, %bb.ab ], [ %i.bc, %bb.ac ]
  %.sroa.63.0.i2.i = phi ptr [ null, %bb.ab ], [ %i.bb, %bb.ac ]
  %.sroa.02.0.in.i3.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i4.i = load i64, ptr %.sroa.02.0.in.i3.i, align 8, !range !733, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 2, ptr %.sroa.4.0..sroa_idx.i5.i, align 16
  %.sroa.5.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.02.0.i4.i, ptr %.sroa.5.0..sroa_idx.i6.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.63.0.i2.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i7.i, align 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %.sroa.8.0.i1.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i8.i, align 8
  store i32 1, ptr %i.b, align 16
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB16_(ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit.thread

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit.thread6

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit.thread: ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB18_.exit.i, %bb.x, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit.thread8
  call fastcc void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB1c_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit

bb.ad:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtBG_4task8Schedule9yield_nowCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noundef nonnull %0)
  %i.bd = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.bd, label %bb.ae, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEEB2d_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit: ; preds = %bb.a, %bb.ae, %bb.ad, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit.thread12, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit.thread6, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit.thread
  ret void

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit.thread6: ; preds = %bb.a, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB1c_.exit
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEEB2d_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB1c_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [336 x i8], align 16              ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef i64 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State22transition_to_complete(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.d = and i64 %i.c, 8
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, 16
  %.not1.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not1.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1107
end_hunk_8
begin_hunk_9_@_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputB1c_:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #12, !noalias !1111
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0B18_.exit: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.b, ptr noundef nonnull align 16 dereferenceable(144) %i.l, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1111
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 16, !range !762, !alias.scope !1114, !noundef !3
  %.not.i = icmp eq i64 %i.n, 3
  br i1 %.not.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_NtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB1C_6errors15DeltaTableErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.i

bb.i:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0B18_.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTjIBH_NtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB1c_6errors15DeltaTableErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 16 dereferenceable(144) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_NtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB1C_6errors15DeltaTableErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %1, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false)
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_NtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB1C_6errors15DeltaTableErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0B18_.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %1, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE21drop_join_handle_slowB1c_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [336 x i8], align 16              ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1117
  store i32 2, ptr %i.a, align 16, !noalias !1117
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB16_(ptr noundef nonnull align 16 %i.e, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1117
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #11
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #11
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB1c_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtBL_4sync3ArcNtNtNtNtB1m_9scheduler12multi_thread6handle6HandleEEEEB2d_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB1c_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB1c_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollB1c_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [336 x i8], align 16              ; 4 uses
  %i.b = alloca [336 x i8], align 16              ; 8 uses
  %i.c = alloca [336 x i8], align 16              ; 4 uses
  %i.d = alloca [336 x i8], align 16              ; 8 uses
  %i.e = alloca [336 x i8], align 16              ; 11 uses
  %i.f = alloca [336 x i8], align 16              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [144 x i8], align 16              ; 10 uses
  %.sroa.716.i.i = alloca [96 x i8], align 16     ; 5 uses
  %.sroa.12.sroa.7.i.i = alloca [96 x i8], align 16 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB1c_.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit.thread6
  ]

default.unreachable:                              ; preds = %bb.w, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.716.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1120
  store ptr %i.i, ptr %i.g, align 8, !noalias !1129
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.l, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !1129
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.14.8..sroa_idx.i.i, align 8, !noalias !1129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1129
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollB16_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.h, ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !1130

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1120
  store i32 2, ptr %i.f, align 16, !noalias !1120
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB16_(ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !1120

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #12, !noalias !1120
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1120
  %i.p = extractvalue { ptr, i32 } %i.n, 0
  %i.q = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.p)
          to label %.thread.i.i unwind label %bb.e, !noalias !1129 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !1129
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.q, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1120
  %.sroa.086.0.copyload.i.i = load ptr, ptr %i.h, align 16, !noalias !1129 ; 2 uses
  %.sroa.487.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.487.0.copyload.i.i = load ptr, ptr %.sroa.487.0..sroa_idx.i.i, align 8, !noalias !1129 ; 2 uses
  %.sroa.588.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.588.0.copyload.i.i = load i64, ptr %.sroa.588.0..sroa_idx.i.i, align 16, !noalias !1129 ; 2 uses
  %.sroa.689.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.689.0.copyload.i.i = load i64, ptr %.sroa.689.0..sroa_idx.i.i, align 8, !noalias !1129
  %.sroa.790.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.790.0.copyload.i.i = load ptr, ptr %.sroa.790.0..sroa_idx.i.i, align 16, !noalias !1129
  %.sroa.891.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.891.0.copyload.i.i = load ptr, ptr %.sroa.891.0..sroa_idx.i.i, align 8, !noalias !1129
  %.sroa.992.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.12.sroa.7.i.i, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.992.0..sroa_idx.i.i, i64 96, i1 false), !noalias !1129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1129
  switch i64 %.sroa.588.0.copyload.i.i, label %bb.h [
    i64 3, label %bb.g
    i64 2, label %bb.w
  ], !prof !918

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %.sroa.078.0101116.i.i = phi ptr [ %i.s, %.thread.i.i ], [ %.sroa.086.0.copyload.i.i, %bb.f ] ; 2 uses
  %.sroa.8.0103115.i.i = phi ptr [ %i.t, %.thread.i.i ], [ %.sroa.487.0.copyload.i.i, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.078.0101116.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0103115.i.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !733, !noalias !1129, !noundef !3
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.716.i.i, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.12.sroa.7.i.i, i64 96, i1 false), !noalias !1129
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.6.sroa.7.0.i.i = phi ptr [ %.sroa.891.0.copyload.i.i, %bb.h ], [ %.sroa.8.0103115.i.i, %bb.g ]
  %.sroa.6.sroa.6.0.i.i = phi ptr [ %.sroa.790.0.copyload.i.i, %bb.h ], [ %.sroa.078.0101116.i.i, %bb.g ]
  %.sroa.6.sroa.0.0.i.i = phi i64 [ %.sroa.689.0.copyload.i.i, %bb.h ], [ %i.v, %bb.g ]
  %.sroa.5.0.i.i = phi i64 [ %.sroa.588.0.copyload.i.i, %bb.h ], [ 2, %bb.g ]
  %.sroa.012.sroa.0.0.i.i = phi ptr [ %.sroa.086.0.copyload.i.i, %bb.h ], [ undef, %bb.g ]
  %.sroa.012.sroa.5.0.i.i = phi ptr [ %.sroa.487.0.copyload.i.i, %bb.h ], [ undef, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1131
  store ptr %.sroa.012.sroa.0.0.i.i, ptr %i.w, align 16, !noalias !1129
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.012.sroa.5.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1129
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.5.0.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 16, !noalias !1129
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.6.sroa.0.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1129
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.sroa.6.sroa.6.0.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i, align 16, !noalias !1129
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.sroa.6.sroa.7.0.i.i, ptr %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1129
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.11.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.716.i.i, i64 96, i1 false), !noalias !1129
  store i32 1, ptr %i.e, align 16, !noalias !1131
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB16_(ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.e)
          to label %.thread127.i.i unwind label %bb.j, !noalias !1129

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  %i.z = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.y)
          to label %bb.l unwind label %bb.k, !noalias !1129 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12, !noalias !1129
  unreachable

.thread127.i.i:                                   ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1131
  br label %bb.x

bb.l:                                             ; preds = %bb.j
  %i.ab = extractvalue { ptr, ptr } %i.z, 0       ; 4 uses
  %i.ac = extractvalue { ptr, ptr } %i.z, 1       ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !3, !noalias !1129 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ad(ptr noundef nonnull %i.ab)
          to label %bb.n unwind label %bb.p, !noalias !1129

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !4, !invariant.load !3, !noalias !1129 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !5, !invariant.load !3, !noalias !1129
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef range(i64 1, 0) %i.af, i64 noundef range(i64 1, 536870913) %i.ai) #11, !noalias !1129
  br label %bb.x

bb.p:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !4, !invariant.load !3, !noalias !1129 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !range !5, !invariant.load !3, !noalias !1129
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef range(i64 1, 0) %i.al, i64 noundef range(i64 1, 536870913) %i.ao) #11, !noalias !1129
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i.i: ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.aj

bb.r:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 16
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB16_(ptr noundef nonnull align 16 %i.ap, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.c)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ar)
          to label %bb.v unwind label %bb.t       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB18_.exit.i

bb.v:                                             ; preds = %bb.s
  %i.au = extractvalue { ptr, ptr } %i.as, 0
  %i.av = extractvalue { ptr, ptr } %i.as, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB18_.exit.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB18_.exit.i: ; preds = %bb.v, %bb.u
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.u ], [ %i.av, %bb.v ]
  %.sroa.63.0.i.i = phi ptr [ null, %bb.u ], [ %i.au, %bb.v ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 8, !range !733, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i, align 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 16
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB16_(ptr noundef nonnull align 16 %i.ap, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit.thread

bb.w:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i.i)
  %i.aw = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.aw, label %default.unreachable [
    i8 3, label %bb.y
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit.thread12
    i8 1, label %bb.ad
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit.thread12: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB1c_.exit

bb.x:                                             ; preds = %bb.o, %bb.n, %.thread127.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit.thread

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 16
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB16_(ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.a)
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ay)
          to label %bb.ac unwind label %bb.aa     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit.thread8

bb.ac:                                            ; preds = %bb.z
  %i.bb = extractvalue { ptr, ptr } %i.az, 0
  %i.bc = extractvalue { ptr, ptr } %i.az, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit.thread8

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit.thread8: ; preds = %bb.ab, %bb.ac
  %.sroa.8.0.i1.i = phi ptr [ undef, %bb.ab ], [ %i.bc, %bb.ac ]
  %.sroa.63.0.i2.i = phi ptr [ null, %bb.ab ], [ %i.bb, %bb.ac ]
  %.sroa.02.0.in.i3.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i4.i = load i64, ptr %.sroa.02.0.in.i3.i, align 8, !range !733, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 2, ptr %.sroa.4.0..sroa_idx.i5.i, align 16
  %.sroa.5.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.02.0.i4.i, ptr %.sroa.5.0..sroa_idx.i6.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.63.0.i2.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i7.i, align 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %.sroa.8.0.i1.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i8.i, align 8
  store i32 1, ptr %i.b, align 16
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB16_(ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit.thread

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit.thread6

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit.thread: ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB18_.exit.i, %bb.x, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit.thread8
  call fastcc void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8completeB1c_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB1c_.exit

bb.ad:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvXs_NtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handleINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtB4_6HandleENtNtBa_4task8Schedule9yield_now(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noundef nonnull %0)
  %i.bd = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.bd, label %bb.ae, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB1c_.exit

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtBL_4sync3ArcNtNtNtNtB1m_9scheduler12multi_thread6handle6HandleEEEEB2d_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB1c_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB1c_.exit: ; preds = %bb.a, %bb.ae, %bb.ad, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit.thread12, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit.thread6, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit.thread
  ret void

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit.thread6: ; preds = %bb.a, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerB1c_.exit
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtBL_4sync3ArcNtNtNtNtB1m_9scheduler12multi_thread6handle6HandleEEEEB2d_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceB1c_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8completeB1c_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [336 x i8], align 16              ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef i64 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State22transition_to_complete(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.d = and i64 %i.c, 8
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, 16
  %.not1.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not1.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1136
end_hunk_9
