inline.NumInlined: 850
inline.NumDeleted: 363
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsfY7SmN0bPrO_14deltalake_test:bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECsfY7SmN0bPrO_14deltalake_test.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !955, !nonnull !3, !noundef !3
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !955
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECsfY7SmN0bPrO_14deltalake_test.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core7TrailerECsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !align !66, !noundef !3 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  invoke void %i.e(ptr noundef %.val1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.c, !inline_history !77

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !962, !noundef !3 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !963
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECsfY7SmN0bPrO_14deltalake_test.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_INtNtNtCskQDtHcQtBkN_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SyncNtB2G_4SendEL_E9drop_slowB1C_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !974, !noundef !3 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECsfY7SmN0bPrO_14deltalake_test.exit3, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !975
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECsfY7SmN0bPrO_14deltalake_test.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_INtNtNtCskQDtHcQtBkN_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SyncNtB2G_4SendEL_E9drop_slowB1C_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECsfY7SmN0bPrO_14deltalake_test.exit3

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECsfY7SmN0bPrO_14deltalake_test.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsfY7SmN0bPrO_14deltalake_test.exit, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorECsfY7SmN0bPrO_14deltalake_test(ptr %.8.val, ptr nofree readonly captures(none) %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.8.val, null
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %i.b = load ptr, ptr %.16.val, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.8.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.16.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !5, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #21
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECsfY7SmN0bPrO_14deltalake_test.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.16.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !5, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #21
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB6_22test_concurrent_writes00NCNvMB6_NtB6_6Worker3new0E00B8_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %.sroa.11.i.sroa.0.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 6 uses
  %.sroa.5.sroa.2.i.sroa.0.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 6 uses
  %i.b = alloca [96 x i8], align 16               ; 13 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 12 uses
  %i.h = alloca [80 x i8], align 8                ; 12 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.10.i.i.sroa.12.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 12 uses
  %i.o = alloca [64 x i8], align 8                ; 11 uses
  %i.p = alloca [8 x i8], align 8                 ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 14 uses
  %i.r = alloca [96 x i8], align 16               ; 16 uses
  %.sroa.589.sroa.0.i.i.i.i.i.i.i.i = alloca [64 x i8], align 16 ; 8 uses
  %i.s = alloca [96 x i8], align 16               ; 9 uses
  %i.t = alloca [120 x i8], align 8               ; 8 uses
  %i.u = alloca [8 x i8], align 8                 ; 12 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 10 uses
  %i.z = alloca [17 x i8], align 1                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 9 uses
  %i.ab = alloca [72 x i8], align 8               ; 8 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.1295.sroa.0.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.6.sroa.7115.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.956.sroa.8.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 8 uses
  %.sroa.940.sroa.10.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 8 uses
  %i.ad = alloca [88 x i8], align 8               ; 17 uses
  %.sroa.1382.i.i.i.i.i = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.1340.i.i.i.i.i = alloca [40 x i8], align 8 ; 6 uses
  %.sroa.932.i.i.i.i.i = alloca [72 x i8], align 8 ; 8 uses
  %.sroa.3.sroa.5.i.i.i.i.i = alloca [40 x i8], align 8 ; 6 uses
  %i.ae = alloca [96 x i8], align 16              ; 13 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.1343.i.i.i.i = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.923.sroa.10.i.i.i.i = alloca [16 x i8], align 8 ; 8 uses
  %i.ag = alloca [96 x i8], align 16              ; 11 uses
  %i.ah = alloca [96 x i8], align 16              ; 4 uses
  %i.ai = alloca [96 x i8], align 16              ; 6 uses
  %.sroa.12.i.i = alloca [40 x i8], align 8       ; 6 uses
  %.sroa.3.i.i = alloca [64 x i8], align 8        ; 6 uses
  %.sroa.4.i.i = alloca [24 x i8], align 8        ; 5 uses
  %i.aj = alloca [96 x i8], align 16              ; 8 uses
  %i.ak = alloca [408 x i8], align 8              ; 5 uses
  %i.al = alloca [144 x i8], align 8              ; 5 uses
  %i.am = alloca [144 x i8], align 8              ; 5 uses
  %i.an = alloca [584 x i8], align 8              ; 5 uses
  %i.ao = alloca [64 x i8], align 8               ; 8 uses
  %i.ap = alloca [96 x i8], align 16              ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %3 = alloca [24 x i8], align 8                  ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 12 uses
  %i.au = alloca [408 x i8], align 8              ; 13 uses
  %i.av = alloca [112 x i8], align 8              ; 5 uses
  %i.aw = alloca [112 x i8], align 8              ; 7 uses
  %i.ax = alloca [24 x i8], align 8               ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 8 uses
  %i.az = alloca [32 x i8], align 8               ; 8 uses
  %i.ba = alloca [24 x i8], align 8               ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 8, !range !517, !noundef !3
  switch i8 %i.bc, label %default.unreachable50 [
    i8 0, label %.thread51
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable50:                            ; preds = %bb.iw, %bb.fa, %bb.dz, %bb.dj, %bb.co, %bb.bz, %bb.bv, %bb.w, %bb.e, %bb.a
  unreachable

.thread51:                                        ; preds = %bb.a
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 3, ptr %.sroa.715.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 265
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 265
  br label %bb.f

bb.b:                                             ; preds = %.body, %bb.lu
  %.pn4 = phi { ptr, i32 } [ %i.aoy, %bb.lu ], [ %.pn2, %.body ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfY7SmN0bPrO_14deltalake_test10concurrent6WorkerEBK_(ptr noalias noundef align 8 dereferenceable(144) %1) #24
          to label %.body9 unwind label %bb.mc

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26
  unreachable

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 265
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !532, !noalias !980
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 265 ; 25 uses
  switch i8 %.pre, label %default.unreachable50 [
    i8 0, label %bb.f
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.w
    i8 4, label %bb.g
  ]

bb.f:                                             ; preds = %.thread51, %bb.e
  %i.bh = phi ptr [ %i.be, %.thread51 ], [ %i.bg, %bb.e ] ; 2 uses
  %i.bi = phi ptr [ %i.bd, %.thread51 ], [ %i.bf, %bb.e ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i8 0, ptr %i.bj, align 8, !noalias !980
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !980, !nonnull !3, !align !66, !noundef !3
  store ptr %i.bm, ptr %i.bk, align 8, !noalias !980
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !980, !noundef !3 ; 2 uses
  %i.bp = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @36)
          to label %bb.i unwind label %bb.h, !noalias !984 ; 2 uses

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  br label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapxNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.lo, %bb.h
  %i.bq = phi ptr [ %i.bh, %bb.h ], [ %i.aor, %bb.lo ]
  %i.br = phi ptr [ %i.bi, %bb.h ], [ %i.aos, %bb.lo ]
  %.pn21.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.bs, %bb.h ], [ %.pn21.pn.pn.i, %bb.lo ]
  store i8 2, ptr %i.bq, align 1, !noalias !980
  br label %.body

bb.h:                                             ; preds = %bb.f
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapxNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsfY7SmN0bPrO_14deltalake_test.exit.i

bb.i:                                             ; preds = %bb.f
  %i.bt = extractvalue { i64, i64 } %i.bp, 0
  %i.bu = extractvalue { i64, i64 } %i.bp, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) @38, i64 32, i1 false), !noalias !980
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i64 %i.bt, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !985, !noalias !980
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 %i.bu, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !985, !noalias !980
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.bv, align 8, !noalias !980
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 %i.bo, ptr %i.bw, align 8, !noalias !980
  br label %bb.j

bb.j:                                             ; preds = %bb.t, %bb.i
  %i.bx = phi ptr [ %i.cc, %bb.t ], [ %i.bh, %bb.i ] ; 3 uses
  %i.by = phi ptr [ %i.cd, %bb.t ], [ %i.bi, %bb.i ] ; 4 uses
  %i.bz = phi i64 [ %.pre55.i, %bb.t ], [ %i.bo, %bb.i ]
  %i.ca = phi i64 [ %.pre.i, %bb.t ], [ 0, %bb.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  call void @llvm.experimental.noalias.scope.decl(metadata !991)
  %i.cb = icmp slt i64 %i.ca, %i.bz
  br i1 %i.cb, label %bb.v, label %bb.lr

bb.k:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26
          to label %.noexc unwind label %bb.lq

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26
          to label %.noexc8 unwind label %bb.lq

.noexc8:                                          ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.ll, %bb.g
  %i.cc = phi ptr [ %i.ans, %bb.ll ], [ %i.bg, %bb.g ] ; 4 uses
  %i.cd = phi ptr [ %i.ant, %bb.ll ], [ %i.bf, %bb.g ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  %i.cf = invoke noundef zeroext i1 @_RNvXs_NtNtCskQDtHcQtBkN_5tokio4time5sleepNtB4_5SleepNtNtNtCsbvkFyIu7lgC_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.ce, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.o unwind label %bb.n, !noalias !984

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4time5sleep5SleepECsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 8 %i.ce) #24
          to label %bb.r unwind label %bb.ln, !noalias !984

bb.o:                                             ; preds = %bb.m
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %.thread

bb.q:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4time5sleep5SleepECsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 8 %i.ce)
          to label %bb.t unwind label %bb.s, !noalias !984

bb.r:                                             ; preds = %bb.lj, %bb.s, %bb.n
  %i.ch = phi ptr [ %i.cc, %bb.s ], [ %i.cc, %bb.n ], [ %i.ans, %bb.lj ]
  %i.ci = phi ptr [ %i.cd, %bb.s ], [ %i.cd, %bb.n ], [ %i.ant, %bb.lj ]
  %.pn21.i = phi { ptr, i32 } [ %i.cj, %bb.s ], [ %i.cg, %bb.n ], [ %i.aoh, %bb.lj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.lm

bb.s:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i8 0, ptr %i.ck, align 8, !noalias !980
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !993, !noalias !998
  %.phi.trans.insert54.i = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.pre55.i = load i64, ptr %.phi.trans.insert54.i, align 8, !alias.scope !999, !noalias !1000
  br label %bb.j

bb.u:                                             ; preds = %bb.v
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !980
  br label %bb.lo

bb.v:                                             ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cn = add nsw i64 %i.ca, 1
  store i64 %i.cn, ptr %i.cm, align 8, !alias.scope !1001, !noalias !980
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  store i64 %i.ca, ptr %i.co, align 8, !noalias !980
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !980
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !980, !nonnull !3, !align !66, !noundef !3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !980
  store ptr %i.cr, ptr %i.az, align 8, !noalias !980
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !980
  %i.cs = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.co, ptr %i.cs, align 8, !noalias !980
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.543.0..sroa_idx.i, align 8, !noalias !980
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noundef nonnull @13, ptr noundef nonnull %i.az)
          to label %.thread.i unwind label %bb.u, !noalias !984

.thread.i:                                        ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !980
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !alias.scope !1002, !noalias !980
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i8 1, ptr %i.cu, align 8, !noalias !980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !980
  %i.cv = load ptr, ptr %i.cp, align 8, !noalias !980, !nonnull !3, !align !66, !noundef !3 ; 2 uses
  %i.cw = getelementptr i8, ptr %1, i64 240
  %.val.i = load ptr, ptr %i.cw, align 8, !noalias !980, !nonnull !3, !noundef !3 ; 2 uses
  %i.cx = getelementptr i8, ptr %1, i64 248
  %.val28.i = load i64, ptr %i.cx, align 8, !noalias !980, !noundef !3 ; 2 uses
  %.sroa.749.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %.val.i, ptr %.sroa.749.0..sroa_idx.i, align 8, !noalias !980
  %.sroa.850.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %.val28.i, ptr %.sroa.850.0..sroa_idx.i, align 8, !noalias !980
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 312
  store ptr %i.cv, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !980
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 322 ; 2 uses
  store i8 0, ptr %.sroa.12.0..sroa_idx.i, align 2, !noalias !980
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  br label %bb.x

bb.w:                                             ; preds = %bb.e
  %.phi.trans.insert56.i = getelementptr inbounds nuw i8, ptr %1, i64 322 ; 23 uses
  %.pre57.i = load i8, ptr %.phi.trans.insert56.i, align 2, !range !532, !noalias !1006
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  switch i8 %.pre57.i, label %default.unreachable50 [
    i8 0, label %._crit_edge19
    i8 1, label %bb.bd
    i8 2, label %bb.be
    i8 3, label %bb.z
    i8 4, label %bb.bv
  ]

._crit_edge19:                                    ; preds = %bb.w
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.pre21 = load ptr, ptr %.phi.trans.insert20, align 8, !noalias !1006
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.pre23 = load ptr, ptr %.phi.trans.insert22, align 8, !noalias !1006
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.pre25 = load i64, ptr %.phi.trans.insert24, align 8, !noalias !1006
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge19, %.thread.i
  %i.da = phi ptr [ %i.bx, %.thread.i ], [ %i.bg, %._crit_edge19 ] ; 5 uses
  %i.db = phi ptr [ %i.by, %.thread.i ], [ %i.bf, %._crit_edge19 ] ; 5 uses
  %i.dc = phi i64 [ %.val28.i, %.thread.i ], [ %.pre25, %._crit_edge19 ]
  %i.dd = phi ptr [ %.val.i, %.thread.i ], [ %.pre23, %._crit_edge19 ]
  %i.de = phi ptr [ %i.cv, %.thread.i ], [ %.pre21, %._crit_edge19 ]
  %i.df = phi ptr [ %.sroa.12.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert56.i, %._crit_edge19 ] ; 5 uses
  %i.dg = phi ptr [ %i.cy, %.thread.i ], [ %i.cz, %._crit_edge19 ] ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 321 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 3 uses
  store i8 0, ptr %i.di, align 8, !noalias !1006
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 3 uses
  store ptr %i.de, ptr %i.dj, align 8, !noalias !1006
  store ptr %i.dd, ptr %i.dg, align 8, !noalias !1006
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.dc, ptr %i.dk, align 8, !noalias !1006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1006
  store i8 1, ptr %i.dh, align 1, !noalias !1006
  %i.dl = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store i8 0, ptr %i.dl, align 8, !noalias !1006
  %i.dm = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 -9223372036854775808, ptr %i.dm, align 8, !noalias !1006
  %i.dn = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i64 -9223372036854775808, ptr %i.dn, align 8, !noalias !1006
  store i64 4, ptr %i.au, align 8, !noalias !1006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1006
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !984
  %i.do = call noundef align 8 dereferenceable_or_null(272) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 80, 1409) 272, i64 noundef range(i64 8, 129) 8) #21, !noalias !984 ; 16 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.y, label %bb.ac, !prof !1009

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 272) #27
          to label %.noexc.i.i unwind label %bb.aa, !noalias !984

