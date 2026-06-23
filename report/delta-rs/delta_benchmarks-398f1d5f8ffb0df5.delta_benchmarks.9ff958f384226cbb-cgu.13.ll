inline.NumInlined: 2667
inline.NumDeleted: 1309
begin_hunk_0_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw21drop_join_handle_slowINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1N_8snapshotNtB2X_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB52_5error5ErrorEEs_0ENtNtB1b_8schedule16BlockingScheduleECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %i.ae = load i64, ptr %i.ad, align 8, !range !301, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, 0) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #23
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.r, %bb.o, %bb.n
  %common.resume.op.i = phi { ptr, i32 } [ %i.ag, %bb.r ], [ %i.z, %bb.o ], [ %i.z, %bb.n ]
  resume { ptr, i32 } %common.resume.op.i

bb.p:                                             ; preds = %bb.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.af = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.af, label %bb.q, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE21drop_join_handle_slowCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2d_8snapshotNtB3n_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5c_5error5ErrorEEs_0ENtNtB1B_8schedule16BlockingScheduleEECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0ENtNtB2a_8schedule16BlockingScheduleEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #23
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0ENtNtB2a_8schedule16BlockingScheduleEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.q
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #23
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE21drop_join_handle_slowCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.p

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE21drop_join_handle_slowCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0ENtNtB2a_8schedule16BlockingScheduleEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw4pollINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBT_6future6future6Futurep6OutputTjINtNtBT_6result6ResultINtNtB1p_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtBT_6marker4SendEL_EEINtNtB1p_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 9 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 10 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.y
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread6.i
  ]

default.unreachable:                              ; preds = %bb.ad, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3695
  store i64 %i.n, ptr %i.j, align 8, !noalias !3704
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8, !noalias !3704
  %.sroa.14.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %.sroa.14.8..sroa_idx.i.i.i, align 8, !noalias !3704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3705
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8, !range !428, !noalias !3709, !noundef !3
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3709
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !323, !noalias !3709, !noundef !3
  %i.u = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.t)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.j, !noalias !3695

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.u, ptr %i.g, align 8, !noalias !3709
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !noalias !3709, !nonnull !3, !noundef !3
  %i.w = getelementptr i8, ptr %0, i64 64
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !noalias !3709, !nonnull !3, !align !72, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !3, !noalias !3713, !nonnull !3
  invoke void %i.y(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j) #29
          to label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i unwind label %bb.e, !noalias !3717, !inline_history !3718

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.j, !noalias !3695

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !3719

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3719
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.j, !noalias !3695

.noexc2.i.i.i.i.i.i:                              ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3709
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !3704 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 21
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3705
  store i32 2, ptr %i.h, align 8, !noalias !3705
  invoke fastcc void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.h)
          to label %bb.m unwind label %bb.h, !noalias !3717

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.i) #25
          to label %.body.i.i.i.i.i.i unwind label %bb.i, !noalias !3717

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3717
  unreachable

bb.j:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i, %bb.d, %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.j, %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.af, %bb.j ], [ %i.z, %bb.e ], [ %i.ad, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3695
  store i32 2, ptr %i.f, align 8, !noalias !3695
  invoke fastcc void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.f)
          to label %.body.i.i.i unwind label %bb.k, !noalias !3695

bb.k:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3695
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3695
  %i.ah = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %.thread.i.i.i unwind label %bb.l, !noalias !3704 ; 2 uses

bb.l:                                             ; preds = %.body.i.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #26, !noalias !3704
  unreachable

.thread.i.i.i:                                    ; preds = %.body.i.i.i
  %i.ak = extractvalue { ptr, ptr } %i.ai, 0
  %i.al = extractvalue { ptr, ptr } %i.ai, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3705
  %.sroa.096.0.copyload.i.i.i = load i64, ptr %i.i, align 8, !noalias !3704
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !3704 ; 2 uses
  %.sroa.698.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.698.0.copyload.i.i.i = load ptr, ptr %.sroa.698.0..sroa_idx.i.i.i, align 8, !noalias !3704 ; 2 uses
  %.sroa.799.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.am = load <2 x i64>, ptr %.sroa.799.0..sroa_idx.i.i.i, align 8, !noalias !3704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3695
  %cond.i.i.i = icmp eq i64 %i.ac, 22
  br i1 %cond.i.i.i, label %bb.n, label %bb.o, !prof !3720

bb.n:                                             ; preds = %bb.m, %.thread.i.i.i
  %.sroa.8.0123.i.i.i = phi ptr [ %i.ak, %.thread.i.i.i ], [ %.sroa.5.0.copyload.i.i.i, %bb.m ] ; 2 uses
  %.sroa.10.0122.i.i.i = phi ptr [ %i.al, %.thread.i.i.i ], [ %.sroa.698.0.copyload.i.i.i, %bb.m ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0123.i.i.i), "nonnull"(ptr %.sroa.10.0122.i.i.i) ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !range !323, !noalias !3704, !noundef !3
  %i.ap = ptrtoint ptr %.sroa.10.0122.i.i.i to i64
  %i.aq = inttoptr i64 %i.ao to ptr
  %i.ar = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.ap, i64 0
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.6.sroa.0.0.i.i.i = phi ptr [ %i.aq, %bb.n ], [ %.sroa.5.0.copyload.i.i.i, %bb.m ]
  %.sroa.516.0.i.i.i = phi i64 [ 21, %bb.n ], [ %i.ac, %bb.m ]
  %.sroa.014.0.i.i.i = phi i64 [ undef, %bb.n ], [ %.sroa.096.0.copyload.i.i.i, %bb.m ]
  %.sroa.6.sroa.6.0.i.i.i = phi ptr [ %.sroa.8.0123.i.i.i, %bb.n ], [ %.sroa.698.0.copyload.i.i.i, %bb.m ]
  %i.as = phi <2 x i64> [ %i.ar, %bb.n ], [ %i.am, %bb.m ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3721
  store i64 %.sroa.014.0.i.i.i, ptr %i.at, align 8, !noalias !3704
  %.sroa.694.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.516.0.i.i.i, ptr %.sroa.694.0..sroa_idx.i.i.i, align 8, !noalias !3704
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.6.sroa.0.0.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !3704
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.6.sroa.6.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !3704
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store <2 x i64> %i.as, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !3704
  store i32 1, ptr %i.e, align 8, !noalias !3721
  invoke fastcc void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.e)
          to label %.thread138.i.i.i unwind label %bb.p, !noalias !3704

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  %i.aw = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.av)
          to label %bb.r unwind label %bb.q, !noalias !3704 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #26, !noalias !3704
  unreachable

.thread138.i.i.i:                                 ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3721
  br label %bb.ae

bb.r:                                             ; preds = %bb.p
  %i.ay = extractvalue { ptr, ptr } %i.aw, 0      ; 4 uses
  %i.az = extractvalue { ptr, ptr } %i.aw, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = load ptr, ptr %i.az, align 8, !invariant.load !3, !noalias !3704 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void %i.ba(ptr noundef nonnull %i.ay)
          to label %bb.u unwind label %bb.w, !noalias !3704

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !201, !invariant.load !3, !noalias !3704 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !range !301, !invariant.load !3, !noalias !3704
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef range(i64 1, 0) %i.bc, i64 noundef range(i64 1, 536870913) %i.bf) #23, !noalias !3704
  br label %bb.ae

bb.w:                                             ; preds = %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !201, !invariant.load !3, !noalias !3704 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %common.resume.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !range !301, !invariant.load !3, !noalias !3704
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef range(i64 1, 0) %i.bi, i64 noundef range(i64 1, 536870913) %i.bl) #23, !noalias !3704
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.an, %bb.am, %bb.x, %bb.w
  %common.resume.op.i = phi { ptr, i32 } [ %i.cc, %bb.an ], [ %i.cb, %bb.am ], [ %i.bg, %bb.x ], [ %i.bg, %bb.w ]
  resume { ptr, i32 } %common.resume.op.i

bb.y:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 %i.bm, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.c)
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bo)
          to label %bb.ac unwind label %bb.aa     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