.noexc.i.i:                                       ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1006
  br label %bb.bf

bb.aa:                                            ; preds = %bb.y
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ab:                                            ; preds = %bb.ac
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1006
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1006
  br label %bb.bb

bb.ac:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1006
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1006
  store ptr %i.dg, ptr %i.aq, align 8, !noalias !1006
  %.sroa.5.0..sroa_idx.i35.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.5.0..sroa_idx.i35.i, align 8, !noalias !1006
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull @6, ptr noundef nonnull %i.aq)
          to label %bb.ad unwind label %bb.ab, !noalias !984

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !alias.scope !1010, !noalias !1006
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1006
  %i.ds = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @36)
          to label %bb.af unwind label %bb.ae, !noalias !984 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar) #24
          to label %bb.bb unwind label %bb.ba, !noalias !984

bb.af:                                            ; preds = %bb.ad
  %i.du = extractvalue { i64, i64 } %i.ds, 0
  %i.dv = extractvalue { i64, i64 } %i.ds, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !1006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1006
  store i64 0, ptr %i.do, align 8, !noalias !984
  %.sroa.616.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i64 0, ptr %.sroa.616.0..sroa_idx.i.i, align 8, !noalias !984
  %.sroa.818.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.818.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !984
  %.sroa.919.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  store i64 -9223372036854775808, ptr %.sroa.919.0..sroa_idx.i.i, align 8, !noalias !984
  %.sroa.1121.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 80
  store i64 -9223372036854775808, ptr %.sroa.1121.0..sroa_idx.i.i, align 8, !noalias !984
  %.sroa.1222.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 128
  store i64 -9223372036854775808, ptr %.sroa.1222.0..sroa_idx.i.i, align 8, !noalias !984
  %.sroa.1424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1424.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @38, i64 32, i1 false), !noalias !984
  %.sroa.1424.sroa.5.0..sroa.1424.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 184
  store i64 %i.du, ptr %.sroa.1424.sroa.5.0..sroa.1424.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !984
  %.sroa.1424.sroa.6.0..sroa.1424.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 192
  store i64 %i.dv, ptr %.sroa.1424.sroa.6.0..sroa.1424.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !984
  %.sroa.1525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 200
  store i64 396, ptr %.sroa.1525.0..sroa_idx.i.i, align 8, !noalias !984
  %.sroa.1626.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 208
  store i64 1564524294000, ptr %.sroa.1626.0..sroa_idx.i.i, align 8, !noalias !984
  %.sroa.1727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 216
  store ptr null, ptr %.sroa.1727.0..sroa_idx.i.i, align 8, !noalias !984
  %.sroa.1828.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 264
  store i8 1, ptr %.sroa.1828.0..sroa_idx.i.i, align 8, !noalias !984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 1, ptr %i.at, align 8, !alias.scope !1014, !noalias !1017
  %i.dw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.do, ptr %i.dw, align 8, !alias.scope !1014, !noalias !1017
  %i.dx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 1, ptr %i.dx, align 8, !alias.scope !1014, !noalias !1017
  store i8 1, ptr %i.di, align 8, !noalias !1006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1006
  %i.dy = load ptr, ptr %i.dj, align 8, !noalias !1006, !nonnull !3, !align !66, !noundef !3
  invoke void @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTable8snapshot(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dy)
          to label %bb.ah unwind label %bb.ag, !noalias !984