bb.ac:                                            ; preds = %bb.z
  %i.br = extractvalue { ptr, ptr } %i.bp, 0
  %i.bs = extractvalue { ptr, ptr } %i.bp, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.ac, %bb.ab
  %.sroa.63.0.i.i.i = phi ptr [ null, %bb.ab ], [ %i.br, %bb.ac ]
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.ab ], [ %i.bs, %bb.ac ]
  %.sroa.02.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i.i.i = load i64, ptr %.sroa.02.0.in.i.i.i, align 8, !range !323, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 21, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i1.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.02.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i1.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.63.0.i.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 %i.bm, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i

bb.ad:                                            ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3695
  %i.bt = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.bt, label %default.unreachable [
    i8 3, label %bb.af
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread12.i
    i8 1, label %bb.ak
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread12.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.ae:                                            ; preds = %bb.v, %bb.u, %bb.r, %.thread138.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.ai unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  %i.bw = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bv)
          to label %bb.aj unwind label %bb.ah     ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread8.i

bb.aj:                                            ; preds = %bb.ag
  %i.by = extractvalue { ptr, ptr } %i.bw, 0
  %i.bz = extractvalue { ptr, ptr } %i.bw, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread8.i

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread8.i: ; preds = %bb.aj, %bb.ai
  %.sroa.63.0.i2.i.i = phi ptr [ null, %bb.ai ], [ %i.by, %bb.aj ]
  %.sroa.8.0.i3.i.i = phi ptr [ undef, %bb.ai ], [ %i.bz, %bb.aj ]
  %.sroa.02.0.i5.i.i = load i64, ptr %i.s, align 8, !range !323, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 21, ptr %.sroa.4.0..sroa_idx.i6.i.i, align 8
  %.sroa.5.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.02.0.i5.i.i, ptr %.sroa.5.0..sroa_idx.i7.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.63.0.i2.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i8.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i9.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw4pollINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBT_6future6future6Futurep6OutputTjINtNtBT_6result6ResultINtNtB1p_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtBT_6marker4SendEL_EEINtNtB1p_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %i.ca = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.ca, label %bb.al, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1R_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEINtNtB1R_4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEINtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #23
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEINtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.al
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #23
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread6.i: ; preds = %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1R_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEINtNtB1R_4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEINtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.an

bb.an:                                            ; preds = %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread6.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #23
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEINtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread6.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #23
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread12.i, %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i, %bb.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEINtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEINtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw4pollINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBT_6future6future6Futurep6OutputTjINtNtBT_6result6ResultINtNtB1p_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtBT_6marker4SendEL_EEINtNtB1p_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 9 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 10 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.y
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread6.i
  ]

default.unreachable:                              ; preds = %bb.ad, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3726
  store i64 %i.n, ptr %i.j, align 8, !noalias !3735
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8, !noalias !3735
  %.sroa.14.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %.sroa.14.8..sroa_idx.i.i.i, align 8, !noalias !3735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3736
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8, !range !428, !noalias !3740, !noundef !3
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3740
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !323, !noalias !3740, !noundef !3
  %i.u = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.t)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.j, !noalias !3726

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.u, ptr %i.g, align 8, !noalias !3740
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !noalias !3740, !nonnull !3, !noundef !3
  %i.w = getelementptr i8, ptr %0, i64 64
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !noalias !3740, !nonnull !3, !align !72, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !3, !noalias !3744, !nonnull !3
  invoke void %i.y(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j) #29
          to label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i unwind label %bb.e, !noalias !3748, !inline_history !3718

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.j, !noalias !3726

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !3749

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3749
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.j, !noalias !3726

.noexc2.i.i.i.i.i.i:                              ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3740
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !3735 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 21
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3736
  store i32 2, ptr %i.h, align 8, !noalias !3736
  invoke fastcc void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.h)
          to label %bb.m unwind label %bb.h, !noalias !3748

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.i) #25
          to label %.body.i.i.i.i.i.i unwind label %bb.i, !noalias !3748

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3748
  unreachable

bb.j:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i, %bb.d, %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.j, %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.af, %bb.j ], [ %i.z, %bb.e ], [ %i.ad, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3726
  store i32 2, ptr %i.f, align 8, !noalias !3726
  invoke fastcc void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.f)
          to label %.body.i.i.i unwind label %bb.k, !noalias !3726

bb.k:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3726
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3726
  %i.ah = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %.thread.i.i.i unwind label %bb.l, !noalias !3735 ; 2 uses

bb.l:                                             ; preds = %.body.i.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #26, !noalias !3735
  unreachable

.thread.i.i.i:                                    ; preds = %.body.i.i.i
  %i.ak = extractvalue { ptr, ptr } %i.ai, 0
  %i.al = extractvalue { ptr, ptr } %i.ai, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3736
  %.sroa.096.0.copyload.i.i.i = load i64, ptr %i.i, align 8, !noalias !3735
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !3735 ; 2 uses
  %.sroa.698.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.698.0.copyload.i.i.i = load ptr, ptr %.sroa.698.0..sroa_idx.i.i.i, align 8, !noalias !3735 ; 2 uses
  %.sroa.799.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.am = load <2 x i64>, ptr %.sroa.799.0..sroa_idx.i.i.i, align 8, !noalias !3735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3726
  %cond.i.i.i = icmp eq i64 %i.ac, 22
  br i1 %cond.i.i.i, label %bb.n, label %bb.o, !prof !3720

bb.n:                                             ; preds = %bb.m, %.thread.i.i.i
  %.sroa.8.0123.i.i.i = phi ptr [ %i.ak, %.thread.i.i.i ], [ %.sroa.5.0.copyload.i.i.i, %bb.m ] ; 2 uses
  %.sroa.10.0122.i.i.i = phi ptr [ %i.al, %.thread.i.i.i ], [ %.sroa.698.0.copyload.i.i.i, %bb.m ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0123.i.i.i), "nonnull"(ptr %.sroa.10.0122.i.i.i) ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !range !323, !noalias !3735, !noundef !3
  %i.ap = ptrtoint ptr %.sroa.10.0122.i.i.i to i64
  %i.aq = inttoptr i64 %i.ao to ptr
  %i.ar = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.ap, i64 0
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.6.sroa.0.0.i.i.i = phi ptr [ %i.aq, %bb.n ], [ %.sroa.5.0.copyload.i.i.i, %bb.m ]
  %.sroa.516.0.i.i.i = phi i64 [ 21, %bb.n ], [ %i.ac, %bb.m ]
  %.sroa.014.0.i.i.i = phi i64 [ undef, %bb.n ], [ %.sroa.096.0.copyload.i.i.i, %bb.m ]
  %.sroa.6.sroa.6.0.i.i.i = phi ptr [ %.sroa.8.0123.i.i.i, %bb.n ], [ %.sroa.698.0.copyload.i.i.i, %bb.m ]
  %i.as = phi <2 x i64> [ %i.ar, %bb.n ], [ %i.am, %bb.m ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3750
  store i64 %.sroa.014.0.i.i.i, ptr %i.at, align 8, !noalias !3735
  %.sroa.694.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.516.0.i.i.i, ptr %.sroa.694.0..sroa_idx.i.i.i, align 8, !noalias !3735
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.6.sroa.0.0.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !3735
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.6.sroa.6.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !3735
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store <2 x i64> %i.as, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !3735
  store i32 1, ptr %i.e, align 8, !noalias !3750
  invoke fastcc void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.e)
          to label %.thread138.i.i.i unwind label %bb.p, !noalias !3735

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  %i.aw = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.av)
          to label %bb.r unwind label %bb.q, !noalias !3735 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #26, !noalias !3735
  unreachable

.thread138.i.i.i:                                 ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3750
  br label %bb.ae

bb.r:                                             ; preds = %bb.p
  %i.ay = extractvalue { ptr, ptr } %i.aw, 0      ; 4 uses
  %i.az = extractvalue { ptr, ptr } %i.aw, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = load ptr, ptr %i.az, align 8, !invariant.load !3, !noalias !3735 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void %i.ba(ptr noundef nonnull %i.ay)
          to label %bb.u unwind label %bb.w, !noalias !3735

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !201, !invariant.load !3, !noalias !3735 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !range !301, !invariant.load !3, !noalias !3735
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef range(i64 1, 0) %i.bc, i64 noundef range(i64 1, 536870913) %i.bf) #23, !noalias !3735
  br label %bb.ae