bb.ag:                                            ; preds = %bb.af
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body64.i.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  %i.ea = load i64, ptr %i.ap, align 16, !range !1022, !alias.scope !1019, !noalias !1006, !noundef !3
  %.not.i63.i.i = icmp eq i64 %i.ea, -9223372036854775711
  br i1 %.not.i63.i.i, label %bb.am, label %bb.ai, !prof !1023

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ah, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.ap, i64 96, i1 false), !noalias !1006
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 43, ptr noundef nonnull %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27
          to label %bb.ak unwind label %bb.aj, !noalias !1025

bb.aj:                                            ; preds = %bb.ai
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.ah) #24
          to label %.body64.i.i unwind label %bb.al, !noalias !1025

bb.ak:                                            ; preds = %bb.ai
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !1025
  unreachable

.body64.i.i:                                      ; preds = %bb.aj, %bb.ag
  %.pn42.i.i = phi { ptr, i32 } [ %i.dz, %bb.ag ], [ %i.eb, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1006
  br label %.body67.i.i

.body67.i.i:                                      ; preds = %bb.kv, %bb.ku, %bb.kr, %.body88.i.i, %.body88.thread.i.i, %.body.i.i, %.body64.i.i
  %i.ed = phi ptr [ %i.da, %.body64.i.i ], [ %i.fb, %.body.i.i ], [ %i.bg, %bb.kv ], [ %i.ame, %bb.kr ], [ %i.gw, %.body88.thread.i.i ], [ %i.bg, %.body88.i.i ], [ %i.bg, %bb.ku ] ; 2 uses
  %i.ee = phi ptr [ %i.db, %.body64.i.i ], [ %i.fc, %.body.i.i ], [ %i.bf, %bb.kv ], [ %i.amf, %bb.kr ], [ %i.gx, %.body88.thread.i.i ], [ %i.bf, %.body88.i.i ], [ %i.bf, %bb.ku ] ; 2 uses
  %i.ef = phi ptr [ %i.df, %.body64.i.i ], [ %i.fd, %.body.i.i ], [ %.phi.trans.insert56.i, %bb.kv ], [ %i.amg, %bb.kr ], [ %i.gy, %.body88.thread.i.i ], [ %.phi.trans.insert56.i, %.body88.i.i ], [ %.phi.trans.insert56.i, %bb.ku ] ; 2 uses
  %i.eg = phi ptr [ %i.dg, %.body64.i.i ], [ %i.fe, %.body.i.i ], [ %i.cz, %bb.kv ], [ %i.amh, %bb.kr ], [ %i.gz, %.body88.thread.i.i ], [ %i.cz, %.body88.i.i ], [ %i.cz, %bb.ku ] ; 2 uses
  %.pn59.pn.i.i = phi { ptr, i32 } [ %.pn42.i.i, %.body64.i.i ], [ %.pn53.i.i, %.body.i.i ], [ %i.amx, %bb.kv ], [ %i.anf, %bb.kr ], [ %.pn2.i.i.i, %.body88.thread.i.i ], [ %i.amx, %.body88.i.i ], [ %i.amx, %bb.ku ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ei = load i8, ptr %i.eh, align 8, !range !533, !noalias !1006, !noundef !3
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.kw, label %bb.bc

bb.am:                                            ; preds = %bb.ah
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !1019, !noalias !1006, !nonnull !3, !align !66, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1006
  invoke void @_RNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_13CommitBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.al)
          to label %bb.ap unwind label %bb.ao, !noalias !984

bb.an:                                            ; preds = %bb.aq, %bb.ao
  %.pn44.i.i = phi { ptr, i32 } [ %i.en, %bb.aq ], [ %i.em, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1006
  br label %bb.az

bb.ao:                                            ; preds = %bb.am
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ap:                                            ; preds = %bb.am
  store i8 0, ptr %i.di, align 8, !noalias !1006
  invoke void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_13CommitBuilder12with_actions(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.al, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.at)
          to label %bb.ar unwind label %bb.aq, !noalias !984

bb.aq:                                            ; preds = %bb.ap
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1006
  %i.eo = load ptr, ptr %i.dj, align 8, !noalias !1006, !nonnull !3, !align !66, !noundef !3 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 104
  %.val72.i.i = load ptr, ptr %i.ep, align 8, !noalias !984, !nonnull !3, !noundef !3 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.eo, i64 112
  %.val73.i.i = load ptr, ptr %i.eq, align 8, !noalias !984, !nonnull !3, !align !66, !noundef !3
  %i.er = atomicrmw add ptr %.val72.i.i, i64 1 monotonic, align 8, !noalias !984
  %i.es = icmp slt i64 %i.er, 0
  br i1 %i.es, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @llvm.trap()
  unreachable

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1006
  store i8 0, ptr %i.dh, align 1, !noalias !1006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %i.ak, ptr noundef nonnull align 8 dereferenceable(408) %i.au, i64 408, i1 false), !noalias !1006
  invoke void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_13CommitBuilder5build(ptr noalias noundef nonnull sret([584 x i8]) align 8 captures(none) dereferenceable(584) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.am, ptr noundef nonnull %i.el, ptr nonnull @8, ptr noundef nonnull %.val72.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val73.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.ak)
          to label %bb.au unwind label %bb.ay, !noalias !984

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1006
  %i.et = invoke { ptr, ptr } @_RNvXs8_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_9PreCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(584) %i.an)
          to label %bb.ax unwind label %bb.aw, !noalias !984 ; 2 uses