bb.w:                                             ; preds = %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !201, !invariant.load !3, !noalias !3735 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %common.resume.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !range !301, !invariant.load !3, !noalias !3735
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef range(i64 1, 0) %i.bi, i64 noundef range(i64 1, 536870913) %i.bl) #23, !noalias !3735
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.an, %bb.am, %bb.x, %bb.w
  %common.resume.op.i = phi { ptr, i32 } [ %i.cc, %bb.an ], [ %i.cb, %bb.am ], [ %i.bg, %bb.x ], [ %i.bg, %bb.w ]
  resume { ptr, i32 } %common.resume.op.i

bb.y:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 %i.bm, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.c)
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bo)
          to label %bb.ac unwind label %bb.aa     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

bb.ac:                                            ; preds = %bb.z
  %i.br = extractvalue { ptr, ptr } %i.bp, 0
  %i.bs = extractvalue { ptr, ptr } %i.bp, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.ac, %bb.ab
  %.sroa.63.0.i.i.i = phi ptr [ null, %bb.ab ], [ %i.br, %bb.ac ]
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.ab ], [ %i.bs, %bb.ac ]
  %.sroa.02.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i.i.i = load i64, ptr %.sroa.02.0.in.i.i.i, align 8, !range !323, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 21, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i1.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.02.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i1.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.63.0.i.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 %i.bm, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i

bb.ad:                                            ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3726
  %i.bt = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.bt, label %default.unreachable [
    i8 3, label %bb.af
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread12.i
    i8 1, label %bb.ak
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread12.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.ae:                                            ; preds = %bb.v, %bb.u, %bb.r, %.thread138.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.ai unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  %i.bw = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bv)
          to label %bb.aj unwind label %bb.ah     ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread8.i

bb.aj:                                            ; preds = %bb.ag
  %i.by = extractvalue { ptr, ptr } %i.bw, 0
  %i.bz = extractvalue { ptr, ptr } %i.bw, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread8.i

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread8.i: ; preds = %bb.aj, %bb.ai
  %.sroa.63.0.i2.i.i = phi ptr [ null, %bb.ai ], [ %i.by, %bb.aj ]
  %.sroa.8.0.i3.i.i = phi ptr [ undef, %bb.ai ], [ %i.bz, %bb.aj ]
  %.sroa.02.0.i5.i.i = load i64, ptr %i.s, align 8, !range !323, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 21, ptr %.sroa.4.0..sroa_idx.i6.i.i, align 8
  %.sroa.5.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.02.0.i5.i.i, ptr %.sroa.5.0..sroa_idx.i7.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.63.0.i2.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i8.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i9.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
end_hunk_1
begin_hunk_2_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw4pollINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBP_IB1l_DNtNtNtBT_6future6future6Futurep6OutputTjINtNtBT_6result6ResultINtNtB1p_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtBT_6marker4SendEL_EEEEINtNtB1p_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsdJxlLsGgtXr_16delta_benchmarks:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 10 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.ag
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread6.i
  ]

default.unreachable:                              ; preds = %bb.ah, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3755
  store i64 %i.k, ptr %i.g, align 8, !noalias !3764
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8, !noalias !3764
  %.sroa.14.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.14.8..sroa_idx.i.i.i, align 8, !noalias !3764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3765
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.n = load i32, ptr %i.m, align 8, !range !428, !noalias !3769, !noundef !3
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3769
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !range !323, !noalias !3769, !noundef !3
  %i.r = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.q)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.n, !noalias !3755

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.r, ptr %i.d, align 8, !noalias !3769
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !noalias !3769, !nonnull !3, !noundef !3 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val.i.i.i.i.i.i.i.i, align 8, !noalias !3773, !nonnull !3, !noundef !3
  %i.t = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !noalias !3773, !nonnull !3, !align !72, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !3, !noalias !3777, !nonnull !3
  invoke void %i.v(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g) #29
          to label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i unwind label %bb.e, !noalias !3781, !inline_history !3782

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.n, !noalias !3755

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !3783

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3783
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.n, !noalias !3755

.noexc2.i.i.i.i.i.i:                              ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3769
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !3764 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.z, 21
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ah, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3765
  store i32 2, ptr %i.e, align 8, !noalias !3765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3784
  %i.aa = load i64, ptr %i.p, align 8, !range !323, !noalias !3784, !noundef !3
  %i.ab = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.aa)
          to label %bb.h unwind label %bb.k, !noalias !3787

bb.h:                                             ; preds = %bb.g
  store i64 %i.ab, ptr %i.c, align 8, !noalias !3784
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1y_IB1O_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1S_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i.i.i.i.i unwind label %bb.i, !noalias !3787

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !3765
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.j, !noalias !3787

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !3765
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.q unwind label %bb.l, !noalias !3781

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3781
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1y_IB1O_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1S_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #25
          to label %.body.i.i.i.i.i.i.i unwind label %bb.j, !noalias !3781

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.l, %bb.k, %bb.i
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.af, %bb.l ], [ %i.ac, %bb.i ], [ %i.ae, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.f) #25
          to label %.body.i.i.i.i.i.i unwind label %bb.m, !noalias !3781

bb.m:                                             ; preds = %.body.i.i.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3781
  unreachable

bb.n:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i, %bb.d, %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.n, %.body.i.i.i.i.i.i.i, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %i.w, %bb.e ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNCNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_future05GuardINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1T_IB29_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB2d_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtB2d_4sync3ArcNtNtNtBR_9scheduler14current_thread6HandleEEECsdJxlLsGgtXr_16delta_benchmarks(ptr nonnull align 8 %i.l) #25
          to label %.body.i.i.i unwind label %bb.o, !noalias !3755

bb.o:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3755
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  %i.aj = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.ak = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.aj)
          to label %.thread.i.i.i unwind label %bb.p, !noalias !3764 ; 2 uses

bb.p:                                             ; preds = %.body.i.i.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #26, !noalias !3764
  unreachable

.thread.i.i.i:                                    ; preds = %.body.i.i.i
  %i.am = extractvalue { ptr, ptr } %i.ak, 0
  %i.an = extractvalue { ptr, ptr } %i.ak, 1
  br label %bb.r

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3765
  %.sroa.098.0.copyload.i.i.i = load i64, ptr %i.f, align 8, !noalias !3764
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !3764 ; 2 uses
  %.sroa.6100.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6100.0.copyload.i.i.i = load ptr, ptr %.sroa.6100.0..sroa_idx.i.i.i, align 8, !noalias !3764 ; 2 uses
  %.sroa.7101.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ao = load <2 x i64>, ptr %.sroa.7101.0..sroa_idx.i.i.i, align 8, !noalias !3764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3755
  %cond.i.i.i = icmp eq i64 %i.z, 22
  br i1 %cond.i.i.i, label %bb.r, label %._crit_edge.i.i.i, !prof !3720