bb.av:                                            ; preds = %bb.az, %bb.aw
  %.pn49.i.i = phi { ptr, i32 } [ %i.eu, %bb.aw ], [ %.pn46.pn.i.i, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1006
  br label %.body.i.i

bb.aw:                                            ; preds = %bb.au
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ax:                                            ; preds = %bb.au
  %i.ev = extractvalue { ptr, ptr } %i.et, 0
  %i.ew = extractvalue { ptr, ptr } %i.et, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1006
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 328
  store ptr %i.ev, ptr %i.ex, align 8, !noalias !1006
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 336
  store ptr %i.ew, ptr %i.ey, align 8, !noalias !1006
  br label %bb.bf

bb.ay:                                            ; preds = %bb.at
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1006
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.an
  %.pn46.pn.i.i = phi { ptr, i32 } [ %.pn44.i.i, %bb.an ], [ %i.ez, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1006
  br label %bb.av

bb.ba:                                            ; preds = %bb.ky, %bb.kw, %bb.kv, %bb.bg, %bb.ae
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !984
  unreachable

.body.i.i:                                        ; preds = %bb.bu, %bb.bq, %bb.bo, %bb.bn, %bb.bg, %bb.av
  %i.fb = phi ptr [ %i.fn, %bb.bu ], [ %i.fn, %bb.bo ], [ %i.da, %bb.av ], [ %i.fn, %bb.bg ], [ %i.fn, %bb.bn ], [ %i.fn, %bb.bq ]
  %i.fc = phi ptr [ %i.fo, %bb.bu ], [ %i.fo, %bb.bo ], [ %i.db, %bb.av ], [ %i.fo, %bb.bg ], [ %i.fo, %bb.bn ], [ %i.fo, %bb.bq ]
  %i.fd = phi ptr [ %i.fp, %bb.bu ], [ %i.fp, %bb.bo ], [ %i.df, %bb.av ], [ %i.fp, %bb.bg ], [ %i.fp, %bb.bn ], [ %i.fp, %bb.bq ]
  %i.fe = phi ptr [ %i.fq, %bb.bu ], [ %i.fq, %bb.bo ], [ %i.dg, %bb.av ], [ %i.fq, %bb.bg ], [ %i.fq, %bb.bn ], [ %i.fq, %bb.bq ]
  %.pn53.i.i = phi { ptr, i32 } [ %i.gm, %bb.bu ], [ %i.gd, %bb.bo ], [ %.pn49.i.i, %bb.av ], [ %i.fs, %bb.bg ], [ %i.gd, %bb.bn ], [ %i.gj, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1006
  br label %.body67.i.i

bb.bb:                                            ; preds = %bb.ae, %bb.ab
  %.pn39.i.i = phi { ptr, i32 } [ %i.dt, %bb.ae ], [ %i.dr, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef 272, i64 noundef 8) #21, !noalias !984
  br label %bb.bc

bb.bc:                                            ; preds = %bb.kw, %bb.bb, %.body67.i.i, %bb.aa
  %i.ff = phi ptr [ %i.ed, %bb.kw ], [ %i.ed, %.body67.i.i ], [ %i.da, %bb.aa ], [ %i.da, %bb.bb ]
  %i.fg = phi ptr [ %i.ee, %bb.kw ], [ %i.ee, %.body67.i.i ], [ %i.db, %bb.aa ], [ %i.db, %bb.bb ]
  %i.fh = phi ptr [ %i.ef, %bb.kw ], [ %i.ef, %.body67.i.i ], [ %i.df, %bb.aa ], [ %i.df, %bb.bb ]
  %i.fi = phi ptr [ %i.eg, %bb.kw ], [ %i.eg, %.body67.i.i ], [ %i.dg, %bb.aa ], [ %i.dg, %bb.bb ]
  %.pn59.pn.pn.i.i = phi { ptr, i32 } [ %.pn59.pn.i.i, %bb.kw ], [ %.pn59.pn.i.i, %.body67.i.i ], [ %i.dq, %bb.aa ], [ %.pn39.i.i, %bb.bb ]
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 320
  store i8 0, ptr %i.fj, align 8, !noalias !1006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1006
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 321 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !range !533, !noalias !1006, !noundef !3
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.ky, label %bb.kx

bb.bd:                                            ; preds = %bb.w
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #26
          to label %.noexc36.i unwind label %bb.kz, !noalias !984

.noexc36.i:                                       ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.w
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #26
          to label %.noexc37.i unwind label %bb.kz, !noalias !984

.noexc37.i:                                       ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %bb.ax, %bb.z
  %i.fn = phi ptr [ %i.da, %bb.ax ], [ %i.bg, %bb.z ] ; 7 uses
  %i.fo = phi ptr [ %i.db, %bb.ax ], [ %i.bf, %bb.z ] ; 7 uses
  %i.fp = phi ptr [ %i.df, %bb.ax ], [ %.phi.trans.insert56.i, %bb.z ] ; 7 uses
  %i.fq = phi ptr [ %i.dg, %bb.ax ], [ %i.cz, %bb.z ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1006
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB2h_6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bh unwind label %bb.bg, !noalias !984

bb.bg:                                            ; preds = %bb.bf
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1006
  %.val.i.i = load ptr, ptr %i.fr, align 8, !noalias !1006
  %i.ft = getelementptr i8, ptr %1, i64 336
  %.val69.i.i = load ptr, ptr %i.ft, align 8, !noalias !1006, !nonnull !3, !align !66, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test(ptr %.val.i.i, ptr nonnull %.val69.i.i) #24
          to label %.body.i.i unwind label %bb.ba, !noalias !984

bb.bh:                                            ; preds = %bb.bf
  %i.fu = load i64, ptr %i.aj, align 16, !range !1026, !noalias !1006, !noundef !3 ; 3 uses
  %i.fv = icmp eq i64 %i.fu, -9223372036854775710
  br i1 %i.fv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1006
  store i8 3, ptr %i.fp, align 2, !noalias !1006
  br label %bb.la

bb.bj:                                            ; preds = %bb.bh
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx.i.i, i64 64, i1 false), !noalias !1006
  %.sroa.4.0..sroa_idx.i34.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i34.i, i64 24, i1 false), !noalias !1006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1006
  %.val70.i.i = load ptr, ptr %i.fr, align 8, !noalias !1006 ; 5 uses
  %i.fw = getelementptr i8, ptr %1, i64 336       ; 2 uses
  %.val71.i.i = load ptr, ptr %i.fw, align 8, !noalias !1006, !nonnull !3, !align !66, !noundef !3 ; 5 uses
  %i.fx = load ptr, ptr %.val71.i.i, align 8, !invariant.load !3, !noalias !984 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70.i.i) ]
  invoke void %i.fx(ptr noundef nonnull %.val70.i.i)
          to label %bb.bl unwind label %bb.bn, !noalias !984

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.fy = getelementptr inbounds nuw i8, ptr %.val71.i.i, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !range !4, !invariant.load !3, !noalias !984 ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gb = getelementptr inbounds nuw i8, ptr %.val71.i.i, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !range !5, !invariant.load !3, !noalias !984
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val70.i.i, i64 noundef range(i64 1, 0) %i.fz, i64 noundef range(i64 1, 536870913) %i.gc) #21, !noalias !984
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit.i.i