._crit_edge.i.i.i:                                ; preds = %bb.q
  %.pre.i.i.i = load i64, ptr %i.p, align 8, !range !323, !noalias !3788
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %.thread.i.i.i
  %.sroa.8.0125.i.i.i = phi ptr [ %i.am, %.thread.i.i.i ], [ %.sroa.5.0.copyload.i.i.i, %bb.q ] ; 2 uses
  %.sroa.10.0124.i.i.i = phi ptr [ %i.an, %.thread.i.i.i ], [ %.sroa.6100.0.copyload.i.i.i, %bb.q ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0125.i.i.i), "nonnull"(ptr %.sroa.10.0124.i.i.i) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !range !323, !noalias !3764, !noundef !3 ; 2 uses
  %i.ar = ptrtoint ptr %.sroa.10.0124.i.i.i to i64
  %i.as = inttoptr i64 %i.aq to ptr
  %i.at = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.ar, i64 0
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i
  %i.au = phi i64 [ %i.aq, %bb.r ], [ %.pre.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.6.sroa.0.0.i.i.i = phi ptr [ %i.as, %bb.r ], [ %.sroa.5.0.copyload.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.516.0.i.i.i = phi i64 [ 21, %bb.r ], [ %i.z, %._crit_edge.i.i.i ]
  %.sroa.014.0.i.i.i = phi i64 [ undef, %bb.r ], [ %.sroa.098.0.copyload.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.6.sroa.6.0.i.i.i = phi ptr [ %.sroa.8.0125.i.i.i, %bb.r ], [ %.sroa.6100.0.copyload.i.i.i, %._crit_edge.i.i.i ]
  %i.av = phi <2 x i64> [ %i.at, %bb.r ], [ %i.ao, %._crit_edge.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3795
  store i64 %.sroa.014.0.i.i.i, ptr %i.aw, align 8, !noalias !3764
  %.sroa.696.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.516.0.i.i.i, ptr %.sroa.696.0..sroa_idx.i.i.i, align 8, !noalias !3764
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.6.sroa.0.0.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !3764
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.6.sroa.6.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !3764
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <2 x i64> %i.av, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !3764
  store i32 1, ptr %i.b, align 8, !noalias !3795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3788
  %i.ax = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.au)
          to label %bb.t unwind label %bb.w, !noalias !3788

bb.t:                                             ; preds = %bb.s
  store i64 %i.ax, ptr %i.a, align 8, !noalias !3788
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1y_IB1O_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1S_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.m)
          to label %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtB9_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB2d_IB2t_DNtNtNtB9_6future6future6Futurep6OutputTjINtNtB9_6result6ResultINtNtB2x_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB9_6marker4SendEL_EEEEINtNtB2x_4sync3ArcNtNtNtB1i_9scheduler14current_thread6HandleEEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i unwind label %bb.u, !noalias !3788

bb.u:                                             ; preds = %bb.t
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !3795
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body87.i.i.i unwind label %bb.v, !noalias !3788

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3795
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1y_IB1O_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1S_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #25
          to label %.body87.i.i.i unwind label %bb.v, !noalias !3795

_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtB9_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB2d_IB2t_DNtNtNtB9_6future6future6Futurep6OutputTjINtNtB9_6result6ResultINtNtB2x_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB9_6marker4SendEL_EEEEINtNtB2x_4sync3ArcNtNtNtB1i_9scheduler14current_thread6HandleEEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !3795
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread140.i.i.i unwind label %bb.x, !noalias !3764

bb.x:                                             ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtB9_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB2d_IB2t_DNtNtNtB9_6future6future6Futurep6OutputTjINtNtB9_6result6ResultINtNtB2x_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB9_6marker4SendEL_EEEEINtNtB2x_4sync3ArcNtNtNtB1i_9scheduler14current_thread6HandleEEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %.body87.i.i.i

.body87.i.i.i:                                    ; preds = %bb.x, %bb.w, %bb.u
  %eh.lpad-body88.i.i.i = phi { ptr, i32 } [ %i.bb, %bb.x ], [ %i.ay, %bb.u ], [ %i.ba, %bb.w ]
  %i.bc = extractvalue { ptr, i32 } %eh.lpad-body88.i.i.i, 0
  %i.bd = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bc)
          to label %bb.z unwind label %bb.y, !noalias !3764 ; 2 uses

bb.y:                                             ; preds = %.body87.i.i.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #26, !noalias !3764
  unreachable

.thread140.i.i.i:                                 ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtB9_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB2d_IB2t_DNtNtNtB9_6future6future6Futurep6OutputTjINtNtB9_6result6ResultINtNtB2x_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB9_6marker4SendEL_EEEEINtNtB2x_4sync3ArcNtNtNtB1i_9scheduler14current_thread6HandleEEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3795
  br label %bb.ai

bb.z:                                             ; preds = %.body87.i.i.i
  %i.bf = extractvalue { ptr, ptr } %i.bd, 0      ; 4 uses
  %i.bg = extractvalue { ptr, ptr } %i.bd, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %i.bh = load ptr, ptr %i.bg, align 8, !invariant.load !3, !noalias !3764 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void %i.bh(ptr noundef nonnull %i.bf)
          to label %bb.ac unwind label %bb.ae, !noalias !3764

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !range !201, !invariant.load !3, !noalias !3764 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !range !301, !invariant.load !3, !noalias !3764
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef range(i64 1, 0) %i.bj, i64 noundef range(i64 1, 536870913) %i.bm) #23, !noalias !3764
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ab
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !201, !invariant.load !3, !noalias !3764 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %common.resume.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !range !301, !invariant.load !3, !noalias !3764
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef range(i64 1, 0) %i.bp, i64 noundef range(i64 1, 536870913) %i.bs) #23, !noalias !3764
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.am, %bb.al, %bb.af, %bb.ae
  %common.resume.op.i = phi { ptr, i32 } [ %i.bx, %bb.am ], [ %i.bw, %bb.al ], [ %i.bn, %bb.af ], [ %i.bn, %bb.ae ]
  resume { ptr, i32 } %common.resume.op.i

bb.ag:                                            ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 %i.bt)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i

bb.ah:                                            ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3755
  %i.bu = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.bu, label %default.unreachable [
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread8.i
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread12.i
    i8 1, label %bb.aj
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread12.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.ai:                                            ; preds = %bb.ad, %bb.ac, %bb.z, %.thread140.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread8.i: ; preds = %bb.ah
  call fastcc void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread6.i

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i: ; preds = %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread8.i, %bb.ai, %bb.ag
  call fastcc void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_RNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtBG_4task8Schedule9yield_nowCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noundef nonnull %0)
  %i.bv = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.bv, label %bb.ak, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.ak:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1x_IB1N_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1R_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtB1R_4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_IB26_IBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #23
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_IB26_IBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.ak
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #23
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread6.i: ; preds = %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1x_IB1N_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1R_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtB1R_4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_IB26_IBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.am

bb.am:                                            ; preds = %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread6.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #23
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_IB26_IBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread6.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #23
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

end_hunk_2
begin_hunk_3_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw4pollINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBP_IB1l_DNtNtNtBT_6future6future6Futurep6OutputTjINtNtBT_6result6ResultINtNtB1p_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtBT_6marker4SendEL_EEEEINtNtB1p_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsdJxlLsGgtXr_16delta_benchmarks:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 10 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.ag
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread6.i
  ]

default.unreachable:                              ; preds = %bb.ah, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3796
  store i64 %i.k, ptr %i.g, align 8, !noalias !3805
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8, !noalias !3805
  %.sroa.14.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.14.8..sroa_idx.i.i.i, align 8, !noalias !3805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3806
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.n = load i32, ptr %i.m, align 8, !range !428, !noalias !3810, !noundef !3
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3810
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !range !323, !noalias !3810, !noundef !3
  %i.r = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.q)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.n, !noalias !3796

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.r, ptr %i.d, align 8, !noalias !3810
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !noalias !3810, !nonnull !3, !noundef !3 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val.i.i.i.i.i.i.i.i, align 8, !noalias !3814, !nonnull !3, !noundef !3
  %i.t = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !noalias !3814, !nonnull !3, !align !72, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !3, !noalias !3818, !nonnull !3
  invoke void %i.v(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g) #29
          to label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i unwind label %bb.e, !noalias !3822, !inline_history !3782

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.n, !noalias !3796

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !3823

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3823
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.n, !noalias !3796

.noexc2.i.i.i.i.i.i:                              ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3810
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !3805 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.z, 21
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ah, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3806
  store i32 2, ptr %i.e, align 8, !noalias !3806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3824
  %i.aa = load i64, ptr %i.p, align 8, !range !323, !noalias !3824, !noundef !3
  %i.ab = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.aa)
          to label %bb.h unwind label %bb.k, !noalias !3827

bb.h:                                             ; preds = %bb.g
  store i64 %i.ab, ptr %i.c, align 8, !noalias !3824
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1y_IB1O_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1S_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i.i.i.i.i unwind label %bb.i, !noalias !3827

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !3806
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.j, !noalias !3827

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !3806
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.q unwind label %bb.l, !noalias !3822

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3822
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1y_IB1O_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1S_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #25
          to label %.body.i.i.i.i.i.i.i unwind label %bb.j, !noalias !3822

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.l, %bb.k, %bb.i
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.af, %bb.l ], [ %i.ac, %bb.i ], [ %i.ae, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.f) #25
          to label %.body.i.i.i.i.i.i unwind label %bb.m, !noalias !3822

bb.m:                                             ; preds = %.body.i.i.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3822
  unreachable

bb.n:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i, %bb.d, %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.n, %.body.i.i.i.i.i.i.i, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %i.w, %bb.e ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNCNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_future05GuardINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1T_IB29_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB2d_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtB2d_4sync3ArcNtNtNtNtBR_9scheduler12multi_thread6handle6HandleEEECsdJxlLsGgtXr_16delta_benchmarks(ptr nonnull align 8 %i.l) #25
          to label %.body.i.i.i unwind label %bb.o, !noalias !3796

bb.o:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3796
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  %i.aj = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.ak = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.aj)
          to label %.thread.i.i.i unwind label %bb.p, !noalias !3805 ; 2 uses

bb.p:                                             ; preds = %.body.i.i.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #26, !noalias !3805
  unreachable

.thread.i.i.i:                                    ; preds = %.body.i.i.i
  %i.am = extractvalue { ptr, ptr } %i.ak, 0
  %i.an = extractvalue { ptr, ptr } %i.ak, 1
  br label %bb.r

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3806
  %.sroa.098.0.copyload.i.i.i = load i64, ptr %i.f, align 8, !noalias !3805
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !3805 ; 2 uses
  %.sroa.6100.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6100.0.copyload.i.i.i = load ptr, ptr %.sroa.6100.0..sroa_idx.i.i.i, align 8, !noalias !3805 ; 2 uses
  %.sroa.7101.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ao = load <2 x i64>, ptr %.sroa.7101.0..sroa_idx.i.i.i, align 8, !noalias !3805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3796
  %cond.i.i.i = icmp eq i64 %i.z, 22
  br i1 %cond.i.i.i, label %bb.r, label %._crit_edge.i.i.i, !prof !3720

._crit_edge.i.i.i:                                ; preds = %bb.q
  %.pre.i.i.i = load i64, ptr %i.p, align 8, !range !323, !noalias !3828
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %.thread.i.i.i
  %.sroa.8.0125.i.i.i = phi ptr [ %i.am, %.thread.i.i.i ], [ %.sroa.5.0.copyload.i.i.i, %bb.q ] ; 2 uses
  %.sroa.10.0124.i.i.i = phi ptr [ %i.an, %.thread.i.i.i ], [ %.sroa.6100.0.copyload.i.i.i, %bb.q ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0125.i.i.i), "nonnull"(ptr %.sroa.10.0124.i.i.i) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !range !323, !noalias !3805, !noundef !3 ; 2 uses
  %i.ar = ptrtoint ptr %.sroa.10.0124.i.i.i to i64
  %i.as = inttoptr i64 %i.aq to ptr
  %i.at = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.ar, i64 0
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i
  %i.au = phi i64 [ %i.aq, %bb.r ], [ %.pre.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.6.sroa.0.0.i.i.i = phi ptr [ %i.as, %bb.r ], [ %.sroa.5.0.copyload.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.516.0.i.i.i = phi i64 [ 21, %bb.r ], [ %i.z, %._crit_edge.i.i.i ]
  %.sroa.014.0.i.i.i = phi i64 [ undef, %bb.r ], [ %.sroa.098.0.copyload.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.6.sroa.6.0.i.i.i = phi ptr [ %.sroa.8.0125.i.i.i, %bb.r ], [ %.sroa.6100.0.copyload.i.i.i, %._crit_edge.i.i.i ]
  %i.av = phi <2 x i64> [ %i.at, %bb.r ], [ %i.ao, %._crit_edge.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3835
  store i64 %.sroa.014.0.i.i.i, ptr %i.aw, align 8, !noalias !3805
  %.sroa.696.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.516.0.i.i.i, ptr %.sroa.696.0..sroa_idx.i.i.i, align 8, !noalias !3805
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.6.sroa.0.0.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !3805
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.6.sroa.6.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !3805
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <2 x i64> %i.av, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !3805
  store i32 1, ptr %i.b, align 8, !noalias !3835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3828
  %i.ax = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.au)
          to label %bb.t unwind label %bb.w, !noalias !3828

bb.t:                                             ; preds = %bb.s
  store i64 %i.ax, ptr %i.a, align 8, !noalias !3828
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1y_IB1O_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1S_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.m)
          to label %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtB9_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB2d_IB2t_DNtNtNtB9_6future6future6Futurep6OutputTjINtNtB9_6result6ResultINtNtB2x_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB9_6marker4SendEL_EEEEINtNtB2x_4sync3ArcNtNtNtNtB1i_9scheduler12multi_thread6handle6HandleEEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i unwind label %bb.u, !noalias !3828

bb.u:                                             ; preds = %bb.t
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !3835
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body87.i.i.i unwind label %bb.v, !noalias !3828

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3835
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1y_IB1O_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1S_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #25
          to label %.body87.i.i.i unwind label %bb.v, !noalias !3835

_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtB9_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB2d_IB2t_DNtNtNtB9_6future6future6Futurep6OutputTjINtNtB9_6result6ResultINtNtB2x_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB9_6marker4SendEL_EEEEINtNtB2x_4sync3ArcNtNtNtNtB1i_9scheduler12multi_thread6handle6HandleEEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !3835
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread140.i.i.i unwind label %bb.x, !noalias !3805

bb.x:                                             ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtB9_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB2d_IB2t_DNtNtNtB9_6future6future6Futurep6OutputTjINtNtB9_6result6ResultINtNtB2x_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB9_6marker4SendEL_EEEEINtNtB2x_4sync3ArcNtNtNtNtB1i_9scheduler12multi_thread6handle6HandleEEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %.body87.i.i.i

.body87.i.i.i:                                    ; preds = %bb.x, %bb.w, %bb.u
  %eh.lpad-body88.i.i.i = phi { ptr, i32 } [ %i.bb, %bb.x ], [ %i.ay, %bb.u ], [ %i.ba, %bb.w ]
  %i.bc = extractvalue { ptr, i32 } %eh.lpad-body88.i.i.i, 0
  %i.bd = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bc)
          to label %bb.z unwind label %bb.y, !noalias !3805 ; 2 uses

bb.y:                                             ; preds = %.body87.i.i.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #26, !noalias !3805
  unreachable

.thread140.i.i.i:                                 ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtB9_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB2d_IB2t_DNtNtNtB9_6future6future6Futurep6OutputTjINtNtB9_6result6ResultINtNtB2x_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB9_6marker4SendEL_EEEEINtNtB2x_4sync3ArcNtNtNtNtB1i_9scheduler12multi_thread6handle6HandleEEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3835
  br label %bb.ai

bb.z:                                             ; preds = %.body87.i.i.i
  %i.bf = extractvalue { ptr, ptr } %i.bd, 0      ; 4 uses
  %i.bg = extractvalue { ptr, ptr } %i.bd, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %i.bh = load ptr, ptr %i.bg, align 8, !invariant.load !3, !noalias !3805 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void %i.bh(ptr noundef nonnull %i.bf)
          to label %bb.ac unwind label %bb.ae, !noalias !3805

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !range !201, !invariant.load !3, !noalias !3805 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !range !301, !invariant.load !3, !noalias !3805
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef range(i64 1, 0) %i.bj, i64 noundef range(i64 1, 536870913) %i.bm) #23, !noalias !3805
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ab
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !201, !invariant.load !3, !noalias !3805 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %common.resume.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !range !301, !invariant.load !3, !noalias !3805
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef range(i64 1, 0) %i.bp, i64 noundef range(i64 1, 536870913) %i.bs) #23, !noalias !3805
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.am, %bb.al, %bb.af, %bb.ae
  %common.resume.op.i = phi { ptr, i32 } [ %i.bx, %bb.am ], [ %i.bw, %bb.al ], [ %i.bn, %bb.af ], [ %i.bn, %bb.ae ]
  resume { ptr, i32 } %common.resume.op.i

bb.ag:                                            ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 %i.bt)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i