bb.bn:                                            ; preds = %bb.bk
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.val71.i.i, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !range !4, !invariant.load !3, !noalias !984 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %.body.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gh = getelementptr inbounds nuw i8, ptr %.val71.i.i, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !range !5, !invariant.load !3, !noalias !984
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val70.i.i, i64 noundef range(i64 1, 0) %i.gf, i64 noundef range(i64 1, 536870913) %i.gi) #21, !noalias !984
  br label %.body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %bb.bm, %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  %.not.i.i.i = icmp eq i64 %i.fu, -9223372036854775711
  br i1 %.not.i.i.i, label %bb.bt, label %bb.bp, !prof !1023

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1032
  store i64 %i.fu, ptr %i.ai, align 16, !noalias !1033
  %.sroa.3.0..sroa_idx104.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx104.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.i.i, i64 64, i1 false), !noalias !1033
  %.sroa.4.0..sroa_idx105.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx105.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i, i64 24, i1 false), !noalias !1033
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 43, ptr noundef nonnull %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
          to label %bb.br unwind label %bb.bq, !noalias !1034

bb.bq:                                            ; preds = %bb.bp
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.ai) #24
          to label %.body.i.i unwind label %bb.bs, !noalias !1034

bb.br:                                            ; preds = %bb.bp
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !1034
  unreachable