bb.ah:                                            ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3796
  %i.bu = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.bu, label %default.unreachable [
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread8.i
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread12.i
    i8 1, label %bb.aj
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread12.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.ai:                                            ; preds = %bb.ad, %bb.ac, %bb.z, %.thread140.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread8.i: ; preds = %bb.ah
  call fastcc void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread6.i

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i: ; preds = %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread8.i, %bb.ai, %bb.ag
  call fastcc void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8completeCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_RNvXs_NtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handleINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtB4_6HandleENtNtBa_4task8Schedule9yield_now(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noundef nonnull %0)
  %i.bv = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.bv, label %bb.ak, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.ak:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1x_IB1N_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1R_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtB1R_4sync3ArcNtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_IB26_IBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtBL_4sync3ArcNtNtNtNtB1m_9scheduler12multi_thread6handle6HandleEEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #23
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_IB26_IBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtBL_4sync3ArcNtNtNtNtB1m_9scheduler12multi_thread6handle6HandleEEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.ak
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #23
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread6.i: ; preds = %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1x_IB1N_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1R_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtB1R_4sync3ArcNtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_IB26_IBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtBL_4sync3ArcNtNtNtNtB1m_9scheduler12multi_thread6handle6HandleEEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.am

bb.am:                                            ; preds = %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread6.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #23
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_IB26_IBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtBL_4sync3ArcNtNtNtNtB1m_9scheduler12multi_thread6handle6HandleEEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.thread6.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #23
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

end_hunk_3
begin_hunk_4_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1v_8snapshotNtB2F_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4K_5error5ErrorEEs_0ENtNtBT_8schedule16BlockingScheduleECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ag) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i.i.i.i.i.i.i unwind label %bb.m, !noalias !3867

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.u) #25
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.n, !noalias !3867

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.j
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.u)
          to label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i unwind label %bb.r, !noalias !3845

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i.i.i.i, %bb.m, %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3867
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.u) #25
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.n, !noalias !3867

bb.o:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtBL_8snapshotNtB1V_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3J_5error5ErrorEEs_0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(184) %i.g) #25
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.p, !noalias !3852

bb.p:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3852
  unreachable

bb.q:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.aa, !noalias !3848

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.r, %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i.i.i.i, %bb.m
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.am, %bb.o ], [ %i.ak, %bb.m ]
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.body.i.i.i.i.i.i unwind label %bb.s, !noalias !3845

bb.s:                                             ; preds = %.body.i.i.i.i.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3845
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.j, ptr noundef nonnull align 16 dereferenceable(96) %i.f, i64 96, i1 false), !noalias !3891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3852
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.aa, !noalias !3848

.noexc2.i.i.i.i.i.i:                              ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3845
  %i.aq = load i64, ptr %i.j, align 16            ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aq, -9223372036854775742
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i.i, label %bb.t

.thread.i.i:                                      ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3836
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  %i.ar = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.ar, label %default.unreachable [
    i8 3, label %bb.aw
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit
    i8 1, label %bb.ay
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  ]

bb.t:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3836
  store i32 2, ptr %i.i, align 16, !noalias !3836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3892
  %i.as = load i64, ptr %i.p, align 16, !range !323, !noalias !3892, !noundef !3
  %i.at = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.as)
          to label %bb.u unwind label %bb.x, !noalias !3892

bb.u:                                             ; preds = %bb.t
  store i64 %i.at, ptr %i.c, align 8, !noalias !3892
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(208) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i.i.i.i.i unwind label %bb.v, !noalias !3892

bb.v:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.m, ptr noundef nonnull align 16 dereferenceable(208) %i.i, i64 208, i1 false), !noalias !3836
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.w, !noalias !3892

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i.i.i.i.i: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.m, ptr noundef nonnull align 16 dereferenceable(208) %i.i, i64 208, i1 false), !noalias !3836
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ad unwind label %bb.y, !noalias !3836

bb.w:                                             ; preds = %bb.x, %bb.v
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3836
  unreachable

bb.x:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(208) %i.i) #25
          to label %.body.i.i.i.i.i.i.i unwind label %bb.w, !noalias !3836

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.y, %bb.x, %bb.v
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ax, %bb.y ], [ %i.au, %bb.v ], [ %i.aw, %bb.x ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB23_5error5ErrorEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(96) %i.j) #25
          to label %.body.i.i.i.i.i.i unwind label %bb.z, !noalias !3836

bb.z:                                             ; preds = %.body.i.i.i.i.i.i.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3836
  unreachable

bb.aa:                                            ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE4poll0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i, %bb.q, %bb.c
  %i.az = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.aa, %.body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.az, %bb.aa ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNCNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_future05GuardINtNtNtBR_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2z_8snapshotNtB3J_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5y_5error5ErrorEEs_0ENtNtB1X_8schedule16BlockingScheduleEECsdJxlLsGgtXr_16delta_benchmarks(ptr nonnull align 16 %i.l) #25
          to label %.body.i.i.i unwind label %bb.ab, !noalias !3848

bb.ab:                                            ; preds = %.body.i.i.i.i.i.i
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3848
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  %i.bb = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.bc = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bb)
          to label %.thread.i.i.i unwind label %bb.ac ; 2 uses

bb.ac:                                            ; preds = %.body.i.i.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #26
  unreachable

.thread.i.i.i:                                    ; preds = %.body.i.i.i
  %i.be = extractvalue { ptr, ptr } %i.bc, 0
  %i.bf = extractvalue { ptr, ptr } %i.bc, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  br label %bb.ae

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3836
  %.sroa.484.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.484.0.copyload.i.i.i = load ptr, ptr %.sroa.484.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16 ; 2 uses
  %.sroa.685.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.bg = load <2 x i64>, ptr %.sroa.685.0..sroa_idx.i.i.i, align 8
  %.sroa.886.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.sroa.5.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.886.0..sroa_idx.i.i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3836
  %cond.i.i = icmp eq i64 %i.aq, -9223372036854775741
  br i1 %cond.i.i, label %bb.ae, label %bb.af, !prof !3720

bb.ae:                                            ; preds = %bb.ad, %.thread.i.i.i
  %.sroa.8.0105.i.i.i = phi ptr [ %i.be, %.thread.i.i.i ], [ %.sroa.484.0.copyload.i.i.i, %bb.ad ] ; 2 uses
  %.sroa.10.0104.i.i.i = phi ptr [ %i.bf, %.thread.i.i.i ], [ %.sroa.5.0.copyload.i.i.i, %bb.ad ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0105.i.i.i), "nonnull"(ptr %.sroa.10.0104.i.i.i) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = load i64, ptr %i.bh, align 16, !range !323, !noundef !3 ; 2 uses
  %i.bj = ptrtoint ptr %.sroa.10.0104.i.i.i to i64
  %i.bk = inttoptr i64 %i.bi to ptr
  %i.bl = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.bj, i64 0
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.sroa.5.sroa.5.i.i.i, i64 56, i1 false)
  %.pre.i.i.i = load i64, ptr %i.p, align 16, !range !323, !noalias !3895
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bm = phi i64 [ %.pre.i.i.i, %bb.af ], [ %i.bi, %bb.ae ]
  %.sroa.6.sroa.0.0.i.i.i = phi ptr [ %.sroa.484.0.copyload.i.i.i, %bb.af ], [ %i.bk, %bb.ae ]
  %.sroa.6.sroa.6.0.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i.i, %bb.af ], [ %.sroa.8.0105.i.i.i, %bb.ae ]
  %.sroa.012.0.i.i.i = phi i64 [ %i.aq, %bb.af ], [ -9223372036854775742, %bb.ae ]
  %i.bn = phi <2 x i64> [ %i.bg, %bb.af ], [ %i.bl, %bb.ae ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3902
  store i64 %.sroa.012.0.i.i.i, ptr %i.bo, align 16
  %.sroa.681.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.6.sroa.0.0.i.i.i, ptr %.sroa.681.0..sroa_idx.i.i.i, align 8
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.6.sroa.6.0.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 16
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <2 x i64> %i.bn, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.5.i.i.i, i64 56, i1 false)
  store i32 1, ptr %i.b, align 16, !noalias !3902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3895
  %i.bp = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.bm)
          to label %bb.ah unwind label %bb.ak, !noalias !3895

bb.ah:                                            ; preds = %bb.ag
  store i64 %i.bp, ptr %i.a, align 8, !noalias !3895
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(208) %i.m)
          to label %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtNtB1i_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2U_8snapshotNtB44_8Snapshot19try_new_with_engine00INtNtB9_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5T_5error5ErrorEEs_0ENtNtB2h_8schedule16BlockingScheduleEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i unwind label %bb.ai, !noalias !3895

bb.ai:                                            ; preds = %bb.ah
  %i.bq = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.m, ptr noundef nonnull align 16 dereferenceable(208) %i.b, i64 208, i1 false), !noalias !3902
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body74.i.i.i unwind label %bb.aj, !noalias !3895

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !3902
  unreachable

bb.ak:                                            ; preds = %bb.ag
  %i.bs = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(208) %i.b) #25
          to label %.body74.i.i.i unwind label %bb.aj, !noalias !3902

_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtNtB1i_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2U_8snapshotNtB44_8Snapshot19try_new_with_engine00INtNtB9_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5T_5error5ErrorEEs_0ENtNtB2h_8schedule16BlockingScheduleEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.m, ptr noundef nonnull align 16 dereferenceable(208) %i.b, i64 208, i1 false), !noalias !3902
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread109.i.i.i unwind label %bb.al

bb.al:                                            ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtNtB1i_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2U_8snapshotNtB44_8Snapshot19try_new_with_engine00INtNtB9_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5T_5error5ErrorEEs_0ENtNtB2h_8schedule16BlockingScheduleEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  br label %.body74.i.i.i

.body74.i.i.i:                                    ; preds = %bb.al, %bb.ak, %bb.ai
  %eh.lpad-body75.i.i.i = phi { ptr, i32 } [ %i.bt, %bb.al ], [ %i.bq, %bb.ai ], [ %i.bs, %bb.ak ]
  %i.bu = extractvalue { ptr, i32 } %eh.lpad-body75.i.i.i, 0
  %i.bv = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bu)
          to label %bb.an unwind label %bb.am     ; 2 uses

bb.am:                                            ; preds = %.body74.i.i.i
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #26
  unreachable

.thread109.i.i.i:                                 ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtNtB1i_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2U_8snapshotNtB44_8Snapshot19try_new_with_engine00INtNtB9_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5T_5error5ErrorEEs_0ENtNtB2h_8schedule16BlockingScheduleEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3902
  br label %bb.av

bb.an:                                            ; preds = %.body74.i.i.i
  %i.bx = extractvalue { ptr, ptr } %i.bv, 0      ; 4 uses
  %i.by = extractvalue { ptr, ptr } %i.bv, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void %i.bz(ptr noundef nonnull %i.bx)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !range !201, !invariant.load !3 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !range !301, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef range(i64 1, 0) %i.cb, i64 noundef range(i64 1, 536870913) %i.ce) #23
  br label %bb.av

bb.as:                                            ; preds = %bb.ap
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !201, !invariant.load !3 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %common.resume.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !range !301, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef range(i64 1, 0) %i.ch, i64 noundef range(i64 1, 536870913) %i.ck) #23
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.bb, %bb.ba, %bb.at, %bb.as
  %common.resume.op.i = phi { ptr, i32 } [ %i.co, %bb.bb ], [ %i.cn, %bb.ba ], [ %i.cf, %bb.at ], [ %i.cf, %bb.as ]
  resume { ptr, i32 } %common.resume.op.i

bb.au:                                            ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 16 %i.cl)
  br label %bb.ax

bb.av:                                            ; preds = %bb.ar, %bb.aq, %bb.an, %.thread109.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  br label %bb.ax

bb.aw:                                            ; preds = %.thread.i.i
  call fastcc void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 16 %i.l)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  call fastcc void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE8completeCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.ay:                                            ; preds = %.thread.i.i
  call void @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking8schedule16BlockingScheduleNtNtB8_4task8Schedule9yield_nowCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, ptr noundef nonnull %0)
  %i.cm = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.cm, label %bb.az, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.az:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2d_8snapshotNtB3n_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5c_5error5ErrorEEs_0ENtNtB1B_8schedule16BlockingScheduleEECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0ENtNtB2a_8schedule16BlockingScheduleEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #23
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0ENtNtB2a_8schedule16BlockingScheduleEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.az
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #23
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %.thread.i.i, %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2d_8snapshotNtB3n_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5c_5error5ErrorEEs_0ENtNtB1B_8schedule16BlockingScheduleEECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0ENtNtB2a_8schedule16BlockingScheduleEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.bb

bb.bb:                                            ; preds = %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #23
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0ENtNtB2a_8schedule16BlockingScheduleEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #23
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE4pollCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %.thread.i.i, %bb.ax, %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0ENtNtB2a_8schedule16BlockingScheduleEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0ENtNtB2a_8schedule16BlockingScheduleEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw7deallocINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBW_6future6future6Futurep6OutputTjINtNtBW_6result6ResultINtNtB1s_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtBW_6marker4SendEL_EEINtNtB1s_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1R_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEINtNtB1R_4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEINtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #23
  resume { ptr, i32 } %i.a

end_hunk_4
begin_hunk_5_@_RNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBa_5table13TableProvider14scan_with_args0CsdJxlLsGgtXr_16delta_benchmarks:bb.a
bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !72, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.h = getelementptr i8, ptr %1, i64 88
  %.val8 = load ptr, ptr %i.h, align 8, !align !330, !noundef !3 ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 96
  %.val9 = load i64, ptr %i.i, align 8
  %.not.i = icmp eq ptr %.val8, null              ; 2 uses
  %..i = select i1 %.not.i, ptr inttoptr (i64 16 to ptr), ptr %.val8
  %.5.i = select i1 %.not.i, i64 0, i64 %.val9
  %i.j = getelementptr i8, ptr %1, i64 104
  %.val10 = load ptr, ptr %i.j, align 8, !align !72, !noundef !3 ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 112
  %.val11 = load i64, ptr %i.k, align 8           ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4175)
  %.not.i16 = icmp eq ptr %.val10, null
  br i1 %.not.i16, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4178
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %.val11, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  %i.m = load i64, ptr %i.a, align 8, !range !37, !noalias !4178, !noundef !3
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !38, !noalias !4178, !noundef !3 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f, !prof !15

bb.e:                                             ; preds = %.noexc
  %i.r = load i64, ptr %i.q, align 8, !noalias !4178
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #24
          to label %.noexc17 unwind label %bb.i

.noexc17:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %i.q, align 8, !noalias !4178, !nonnull !3, !noundef !3 ; 2 uses
  %i.t = icmp samesign ule i64 %.val11, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4178
  %.not.i.i = icmp eq i64 %.val11, 0
  br i1 %.not.i.i, label %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00CsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = shl nuw nsw i64 %.val11, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %.val10, i64 %i.u, i1 false), !noalias !4183
  br label %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00CsdJxlLsGgtXr_16delta_benchmarks.exit.i

_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00CsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.g, %bb.f
  store i64 %i.p, ptr %i.l, align 8, !alias.scope !4175, !noalias !4184
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4175, !noalias !4184
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.val11, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4175, !noalias !4184
  %i.v = icmp eq i64 %i.p, -9223372036854775808
  %i.w = select i1 %i.v, ptr null, ptr %i.l
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  store i64 -9223372036854775808, ptr %i.l, align 8, !alias.scope !4175, !noalias !4184
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body23

bb.j:                                             ; preds = %bb.h, %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00CsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %.not.i18 = phi ptr [ null, %bb.h ], [ %i.w, %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00CsdJxlLsGgtXr_16delta_benchmarks.exit.i ]
  %.val12 = load i64, ptr %i.g, align 8, !range !37, !noundef !3
  %i.y = getelementptr i8, ptr %1, i64 80
  %.val13 = load i64, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !3, !align !72, !noundef !3
  %i.ad = invoke { ptr, ptr } @_RNvXs3_NtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB5_8MemTableNtNtB9_5table13TableProvider4scan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.not.i18, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %..i, i64 noundef %.5.i, i64 noundef %.val12, i64 %.val13)
          to label %bb.l unwind label %bb.k       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.j
  %i.af = extractvalue { ptr, ptr } %i.ad, 0      ; 2 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1      ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.af, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.ag, ptr %i.ai, align 8
  br label %bb.p