bb.bt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.i.i, i64 64, i1 false), !alias.scope !1035, !noalias !1006
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %.val75.i.i = load i64, ptr %i.gl, align 8, !noalias !1006, !noundef !3
  store i64 %.val75.i.i, ptr %i.fr, align 8, !noalias !1006
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ao)
          to label %.thread.i.i unwind label %bb.bu, !noalias !984

bb.bu:                                            ; preds = %bb.bt
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.thread.i.i:                                      ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1006
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !1006, !nonnull !3, !align !66, !noundef !3 ; 2 uses
  store ptr %i.go, ptr %i.fw, align 8, !noalias !1006
  %.sroa.8111.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1208 ; 2 uses
  store i8 0, ptr %.sroa.8111.0..sroa_idx.i.i, align 8, !noalias !1006
  br label %.thread47.i.i.i

bb.bv:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1006
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1208 ; 19 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !517, !noalias !1036
  switch i8 %.pre.i.i, label %default.unreachable50 [
    i8 0, label %..thread47.i.i_crit_edge.i
    i8 1, label %bb.bw
    i8 2, label %bb.bx
    i8 3, label %bb.bz
  ]

..thread47.i.i_crit_edge.i:                       ; preds = %bb.bv
  %.phi.trans.insert58.i = getelementptr inbounds nuw i8, ptr %1, i64 336
  %.pre59.i = load ptr, ptr %.phi.trans.insert58.i, align 8, !noalias !1036
  br label %.thread47.i.i.i