.body:                                            ; preds = %bb.w, %bb.v, %bb.o, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.v ], [ %i.ak, %bb.o ], [ %i.ay, %bb.w ], [ %i.ae, %bb.k ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #25
          to label %.body23 unwind label %bb.ag

.body23:                                          ; preds = %bb.ae, %bb.z, %bb.ab, %bb.i, %.body
  %.pn3 = phi { ptr, i32 } [ %i.bn, %bb.ae ], [ %.pn, %.body ], [ %i.x, %bb.i ], [ %i.bi, %bb.z ], [ %i.bk, %bb.ab ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn3

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28
  unreachable

bb.o:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val6 = load ptr, ptr %i.al, align 8
  %.val7 = load ptr, ptr %i.am, align 8, !nonnull !3, !align !72, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks(ptr %.val6, ptr nonnull %.val7) #25
          to label %.body unwind label %bb.ag

bb.p:                                             ; preds = %bb.b, %bb.l
  %.val15 = phi ptr [ %.val15.pre, %bb.b ], [ %i.ag, %bb.l ]
  %.val14 = phi ptr [ %.val14.pre, %bb.b ], [ %i.af, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 152       ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val15, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !invariant.load !3, !noalias !4185, !nonnull !3
  invoke void %i.ao(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull %.val14, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #29
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.o, !inline_history !4189

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.p
  %i.ap = load i64, ptr %i.b, align 8, !range !387, !noundef !3 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 21
  br i1 %i.aq, label %bb.q, label %bb.r

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.q
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit ], [ 3, %bb.q ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.q:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsdJxlLsGgtXr_16delta_benchmarks.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.r:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsdJxlLsGgtXr_16delta_benchmarks.exit
  %.sroa.346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = load <2 x ptr>, ptr %.sroa.346.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.al, align 8            ; 5 uses
  %.val5 = load ptr, ptr %i.am, align 8, !nonnull !3, !align !72, !noundef !3 ; 5 uses
  %i.as = load ptr, ptr %.val5, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.as, null
  br i1 %.not.i.i21, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.as(ptr noundef nonnull %.val)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !201, !invariant.load !3 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !301, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.v:                                             ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !201, !invariant.load !3 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.body, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !301, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ba, i64 noundef range(i64 1, 536870913) %i.bd) #23
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.u, %bb.t
  %.not.i22 = icmp eq i64 %i.ap, 20
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 7 uses
  br i1 %.not.i22, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.be = extractelement <2 x ptr> %i.ar, i64 0
  %i.bf = extractelement <2 x ptr> %i.ar, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be), "nonnull"(ptr %i.bf) ]
  %i.bg = load i64, ptr %3, align 8, !range !38, !alias.scope !4190, !noundef !3
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808
  br i1 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks.exit.i27.invoke unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body23 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks.exit.i27.invoke
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body23

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks.exit.i27.invoke, %bb.ac, %bb.x
  store i64 %i.ap, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.ar, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  br label %common.ret

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %i.bl = load i64, ptr %3, align 8, !range !38, !alias.scope !4193, !noundef !3
  %i.bm = icmp eq i64 %i.bl, -9223372036854775808
  br i1 %i.bm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks.exit.i27.invoke unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body23 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECsdJxlLsGgtXr_16delta_benchmarks.exit.i27.invoke: ; preds = %bb.y, %bb.ad
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.ab

bb.ag:                                            ; preds = %bb.o, %.body
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 13, 22) %2, ptr noundef nonnull %3, ptr noundef nonnull %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %4, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !align !72, !noundef !3 ; 11 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !range !1252, !noundef !3
  %switch.offset = sub nuw nsw i64 5, %i.j
  %i.k = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.l = icmp ult i64 %i.k, 6
  tail call void @llvm.assume(i1 %i.l)
  %.not72 = icmp samesign ugt i64 %switch.offset, %i.k
  br i1 %.not72, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.j, %bb.n, %switch.lookup, %bb.a
  ret void

bb.c:                                             ; preds = %switch.lookup
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 3 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 3 uses
  store i64 5, ptr %i.e, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %.sroa.570.0..sroa_idx, align 8
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %2, ptr %.sroa.771.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !3, !nonnull !3
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e) #29
  br i1 %i.r, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %0, align 8, !range !271, !noundef !3
  %.not73 = icmp eq i64 %i.s, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  br i1 %.not73, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.u = load ptr, ptr %i.t, align 8, !noundef !3 ; 2 uses
  %.not76 = icmp eq ptr %i.u, null
  br i1 %.not76, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = load ptr, ptr %i.t, align 8, !noundef !3 ; 2 uses
  %.not74 = icmp eq ptr %i.v, null
  br i1 %.not74, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.x = load i64, ptr %i.w, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sroa.540.sroa.5.0 = phi i64 [ %i.x, %bb.g ], [ undef, %bb.e ]
  %.sroa.039.0 = phi i64 [ 1, %bb.g ], [ 2, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !noundef !3 ; 2 uses
  %.not77 = icmp eq ptr %i.z, null
  br i1 %.not77, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.ab = load i64, ptr %i.aa, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.6.sroa.5.0 = phi i64 [ undef, %bb.h ], [ %i.ab, %bb.i ]
  %.sroa.031.0 = phi i64 [ 2, %bb.h ], [ 1, %bb.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !range !323, !noundef !3
  store i64 %i.ae, ptr %i.c, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.028.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.028.sroa.3.sroa.3.0..sroa.028.sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.028.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.028.sroa.6.sroa.3.0..sroa.028.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ag = load <2 x i32>, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  store ptr @_RNvXs8_NtCsbvkFyIu7lgC_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  store ptr %i.c, ptr %i.af, align 8
  store ptr @_RNvXsd_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  store i64 %.sroa.039.0, ptr %i.d, align 8
  store ptr %i.u, ptr %.sroa.028.sroa.3.0..sroa_idx, align 8
  store i64 %.sroa.540.sroa.5.0, ptr %.sroa.028.sroa.3.sroa.3.0..sroa.028.sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.031.0, ptr %.sroa.028.sroa.4.0..sroa_idx, align 8
  store ptr %i.z, ptr %.sroa.028.sroa.6.0..sroa_idx, align 8
  store i64 %.sroa.6.sroa.5.0, ptr %.sroa.028.sroa.6.sroa.3.0..sroa.028.sroa.6.0..sroa_idx.sroa_idx, align 8
  store i64 5, ptr %.sroa.530.0..sroa_idx, align 8
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %2, ptr %.sroa.8.0..sroa_idx, align 8
  store <2 x i32> %i.ag, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr @19, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.b, ptr %.sroa.15.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !nonnull !3
  call void %i.ai(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b

bb.k:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.ak = load i64, ptr %i.aj, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.k
  %.sroa.568.sroa.5.0 = phi i64 [ %i.ak, %bb.k ], [ undef, %bb.f ]
  %.sroa.067.0 = phi i64 [ 1, %bb.k ], [ 2, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !noundef !3 ; 2 uses
  %.not75 = icmp eq ptr %i.am, null
  br i1 %.not75, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.ao = load i64, ptr %i.an, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.663.sroa.5.0 = phi i64 [ undef, %bb.l ], [ %i.ao, %bb.m ]
  %.sroa.058.0 = phi i64 [ 2, %bb.l ], [ 1, %bb.m ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.067.0, ptr %i.a, align 8
  %.sroa.049.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.049.sroa.3.sroa.3.0..sroa.049.sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.049.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.049.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.049.sroa.6.sroa.3.0..sroa.049.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.954.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.aq = load <2 x i32>, ptr %i.ap, align 8
  store ptr %i.v, ptr %.sroa.049.sroa.3.0..sroa_idx, align 8
  store i64 %.sroa.568.sroa.5.0, ptr %.sroa.049.sroa.3.sroa.3.0..sroa.049.sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.058.0, ptr %.sroa.049.sroa.4.0..sroa_idx, align 8
  store ptr %i.am, ptr %.sroa.049.sroa.6.0..sroa_idx, align 8
  store i64 %.sroa.663.sroa.5.0, ptr %.sroa.049.sroa.6.sroa.3.0..sroa.049.sroa.6.0..sroa_idx.sroa_idx, align 8
  store i64 5, ptr %.sroa.551.0..sroa_idx, align 8
  store ptr %1, ptr %.sroa.752.0..sroa_idx, align 8
  store i64 %2, ptr %.sroa.853.0..sroa_idx, align 8
  store <2 x i32> %i.aq, ptr %.sroa.954.0..sroa_idx, align 8
  %.sroa.1356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %3, ptr %.sroa.1356.0..sroa_idx, align 8
  %.sroa.1557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %4, ptr %.sroa.1557.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !3, !nonnull !3
  call void %i.as(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE10bind_innerCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !range !323, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.e, ptr %i.f, align 8
end_hunk_5