.thread47.i.i.i:                                  ; preds = %..thread47.i.i_crit_edge.i, %.thread.i.i
  %i.gp = phi ptr [ %i.fn, %.thread.i.i ], [ %i.bg, %..thread47.i.i_crit_edge.i ]
  %i.gq = phi ptr [ %i.fo, %.thread.i.i ], [ %i.bf, %..thread47.i.i_crit_edge.i ]
  %i.gr = phi ptr [ %i.fp, %.thread.i.i ], [ %.phi.trans.insert56.i, %..thread47.i.i_crit_edge.i ]
  %i.gs = phi ptr [ %i.fq, %.thread.i.i ], [ %i.cz, %..thread47.i.i_crit_edge.i ]
  %i.gt = phi ptr [ %i.go, %.thread.i.i ], [ %.pre59.i, %..thread47.i.i_crit_edge.i ] ; 2 uses
  %i.gu = phi ptr [ %.sroa.8111.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert.i.i, %..thread47.i.i_crit_edge.i ]
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 0, ptr %i.gv, align 8, !noalias !1036
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 360
  store ptr %i.gt, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !1036
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1200 ; 2 uses
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !1036
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1343.i.i.i.i)
  br label %bb.ca

.body88.thread.i.i:                               ; preds = %.body.thread.i.i.i, %bb.by, %.body.i.i.i
  %i.gw = phi ptr [ %i.bg, %bb.by ], [ %i.bg, %.body.i.i.i ], [ %i.in, %.body.thread.i.i.i ]
  %i.gx = phi ptr [ %i.bf, %bb.by ], [ %i.bf, %.body.i.i.i ], [ %i.io, %.body.thread.i.i.i ]
  %i.gy = phi ptr [ %.phi.trans.insert56.i, %bb.by ], [ %.phi.trans.insert56.i, %.body.i.i.i ], [ %i.ip, %.body.thread.i.i.i ]
  %i.gz = phi ptr [ %i.cz, %bb.by ], [ %i.cz, %.body.i.i.i ], [ %i.iq, %.body.thread.i.i.i ]
end_hunk_0
