inline.NumInlined: 5547
inline.NumDeleted: 1701
begin_hunk_0_@_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB6_13CreateBuilder22with_partition_columnsNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1J_3vec3VecB1F_EECs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !range !133, !alias.scope !1825, !noundef !4
  %i.i = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs7p2uQeJxui2_9deltalake.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.j, %bb.f ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(368) %1, i64 368, i1 false)
  ret void

bb.i:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.j:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1E_6future6future6Futurep6OutputTjINtNtB1E_6result6ResultINtNtB2a_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB1E_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1r_6future6future6Futurep6OutputTjINtNtB1r_6result6ResultINtNtB1X_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB1r_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1A_IB26_DNtNtNtB1E_6future6future6Futurep6OutputTjINtNtB1E_6result6ResultINtNtB2a_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB1E_6marker4SendEL_EEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1n_IB1T_DNtNtNtB1r_6future6future6Futurep6OutputTjINtNtB1r_6result6ResultINtNtB1X_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB1r_6marker4SendEL_EEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0EEEB2g_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0EEEB2L_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0EEEB2y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtB1F_3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0EEEB2g_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtB2a_3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0EEEB2L_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtB1X_3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0EEEB2y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB6_6Handle5spawnNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0EB1b_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0EB1G_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0EB1t_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB6_6Handle5spawnNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0EB1b_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0EB1G_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0EB1t_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_CsgvKtmFgitAz_12thread_localINtB6_11ThreadLocalINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEE10get_or_tryNCINvB2_6get_orNvYBR_NtNtBW_7default7Default7defaultE0uECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtCsgvKtmFgitAz_12thread_local9thread_id6ThreadEEE4withNCNvB1Q_3get0B1O_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @13)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.410.0.copyload = load i64, ptr %.sroa.410.0..sroa_idx, align 8
  %i.c = icmp ult i64 %.sroa.3.0.copyload, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.3.0.copyload
  %i.e = load atomic ptr, ptr %i.d acquire, align 8, !noalias !1828 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %.sroa.410.0.copyload ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load atomic i8, ptr %i.h monotonic, align 1, !noalias !1828
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %select.unfold, label %_RNvMs2_CsgvKtmFgitAz_12thread_localINtB5_11ThreadLocalINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEE9get_innerCs7p2uQeJxui2_9deltalake.exit

_RNvMs2_CsgvKtmFgitAz_12thread_localINtB5_11ThreadLocalINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEE9get_innerCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %select.unfold
  %.sroa.0.0 = phi ptr [ %i.k, %select.unfold ], [ %i.g, %bb.b ]
  ret ptr %.sroa.0.0

select.unfold:                                    ; preds = %bb.b, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %.sroa.5.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.5.sroa.6.0..sroa_idx, align 8
  %i.k = call fastcc noundef nonnull align 8 ptr @_RNvMs2_CsgvKtmFgitAz_12thread_localINtB5_11ThreadLocalINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEE6insertCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
  br label %_RNvMs2_CsgvKtmFgitAz_12thread_localINtB5_11ThreadLocalINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEE9get_innerCs7p2uQeJxui2_9deltalake.exit
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB6_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtB8_4syncINtB2k_8OnceCellBP_E11get_or_initNCINvNtNtBU_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB42_10DeltaError15type_object_raw0BP_E0E0NtNvMs4_B2k_IB2v_pE11get_or_init4VoidEB44_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8
  invoke void @_RNvNtCshEQ9D8FWP38_9once_cell3imp18initialize_or_wait(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.b, ptr nonnull @14)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !1831, !noundef !4
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_10DeltaError15type_object_raw0B1W_E0E0EEB4o_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_10DeltaError15type_object_raw0B1W_E0E0EEB4o_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !1834, !noundef !4
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_10DeltaError15type_object_raw0B1W_E0E0EEB4o_.exit1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_10DeltaError15type_object_raw0B1W_E0E0EEB4o_.exit1

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_10DeltaError15type_object_raw0B1W_E0E0EEB4o_.exit1: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_10DeltaError15type_object_raw0B1W_E0E0EEB4o_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.h
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB6_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtB8_4syncINtB2k_8OnceCellBP_E11get_or_initNCINvNtNtBU_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB42_18TableNotFoundError15type_object_raw0BP_E0E0NtNvMs4_B2k_IB2v_pE11get_or_init4VoidEB44_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8
  invoke void @_RNvNtCshEQ9D8FWP38_9once_cell3imp18initialize_or_wait(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.b, ptr nonnull @15)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !1837, !noundef !4
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_18TableNotFoundError15type_object_raw0B1W_E0E0EEB4o_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_18TableNotFoundError15type_object_raw0B1W_E0E0EEB4o_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !1840, !noundef !4
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_18TableNotFoundError15type_object_raw0B1W_E0E0EEB4o_.exit1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_18TableNotFoundError15type_object_raw0B1W_E0E0EEB4o_.exit1

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_18TableNotFoundError15type_object_raw0B1W_E0E0EEB4o_.exit1: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_18TableNotFoundError15type_object_raw0B1W_E0E0EEB4o_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.h
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB6_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtB8_4syncINtB2k_8OnceCellBP_E11get_or_initNCINvNtNtBU_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB42_18DeltaProtocolError15type_object_raw0BP_E0E0NtNvMs4_B2k_IB2v_pE11get_or_init4VoidEB44_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8
  invoke void @_RNvNtCshEQ9D8FWP38_9once_cell3imp18initialize_or_wait(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.b, ptr nonnull @16)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !1843, !noundef !4
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_18DeltaProtocolError15type_object_raw0B1W_E0E0EEB4o_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_18DeltaProtocolError15type_object_raw0B1W_E0E0EEB4o_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !1846, !noundef !4
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_18DeltaProtocolError15type_object_raw0B1W_E0E0EEB4o_.exit1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_18DeltaProtocolError15type_object_raw0B1W_E0E0EEB4o_.exit1

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_18DeltaProtocolError15type_object_raw0B1W_E0E0EEB4o_.exit1: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB1b_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB21_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtB21_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB4m_18DeltaProtocolError15type_object_raw0B1W_E0E0EEB4o_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.h
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB6_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtB8_4syncINtB2k_8OnceCellBP_E11get_or_initNCINvNtNtBU_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB42_17CommitFailedError15type_object_raw0BP_E0E0NtNvMs4_B2k_IB2v_pE11get_or_init4VoidEB44_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
end_hunk_0
begin_hunk_1_@_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  tail call fastcc void @_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ca, ptr noalias noundef align 8 dereferenceable(72) %1) #47, !inline_history !5583
  br label %_RINvXs8_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

_RINvXs8_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.d
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !5578, !noalias !5581, !nonnull !4, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !5578, !noalias !5581, !noundef !4
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ch, i64 noundef %i.cj) #47, !noalias !5578, !inline_history !5583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !5589
  store i8 -1, ptr %i.bs, align 1, !noalias !5589
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef 1) #47, !noalias !5596, !inline_history !5583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !5589
  br label %common.ret

bb.e:                                             ; preds = %tailrecurse
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5597)
  %i.cl = load i64, ptr %i.ck, align 8, !range !2165, !alias.scope !5597, !noalias !5600, !noundef !4
  %i.cm = icmp ne i64 %i.cl, 3                    ; 2 uses
  %i.cn = zext i1 %i.cm to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !5602
  store i64 %i.cn, ptr %i.br, align 8, !noalias !5602
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef 8) #47, !noalias !5597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !5602
  br i1 %i.cm, label %bb.f, label %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ck, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47
  br label %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.f
  %i.co = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !5597, !noalias !5600, !nonnull !4, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !5597, !noalias !5600, !noundef !4
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.cr) #47, !noalias !5597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !5607
  store i8 -1, ptr %i.bq, align 1, !noalias !5607
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef 1) #47, !noalias !5614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !5607
  br label %common.ret

bb.g:                                             ; preds = %tailrecurse
  %i.cs = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 16, !nonnull !4, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cu, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.cv = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.cw = load ptr, ptr %i.cv, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !5615
  store i64 %i.cy, ptr %i.bp, align 8, !noalias !5615
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !5615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5620)
  %.idx.i = mul nuw nsw i64 %i.cy, 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx.i
  %i.da = icmp eq i64 %i.cy, 0
  br i1 %i.da, label %common.ret, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.04.i = phi ptr [ %i.db, %.lr.ph.i ], [ %i.cw, %bb.g ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 24 ; 2 uses
  %i.dc = getelementptr i8, ptr %.sroa.0.04.i, i64 8
  %.sroa.0.0.val.i = load ptr, ptr %i.dc, align 8, !alias.scope !5620, !noalias !5623, !nonnull !4, !noundef !4
  %i.dd = getelementptr i8, ptr %.sroa.0.04.i, i64 16
  %.sroa.0.0.val3.i = load i64, ptr %i.dd, align 8, !alias.scope !5620, !noalias !5623, !noundef !4
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.val.i, i64 noundef %.sroa.0.0.val3.i) #47, !noalias !5620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !5625
  store i8 -1, ptr %i.bo, align 1, !noalias !5625
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef 1) #47, !noalias !5634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !5625
  %i.de = icmp eq ptr %i.db, %i.cz
  br i1 %i.de, label %common.ret, label %.lr.ph.i

bb.h:                                             ; preds = %tailrecurse
  %i.df = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.df, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.dh = load ptr, ptr %i.dg, align 16, !noundef !4 ; 2 uses
  %i.di = icmp ne ptr %i.dh, null                 ; 2 uses
  %i.dj = zext i1 %i.di to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !5635
  store i64 %i.dj, ptr %i.bn, align 8, !noalias !5635
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !5635
  br i1 %i.di, label %bb.ap, label %common.ret

bb.i:                                             ; preds = %tailrecurse
  %i.dk = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5640)
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !5640, !noalias !5643, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dl, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5640, !inline_history !5645
  %i.dm = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.dn = load i8, ptr %i.dm, align 8, !range !2194, !alias.scope !5640, !noalias !5643, !noundef !4
  %i.do = zext nneg i8 %i.dn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !5646
  store i64 %i.do, ptr %i.bh, align 8, !noalias !5646
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef 8) #47, !noalias !5640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !5646
  br label %tailrecurse.backedge.sink.split

tailrecurse.backedge.sink.split:                  ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %bb.n, %bb.i
  %.sink199 = phi i64 [ 16, %bb.i ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 24, %bb.n ], [ 8, %tailrecurse ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.tr, i64 %.sink199
  %i.dq = load ptr, ptr %i.dp, align 8, !nonnull !4, !noundef !4
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.sink.split, %bb.q
  %.tr.be = phi ptr [ %i.fe, %bb.q ], [ %i.dq, %tailrecurse.backedge.sink.split ]
  br label %tailrecurse

bb.j:                                             ; preds = %tailrecurse
  %i.dr = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5651)
  %i.ds = getelementptr inbounds nuw i8, ptr %.tr, i64 28
  %i.dt = load i8, ptr %i.ds, align 4, !range !5, !alias.scope !5651, !noalias !5654, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !5656
  store i8 %i.dt, ptr %i.bd, align 1, !noalias !5656
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef 1) #47, !noalias !5651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !5656
  %i.du = load ptr, ptr %i.dr, align 8, !alias.scope !5651, !noalias !5654, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.du, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5651, !inline_history !5659
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !5651, !noalias !5654, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dw, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5651, !inline_history !5659
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.dy = load i32, ptr %i.dx, align 8, !range !5453, !alias.scope !5651, !noalias !5654, !noundef !4 ; 2 uses
  %i.dz = icmp ne i32 %i.dy, 1114112              ; 2 uses
  %i.ea = zext i1 %i.dz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !5660
  store i64 %i.ea, ptr %i.be, align 8, !noalias !5660
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef 8) #47, !noalias !5651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !5660
  br i1 %i.dz, label %bb.k, label %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !5665
  store i32 %i.dy, ptr %i.bf, align 4, !noalias !5665
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef 4) #47, !noalias !5651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !5665
  br label %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.j, %bb.k
  %i.eb = getelementptr inbounds nuw i8, ptr %.tr, i64 29
  %i.ec = load i8, ptr %i.eb, align 1, !range !5, !alias.scope !5651, !noalias !5654, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !5668
  store i8 %i.ec, ptr %i.bg, align 1, !noalias !5668
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef 1) #47, !noalias !5651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !5668
  br label %common.ret

bb.l:                                             ; preds = %tailrecurse
  %i.ed = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5671)
  %i.ee = getelementptr inbounds nuw i8, ptr %.tr, i64 28
  %i.ef = load i8, ptr %i.ee, align 4, !range !5, !alias.scope !5671, !noalias !5674, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !5676
  store i8 %i.ef, ptr %i.az, align 1, !noalias !5676
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef 1) #47, !noalias !5671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !5676
  %i.eg = load ptr, ptr %i.ed, align 8, !alias.scope !5671, !noalias !5674, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.eg, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5671, !inline_history !5659
  %i.eh = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !alias.scope !5671, !noalias !5674, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ei, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5671, !inline_history !5659
  %i.ej = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ek = load i32, ptr %i.ej, align 8, !range !5453, !alias.scope !5671, !noalias !5674, !noundef !4 ; 2 uses
  %i.el = icmp ne i32 %i.ek, 1114112              ; 2 uses
  %i.em = zext i1 %i.el to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !5679
  store i64 %i.em, ptr %i.ba, align 8, !noalias !5679
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef 8) #47, !noalias !5671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !5679
  br i1 %i.el, label %bb.m, label %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit1

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !5684
  store i32 %i.ek, ptr %i.bb, align 4, !noalias !5684
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef 4) #47, !noalias !5671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !5684
  br label %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit1

_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit1: ; preds = %bb.l, %bb.m
  %i.en = getelementptr inbounds nuw i8, ptr %.tr, i64 29
  %i.eo = load i8, ptr %i.en, align 1, !range !5, !alias.scope !5671, !noalias !5674, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !5687
  store i8 %i.eo, ptr %i.bc, align 1, !noalias !5687
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef 1) #47, !noalias !5671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !5687
  br label %common.ret

bb.n:                                             ; preds = %tailrecurse
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5690)
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !5690, !noalias !5693, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.eq, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5690, !inline_history !5695
  %i.er = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.es = load i8, ptr %i.er, align 8, !range !5, !alias.scope !5690, !noalias !5693, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !5696
  store i8 %i.es, ptr %i.ay, align 1, !noalias !5696
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef 1) #47, !noalias !5690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !5696
  %i.et = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !5690, !noalias !5693, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.eu, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5690, !inline_history !5695
  br label %tailrecurse.backedge.sink.split

bb.o:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5699)
  %i.ev = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !5699, !noalias !5702, !align !2181, !noundef !4 ; 2 uses
  %i.ex = icmp ne ptr %i.ew, null                 ; 2 uses
  %i.ey = zext i1 %i.ex to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !5704
  store i64 %i.ey, ptr %i.av, align 8, !noalias !5704
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef 8) #47, !noalias !5699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5704
  br i1 %i.ex, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ew, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5699, !inline_history !5709
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ez = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !5699, !noalias !5702, !nonnull !4, !noundef !4
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !5699, !noalias !5702, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !5710
  store i64 %i.fc, ptr %i.aw, align 8, !noalias !5710
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef 8) #47, !noalias !5699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5710
  tail call void @_RINvYTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.fa, i64 noundef %i.fc, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !5699, !inline_history !5709
  %i.fd = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !5699, !noalias !5702, !align !2181, !noundef !4 ; 2 uses
  %i.ff = icmp ne ptr %i.fe, null                 ; 2 uses
  %i.fg = zext i1 %i.ff to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !5715
  store i64 %i.fg, ptr %i.ax, align 8, !noalias !5715
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef 8) #47, !noalias !5699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !5715
  br i1 %i.ff, label %tailrecurse.backedge, label %common.ret

common.ret:                                       ; preds = %bb.bc, %bb.bb, %bb.aj, %bb.ai, %bb.af, %bb.t, %_RINvXs8_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, %bb.h, %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit1, %_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit10, %_RINvXs2U_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_8SubqueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, %_RINvXs2U_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_8SubqueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit15, %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2, %bb.ap, %bb.g, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i, %bb.x, %bb.ak, %bb.al, %bb.am, %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, %.lr.ph.i, %.lr.ph90, %.lr.ph72, %.lr.ph70, %.lr.ph, %bb.q, %bb.s, %bb.r
  ret void

bb.r:                                             ; preds = %tailrecurse
  %i.fh = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5720)
  %i.fi = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !5720, !noalias !5723, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.fj, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5720, !inline_history !5725
  tail call fastcc void @_RINvXs7_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fh, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !5725
  br label %common.ret

bb.s:                                             ; preds = %tailrecurse
  %i.fk = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5726)
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !5726, !noalias !5729, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.fm, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5726, !inline_history !5731
  tail call fastcc void @_RINvXs7_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fk, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !5731
  br label %common.ret

bb.t:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5732)
  %i.fn = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !5732, !noalias !5735, !nonnull !4, !noundef !4 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5737)
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !5737, !noalias !5740, !nonnull !4, !noundef !4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !5737, !noalias !5740, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !range !90, !invariant.load !4, !noalias !5742
  %i.fv = add nsw i64 %i.fu, -1
  %i.fw = and i64 %i.fv, -16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.ga = load ptr, ptr %i.fz, align 8, !invariant.load !4, !noalias !5742, !nonnull !4
  tail call void %i.ga(ptr noundef nonnull %i.fy, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @67) #47, !noalias !5743, !inline_history !5744
  %i.gb = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !5732, !noalias !5735, !nonnull !4, !noundef !4 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !5732, !noalias !5735, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5745
  store i64 %i.ge, ptr %i.au, align 8, !noalias !5745
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef 8) #47, !noalias !5732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5745
  %.idx101 = mul nuw nsw i64 %i.ge, 112
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx101
  %i.gg = icmp eq i64 %i.ge, 0
  br i1 %i.gg, label %common.ret, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.t, %.lr.ph90
  %.sroa.0.0.i89 = phi ptr [ %i.gh, %.lr.ph90 ], [ %i.gc, %bb.t ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i89, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i89, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5732, !inline_history !5750
  %i.gi = icmp eq ptr %i.gh, %i.gf
  br i1 %i.gi, label %common.ret, label %.lr.ph90

bb.u:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5751)
  %i.gj = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.gk = load ptr, ptr %i.gj, align 8, !alias.scope !5751, !noalias !5754, !nonnull !4, !noundef !4 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5756)
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !5756, !noalias !5759, !nonnull !4, !noundef !4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !5756, !noalias !5759, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !range !90, !invariant.load !4, !noalias !5761
  %i.gr = add nsw i64 %i.gq, -1
  %i.gs = and i64 %i.gr, -16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  %i.gw = load ptr, ptr %i.gv, align 8, !invariant.load !4, !noalias !5761, !nonnull !4
  tail call void %i.gw(ptr noundef nonnull %i.gu, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @67) #47, !noalias !5762, !inline_history !5763
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5764)
  %i.gx = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !5764, !noalias !5767, !nonnull !4, !noundef !4 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !5764, !noalias !5767, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5769
  store i64 %i.ha, ptr %i.at, align 8, !noalias !5769
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef 8) #47, !noalias !5764, !inline_history !5774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5769
  %.idx99 = mul nuw nsw i64 %i.ha, 112
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.idx99
  %i.hc = icmp eq i64 %i.ha, 0
  br i1 %i.hc, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.u, %.lr.ph86
  %.sroa.0.0.i.i85 = phi ptr [ %i.hd, %.lr.ph86 ], [ %i.gy, %bb.u ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i85, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i.i85, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5764, !inline_history !5775
  %i.he = icmp eq ptr %i.hd, %i.hb
  br i1 %i.he, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph86

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.lr.ph86, %bb.u
  %i.hf = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.hg = load i8, ptr %i.hf, align 8, !range !5, !alias.scope !5764, !noalias !5767, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !5776
  store i8 %i.hg, ptr %i.as, align 1, !noalias !5776
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef 1) #47, !noalias !5764, !inline_history !5774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5776
  %i.hh = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.hi = load ptr, ptr %i.hh, align 8, !alias.scope !5764, !noalias !5767, !align !2181, !noundef !4 ; 2 uses
  %i.hj = icmp ne ptr %i.hi, null                 ; 2 uses
  %i.hk = zext i1 %i.hj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !5779
  store i64 %i.hk, ptr %i.ar, align 8, !noalias !5779
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef 8) #47, !noalias !5764, !inline_history !5774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !5779
  br i1 %i.hj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.hi, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5764, !inline_history !5774
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i
  %i.hl = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.hm = load ptr, ptr %i.hl, align 8, !alias.scope !5764, !noalias !5767, !nonnull !4, !noundef !4 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.ho = load i64, ptr %i.hn, align 8, !alias.scope !5764, !noalias !5767, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !5784
  store i64 %i.ho, ptr %i.aq, align 8, !noalias !5784
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef 8) #47, !noalias !5764, !inline_history !5774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5784
  %.idx100 = shl nuw nsw i64 %i.ho, 7
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.idx100
  %i.hq = icmp eq i64 %i.ho, 0
  br i1 %i.hq, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph88

.lr.ph88:                                         ; preds = %bb.w, %.lr.ph88
  %.sroa.0.0.i1.i87 = phi ptr [ %i.hr, %.lr.ph88 ], [ %i.hm, %bb.w ] ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i87, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5789)
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %.sroa.0.0.i1.i87, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5764, !inline_history !5792
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i87, i64 112
  %i.ht = load i8, ptr %i.hs, align 16, !range !5, !alias.scope !5789, !noalias !5793, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5795
  store i8 %i.ht, ptr %i.l, align 1, !noalias !5795
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 1) #47, !noalias !5764, !inline_history !5792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5795
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i87, i64 113
  %i.hv = load i8, ptr %i.hu, align 1, !range !5, !alias.scope !5789, !noalias !5793, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5798
  store i8 %i.hv, ptr %i.k, align 1, !noalias !5798
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 1) #47, !noalias !5764, !inline_history !5792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5798
  %i.hw = icmp eq ptr %i.hr, %i.hp
  br i1 %i.hw, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph88

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.lr.ph88, %bb.w
  %i.hx = getelementptr inbounds nuw i8, ptr %.tr, i64 65
  %i.hy = load i8, ptr %i.hx, align 1, !range !137, !alias.scope !5764, !noalias !5767, !noundef !4 ; 2 uses
  %i.hz = icmp ne i8 %i.hy, 2                     ; 2 uses
  %i.ia = zext i1 %i.hz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !5801
  store i64 %i.ia, ptr %i.ap, align 8, !noalias !5801
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef 8) #47, !noalias !5764, !inline_history !5774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !5801
  br i1 %i.hz, label %bb.x, label %common.ret

bb.x:                                             ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i
  %i.ib = zext nneg i8 %i.hy to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !5806
  store i64 %i.ib, ptr %i.ao, align 8, !noalias !5806
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef 8) #47, !noalias !5764, !inline_history !5774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5806
  br label %common.ret

bb.y:                                             ; preds = %tailrecurse
  %i.ic = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !nonnull !4, !noundef !4 ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5813)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 272
  %.val.i = load i64, ptr %i.ie, align 8, !range !3, !alias.scope !5813, !noalias !5816, !noundef !4
  %i.if = getelementptr i8, ptr %i.id, i64 280
  %.val1.i = load ptr, ptr %i.if, align 8, !alias.scope !5813, !noalias !5816 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !5818
  store i64 %.val.i, ptr %i.ac, align 8, !noalias !5818
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 8) #47, !noalias !5813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !5818
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ], !noalias !5813
  %i.ig = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !5825, !nonnull !4, !noundef !4
  %i.ii = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !5825, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load i64, ptr %i.ik, align 8, !range !90, !invariant.load !4, !noalias !5825
  %i.im = add nsw i64 %i.il, -1
  %i.in = and i64 %i.im, -16
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  %i.ir = load ptr, ptr %i.iq, align 8, !invariant.load !4, !noalias !5825, !nonnull !4
  tail call void %i.ir(ptr noundef nonnull %i.ip, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @67) #47, !noalias !5813, !inline_history !5826
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5827)
  %i.is = getelementptr inbounds nuw i8, ptr %i.id, i64 184
  %i.it = load ptr, ptr %i.is, align 8, !alias.scope !5827, !noalias !5830, !nonnull !4, !noundef !4 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.id, i64 192
  %i.iv = load i64, ptr %i.iu, align 16, !alias.scope !5827, !noalias !5830, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !5832
  store i64 %i.iv, ptr %i.an, align 8, !noalias !5832
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef 8) #47, !noalias !5827, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !5832
  %.idx96 = mul nuw nsw i64 %i.iv, 112
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 %.idx96
  %i.ix = icmp eq i64 %i.iv, 0
  br i1 %i.ix, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i5, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.y, %.lr.ph80
  %.sroa.0.0.i.i479 = phi ptr [ %i.iy, %.lr.ph80 ], [ %i.it, %bb.y ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i479, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i.i479, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5827, !inline_history !5838
  %i.iz = icmp eq ptr %i.iy, %i.iw
  br i1 %i.iz, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i5, label %.lr.ph80

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i5: ; preds = %.lr.ph80, %bb.y
  %i.ja = getelementptr inbounds nuw i8, ptr %i.id, i64 208
  %i.jb = load ptr, ptr %i.ja, align 8, !alias.scope !5827, !noalias !5830, !nonnull !4, !noundef !4 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.id, i64 216
  %i.jd = load i64, ptr %i.jc, align 8, !alias.scope !5827, !noalias !5830, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !5839
  store i64 %i.jd, ptr %i.am, align 8, !noalias !5839
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef 8) #47, !noalias !5827, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5839
  %.idx97 = mul nuw nsw i64 %i.jd, 112
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.idx97
  %i.jf = icmp eq i64 %i.jd, 0
  br i1 %i.jf, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2.i, label %.lr.ph82

.lr.ph82:                                         ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i5, %.lr.ph82
  %.sroa.0.0.i1.i681 = phi ptr [ %i.jg, %.lr.ph82 ], [ %i.jb, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i5 ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i681, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i1.i681, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5827, !inline_history !5838
  %i.jh = icmp eq ptr %i.jg, %i.je
  br i1 %i.jh, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2.i, label %.lr.ph82

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2.i: ; preds = %.lr.ph82, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i5
  %i.ji = getelementptr inbounds nuw i8, ptr %i.id, i64 232
  %i.jj = load ptr, ptr %i.ji, align 8, !alias.scope !5827, !noalias !5830, !nonnull !4, !noundef !4 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.id, i64 240
  %i.jl = load i64, ptr %i.jk, align 16, !alias.scope !5827, !noalias !5830, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !5844
  store i64 %i.jl, ptr %i.al, align 8, !noalias !5844
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 8) #47, !noalias !5827, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5844
  %.idx98 = shl nuw nsw i64 %i.jl, 7
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.idx98
  %i.jn = icmp eq i64 %i.jl, 0
  br i1 %i.jn, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i7, label %.lr.ph84

.lr.ph84:                                         ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2.i, %.lr.ph84
  %.sroa.0.0.i3.i83 = phi ptr [ %i.jo, %.lr.ph84 ], [ %i.jj, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2.i ] ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i83, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5849)
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %.sroa.0.0.i3.i83, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5827, !inline_history !5852
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i83, i64 112
  %i.jq = load i8, ptr %i.jp, align 16, !range !5, !alias.scope !5849, !noalias !5853, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5855
  store i8 %i.jq, ptr %i.j, align 1, !noalias !5855
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 1) #47, !noalias !5827, !inline_history !5852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5855
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i83, i64 113
  %i.js = load i8, ptr %i.jr, align 1, !range !5, !alias.scope !5849, !noalias !5853, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5858
  store i8 %i.js, ptr %i.i, align 1, !noalias !5858
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1) #47, !noalias !5827, !inline_history !5852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5858
  %i.jt = icmp eq ptr %i.jo, %i.jm
  br i1 %i.jt, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i7, label %.lr.ph84

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i7: ; preds = %.lr.ph84, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5861)
  %i.ju = getelementptr inbounds nuw i8, ptr %i.id, i64 161
  %i.jv = load i8, ptr %i.ju, align 1, !range !137, !alias.scope !5864, !noalias !5865, !noundef !4
  %i.jw = zext nneg i8 %i.jv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !5867
  store i64 %i.jw, ptr %i.ak, align 8, !noalias !5867
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef 8) #47, !noalias !5864, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !5867
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5872)
  %i.jx = load i128, ptr %i.id, align 16, !range !2859, !alias.scope !5875, !noalias !5876, !noundef !4 ; 2 uses
  %i.jy = trunc nuw nsw i128 %i.jx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !5878
  store i64 %i.jy, ptr %i.aj, align 8, !noalias !5878
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef 8) #47, !noalias !5875, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !5878
  %i.jz = icmp eq i128 %i.jx, 1
  br i1 %i.jz, label %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i7
  %i.ka = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ka, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !5837
  br label %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i.i

_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.sink.split.i.i.i, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i7
  %i.kb = getelementptr inbounds nuw i8, ptr %i.id, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5883)
  %i.kc = load i128, ptr %i.kb, align 16, !range !2859, !alias.scope !5886, !noalias !5887, !noundef !4 ; 2 uses
  %i.kd = trunc nuw nsw i128 %i.kc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !5889
  store i64 %i.kd, ptr %i.ai, align 8, !noalias !5889
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef 8) #47, !noalias !5883, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !5889
  %i.ke = icmp eq i128 %i.kc, 1
  br i1 %i.ke, label %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i, label %.sink.split.i1.i.i

.sink.split.i1.i.i:                               ; preds = %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.id, i64 96
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.kf, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !5837
  br label %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i

_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.sink.split.i1.i.i, %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.id, i64 160
  %i.kh = load i8, ptr %i.kg, align 16, !range !5, !alias.scope !5864, !noalias !5865, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !5894
  store i8 %i.kh, ptr %i.ah, align 1, !noalias !5894
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 1) #47, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !5894
  %i.ki = getelementptr inbounds nuw i8, ptr %i.id, i64 248 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !alias.scope !5827, !noalias !5830, !align !2181, !noundef !4
  %i.kk = icmp ne ptr %i.kj, null                 ; 2 uses
  %i.kl = zext i1 %i.kk to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !5897
  store i64 %i.kl, ptr %i.ag, align 8, !noalias !5897
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef 8) #47, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !5897
  br i1 %i.kk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i
  %i.km = load ptr, ptr %i.ki, align 8, !alias.scope !5827, !noalias !5830, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.km, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !5837
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.id, i64 257 ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 1, !range !137, !alias.scope !5827, !noalias !5830, !noundef !4
  %i.kp = icmp ne i8 %i.ko, 2                     ; 2 uses
  %i.kq = zext i1 %i.kp to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !5902
  store i64 %i.kq, ptr %i.af, align 8, !noalias !5902
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 8) #47, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !5902
  br i1 %i.kp, label %bb.ab, label %_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.ab:                                            ; preds = %bb.aa
  %.val.i8 = load i8, ptr %i.kn, align 1, !range !5, !alias.scope !5827, !noalias !5830, !noundef !4
  %i.kr = zext nneg i8 %.val.i8 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !5907
  store i64 %i.kr, ptr %i.ae, align 8, !noalias !5907
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 8) #47, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5907
  br label %_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.aa, %bb.ab
  %i.ks = getelementptr inbounds nuw i8, ptr %i.id, i64 256
  %i.kt = load i8, ptr %i.ks, align 16, !range !5, !alias.scope !5827, !noalias !5830, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !5914
  store i8 %i.kt, ptr %i.ad, align 1, !noalias !5914
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 1) #47, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5914
  br label %common.ret

bb.ac:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5917)
  %i.ku = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.kv = load ptr, ptr %i.ku, align 8, !alias.scope !5917, !noalias !5920, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.kv, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5917, !inline_history !5922
  %i.kw = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8, !alias.scope !5917, !noalias !5920, !nonnull !4, !noundef !4 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.kz = load i64, ptr %i.ky, align 8, !alias.scope !5917, !noalias !5920, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !5923
  store i64 %i.kz, ptr %i.aa, align 8, !noalias !5923
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #47, !noalias !5917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5923
  %.idx95 = mul nuw nsw i64 %i.kz, 112
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 %.idx95
  %i.lb = icmp eq i64 %i.kz, 0
  br i1 %i.lb, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit10, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.ac, %.lr.ph78
  %.sroa.0.0.i977 = phi ptr [ %i.lc, %.lr.ph78 ], [ %i.kx, %bb.ac ] ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i977, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i977, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5917, !inline_history !5928
  %i.ld = icmp eq ptr %i.lc, %i.la
  br i1 %i.ld, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit10, label %.lr.ph78

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit10: ; preds = %.lr.ph78, %bb.ac
  %i.le = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.lf = load i8, ptr %i.le, align 8, !range !5, !alias.scope !5917, !noalias !5920, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !5929
  store i8 %i.lf, ptr %i.ab, align 1, !noalias !5929
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 1) #47, !noalias !5917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5929
  br label %common.ret

bb.ad:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5932)
  %i.lg = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.lh = load ptr, ptr %i.lg, align 8, !alias.scope !5932, !noalias !5935, !nonnull !4, !noundef !4
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.li, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5932, !inline_history !5937
  %i.lj = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !alias.scope !5932, !noalias !5935, !nonnull !4, !noundef !4 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.lm = load i64, ptr %i.ll, align 8, !alias.scope !5932, !noalias !5935, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !5938
  store i64 %i.lm, ptr %i.y, align 8, !noalias !5938
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #47, !noalias !5932, !inline_history !5937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5938
  %.idx94 = mul nuw nsw i64 %i.lm, 112
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.idx94
  %i.lo = icmp eq i64 %i.lm, 0
  br i1 %i.lo, label %_RINvXs2U_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_8SubqueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.ad, %.lr.ph76
  %.sroa.0.0.i.i1175 = phi ptr [ %i.lp, %.lr.ph76 ], [ %i.lk, %bb.ad ] ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i1175, i64 112 ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvXs1D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB7_11CreateIndexNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load i64, ptr %i.x, align 8, !noundef !4
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6239
  store i8 -1, ptr %i.f, align 1, !noalias !6239
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1) #47, !noalias !6246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6239
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6247
  store i64 %i.ac, ptr %i.e, align 8, !noalias !6247
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6247
  %.idx = shl nuw nsw i64 %i.ac, 7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.sroa.0.0.i1 = phi ptr [ %i.af, %.lr.ph ], [ %i.aa, %bb.e ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6252)
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %.sroa.0.0.i1, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !6255
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1, i64 112
  %i.ah = load i8, ptr %i.ag, align 16, !range !5, !alias.scope !6252, !noalias !6256, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6258
  store i8 %i.ah, ptr %i.b, align 1, !noalias !6258
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #47, !inline_history !6255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6258
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1, i64 113
  %i.aj = load i8, ptr %i.ai, align 1, !range !5, !alias.scope !6252, !noalias !6256, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6261
  store i8 %i.aj, ptr %i.a, align 1, !noalias !6261
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #47, !inline_history !6255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6261
  %i.ak = icmp eq ptr %i.af, %i.ad
  br i1 %i.ak, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.am = load i8, ptr %i.al, align 8, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6264
  store i8 %i.am, ptr %i.d, align 1, !noalias !6264
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6264
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.ao = load i8, ptr %i.an, align 1, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6267
  store i8 %i.ao, ptr %i.c, align 1, !noalias !6267
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6267
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RINvXs1H_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_12BinaryLengthNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6270
  store i64 %.0.val, ptr %i.b, align 8, !noalias !6270
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6270
  %i.c = trunc nuw i64 %.0.val to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6275
  store i64 %.8.val, ptr %i.a, align 8, !noalias !6275
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6275
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1R_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_16ArrayElemTypeDefNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !2275, !noundef !4 ; 5 uses
  %i.e = icmp ne i64 %i.d, 4
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %.inv = icmp samesign ult i64 %i.d, 2
  %i.g = select i1 %.inv, i64 2, i64 %i.f         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6278
  store i64 %i.g, ptr %i.c, align 8, !noalias !6278
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6278
  switch i64 %i.g, label %bb.b [
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.i, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6283
  store i64 %i.d, ptr %i.b, align 8, !noalias !6283
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6283
  %i.l = trunc nuw i64 %i.d to i1
  br i1 %i.l, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.c, %bb.a
  ret void

bb.g:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6288
  store i64 %i.p, ptr %i.a, align 8, !noalias !6288
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6288
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1T_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_7SetExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.d, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.w, %bb.d ]   ; 15 uses
  %i.j = load i8, ptr %.tr, align 8, !range !5557, !noundef !4 ; 2 uses
  %i.k = zext nneg i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6291
  store i64 %i.k, ptr %i.i, align 8, !noalias !6291
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6291
  switch i8 %i.j, label %default.unreachable19 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
  ]

default.unreachable19:                            ; preds = %tailrecurse
  unreachable

bb.b:                                             ; preds = %tailrecurse
  %i.l = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs2L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6SelectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2432) %i.m, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  br label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %tailrecurse
  %i.n = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.o, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  br label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %tailrecurse
  %i.p = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.q = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %.val = load i8, ptr %i.p, align 1, !range !2683, !noundef !4
  %i.r = zext nneg i8 %.val to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6296
  store i64 %i.r, ptr %i.h, align 8, !noalias !6296
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6296
  %.val1 = load i8, ptr %i.q, align 1, !range !3178, !noundef !4
  %i.s = zext nneg i8 %.val1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6303
  store i64 %i.s, ptr %i.g, align 8, !noalias !6303
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6303
  %i.t = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs1T_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_7SetExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2696) %i.u, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.v = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  br label %tailrecurse

bb.e:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6310)
  %i.x = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.y = load i8, ptr %i.x, align 8, !range !5, !alias.scope !6310, !noalias !6313, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6315
  store i8 %i.y, ptr %i.f, align 1, !noalias !6315
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1) #47, !noalias !6310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6315
  %i.z = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !6310, !noalias !6313, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !6310, !noalias !6313, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6318
  store i64 %i.ac, ptr %i.e, align 8, !noalias !6318
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #47, !noalias !6310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6318
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aa, i64 noundef %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !6310
  br label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %tailrecurse
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call fastcc void @_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ad, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  br label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %tailrecurse
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call fastcc void @_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ae, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  br label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %tailrecurse
  %i.af = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call fastcc void @_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.af, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  br label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.i:                                             ; preds = %tailrecurse
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call fastcc void @_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ag, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  br label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %tailrecurse
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6323)
  %i.aj = load i64, ptr %i.ai, align 8, !range !133, !alias.scope !6323, !noalias !6326, !noundef !4
  %i.ak = icmp ne i64 %i.aj, -9223372036854775808 ; 2 uses
  %i.al = zext i1 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6328
  store i64 %i.al, ptr %i.d, align 8, !noalias !6328
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #47, !noalias !6323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6328
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !6323, !noalias !6326, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !6323, !noalias !6326, !noundef !4
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef %i.ap) #47, !noalias !6323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6333
  store i8 -1, ptr %i.c, align 1, !noalias !6333
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1) #47, !noalias !6340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6333
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !range !133, !alias.scope !6323, !noalias !6326, !noundef !4
  %i.as = icmp ne i64 %i.ar, -9223372036854775808 ; 2 uses
  %i.at = zext i1 %i.as to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6341
  store i64 %i.at, ptr %i.b, align 8, !noalias !6341
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #47, !noalias !6323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6341
  br i1 %i.as, label %bb.m, label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !6323, !noalias !6326, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !6323, !noalias !6326, !noundef !4
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.ax) #47, !noalias !6323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6346
  store i8 -1, ptr %i.a, align 1, !noalias !6346
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #47, !noalias !6353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6346
  br label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvXs1T_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_16ArrayElemTypeDefNtNtB9_7visitor8VisitMut5visitINtB1c_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB25_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2275, !noundef !4 ; 3 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv, i64 2, i64 %i.c
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.f
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = tail call noundef zeroext i1 @_RINvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtB8_9data_type8DataTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2u_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = tail call noundef zeroext i1 @_RINvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtB8_9data_type8DataTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2u_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = tail call noundef zeroext i1 @_RINvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtB8_9data_type8DataTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2u_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.d, %bb.e, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ %i.f, %bb.c ], [ %i.j, %bb.e ], [ false, %bb.a ], [ %i.k, %bb.g ], [ true, %bb.d ]
  ret i1 %.sroa.0.0

bb.g:                                             ; preds = %bb.d
  %i.k = tail call noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionyENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1Z_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_19AlterConnectorOwnerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !3, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6354
  store i64 %i.b, ptr %i.a, align 8, !noalias !6354
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6354
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtCs8VI8w5SIoU4_15datafusion_expr3udfNtB6_9ScalarUDFNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !90, !invariant.load !4
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.k(ptr noundef nonnull %i.i, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @67) #47
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(312) %0, ptr noalias noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
end_hunk_2
begin_hunk_3_@_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dl, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.dm = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !4, !noundef !4
  %i.do = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.dp = load i64, ptr %i.do, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !7252
  store i64 %i.dp, ptr %i.bz, align 8, !noalias !7252
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !7252
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dn, i64 noundef %i.dp, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.dq = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.dr = load i8, ptr %i.dq, align 8, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !7257
  store i8 %i.dr, ptr %i.by, align 1, !noalias !7257
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.by, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !7257
  br label %common.ret

bb.k:                                             ; preds = %tailrecurse
  %i.ds = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dt, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.du = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.dv, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.dw = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.dx = load i8, ptr %i.dw, align 8, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !7260
  store i8 %i.dx, ptr %i.bx, align 1, !noalias !7260
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bx, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !7260
  br label %common.ret

bb.l:                                             ; preds = %tailrecurse
  %i.dy = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dz, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.ea = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.eb, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.ec = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ed = load i8, ptr %i.ec, align 8, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !7263
  store i8 %i.ed, ptr %i.bw, align 1, !noalias !7263
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !7263
  br label %common.ret

bb.m:                                             ; preds = %tailrecurse
  %i.ee = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ef, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.eg = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.eh = load i8, ptr %i.eg, align 8, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !7266
  store i8 %i.eh, ptr %i.bv, align 1, !noalias !7266
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !7266
  %i.ei = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ej, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  br label %tailrecurse.backedge.sink.split

bb.n:                                             ; preds = %tailrecurse
  %i.ek = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.em, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  tail call fastcc void @_RINvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB6_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ek, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  br label %tailrecurse.backedge.sink.split

bb.o:                                             ; preds = %tailrecurse
  %i.en = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.eo = load i8, ptr %i.en, align 8, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !7269
  store i8 %i.eo, ptr %i.bu, align 1, !noalias !7269
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !7269
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr, i64 73
  %i.eq = load i8, ptr %i.ep, align 1, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !7272
  store i8 %i.eq, ptr %i.bt, align 1, !noalias !7272
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bt, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !7272
  %i.er = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.es = load ptr, ptr %i.er, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.es, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.et = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.eu = load ptr, ptr %i.et, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.eu, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.ev = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !range !7211, !noundef !4
  %i.ex = icmp ne i64 %i.ew, -9223372036854775787 ; 2 uses
  %i.ey = zext i1 %i.ex to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !7275
  store i64 %i.ey, ptr %i.bs, align 8, !noalias !7275
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !7275
  br i1 %i.ex, label %bb.by, label %common.ret

bb.p:                                             ; preds = %tailrecurse
  %i.ez = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.fa = load i8, ptr %i.ez, align 8, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !7280
  store i8 %i.fa, ptr %i.br, align 1, !noalias !7280
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !7280
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr, i64 73
  %i.fc = load i8, ptr %i.fb, align 1, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !7283
  store i8 %i.fc, ptr %i.bq, align 1, !noalias !7283
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !7283
  %i.fd = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.fe = load ptr, ptr %i.fd, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.fe, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.ff = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.fg = load ptr, ptr %i.ff, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.fg, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.fh = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !range !7211, !noundef !4
  %i.fj = icmp ne i64 %i.fi, -9223372036854775787 ; 2 uses
  %i.fk = zext i1 %i.fj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !7286
  store i64 %i.fk, ptr %i.bp, align 8, !noalias !7286
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !7286
  br i1 %i.fj, label %bb.bz, label %common.ret

bb.q:                                             ; preds = %tailrecurse
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.fm = load i8, ptr %i.fl, align 8, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !7291
  store i8 %i.fm, ptr %i.bo, align 1, !noalias !7291
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !7291
  %i.fn = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.fo = load ptr, ptr %i.fn, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.fo, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.fp = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.fq = load ptr, ptr %i.fp, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.fq, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.fr = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !range !7211, !noundef !4
  %i.ft = icmp ne i64 %i.fs, -9223372036854775787 ; 2 uses
  %i.fu = zext i1 %i.ft to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !7294
  store i64 %i.fu, ptr %i.bn, align 8, !noalias !7294
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !7294
  br i1 %i.ft, label %bb.ca, label %common.ret

bb.r:                                             ; preds = %tailrecurse
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.fw = load i8, ptr %i.fv, align 8, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !7299
  store i8 %i.fw, ptr %i.bm, align 1, !noalias !7299
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !7299
  %i.fx = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.fy, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.fz = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ga, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.gb = getelementptr inbounds nuw i8, ptr %.tr, i64 25
  %i.gc = load i8, ptr %i.gb, align 1, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !7302
  store i8 %i.gc, ptr %i.bl, align 1, !noalias !7302
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !7302
  br label %common.ret

bb.s:                                             ; preds = %tailrecurse
  %i.gd = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.gf, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  tail call fastcc void @_RINvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB6_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gd, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.gg = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.gh = load ptr, ptr %i.gg, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.gh, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.gi = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.gj = load i8, ptr %i.gi, align 8, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !7305
  store i8 %i.gj, ptr %i.bk, align 1, !noalias !7305
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !7305
  br label %common.ret

bb.t:                                             ; preds = %tailrecurse
  %i.gk = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.gm = load ptr, ptr %i.gl, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.gm, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  tail call fastcc void @_RINvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB6_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gk, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  br label %tailrecurse.backedge.sink.split

bb.u:                                             ; preds = %tailrecurse
  %i.gn = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val8 = load i8, ptr %i.gn, align 1, !range !7308, !noundef !4
  %i.go = zext nneg i8 %.val8 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !7309
  store i64 %i.go, ptr %i.bj, align 8, !noalias !7309
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !7309
  br label %tailrecurse.backedge.sink.split

bb.v:                                             ; preds = %tailrecurse
  %i.gp = getelementptr inbounds nuw i8, ptr %.tr, i64 120
  %i.gq = load i8, ptr %i.gp, align 8, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !7316
  store i8 %i.gq, ptr %i.bi, align 1, !noalias !7316
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bi, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !7316
  %i.gr = getelementptr inbounds nuw i8, ptr %.tr, i64 112
  %i.gs = load ptr, ptr %i.gr, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.gs, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.gt = getelementptr inbounds nuw i8, ptr %.tr, i64 56 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 8, !range !7319, !noundef !4
  %i.gv = icmp ne i8 %i.gu, 116                   ; 2 uses
  %i.gw = zext i1 %i.gv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !7320
  store i64 %i.gw, ptr %i.bh, align 8, !noalias !7320
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !7320
  br i1 %i.gv, label %bb.cb, label %bb.cc

bb.w:                                             ; preds = %tailrecurse
  %i.gx = getelementptr inbounds nuw i8, ptr %.tr, i64 168
  %i.gy = getelementptr inbounds nuw i8, ptr %.tr, i64 104
  %.val9 = load i8, ptr %i.gx, align 1, !range !2683, !noundef !4
  %i.gz = zext nneg i8 %.val9 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !7325
  store i64 %i.gz, ptr %i.bg, align 8, !noalias !7325
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !7325
  %i.ha = getelementptr inbounds nuw i8, ptr %.tr, i64 160
  %i.hb = load ptr, ptr %i.ha, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.hb, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  tail call fastcc void @_RINvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gy, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.hc = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !range !7332, !noundef !4
  %i.he = icmp ne i64 %i.hd, -9223372036854775786 ; 2 uses
  %i.hf = zext i1 %i.he to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !7333
  store i64 %i.hf, ptr %i.bf, align 8, !noalias !7333
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !7333
  br i1 %i.he, label %bb.cf, label %common.ret

bb.x:                                             ; preds = %tailrecurse
  %i.hg = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.hh, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  br label %tailrecurse.backedge.sink.split

bb.y:                                             ; preds = %tailrecurse
  %i.hi = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.tr, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7338)
  %i.hk = load i64, ptr %i.hi, align 8, !range !7341, !alias.scope !7338, !noalias !7342, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !7344
  store i64 %i.hk, ptr %i.z, align 8, !noalias !7344
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 8) #47, !noalias !7338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !7344
  switch i64 %i.hk, label %_RINvXsL_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit [
    i64 4, label %bb.z
    i64 43, label %bb.aa
  ]

.sink.split.i:                                    ; preds = %bb.aa, %bb.z
  %.sink.i = phi ptr [ %i.hp, %bb.aa ], [ %i.hl, %bb.z ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sink.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsL_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.z:                                             ; preds = %bb.y
  %i.hl = getelementptr inbounds nuw i8, ptr %.tr, i64 16 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !range !133, !alias.scope !7338, !noalias !7342, !noundef !4
  %i.hn = icmp ne i64 %i.hm, -9223372036854775808 ; 2 uses
  %i.ho = zext i1 %i.hn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !7349
  store i64 %i.ho, ptr %i.y, align 8, !noalias !7349
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #47, !noalias !7338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !7349
  br i1 %i.hn, label %.sink.split.i, label %_RINvXsL_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.aa:                                            ; preds = %bb.y
  %i.hp = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  br label %.sink.split.i

_RINvXsL_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.y, %.sink.split.i, %bb.z
  %.val10 = load i8, ptr %i.hj, align 1, !range !5, !noundef !4
  %i.hq = zext nneg i8 %.val10 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !7354
  store i64 %i.hq, ptr %i.be, align 8, !noalias !7354
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !7354
  br label %tailrecurse.backedge.sink.split

bb.ab:                                            ; preds = %tailrecurse
  %i.hr = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.ht = load ptr, ptr %i.hs, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ht, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7361)
  %i.hu = load i64, ptr %i.hr, align 8, !range !7364, !alias.scope !7361, !noalias !7365, !noundef !4 ; 3 uses
  %i.hv = icmp eq i64 %i.hu, 44                   ; 2 uses
  %i.hw = zext i1 %i.hv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !7367
  store i64 %i.hw, ptr %i.x, align 8, !noalias !7367
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 8) #47, !noalias !7361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !7367
  br i1 %i.hv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hx = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hx, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47
  br label %common.ret

bb.ad:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7372)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !7375
  store i64 %i.hu, ptr %i.w, align 8, !noalias !7375
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 8) #47, !noalias !7381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !7375
  switch i64 %i.hu, label %common.ret [
    i64 4, label %bb.ae
    i64 43, label %bb.af
  ]

.sink.split.i.i:                                  ; preds = %bb.af, %bb.ae
  %.sink.i.i = phi ptr [ %i.ic, %bb.af ], [ %i.hy, %bb.ae ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sink.i.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.ae:                                            ; preds = %bb.ad
  %i.hy = getelementptr inbounds nuw i8, ptr %.tr, i64 16 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !range !133, !alias.scope !7381, !noalias !7382, !noundef !4
  %i.ia = icmp ne i64 %i.hz, -9223372036854775808 ; 2 uses
  %i.ib = zext i1 %i.ia to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !7383
  store i64 %i.ib, ptr %i.v, align 8, !noalias !7383
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8) #47, !noalias !7381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !7383
  br i1 %i.ia, label %.sink.split.i.i, label %common.ret

bb.af:                                            ; preds = %bb.ad
  %i.ic = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  br label %.sink.split.i.i

bb.ag:                                            ; preds = %tailrecurse
  %i.id = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.if = load ptr, ptr %i.ie, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.if, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7388)
  %i.ig = load i64, ptr %i.id, align 8, !range !7364, !alias.scope !7388, !noalias !7391, !noundef !4 ; 3 uses
  %i.ih = icmp eq i64 %i.ig, 44                   ; 2 uses
  %i.ii = zext i1 %i.ih to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !7393
  store i64 %i.ii, ptr %i.u, align 8, !noalias !7393
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 8) #47, !noalias !7388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !7393
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ij = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ij, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47
  br label %common.ret

bb.ai:                                            ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7398)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !7401
  store i64 %i.ig, ptr %i.t, align 8, !noalias !7401
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 8) #47, !noalias !7407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !7401
  switch i64 %i.ig, label %common.ret [
    i64 4, label %bb.aj
    i64 43, label %bb.ak
  ]

.sink.split.i.i146:                               ; preds = %bb.ak, %bb.aj
  %.sink.i.i147 = phi ptr [ %i.io, %bb.ak ], [ %i.ik, %bb.aj ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sink.i.i147, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.aj:                                            ; preds = %bb.ai
  %i.ik = getelementptr inbounds nuw i8, ptr %.tr, i64 16 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !range !133, !alias.scope !7407, !noalias !7408, !noundef !4
  %i.im = icmp ne i64 %i.il, -9223372036854775808 ; 2 uses
  %i.in = zext i1 %i.im to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !7409
  store i64 %i.in, ptr %i.s, align 8, !noalias !7409
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 8) #47, !noalias !7407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7409
  br i1 %i.im, label %.sink.split.i.i146, label %common.ret

bb.ak:                                            ; preds = %bb.ai
  %i.io = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  br label %.sink.split.i.i146

bb.al:                                            ; preds = %tailrecurse
  %i.ip = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.iq, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  br label %tailrecurse.backedge.sink.split

bb.am:                                            ; preds = %tailrecurse
  %i.ir = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.is, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.it = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !align !32, !noundef !4 ; 2 uses
  %i.iv = icmp ne ptr %i.iu, null                 ; 2 uses
  %i.iw = zext i1 %i.iv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !7414
  store i64 %i.iw, ptr %i.bd, align 8, !noalias !7414
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !7414
  br i1 %i.iv, label %bb.cg, label %bb.ch

bb.an:                                            ; preds = %tailrecurse
  %i.ix = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.iy, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.iz = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.ja = load i8, ptr %i.iz, align 8, !range !2683, !noundef !4 ; 2 uses
  %i.jb = icmp ne i8 %i.ja, 3                     ; 2 uses
  %i.jc = zext i1 %i.jb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !7419
  store i64 %i.jc, ptr %i.bc, align 8, !noalias !7419
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !7419
  br i1 %i.jb, label %bb.ck, label %bb.cl

bb.ao:                                            ; preds = %tailrecurse
  %i.jd = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.je, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.jf = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.jg, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.jh = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ji, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.jj = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.jk = load ptr, ptr %i.jj, align 8, !align !32, !noundef !4 ; 2 uses
  %i.jl = icmp ne ptr %i.jk, null                 ; 2 uses
  %i.jm = zext i1 %i.jl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !7424
  store i64 %i.jm, ptr %i.bb, align 8, !noalias !7424
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !7424
  br i1 %i.jl, label %tailrecurse.backedge, label %common.ret

bb.ap:                                            ; preds = %tailrecurse
  %i.jn = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.jo, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  %i.jp = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val6 = load ptr, ptr %i.jp, align 8, !nonnull !4, !noundef !4
  %i.jq = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val7 = load i64, ptr %i.jq, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7429
  store i64 %.val7, ptr %i.r, align 8, !noalias !7429
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7429
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val6, i64 noundef %.val7, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.aq:                                            ; preds = %tailrecurse
  %i.jr = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_13ValueWithSpanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.jr, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.ar:                                            ; preds = %tailrecurse
  %i.js = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.js, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %tailrecurse.backedge.sink.split

bb.as:                                            ; preds = %tailrecurse
  %i.jt = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7438)
  %i.ju = getelementptr inbounds nuw i8, ptr %.tr, i64 88
  tail call fastcc void @_RINvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ju, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !7441
  tail call void @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_13ValueWithSpanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.jt, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !7441
  %i.jv = getelementptr inbounds nuw i8, ptr %.tr, i64 144
  %i.jw = load i8, ptr %i.jv, align 8, !range !5, !alias.scope !7438, !noalias !7442, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7444
  store i8 %i.jw, ptr %i.q, align 1, !noalias !7444
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 1) #47, !inline_history !7441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7444
end_hunk_3
begin_hunk_4_@_RINvXs9K_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_13CreateTriggerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8) #47, !noalias !9973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9990
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cp, i64 noundef %i.cr, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !9973
  br label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.j, %bb.i, %_RINvXs1i_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB7_15TriggerExecBodyNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ct = load i8, ptr %i.cs, align 8, !range !2683, !noundef !4 ; 3 uses
  %i.cu = icmp ne i8 %i.ct, 3                     ; 2 uses
  %i.cv = zext i1 %i.cu to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9995
  store i64 %i.cv, ptr %i.g, align 8, !noalias !9995
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9995
  br i1 %i.cu, label %bb.k, label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10000)
  %i.cw = icmp ne i8 %i.ct, 2                     ; 2 uses
  %i.cx = zext i1 %i.cw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10003
  store i64 %i.cx, ptr %i.f, align 8, !noalias !10003
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8) #47, !noalias !10000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10003
  br i1 %i.cw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10009
  store i8 %i.ct, ptr %i.e, align 1, !noalias !10009
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1) #47, !noalias !10000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10009
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 713
  %i.cz = load i8, ptr %i.cy, align 1, !range !137, !alias.scope !10000, !noalias !10012, !noundef !4 ; 2 uses
  %i.da = icmp ne i8 %i.cz, 2                     ; 2 uses
  %i.db = zext i1 %i.da to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10013
  store i64 %i.db, ptr %i.d, align 8, !noalias !10013
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #47, !noalias !10000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10013
  br i1 %i.da, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dc = zext nneg i8 %i.cz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10018
  store i64 %i.dc, ptr %i.c, align 8, !noalias !10018
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #47, !noalias !10000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10018
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 714
  %i.de = load i8, ptr %i.dd, align 2, !range !137, !alias.scope !10000, !noalias !10012, !noundef !4 ; 2 uses
  %i.df = icmp ne i8 %i.de, 2                     ; 2 uses
  %i.dg = zext i1 %i.df to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10023
  store i64 %i.dg, ptr %i.b, align 8, !noalias !10023
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #47, !noalias !10000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10023
  br i1 %i.df, label %bb.p, label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10028
  store i8 %i.de, ptr %i.a, align 1, !noalias !10028
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #47, !noalias !10000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10028
  br label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.p, %bb.o, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9R_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.f, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.aj, %bb.f ]  ; 17 uses
  %i.m = load i32, ptr %.tr, align 8, !range !10031, !noundef !4 ; 2 uses
  %i.n = zext nneg i32 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10032
  store i64 %i.n, ptr %i.l, align 8, !noalias !10032
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10032
  switch i32 %i.m, label %default.unreachable14 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

default.unreachable14:                            ; preds = %tailrecurse
  unreachable

bb.b:                                             ; preds = %tailrecurse
  %i.o = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !2196, !noundef !4 ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  %i.r = add i64 %i.p, -9223372036854775807
  %i.s = select i1 %i.q, i64 %i.r, i64 0          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10037
  store i64 %i.s, ptr %i.k, align 8, !noalias !10037
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10037
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.m, label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %tailrecurse
  %i.u = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !2196, !noundef !4 ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  %i.x = add i64 %i.v, -9223372036854775807
  %i.y = select i1 %i.w, i64 %i.x, i64 0          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10042
  store i64 %i.y, ptr %i.j, align 8, !noalias !10042
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10042
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.n, label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %tailrecurse
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10047
  store i64 %i.ad, ptr %i.i, align 8, !noalias !10047
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10047
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %tailrecurse
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10052
  store i64 %i.ah, ptr %i.h, align 8, !noalias !10052
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10052
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.af, i64 noundef %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %tailrecurse
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4
  br label %tailrecurse

bb.g:                                             ; preds = %tailrecurse
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10057
  store i64 %i.an, ptr %i.g, align 8, !noalias !10057
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10057
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.al, i64 noundef %i.an, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %tailrecurse
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs9R_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aq, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10062)
  %i.ar = load i32, ptr %i.ao, align 4, !range !10031, !alias.scope !10062, !noalias !10065, !noundef !4 ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10067
  store i64 %i.as, ptr %i.f, align 8, !noalias !10067
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8) #47, !noalias !10062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10067
  switch i32 %i.ar, label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit [
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !10062, !noalias !10065, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10072
  store i32 %i.au, ptr %i.e, align 4, !noalias !10072
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 4) #47, !noalias !10062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10072
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !alias.scope !10062, !noalias !10065, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10075
  store i32 %i.aw, ptr %i.d, align 4, !noalias !10075
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 4) #47, !noalias !10062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10075
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !alias.scope !10062, !noalias !10065, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10078
  store i32 %i.ay, ptr %i.c, align 4, !noalias !10078
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4) #47, !noalias !10062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10078
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.l:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !alias.scope !10062, !noalias !10065, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10081
  store i32 %i.ba, ptr %i.b, align 4, !noalias !10081
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4) #47, !noalias !10062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10081
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !alias.scope !10062, !noalias !10065, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10084
  store i32 %i.bc, ptr %i.a, align 4, !noalias !10084
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4) #47, !noalias !10062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10084
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.m:                                             ; preds = %bb.b
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.c, %bb.n, %bb.b, %bb.m, %bb.g, %bb.e, %bb.d
  ret void

bb.n:                                             ; preds = %bb.c
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11DropTriggerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i8, ptr %i.g, align 8, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10087
  store i8 %i.h, ptr %i.f, align 1, !noalias !10087
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10087
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10090
  store i64 %.val3, ptr %i.e, align 8, !noalias !10090
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10090
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2, i64 noundef %.val3, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !range !133, !noundef !4
  %i.m = icmp ne i64 %i.l, -9223372036854775808   ; 2 uses
  %i.n = zext i1 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10099
  store i64 %i.n, ptr %i.d, align 8, !noalias !10099
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10099
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1 = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10104
  store i64 %.val1, ptr %i.c, align 8, !noalias !10104
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10104
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.r = load i8, ptr %i.q, align 1, !range !3178, !noundef !4 ; 2 uses
  %i.s = icmp ne i8 %i.r, 5                       ; 2 uses
  %i.t = zext i1 %i.s to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10113
  store i64 %i.t, ptr %i.b, align 8, !noalias !10113
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10113
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = zext nneg i8 %i.r to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10118
  store i64 %i.u, ptr %i.a, align 8, !noalias !10118
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10118
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9V_NtCs4lawaffTVVK_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !6540, !noundef !4
  %i.g = icmp ne i64 %i.f, 69                     ; 2 uses
  %i.h = zext i1 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10125
  store i64 %i.h, ptr %i.e, align 8, !noalias !10125
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10125
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.j = load i8, ptr %i.i, align 8, !range !9767, !noundef !4
  %i.k = icmp ne i8 %i.j, 103
  %i.l = zext i1 %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10130
  store i64 %i.l, ptr %i.d, align 8, !noalias !10130
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10130
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10135)
  %i.n = load i64, ptr %i.m, align 8, !range !133, !alias.scope !10135, !noalias !10138, !noundef !4
  %i.o = icmp ne i64 %i.n, -9223372036854775808   ; 2 uses
  %i.p = zext i1 %i.o to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10140
  store i64 %i.p, ptr %i.c, align 8, !noalias !10140
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #47, !noalias !10135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10140
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !10135, !noalias !10138, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.val1.i = load i64, ptr %i.r, align 8, !alias.scope !10135, !noalias !10138, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10145
  store i64 %.val1.i, ptr %i.b, align 8, !noalias !10145
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #47, !noalias !10135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10145
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !10135
  br label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !10135, !noalias !10138, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !10135, !noalias !10138, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10152
  store i64 %i.v, ptr %i.a, align 8, !noalias !10152
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #47, !noalias !10135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10152
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.t, i64 noundef %i.v, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !10135
  br label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_17StageParamsObjectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8, !range !133, !noundef !4
  %i.m = icmp ne i64 %i.l, -9223372036854775808   ; 2 uses
  %i.n = zext i1 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10157
  store i64 %i.n, ptr %i.j, align 8, !noalias !10157
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10157
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load i64, ptr %i.q, align 8, !noundef !4
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10162
  store i8 -1, ptr %i.i, align 1, !noalias !10162
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1) #47, !noalias !10169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10162
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10170)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_4
begin_hunk_5_@_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a

bb.j:                                             ; preds = %_RINvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.dw, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !10690
  br label %_RINvXs2O_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_4JoinNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

_RINvXs2O_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_4JoinNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, %bb.j
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr, i64 178
  %i.eq = load i8, ptr %i.ep, align 2, !range !5426, !alias.scope !10685, !noalias !10688, !noundef !4
  %i.er = zext nneg i8 %i.eq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !10702
  store i64 %i.er, ptr %i.ah, align 8, !noalias !10702
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !10702
  %i.es = getelementptr inbounds nuw i8, ptr %.tr, i64 176
  %i.et = load i8, ptr %i.es, align 16, !range !5, !alias.scope !10685, !noalias !10688, !noundef !4
  %i.eu = zext nneg i8 %i.et to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !10707
  store i64 %i.eu, ptr %i.ai, align 8, !noalias !10707
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !10707
  %i.ev = getelementptr inbounds nuw i8, ptr %.tr, i64 168
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !10685, !noalias !10688, !nonnull !4, !noundef !4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ex, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !10690
  %i.ey = getelementptr inbounds nuw i8, ptr %.tr, i64 177
  %i.ez = load i8, ptr %i.ey, align 1, !range !5, !alias.scope !10685, !noalias !10688, !noundef !4
  %i.fa = zext nneg i8 %i.ez to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !10712
  store i64 %i.fa, ptr %i.aj, align 8, !noalias !10712
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !10712
  br label %common.ret

bb.k:                                             ; preds = %tailrecurse
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10717)
  %i.fc = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !10717, !noalias !10720, !nonnull !4, !noundef !4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.fe, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10717, !inline_history !10722
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10723)
  %i.ff = load i64, ptr %i.fb, align 8, !range !5285, !alias.scope !10723, !noalias !10726, !noundef !4 ; 3 uses
  %i.fg = icmp ne i64 %i.ff, -9223372036854775807
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = xor i64 %i.ff, -9223372036854775808
  %i.fi = icmp slt i64 %i.ff, 0
  %i.fj = select i1 %i.fi, i64 %i.fh, i64 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !10728
  store i64 %i.fj, ptr %i.ae, align 8, !noalias !10728
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 8) #47, !noalias !10723, !inline_history !10733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !10728
  switch i64 %i.fj, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.fk = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !10723, !noalias !10726, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !10734
  store i64 %i.fl, ptr %i.ad, align 8, !noalias !10734
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 8) #47, !noalias !10723, !inline_history !10733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !10734
  br label %common.ret

bb.n:                                             ; preds = %bb.k
  %i.fm = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !10723, !noalias !10726, !nonnull !4, !noundef !4 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !10723, !noalias !10726, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !10737
  store i64 %i.fp, ptr %i.ac, align 8, !noalias !10737
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 8) #47, !noalias !10723, !inline_history !10733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !10737
  %.idx82 = mul nuw nsw i64 %i.fp, 112
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx82
  %i.fr = icmp eq i64 %i.fp, 0
  br i1 %i.fr, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.n, %.lr.ph68
  %.sroa.0.0.i.i1467 = phi ptr [ %i.fs, %.lr.ph68 ], [ %i.fn, %bb.n ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i1467, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i.i1467, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10723, !inline_history !10742
  %i.ft = icmp eq ptr %i.fs, %i.fq
  br i1 %i.ft, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph68

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.lr.ph68, %bb.n
  %i.fu = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !10723, !noalias !10726, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !10743
  store i64 %i.fv, ptr %i.ab, align 8, !noalias !10743
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 8) #47, !noalias !10723, !inline_history !10733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10743
  br label %common.ret

bb.o:                                             ; preds = %bb.k
  %i.fw = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !10723, !noalias !10726, !nonnull !4, !noundef !4 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !10723, !noalias !10726, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !10746
  store i64 %i.fz, ptr %i.aa, align 8, !noalias !10746
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #47, !noalias !10723, !inline_history !10733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10746
  %.idx81 = mul nuw nsw i64 %i.fz, 112
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.idx81
  %i.gb = icmp eq i64 %i.fz, 0
  br i1 %i.gb, label %common.ret, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.o, %.lr.ph66
  %.sroa.0.0.i1.i65 = phi ptr [ %i.gc, %.lr.ph66 ], [ %i.fx, %bb.o ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i65, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i1.i65, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10723, !inline_history !10742
  %i.gd = icmp eq ptr %i.gc, %i.ga
  br i1 %i.gd, label %common.ret, label %.lr.ph66

bb.p:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10751)
  %i.ge = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !10751, !noalias !10754, !nonnull !4, !noundef !4
  %i.gg = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !10751, !noalias !10754, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !10756
  store i64 %i.gh, ptr %i.au, align 8, !noalias !10756
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef 8) #47, !noalias !10751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !10756
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.gf, i64 noundef %i.gh, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !10751
  %i.gi = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !alias.scope !10751, !noalias !10754, !nonnull !4, !noundef !4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gk, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !10751
  br label %common.ret

bb.q:                                             ; preds = %tailrecurse
  %i.gl = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @_RINvXsh_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.gl, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.r:                                             ; preds = %tailrecurse
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %.val = load ptr, ptr %i.gm, align 8            ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val1 = load i8, ptr %i.gn, align 8, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !10761
  store i8 %.val1, ptr %i.at, align 1, !noalias !10761
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !10761
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.go = getelementptr inbounds nuw i8, ptr %.val, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.go, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.s:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10766)
  %i.gp = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !10766, !noalias !10769, !nonnull !4, !noundef !4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.gr, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10766, !inline_history !5978
  %i.gs = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !alias.scope !10766, !noalias !10769, !nonnull !4, !noundef !4 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.gv = load i64, ptr %i.gu, align 8, !alias.scope !10766, !noalias !10769, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !10771
  store i64 %i.gv, ptr %i.as, align 8, !noalias !10771
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef 8) #47, !noalias !10766, !inline_history !5978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !10771
  %.idx = mul nuw nsw i64 %i.gv, 112
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx
  %i.gx = icmp eq i64 %i.gv, 0
  br i1 %i.gx, label %common.ret, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %.lr.ph
  %.sroa.0.0.i.i64 = phi ptr [ %i.gy, %.lr.ph ], [ %i.gt, %bb.s ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i64, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i.i64, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10766, !inline_history !10776
  %i.gz = icmp eq ptr %i.gy, %i.gw
  br i1 %i.gz, label %common.ret, label %.lr.ph

bb.t:                                             ; preds = %tailrecurse
  %i.ha = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10777)
  %i.hb = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.hc = load ptr, ptr %i.hb, align 8, !alias.scope !10777, !noalias !10780, !nonnull !4, !noundef !4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.hd, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10777, !inline_history !10782
  tail call fastcc void @_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ha, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !10782
  %i.he = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !10777, !noalias !10780, !nonnull !4, !noundef !4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hg, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !10777, !inline_history !10782
  br label %common.ret

bb.u:                                             ; preds = %tailrecurse
  %i.hh = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10783)
  %i.hi = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !10783, !noalias !10786, !align !2181, !noundef !4 ; 2 uses
  %i.hk = icmp ne ptr %i.hj, null                 ; 2 uses
  %i.hl = zext i1 %i.hk to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !10788
  store i64 %i.hl, ptr %i.y, align 8, !noalias !10788
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #47, !noalias !10783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10788
  br i1 %i.hk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.hj, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10783, !inline_history !10793
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.hm = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !10783, !noalias !10786, !align !2181, !noundef !4 ; 2 uses
  %i.ho = icmp ne ptr %i.hn, null                 ; 2 uses
  %i.hp = zext i1 %i.ho to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10794
  store i64 %i.hp, ptr %i.z, align 8, !noalias !10794
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 8) #47, !noalias !10783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10794
  br i1 %i.ho, label %bb.x, label %tailrecurse.backedge

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.hn, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10783, !inline_history !10793
  br label %tailrecurse.backedge

bb.y:                                             ; preds = %tailrecurse
  %i.hq = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10799)
  %i.hr = load i64, ptr %i.hq, align 8, !range !4752, !alias.scope !10799, !noalias !10802, !noundef !4 ; 3 uses
  %i.hs = icmp ne i64 %i.hr, -9223372036854775804
  tail call void @llvm.assume(i1 %i.hs)
  %i.ht = xor i64 %i.hr, -9223372036854775808
  %i.hu = icmp slt i64 %i.hr, 0
  %i.hv = select i1 %i.hu, i64 %i.ht, i64 4       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !10804
  store i64 %i.hv, ptr %i.x, align 8, !noalias !10804
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 8) #47, !noalias !10799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !10804
  switch i64 %i.hv, label %bb.z [
    i64 0, label %bb.aa
    i64 1, label %bb.ab
    i64 2, label %bb.ac
    i64 3, label %bb.ad
    i64 4, label %bb.ae
    i64 5, label %bb.af
    i64 6, label %bb.ag
  ]

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.hw = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val.i = load i8, ptr %i.hw, align 1, !range !5, !alias.scope !10799, !noalias !10802, !noundef !4
  %i.hx = getelementptr inbounds nuw i8, ptr %.tr, i64 17
  %.val1.i = load i8, ptr %i.hx, align 1, !alias.scope !10799, !noalias !10802
  tail call fastcc void @_RINvXsx_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_16TransactionStartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(i8 %.val.i, i8 %.val1.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10799, !inline_history !10809
  br label %common.ret

bb.ab:                                            ; preds = %bb.y
  %i.hy = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val2.i = load i8, ptr %i.hy, align 1, !range !5, !alias.scope !10799, !noalias !10802, !noundef !4
  %i.hz = getelementptr inbounds nuw i8, ptr %.tr, i64 17
  %.val3.i = load i8, ptr %i.hz, align 1, !alias.scope !10799, !noalias !10802
  tail call fastcc void @_RINvXsE_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_14TransactionEndNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(i8 %.val2.i, i8 %.val3.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10799, !inline_history !10809
  br label %common.ret

bb.ac:                                            ; preds = %bb.y
  %i.ia = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXsL_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_11SetVariableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ia, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !10809
  br label %common.ret

bb.ad:                                            ; preds = %bb.y
  %i.ib = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val4.i = load ptr, ptr %i.ib, align 8, !alias.scope !10799, !noalias !10802, !nonnull !4, !noundef !4
  %i.ic = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.val5.i = load i64, ptr %i.ic, align 8, !alias.scope !10799, !noalias !10802, !noundef !4
  tail call fastcc void @_RINvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_13ResetVariableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr %.val4.i, i64 %.val5.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10799, !inline_history !10809
  br label %common.ret

bb.ae:                                            ; preds = %bb.y
  tail call fastcc void @_RINvXsZ_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_7PrepareNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hq, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !10809
  br label %common.ret

bb.af:                                            ; preds = %bb.y
  %i.id = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXs16_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_7ExecuteNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.id, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !10809
  br label %common.ret

bb.ag:                                            ; preds = %bb.y
  %i.ie = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val6.i = load ptr, ptr %i.ie, align 8, !alias.scope !10799, !noalias !10802, !nonnull !4, !noundef !4
  %i.if = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.val7.i = load i64, ptr %i.if, align 8, !alias.scope !10799, !noalias !10802, !noundef !4
  tail call fastcc void @_RINvXs1d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_10DeallocateNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr %.val6.i, i64 %.val7.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10799, !inline_history !10809
  br label %common.ret

bb.ah:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10810)
  %i.ig = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !10810, !noalias !10813, !nonnull !4, !noundef !4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ii, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !10810
  %i.ij = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !alias.scope !10810, !noalias !10813, !nonnull !4, !noundef !4
  %i.il = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.im = load i64, ptr %i.il, align 8, !alias.scope !10810, !noalias !10813, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !10815
  store i64 %i.im, ptr %i.ar, align 8, !noalias !10815
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef 8) #47, !noalias !10810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !10815
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ik, i64 noundef %i.im, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !10810
  br label %common.ret

bb.ai:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10820)
  %i.in = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.io = load i8, ptr %i.in, align 8, !range !5, !alias.scope !10820, !noalias !10823, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !10825
  store i8 %i.io, ptr %i.t, align 1, !noalias !10825
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 1) #47, !noalias !10820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10825
  %i.ip = getelementptr inbounds nuw i8, ptr %.tr, i64 50
  %i.iq = load i8, ptr %i.ip, align 2, !range !2683, !alias.scope !10820, !noalias !10823, !noundef !4
  %i.ir = zext nneg i8 %i.iq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !10828
  store i64 %i.ir, ptr %i.u, align 8, !noalias !10828
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 8) #47, !noalias !10820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10828
  %i.is = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !alias.scope !10820, !noalias !10823, !nonnull !4, !noundef !4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.iu, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10820, !inline_history !10833
  %i.iv = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !alias.scope !10820, !noalias !10823, !nonnull !4, !noundef !4
  %i.ix = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.iy = load i64, ptr %i.ix, align 8, !alias.scope !10820, !noalias !10823, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !10834
  store i64 %i.iy, ptr %i.v, align 8, !noalias !10834
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8) #47, !noalias !10820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !10834
  tail call void @_RINvYNtNtCsjhHCjzi9uUI_17datafusion_common7display15StringifiedPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iw, i64 noundef %i.iy, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !10820, !inline_history !10833
  %i.iz = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !10820, !noalias !10823, !nonnull !4, !noundef !4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.jb, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !10820, !inline_history !10833
  %i.jc = getelementptr inbounds nuw i8, ptr %.tr, i64 49
  %i.jd = load i8, ptr %i.jc, align 1, !range !5, !alias.scope !10820, !noalias !10823, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !10839
  store i8 %i.jd, ptr %i.w, align 1, !noalias !10839
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 1) #47, !noalias !10820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !10839
  br label %common.ret

bb.aj:                                            ; preds = %tailrecurse
  %i.je = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10842)
  %i.jf = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.jg = load i8, ptr %i.jf, align 8, !range !5, !alias.scope !10842, !noalias !10845, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !10847
  store i8 %i.jg, ptr %i.s, align 1, !noalias !10847
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 1) #47, !noalias !10842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10847
  %i.jh = load ptr, ptr %i.je, align 8, !alias.scope !10842, !noalias !10845, !nonnull !4, !noundef !4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ji, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10842, !inline_history !10850
  %i.jj = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8, !alias.scope !10842, !noalias !10845, !nonnull !4, !noundef !4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.jl, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !10842, !inline_history !10850
  br label %common.ret

bb.ak:                                            ; preds = %tailrecurse
  %i.jm = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %.val2 = load ptr, ptr %i.jm, align 8, !nonnull !4, !noundef !4
  %i.jn = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val3 = load ptr, ptr %i.jn, align 8, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.jp = load i64, ptr %i.jo, align 8, !range !90, !invariant.load !4, !noalias !10851
  %i.jq = add nsw i64 %i.jp, -1
  %i.jr = and i64 %i.jq, -16
  %i.js = getelementptr inbounds nuw i8, ptr %.val2, i64 %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = getelementptr inbounds nuw i8, ptr %.val3, i64 112
  %i.jv = load ptr, ptr %i.ju, align 8, !invariant.load !4, !noalias !10851, !nonnull !4
  tail call void %i.jv(ptr noundef nonnull %i.jt, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @67) #47, !inline_history !10854
  br label %common.ret

bb.al:                                            ; preds = %tailrecurse
  %i.jw = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10855)
  %i.jx = load i64, ptr %i.jw, align 8, !range !133, !alias.scope !10855, !noalias !10858, !noundef !4
  %i.jy = icmp ne i64 %i.jx, -9223372036854775808 ; 2 uses
  %i.jz = zext i1 %i.jy to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10860
  store i64 %i.jz, ptr %i.r, align 8, !noalias !10860
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 8) #47, !noalias !10855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10860
  br i1 %i.jy, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10865)
  %i.ka = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8, !alias.scope !10865, !noalias !10868, !nonnull !4, !noundef !4 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.kd = load i64, ptr %i.kc, align 8, !alias.scope !10865, !noalias !10868, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10870
  store i64 %i.kd, ptr %i.f, align 8, !noalias !10870
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8) #47, !noalias !10865, !inline_history !10875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10870
  %.idx.i = mul nuw nsw i64 %i.kd, 112
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 %.idx.i
  %i.kf = icmp eq i64 %i.kd, 0
  br i1 %i.kf, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i185, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.am, %.lr.ph.i
  %.sroa.0.0.i4.i = phi ptr [ %i.kg, %.lr.ph.i ], [ %i.kb, %bb.am ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i4.i, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i4.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10865, !inline_history !10876
  %i.kh = icmp eq ptr %i.kg, %i.ke
  br i1 %i.kh, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i185, label %.lr.ph.i

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i185: ; preds = %.lr.ph.i, %bb.am
  %i.ki = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.kj = load ptr, ptr %i.ki, align 8, !alias.scope !10865, !noalias !10868, !nonnull !4, !noundef !4 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.kl = load i64, ptr %i.kk, align 8, !alias.scope !10865, !noalias !10868, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10877
  store i64 %i.kl, ptr %i.e, align 8, !noalias !10877
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #47, !noalias !10865, !inline_history !10875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10877
  %.idx9.i = mul nuw nsw i64 %i.kl, 112
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 %.idx9.i
  %i.kn = icmp eq i64 %i.kl, 0
  br i1 %i.kn, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2.i, label %.lr.ph6.i

.lr.ph6.i:                                        ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i185, %.lr.ph6.i
  %.sroa.0.0.i15.i = phi ptr [ %i.ko, %.lr.ph6.i ], [ %i.kj, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i185 ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i15.i, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i15.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10865, !inline_history !10876
  %i.kp = icmp eq ptr %i.ko, %i.km
  br i1 %i.kp, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2.i, label %.lr.ph6.i

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2.i: ; preds = %.lr.ph6.i, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i185
  %i.kq = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.kr = load i64, ptr %i.kq, align 8, !range !133, !alias.scope !10865, !noalias !10868, !noundef !4
  %i.ks = icmp ne i64 %i.kr, -9223372036854775808 ; 2 uses
  %i.kt = zext i1 %i.ks to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10882
  store i64 %i.kt, ptr %i.d, align 8, !noalias !10882
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #47, !noalias !10865, !inline_history !10875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10882
  br i1 %i.ks, label %bb.an, label %_RINvXs2v_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_10DistinctOnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.an:                                            ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2.i
  %i.ku = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.kv = load ptr, ptr %i.ku, align 8, !alias.scope !10865, !noalias !10868, !nonnull !4, !noundef !4 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.kx = load i64, ptr %i.kw, align 8, !alias.scope !10865, !noalias !10868, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10887
  store i64 %i.kx, ptr %i.c, align 8, !noalias !10887
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #47, !noalias !10865, !inline_history !10875
end_hunk_5
begin_hunk_6_@_RINvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a

bb.ck:                                            ; preds = %bb.ai
  %i.lq = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.lr = load i64, ptr %i.lq, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !13870
  store i64 %i.lr, ptr %i.v, align 8, !noalias !13870
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !13870
  br label %.loopexit

bb.cl:                                            ; preds = %bb.aj
  %i.ls = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.lt = load i64, ptr %i.ls, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !13873
  store i64 %i.lt, ptr %i.u, align 8, !noalias !13873
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !13873
  br label %.loopexit

bb.cm:                                            ; preds = %bb.ak
  %i.lu = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.lv = load i64, ptr %i.lu, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !13876
  store i64 %i.lv, ptr %i.t, align 8, !noalias !13876
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !13876
  br label %.loopexit

bb.cn:                                            ; preds = %bb.al
  %i.lw = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.lx = load i64, ptr %i.lw, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !13879
  store i64 %i.lx, ptr %i.s, align 8, !noalias !13879
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !13879
  br label %.loopexit

bb.co:                                            ; preds = %bb.am
  %i.ly = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.lz = load i64, ptr %i.ly, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !13882
  store i64 %i.lz, ptr %i.r, align 8, !noalias !13882
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !13882
  br label %.loopexit

bb.cp:                                            ; preds = %bb.an
  %i.ma = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.mb = load i64, ptr %i.ma, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !13885
  store i64 %i.mb, ptr %i.q, align 8, !noalias !13885
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !13885
  br label %.loopexit

bb.cq:                                            ; preds = %bb.ao
  %i.mc = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.md = load i64, ptr %i.mc, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !13888
  store i64 %i.md, ptr %i.p, align 8, !noalias !13888
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13888
  br label %.loopexit

bb.cr:                                            ; preds = %bb.ap
  %i.me = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.mf = load i64, ptr %i.me, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13891
  store i64 %i.mf, ptr %i.o, align 8, !noalias !13891
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13891
  br label %.loopexit

bb.cs:                                            ; preds = %bb.aq
  %i.mg = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.mh = load i64, ptr %i.mg, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !13894
  store i64 %i.mh, ptr %i.n, align 8, !noalias !13894
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13894
  br label %.loopexit

bb.ct:                                            ; preds = %bb.at
  %i.mi = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.mj = load i64, ptr %i.mi, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13897
  store i64 %i.mj, ptr %i.m, align 8, !noalias !13897
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13897
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.at
  %.val9 = load i8, ptr %i.hi, align 1, !range !2683, !noundef !4
  %i.mk = zext nneg i8 %.val9 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13900
  store i64 %i.mk, ptr %i.l, align 8, !noalias !13900
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13900
  br label %.loopexit

bb.cv:                                            ; preds = %bb.au
  %i.ml = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.mm = load i64, ptr %i.ml, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13907
  store i64 %i.mm, ptr %i.k, align 8, !noalias !13907
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13907
  br label %.loopexit

bb.cw:                                            ; preds = %bb.av
  %i.mn = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.mo = load ptr, ptr %i.mn, align 8, !nonnull !4, !noundef !4
  %i.mp = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.mq = load i64, ptr %i.mp, align 8, !noundef !4
  tail call void @_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mo, i64 noundef %i.mq) #47
  br label %.loopexit

bb.cx:                                            ; preds = %bb.aw
  %i.mr = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ms = load i64, ptr %i.mr, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13910
  store i64 %i.ms, ptr %i.j, align 8, !noalias !13910
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13910
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.aw
  %.val8 = load i8, ptr %i.hv, align 1, !range !2683, !noundef !4
  %i.mt = zext nneg i8 %.val8 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13913
  store i64 %i.mt, ptr %i.i, align 8, !noalias !13913
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13913
  br label %.loopexit

bb.cz:                                            ; preds = %bb.ax
  %i.mu = zext nneg i8 %i.ia to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13920
  store i64 %i.mu, ptr %i.h, align 8, !noalias !13920
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13920
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.ax
  %i.mv = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.mw = load i64, ptr %i.mv, align 8, !range !3, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13927
  store i64 %i.mw, ptr %i.g, align 8, !noalias !13927
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13927
  %i.mx = trunc nuw i64 %i.mw to i1
  br i1 %i.mx, label %bb.db, label %.loopexit

bb.db:                                            ; preds = %bb.da
  %i.my = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.mz = load i64, ptr %i.my, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13932
  store i64 %i.mz, ptr %i.f, align 8, !noalias !13932
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13932
  br label %.loopexit

bb.dc:                                            ; preds = %bb.ay
  %i.na = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.nb = load i64, ptr %i.na, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13935
  store i64 %i.nb, ptr %i.e, align 8, !noalias !13935
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13935
  br label %.loopexit

bb.dd:                                            ; preds = %bb.ba
  %i.nc = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.nd = load i64, ptr %i.nc, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13938
  store i64 %i.nd, ptr %i.d, align 8, !noalias !13938
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13938
  br label %.loopexit

bb.de:                                            ; preds = %bb.bb
  %i.ne = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.nf = load i64, ptr %i.ne, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13941
  store i64 %i.nf, ptr %i.c, align 8, !noalias !13941
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13941
  br label %.loopexit

bb.df:                                            ; preds = %bb.bc
  %i.ng = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13944
  store i64 %i.nh, ptr %i.b, align 8, !noalias !13944
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13944
  br label %.loopexit

bb.dg:                                            ; preds = %bb.bi
  %i.ni = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.nj = load i8, ptr %i.ni, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13947
  store i8 %i.nj, ptr %i.a, align 1, !noalias !13947
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13947
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsoU_NtCs4lawaffTVVK_9sqlparser3astNtB7_19ShowStatementFilterNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !13950, !noundef !4 ; 3 uses
  %i.f = icmp ne i64 %i.e, 71
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -69
  %i.h = icmp samesign ugt i64 %i.e, 68
  %i.i = select i1 %i.h, i64 %i.g, i64 2          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13951
  store i64 %i.i, ptr %i.d, align 8, !noalias !13951
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13951
  switch i64 %i.i, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !4
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13956
  store i8 -1, ptr %i.c, align 1, !noalias !13956
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1) #47, !noalias !13963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13956
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !4
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13964
  store i8 -1, ptr %i.b, align 1, !noalias !13964
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #47, !noalias !13971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13964
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !noundef !4
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13972
  store i8 -1, ptr %i.a, align 1, !noalias !13972
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #47, !noalias !13979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13972
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXspC_NtCs4lawaffTVVK_9sqlparser3astNtB7_10CopySourceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !133, !noundef !4
  %i.e = icmp eq i64 %i.d, -9223372036854775808   ; 2 uses
  %i.f = zext i1 %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13980
  store i64 %i.f, ptr %i.c, align 8, !noalias !13980
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13980
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.h, ptr noalias noundef align 8 dereferenceable(72) %1) #47
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.i, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13985
  store i64 %.val1, ptr %i.b, align 8, !noalias !13985
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13985
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13994
  store i64 %i.m, ptr %i.a, align 8, !noalias !13994
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13994
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.k, i64 noundef %i.m, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvXspM_NtCs4lawaffTVVK_9sqlparser3astNtB7_10CopyTargetNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !2165, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13999
  store i64 %i.d, ptr %i.c, align 8, !noalias !13999
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13999
  switch i64 %i.d, label %bb.b [
    i64 2, label %bb.c
    i64 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14004
  store i8 -1, ptr %i.b, align 1, !noalias !14004
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #47, !noalias !14011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14004
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14012
  store i8 -1, ptr %i.a, align 1, !noalias !14012
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #47, !noalias !14019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14012
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXsp_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_8DataTypeNtNtB8_7visitor8VisitMut5visitINtB12_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1V_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !2265, !noundef !4
  switch i8 %i.a, label %default.unreachable201 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.bc
    i8 9, label %bb.j
    i8 10, label %bb.k
    i8 11, label %bb.l
    i8 12, label %bb.m
    i8 13, label %bb.n
    i8 14, label %bb.o
    i8 15, label %bb.bc
    i8 16, label %bb.bc
    i8 17, label %bb.bc
    i8 18, label %bb.p
    i8 19, label %bb.bc
    i8 20, label %bb.bc
    i8 21, label %bb.bc
    i8 22, label %bb.bc
    i8 23, label %bb.bc
    i8 24, label %bb.bc
    i8 25, label %bb.bc
    i8 26, label %bb.bc
    i8 27, label %bb.bc
    i8 28, label %bb.q
end_hunk_6
begin_hunk_7_@_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake:bb.a
  %i.j = icmp eq i32 %i.x, 1114112
  br i1 %i.j, label %bb.j, label %_RNvXs1h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.l = load i64, ptr %i.k, align 16, !alias.scope !15805, !noalias !15808, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.n = load i64, ptr %i.m, align 16, !alias.scope !15808, !noalias !15805, !noundef !4
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.g, label %_RNvXs1h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !15808, !noalias !15805, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !15805, !noalias !15808, !nonnull !4, !noundef !4
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.s, ptr nonnull %i.q, i64 %i.l), !noalias !15810, !inline_history !15811
  %i.t = icmp eq i32 %bcmp.i, 0
  br i1 %i.t, label %bb.h, label %_RNvXs1h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.v = load i32, ptr %i.u, align 8, !range !5453, !alias.scope !15805, !noalias !15808, !noundef !4 ; 2 uses
  %.not4.i = icmp eq i32 %i.v, 1114112
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.x = load i32, ptr %i.w, align 8, !range !5453, !alias.scope !15808, !noalias !15805, !noundef !4 ; 2 uses
  br i1 %.not4.i, label %bb.e, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.j, label %_RNvXs1h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.ab = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa) #47, !inline_history !15811
  br i1 %i.ab, label %bb.k, label %_RNvXs1h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.c, align 16, !range !4407, !alias.scope !15805, !noalias !15808, !noundef !4
  %.not6.i = icmp eq i64 %i.ac, 37                ; 2 uses
  %i.ad = load i64, ptr %i.d, align 16, !range !4407, !alias.scope !15808, !noalias !15805, !noundef !4
  %i.ae = icmp eq i64 %i.ad, 37                   ; 2 uses
  %brmerge.i = or i1 %.not6.i, %i.ae
  br i1 %brmerge.i, label %_RNvXs1h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(208) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(208) %i.d) #50, !inline_history !15811
  br i1 %i.af, label %bb.b, label %_RNvXs1h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs1h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.k
  %.mux.i = and i1 %.not6.i, %i.ae
  br i1 %.mux.i, label %bb.b, label %_RNvXs1h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs1h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.b, %_RNvXs1h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.e, %bb.d, %bb.j, %bb.f, %bb.g, %bb.i, %bb.c, %bb.l, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.l ], [ false, %bb.c ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.d ], [ false, %bb.e ], [ false, %_RNvXs1h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [744 x i8], ptr %0, i64 %.sroa.01.05
  %i.c = getelementptr inbounds nuw [744 x i8], ptr %1, i64 %.sroa.01.05
  %i.d = tail call fastcc noundef zeroext i1 @_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(744) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(744) %i.c) #47 ; 2 uses
  %i.e = add nuw i64 %.sroa.01.05, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.e, %2
  %or.cond = select i1 %i.d, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.lcssa.ph = xor i1 %i.d, true
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.lcssa.ph, %._crit_edge.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit
  %i.b = add nuw i64 %.sroa.01.07, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.07 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %.sroa.01.07 ; 3 uses
  %i.d = getelementptr inbounds nuw [144 x i8], ptr %1, i64 %.sroa.01.07 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15815)
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val1.i = load i64, ptr %i.e, align 8, !alias.scope !15812, !noalias !15815, !noundef !4 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %.val3.i = load i64, ptr %i.f, align 8, !alias.scope !15815, !noalias !15812, !noundef !4
  %i.g = icmp eq i64 %.val1.i, %.val3.i
  br i1 %i.g, label %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %.val2.i = load ptr, ptr %i.h, align 8, !alias.scope !15815, !noalias !15812, !nonnull !4, !noundef !4
  %i.i = getelementptr i8, ptr %i.c, i64 8
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !15812, !noalias !15815, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val2.i, i64 %.val1.i), !noalias !15817
  %.not = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.l = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.j, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.k) #47, !inline_history !15818
  br i1 %i.l, label %bb.b, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.b, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ false, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBD_EINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [224 x i8], ptr %0, i64 %.sroa.01.06 ; 2 uses
  %i.d = getelementptr inbounds nuw [224 x i8], ptr %1, i64 %.sroa.01.06 ; 2 uses
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(224) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(224) %i.d) #47, !inline_history !15819
  br i1 %i.e, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.g) #47, !inline_history !15819
  br i1 %i.h, label %bb.b, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.b, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %.sroa.01.06 ; 4 uses
  %i.d = getelementptr inbounds nuw [144 x i8], ptr %1, i64 %.sroa.01.06 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15833)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.f = load i8, ptr %i.e, align 16, !range !5, !alias.scope !15835, !noalias !15836, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.h = load i8, ptr %i.g, align 16, !range !5, !alias.scope !15836, !noalias !15835, !noundef !4
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 113
  %i.k = load i8, ptr %i.j, align 1, !range !5, !alias.scope !15835, !noalias !15836, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 113
  %i.m = load i8, ptr %i.l, align 1, !range !5, !alias.scope !15836, !noalias !15835, !noundef !4
  %i.n = icmp eq i8 %i.k, %i.m
  br i1 %i.n, label %_RNvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.c
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.d) #47, !inline_history !15837
  br i1 %i.o, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.val.i = load i8, ptr %i.p, align 1, !range !5, !alias.scope !15820, !noalias !15823, !noundef !4
  %.val1.i = load i8, ptr %i.q, align 1, !range !5, !alias.scope !15823, !noalias !15820, !noundef !4
  %.not = icmp eq i8 %.val.i, %.val1.i
  br i1 %.not, label %bb.b, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.b, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %_RNvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i, %bb.c, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %bb.c ], [ false, %_RNvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i ], [ false, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCskQDtHcQtBkN_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.c = atomicrmw or ptr %i.b, i64 4 acquire, align 8 ; 3 uses
  %i.d = and i64 %i.c, 10
  %or.cond.not.i = icmp eq i64 %i.d, 8
  br i1 %or.cond.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !32, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !noundef !4
  tail call void %i.h(ptr noundef %i.j), !inline_history !15838
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = and i64 %i.c, 3
  %or.cond3.not.i = icmp eq i64 %i.k, 1
  br i1 %or.cond3.not.i, label %bb.e, label %_RNvMs4_NtNtCskQDtHcQtBkN_5tokio4sync7oneshotINtB5_5InneruE5closeCs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.d
  %i.l = atomicrmw and ptr %i.b, i64 -2 acq_rel, align 8 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @_RNvMNtNtCskQDtHcQtBkN_5tokio4sync7oneshotNtB2_4Task9drop_task(ptr noundef nonnull align 8 %i.m)
  br label %_RNvMs4_NtNtCskQDtHcQtBkN_5tokio4sync7oneshotINtB5_5InneruE5closeCs7p2uQeJxui2_9deltalake.exit

_RNvMs4_NtNtCskQDtHcQtBkN_5tokio4sync7oneshotINtB5_5InneruE5closeCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.e
  %i.n = and i64 %i.c, 2
  %.not1 = icmp eq i64 %i.n, 0
  br i1 %.not1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %_RNvMs4_NtNtCskQDtHcQtBkN_5tokio4sync7oneshotINtB5_5InneruE5closeCs7p2uQeJxui2_9deltalake.exit, %bb.a
  ret void

bb.g:                                             ; preds = %_RNvMs4_NtNtCskQDtHcQtBkN_5tokio4sync7oneshotINtB5_5InneruE5closeCs7p2uQeJxui2_9deltalake.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.o, align 1
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCsgbCypRs12E4_4pyo311conversions3std3mapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1K_ENtNtBb_10conversion12FromPyObject13extract_boundCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.518 = alloca [56 x i8], align 8          ; 7 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [56 x i8], align 8            ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 12 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noundef !4
  %i.r = tail call noundef i64 @PyType_GetFlags(ptr noundef %i.q) #41
  %i.s = and i64 %i.r, 536870912
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 -9223372036854775808, ptr %i.f, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @413, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 6, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.o, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXs9_NtCsgbCypRs12E4_4pyo33errNtB5_5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_13DowncastErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.u = tail call noundef i64 @_RNvXs_NtNtCsgbCypRs12E4_4pyo35types4dictINtNtB8_8instance5BoundNtB4_6PyDictENtB4_13PyDictMethods3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.v = tail call { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @22) ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = extractvalue { i64, i64 } %i.v, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBM_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE24with_capacity_and_hasherCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, i64 noundef %i.u, i64 noundef %i.w, i64 noundef %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvXs6_NtNtCsgbCypRs12E4_4pyo35types4dictRINtNtB9_8instance5BoundNtB5_6PyDictENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.g unwind label %bb.f

bb.d:                                             ; preds = %bb.ac, %bb.m, %bb.b
  ret void

bb.e:                                             ; preds = %bb.k, %bb.f
  %.pn40 = phi { ptr, i32 } [ %i.y, %bb.f ], [ %.pn38, %bb.k ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.ab

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.aa, %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !15839)
  call void @llvm.experimental.noalias.scope.decl(metadata !15842)
  %i.ae = invoke noundef i64 @_RNvNtNtCsgbCypRs12E4_4pyo35types4dict8dict_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.h
  %i.af = load i64, ptr %i.aa, align 8, !alias.scope !15839, !noalias !15842, !noundef !4
  %.not.i = icmp eq i64 %i.af, %i.ae
  br i1 %.not.i, label %bb.i, label %.invoke, !prof !31

bb.i:                                             ; preds = %.noexc
  %i.ag = load i64, ptr %i.ab, align 8, !alias.scope !15839, !noalias !15842, !noundef !4
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %.invoke, label %bb.j, !prof !9

.invoke:                                          ; preds = %.noexc, %bb.i
  %i.ai = phi ptr [ @163, %bb.i ], [ @166, %.noexc ]
  %i.aj = phi ptr [ @165, %bb.i ], [ @167, %.noexc ]
  store i64 -1, ptr %i.aa, align 8, !alias.scope !15839, !noalias !15842
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %i.ai, ptr noundef nonnull inttoptr (i64 81 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj) #45
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15844
  store ptr null, ptr %i.b, align 8, !noalias !15844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15844
  store ptr null, ptr %i.a, align 8, !noalias !15844
  %i.ak = load ptr, ptr %i.l, align 8, !alias.scope !15842, !noalias !15839, !nonnull !4, !noundef !4
  %i.al = call noundef i32 @PyDict_Next(ptr noundef nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #41
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.m, label %bb.l

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.body
  %.pn38 = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val49 = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  call void @_Py_DecRef(ptr noundef nonnull %.val49) #41
  br label %bb.e

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.l:                                             ; preds = %bb.j
  %i.an = load i64, ptr %i.ab, align 8, !alias.scope !15839, !noalias !15842, !noundef !4
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr %i.ab, align 8, !alias.scope !15839, !noalias !15842
  %i.ap = load ptr, ptr %i.b, align 8, !noalias !15844, !nonnull !4, !noundef !4 ; 5 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.ap) #41
  %i.aq = load ptr, ptr %i.a, align 8, !noalias !15844, !nonnull !4, !noundef !4 ; 5 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.aq) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
end_hunk_7
begin_hunk_8_@_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !4
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !noundef !4
  %i.cv = icmp eq i8 %i.cs, %i.cu
  br i1 %i.cv, label %bb.aj, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !range !5, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !range !5, !noundef !4
  %i.da = icmp eq i8 %i.cx, %i.cz
  br i1 %i.da, label %bb.ak, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.df = icmp eq ptr %i.dc, %i.de
  br i1 %i.df, label %bb.an, label %bb.am

bb.w:                                             ; preds = %bb.b
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.dh, null                 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !noundef !4 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null                 ; 2 uses
  %brmerge = or i1 %.not, %i.dk
  %.mux = and i1 %.not, %i.dk
  br i1 %brmerge, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.dn = load i64, ptr %i.dl, align 8, !noundef !4 ; 2 uses
  %i.do = load i64, ptr %i.dm, align 8, !noundef !4
  %i.dp = icmp eq i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.y, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.dr, ptr nonnull %i.dq, i64 %i.dn)
  %i.ds = icmp eq i32 %bcmp, 0
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.dv = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.du)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.dy = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dx)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.j
  %i.dz = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ed = icmp eq ptr %i.ea, %i.ec
  br i1 %i.ed, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ef)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.k
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.ej = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ei)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.l
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.em = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ek, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.el)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.en = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !range !5, !noundef !4
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !range !5, !noundef !4
  %i.er = icmp eq i8 %i.eo, %i.eq
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ew = load i8, ptr %i.et, align 8, !range !3186, !noundef !4 ; 2 uses
  %i.ex = load i8, ptr %i.ev, align 8, !range !3186, !noundef !4
  %i.ey = icmp eq i8 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.q
  %i.ez = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fa = load i8, ptr %i.ez, align 2, !noundef !4
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fc = load i8, ptr %i.fb, align 2, !noundef !4
  %i.fd = icmp eq i8 %i.fa, %i.fc
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.r
  %i.fe = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.ff = load i8, ptr %i.fe, align 2, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fh = load i8, ptr %i.fg, align 2, !noundef !4
  %i.fi = icmp eq i8 %i.ff, %i.fh
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.s
  %i.fj = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fk = load i8, ptr %i.fj, align 2, !noundef !4
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fm = load i8, ptr %i.fl, align 2, !noundef !4
  %i.fn = icmp eq i8 %i.fk, %i.fm
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fp = load i8, ptr %i.fo, align 2, !noundef !4
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fr = load i8, ptr %i.fq, align 2, !noundef !4
  %i.fs = icmp eq i8 %i.fp, %i.fr
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.u
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.fx = icmp eq ptr %i.fu, %i.fw
  br i1 %i.fx, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ga = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fz)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.v
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.gd = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gc)
  br i1 %i.gd, label %bb.an, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.v, %bb.am
  %i.ge = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.gi = icmp eq ptr %i.gf, %i.gh
  br i1 %i.gi, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gl = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gk)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCsbvkFyIu7lgC_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @498, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @497)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENtNtB7_4wake4Wake11wake_by_refCs7p2uQeJxui2_9deltalake(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 8 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef 1000000000) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !range !137, !noundef !4
  %i.i = icmp eq i8 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.g, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = invoke noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB13_E6removeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull %i.a)
          to label %bb.e unwind label %bb.p       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.g, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB13_E10push_frontCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull %i.k)
          to label %bb.i unwind label %bb.p

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @499) #42
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !align !32, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  store ptr null, ptr %i.m, align 8
  %.not9 = icmp eq ptr %i.n, null
  br i1 %.not9, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.r = extractvalue { i8, i1 } %i.q, 1
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit, label %bb.k, !prof !31

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.j, %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  tail call void %i.t(ptr noundef %i.p)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit16

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit16: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit, %bb.o, %bb.n
  ret void

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  invoke void %i.w(ptr noundef %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit18 unwind label %bb.m, !inline_history !16252

bb.m:                                             ; preds = %bb.q, %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.n:                                             ; preds = %bb.i, %bb.c
  %i.y = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.z = extractvalue { i8, i1 } %i.y, 1
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit16, label %bb.o, !prof !31

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit16

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit18: ; preds = %bb.l, %bb.p, %bb.q
  %.pn8 = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %i.aa, %bb.q ], [ %i.u, %bb.l ]
  resume { ptr, i32 } %.pn8

bb.p:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.ac = extractvalue { i8, i1 } %i.ab, 1
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit18, label %bb.q, !prof !31

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit18 unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEENtNtB7_4wake4Wake11wake_by_refCs7p2uQeJxui2_9deltalake(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 8 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef 1000000000) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !range !137, !noundef !4
  %i.i = icmp eq i8 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.g, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = invoke noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E6removeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull %i.a)
          to label %bb.e unwind label %bb.p       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.g, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E10push_frontCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull %i.k)
          to label %bb.i unwind label %bb.p

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @499) #42
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !align !32, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  store ptr null, ptr %i.m, align 8
  %.not9 = icmp eq ptr %i.n, null
  br i1 %.not9, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.r = extractvalue { i8, i1 } %i.q, 1
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit, label %bb.k, !prof !31

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.j, %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  tail call void %i.t(ptr noundef %i.p)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit16

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit16: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit, %bb.o, %bb.n
  ret void

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  invoke void %i.w(ptr noundef %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit18 unwind label %bb.m, !inline_history !16252

bb.m:                                             ; preds = %bb.q, %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.n:                                             ; preds = %bb.i, %bb.c
  %i.y = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.z = extractvalue { i8, i1 } %i.y, 1
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit16, label %bb.o, !prof !31

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit16

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit18: ; preds = %bb.l, %bb.p, %bb.q
  %.pn8 = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %i.aa, %bb.q ], [ %i.u, %bb.l ]
  resume { ptr, i32 } %.pn8

bb.p:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.ac = extractvalue { i8, i1 } %i.ab, 1
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit18, label %bb.q, !prof !31

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit18 unwind label %bb.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_17StageParamsObjectNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !range !133, !noundef !4
  %.not = icmp eq i64 %i.b, -9223372036854775808
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i64, ptr %i.c, align 8, !range !133, !noundef !4
  %i.e = icmp eq i64 %i.d, -9223372036854775808   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.t, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.f, label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.n, ptr nonnull %i.l, i64 %i.g)
  %i.o = icmp eq i32 %bcmp, 0
  br i1 %i.o, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  %i.y = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.x, ptr noundef nonnull %i.v, i64 noundef %i.q)
  br i1 %i.y, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i8, ptr %i.z, align 8, !range !5, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !range !5, !noundef !4
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load i64, ptr %i.ae, align 8, !range !133, !noundef !4
  %.not12 = icmp eq i64 %i.af, -9223372036854775808
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ah = load i64, ptr %i.ag, align 8, !range !133, !noundef !4
  %i.ai = icmp eq i64 %i.ah, -9223372036854775808 ; 2 uses
  br i1 %.not12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ai, label %bb.t, label %bb.l

bb.k:                                             ; preds = %bb.i
  br i1 %i.ai, label %bb.n, label %bb.t

bb.l:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.am = load i64, ptr %i.al, align 8, !noundef !4
  %i.an = icmp eq i64 %i.ak, %i.am
  br i1 %i.an, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4
  %bcmp14 = tail call i32 @bcmp(ptr nonnull %i.ar, ptr nonnull %i.ap, i64 %i.ak)
  %i.as = icmp eq i32 %bcmp14, 0
  br i1 %i.as, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = load i64, ptr %i.at, align 8, !range !133, !noundef !4
  %.not15 = icmp eq i64 %i.au, -9223372036854775808
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aw = load i64, ptr %i.av, align 8, !range !133, !noundef !4
  %i.ax = icmp eq i64 %i.aw, -9223372036854775808 ; 2 uses
  br i1 %.not15, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.ax, label %bb.t, label %bb.q

bb.p:                                             ; preds = %bb.n
  br i1 %i.ax, label %bb.s, label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.az = load i64, ptr %i.ay, align 8, !noundef !4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !4
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
end_hunk_8
begin_hunk_9_@_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %.val.i.i506 = load ptr, ptr %i.sz, align 8, !noalias !16276, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i507 = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i506, ptr nonnull readonly %.val6.i.i505, i64 %.val5.i.i502), !noalias !16276
  %.not.i.i508 = icmp eq i32 %bcmp.i.i.i.i.i.i507, 0
  br i1 %.not.i.i508, label %bb.dk, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsf_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit511: ; preds = %bb.dh
  %i.ta = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %i.tb = load ptr, ptr %i.ta, align 8, !alias.scope !16274, !noalias !16271, !nonnull !4, !noundef !4
  %i.tc = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.td = load ptr, ptr %i.tc, align 8, !alias.scope !16271, !noalias !16274, !nonnull !4, !noundef !4
  %bcmp.i510 = tail call i32 @bcmp(ptr nonnull %i.td, ptr nonnull %i.tb, i64 %i.se), !noalias !16276
  %i.te = icmp eq i32 %bcmp.i510, 0
  br i1 %i.te, label %tailrecurse.backedge.sink.split, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dl:                                            ; preds = %bb.t
  %i.tf = getelementptr inbounds nuw i8, ptr %.tr94216, i64 8
  %i.tg = getelementptr inbounds nuw i8, ptr %.tr215, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16280)
  %i.th = load i64, ptr %i.tg, align 8, !range !7222, !alias.scope !16277, !noalias !16280, !noundef !4 ; 2 uses
  %i.ti = load i64, ptr %i.tf, align 8, !range !7222, !alias.scope !16280, !noalias !16277, !noundef !4
  %i.tj = icmp eq i64 %i.th, %i.ti
  br i1 %i.tj, label %bb.dm, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dm:                                            ; preds = %bb.dl
  switch i64 %i.th, label %tailrecurse.backedge.sink.split [
    i64 23, label %bb.dn
    i64 50, label %bb.do
  ]

bb.dn:                                            ; preds = %bb.dm
  %i.tk = getelementptr inbounds nuw i8, ptr %.tr215, i64 32
  %i.tl = load i64, ptr %i.tk, align 8, !alias.scope !16277, !noalias !16280, !noundef !4 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.tr94216, i64 32
  %i.tn = load i64, ptr %i.tm, align 8, !alias.scope !16280, !noalias !16277, !noundef !4
  %i.to = icmp eq i64 %i.tl, %i.tn
  br i1 %i.to, label %_RNvXsf_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit524, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.do:                                            ; preds = %bb.dm
  %i.tp = getelementptr inbounds nuw i8, ptr %.tr215, i64 32
  %i.tq = load i64, ptr %i.tp, align 8, !alias.scope !16277, !noalias !16280, !noundef !4 ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.tr94216, i64 32
  %i.ts = load i64, ptr %i.tr, align 8, !alias.scope !16280, !noalias !16277, !noundef !4
  %i.tt = icmp eq i64 %i.tq, %i.ts
  br i1 %i.tt, label %bb.dp, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dp:                                            ; preds = %bb.do
  %i.tu = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %i.tv = load ptr, ptr %i.tu, align 8, !alias.scope !16280, !noalias !16277, !nonnull !4, !noundef !4
  %i.tw = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.tx = load ptr, ptr %i.tw, align 8, !alias.scope !16277, !noalias !16280, !nonnull !4, !noundef !4
  %i.ty = icmp eq i64 %i.tq, 0
  br i1 %i.ty, label %tailrecurse.backedge.sink.split, label %.lr.ph.i.i513

bb.dq:                                            ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i517
  %i.tz = add nuw i64 %.sroa.01.09.i.i514, 1      ; 2 uses
  %exitcond.not.i.i522 = icmp eq i64 %i.tz, %i.tq
  br i1 %exitcond.not.i.i522, label %tailrecurse.backedge.sink.split, label %.lr.ph.i.i513

.lr.ph.i.i513:                                    ; preds = %bb.dp, %bb.dq
  %.sroa.01.09.i.i514 = phi i64 [ %i.tz, %bb.dq ], [ 0, %bb.dp ] ; 3 uses
  %i.ua = getelementptr inbounds nuw [24 x i8], ptr %i.tx, i64 %.sroa.01.09.i.i514 ; 2 uses
  %i.ub = getelementptr inbounds nuw [24 x i8], ptr %i.tv, i64 %.sroa.01.09.i.i514 ; 2 uses
  %i.uc = getelementptr i8, ptr %i.ua, i64 16
  %.val5.i.i515 = load i64, ptr %i.uc, align 8, !noalias !16282, !noundef !4 ; 2 uses
  %i.ud = getelementptr i8, ptr %i.ub, i64 16
  %.val7.i.i516 = load i64, ptr %i.ud, align 8, !noalias !16282, !noundef !4
  %i.ue = icmp eq i64 %.val5.i.i515, %.val7.i.i516
  br i1 %i.ue, label %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i517, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i517: ; preds = %.lr.ph.i.i513
  %i.uf = getelementptr i8, ptr %i.ub, i64 8
  %.val6.i.i518 = load ptr, ptr %i.uf, align 8, !noalias !16282, !nonnull !4, !noundef !4
  %i.ug = getelementptr i8, ptr %i.ua, i64 8
  %.val.i.i519 = load ptr, ptr %i.ug, align 8, !noalias !16282, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i520 = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i519, ptr nonnull readonly %.val6.i.i518, i64 %.val5.i.i515), !noalias !16282
  %.not.i.i521 = icmp eq i32 %bcmp.i.i.i.i.i.i520, 0
  br i1 %.not.i.i521, label %bb.dq, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsf_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit524: ; preds = %bb.dn
  %i.uh = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %i.ui = load ptr, ptr %i.uh, align 8, !alias.scope !16280, !noalias !16277, !nonnull !4, !noundef !4
  %i.uj = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.uk = load ptr, ptr %i.uj, align 8, !alias.scope !16277, !noalias !16280, !nonnull !4, !noundef !4
  %bcmp.i523 = tail call i32 @bcmp(ptr nonnull %i.uk, ptr nonnull %i.ui, i64 %i.tl), !noalias !16282
  %i.ul = icmp eq i32 %bcmp.i523, 0
  br i1 %i.ul, label %tailrecurse.backedge.sink.split, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dr:                                            ; preds = %bb.v
  %i.um = getelementptr inbounds nuw i8, ptr %.tr215, i64 121
  %i.un = load i8, ptr %i.um, align 1, !range !5, !noundef !4
  %i.uo = getelementptr inbounds nuw i8, ptr %.tr94216, i64 121
  %i.up = load i8, ptr %i.uo, align 1, !range !5, !noundef !4
  %i.uq = icmp eq i8 %i.un, %i.up
  br i1 %i.uq, label %bb.ds, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ds:                                            ; preds = %bb.dr
  %i.ur = getelementptr inbounds nuw i8, ptr %.tr215, i64 112
  %i.us = load ptr, ptr %i.ur, align 8, !nonnull !4, !noundef !4
  %i.ut = getelementptr inbounds nuw i8, ptr %.tr94216, i64 112
  %i.uu = load ptr, ptr %i.ut, align 8, !nonnull !4, !noundef !4
  %i.uv = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.us, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.uu) #47
  br i1 %i.uv, label %bb.dt, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dt:                                            ; preds = %bb.ds
  %i.uw = getelementptr inbounds nuw i8, ptr %.tr215, i64 56 ; 2 uses
  %i.ux = load i8, ptr %i.uw, align 8, !range !7319, !noundef !4
  %.not41 = icmp eq i8 %i.ux, 116
  %i.uy = getelementptr inbounds nuw i8, ptr %.tr94216, i64 56 ; 2 uses
  %i.uz = load i8, ptr %i.uy, align 8, !range !7319, !noundef !4
  %i.va = icmp eq i8 %i.uz, 116                   ; 2 uses
  br i1 %.not41, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  br i1 %i.va, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.dw

bb.dv:                                            ; preds = %bb.dt
  br i1 %i.va, label %bb.dx, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dw:                                            ; preds = %bb.du
  %i.vb = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.uw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.uy) #47
  br i1 %i.vb, label %bb.dx, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.vc = getelementptr inbounds nuw i8, ptr %.tr215, i64 32
  %i.vd = load i64, ptr %i.vc, align 8, !range !133, !noundef !4
  %.not43 = icmp eq i64 %i.vd, -9223372036854775808
  %i.ve = getelementptr inbounds nuw i8, ptr %.tr94216, i64 32
  %i.vf = load i64, ptr %i.ve, align 8, !range !133, !noundef !4
  %i.vg = icmp eq i64 %i.vf, -9223372036854775808 ; 2 uses
  br i1 %.not43, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.vg, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  br i1 %i.vg, label %bb.eb, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ea:                                            ; preds = %bb.dy
  %i.vh = getelementptr inbounds nuw i8, ptr %.tr215, i64 48
  %.val61 = load i64, ptr %i.vh, align 8, !noundef !4 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.tr94216, i64 48
  %.val63 = load i64, ptr %i.vi, align 8, !noundef !4
  %i.vj = icmp eq i64 %.val61, %.val63
  br i1 %i.vj, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit87, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit87: ; preds = %bb.ea
  %i.vk = getelementptr inbounds nuw i8, ptr %.tr94216, i64 40
  %.val62 = load ptr, ptr %i.vk, align 8, !nonnull !4, !noundef !4
  %i.vl = getelementptr inbounds nuw i8, ptr %.tr215, i64 40
  %.val60 = load ptr, ptr %i.vl, align 8, !nonnull !4, !noundef !4
  %i.vm = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.val60, ptr noundef nonnull %.val62, i64 noundef %.val61)
  br i1 %i.vm, label %bb.eb, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.eb:                                            ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit87, %bb.dz
  %i.vn = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.vo = load i64, ptr %i.vn, align 8, !noundef !4 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %i.vq = load i64, ptr %i.vp, align 8, !noundef !4
  %i.vr = icmp eq i64 %i.vo, %i.vq
  br i1 %i.vr, label %bb.ec, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ec:                                            ; preds = %bb.eb
  %i.vs = getelementptr inbounds nuw i8, ptr %.tr94216, i64 16
  %i.vt = load ptr, ptr %i.vs, align 8, !nonnull !4, !noundef !4
  %i.vu = getelementptr inbounds nuw i8, ptr %.tr215, i64 16
  %i.vv = load ptr, ptr %i.vu, align 8, !nonnull !4, !noundef !4
  %i.vw = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.vv, ptr noundef nonnull %i.vt, i64 noundef %i.vo)
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ed:                                            ; preds = %bb.w
  %i.vx = getelementptr inbounds nuw i8, ptr %.tr215, i64 160
  %i.vy = load ptr, ptr %i.vx, align 8, !nonnull !4, !noundef !4
  %i.vz = getelementptr inbounds nuw i8, ptr %.tr94216, i64 160
  %i.wa = load ptr, ptr %i.vz, align 8, !nonnull !4, !noundef !4
  %i.wb = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.vy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.wa) #47
  br i1 %i.wb, label %bb.ee, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ee:                                            ; preds = %bb.ed
  %i.wc = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dy) #47
  br i1 %i.wc, label %bb.ef, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ef:                                            ; preds = %bb.ee
  %i.wd = getelementptr inbounds nuw i8, ptr %.tr215, i64 8 ; 2 uses
  %i.we = load i64, ptr %i.wd, align 8, !range !7332, !noundef !4
  %.not39 = icmp eq i64 %i.we, -9223372036854775786 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.tr94216, i64 8 ; 2 uses
  %i.wg = load i64, ptr %i.wf, align 8, !range !7332, !noundef !4
  %i.wh = icmp eq i64 %i.wg, -9223372036854775786 ; 2 uses
  %brmerge490 = or i1 %.not39, %i.wh
  %.mux491 = and i1 %.not39, %i.wh
  br i1 %brmerge490, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.wi = tail call fastcc noundef zeroext i1 @_RNvXs5B_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CastFormatNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.wd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.wf) #47
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread526: ; preds = %bb.z, %bb.af, %bb.ag, %bb.aj, %bb.ak, %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.wj = getelementptr inbounds nuw i8, ptr %.tr94216, i64 88
  %i.wk = getelementptr inbounds nuw i8, ptr %.tr215, i64 88
  %.val78 = load i8, ptr %i.wk, align 1, !range !5, !noundef !4
  %.val79 = load i8, ptr %i.wj, align 1, !range !5, !noundef !4
  %i.wl = icmp eq i8 %.val78, %.val79
  br i1 %i.wl, label %tailrecurse.backedge.sink.split, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.eh:                                            ; preds = %bb.al
  %i.wm = getelementptr inbounds nuw i8, ptr %.tr94216, i64 8
  %i.wn = getelementptr inbounds nuw i8, ptr %.tr215, i64 8
  %i.wo = tail call fastcc noundef zeroext i1 @_RNvXs6p_NtCs4lawaffTVVK_9sqlparser3astNtB6_13CeilFloorKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.wn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.wm) #47
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ei:                                            ; preds = %bb.am
  %i.wp = getelementptr inbounds nuw i8, ptr %.tr94216, i64 8
  %i.wq = getelementptr inbounds nuw i8, ptr %.tr215, i64 8
  %i.wr = tail call fastcc noundef zeroext i1 @_RNvXs6p_NtCs4lawaffTVVK_9sqlparser3astNtB6_13CeilFloorKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.wq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.wp) #47
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ej:                                            ; preds = %bb.ao
  %i.ws = getelementptr inbounds nuw i8, ptr %.tr215, i64 33
  %i.wt = load i8, ptr %i.ws, align 1, !range !5, !noundef !4
  %i.wu = getelementptr inbounds nuw i8, ptr %.tr94216, i64 33
  %i.wv = load i8, ptr %i.wu, align 1, !range !5, !noundef !4
  %i.ww = icmp eq i8 %i.wt, %i.wv
  br i1 %i.ww, label %bb.ek, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ek:                                            ; preds = %bb.ej
  %i.wx = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.wy = load ptr, ptr %i.wx, align 8, !nonnull !4, !noundef !4
  %i.wz = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %i.xa = load ptr, ptr %i.wz, align 8, !nonnull !4, !noundef !4
  %i.xb = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.wy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.xa) #47
  br i1 %i.xb, label %bb.el, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.el:                                            ; preds = %bb.ek
  %i.xc = getelementptr inbounds nuw i8, ptr %.tr215, i64 8
  %i.xd = load ptr, ptr %i.xc, align 8, !align !32, !noundef !4 ; 2 uses
  %.not35 = icmp eq ptr %i.xd, null
  %i.xe = getelementptr inbounds nuw i8, ptr %.tr94216, i64 8
  %i.xf = load ptr, ptr %i.xe, align 8, !align !32, !noundef !4 ; 2 uses
  %i.xg = icmp eq ptr %i.xf, null                 ; 2 uses
  br i1 %.not35, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  br i1 %i.xg, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.eo

bb.en:                                            ; preds = %bb.el
  br i1 %i.xg, label %bb.ep, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.eo:                                            ; preds = %bb.em
  %i.xh = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.xd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.xf) #47
  br i1 %i.xh, label %bb.ep, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.xi = getelementptr inbounds nuw i8, ptr %.tr215, i64 16
  %i.xj = load ptr, ptr %i.xi, align 8, !align !32, !noundef !4 ; 2 uses
  %.not37 = icmp eq ptr %i.xj, null               ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.tr94216, i64 16
  %i.xl = load ptr, ptr %i.xk, align 8, !align !32, !noundef !4 ; 2 uses
  %i.xm = icmp eq ptr %i.xl, null                 ; 2 uses
  %brmerge946 = or i1 %.not37, %i.xm
  br i1 %brmerge946, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.loopexit956.split.loop.exit1231, label %tailrecurse.backedge

bb.eq:                                            ; preds = %bb.ap
  %i.xn = getelementptr inbounds nuw i8, ptr %.tr215, i64 48
  %i.xo = load i8, ptr %i.xn, align 8, !range !2683, !noundef !4 ; 2 uses
  %.not29 = icmp eq i8 %i.xo, 3
  %i.xp = getelementptr inbounds nuw i8, ptr %.tr94216, i64 48
  %i.xq = load i8, ptr %i.xp, align 8, !range !2683, !noundef !4 ; 2 uses
  br i1 %.not29, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.xr = icmp eq i8 %i.xo, %i.xq
  br i1 %i.xr, label %bb.et, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.es:                                            ; preds = %bb.eq
  %i.xs = icmp eq i8 %i.xq, 3
  br i1 %i.xs, label %bb.et, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.et:                                            ; preds = %bb.er, %bb.es
  %i.xt = getelementptr inbounds nuw i8, ptr %.tr215, i64 40
  %i.xu = load ptr, ptr %i.xt, align 8, !align !32, !noundef !4 ; 2 uses
  %.not31 = icmp eq ptr %i.xu, null
  %i.xv = getelementptr inbounds nuw i8, ptr %.tr94216, i64 40
  %i.xw = load ptr, ptr %i.xv, align 8, !align !32, !noundef !4 ; 2 uses
  %i.xx = icmp eq ptr %i.xw, null                 ; 2 uses
  br i1 %.not31, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  br i1 %i.xx, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ew

bb.ev:                                            ; preds = %bb.et
  br i1 %i.xx, label %bb.ex, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ew:                                            ; preds = %bb.eu
  %i.xy = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.xu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.xw) #47
  br i1 %i.xy, label %bb.ex, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.xz = getelementptr inbounds nuw i8, ptr %.tr215, i64 8
  %i.ya = load i64, ptr %i.xz, align 8, !range !133, !noundef !4
  %.not33 = icmp eq i64 %i.ya, -9223372036854775808 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %.tr94216, i64 8
  %i.yc = load i64, ptr %i.yb, align 8, !range !133, !noundef !4
  %i.yd = icmp eq i64 %i.yc, -9223372036854775808 ; 2 uses
  %brmerge492 = or i1 %.not33, %i.yd
  %.mux493 = and i1 %.not33, %i.yd
  br i1 %brmerge492, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ye = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.yf = load i64, ptr %i.ye, align 8, !noundef !4 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %i.yh = load i64, ptr %i.yg, align 8, !noundef !4
  %i.yi = icmp eq i64 %i.yf, %i.yh
  br i1 %i.yi, label %bb.ez, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ez:                                            ; preds = %bb.ey
  %i.yj = getelementptr inbounds nuw i8, ptr %.tr94216, i64 16
  %i.yk = load ptr, ptr %i.yj, align 8, !nonnull !4, !noundef !4
  %i.yl = getelementptr inbounds nuw i8, ptr %.tr215, i64 16
  %i.ym = load ptr, ptr %i.yl, align 8, !nonnull !4, !noundef !4
  %i.yn = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.ym, ptr noundef nonnull %i.yk, i64 noundef %i.yf)
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fa:                                            ; preds = %bb.aq
  %i.yo = getelementptr inbounds nuw i8, ptr %.tr215, i64 16
  %i.yp = load ptr, ptr %i.yo, align 8, !nonnull !4, !noundef !4
  %i.yq = getelementptr inbounds nuw i8, ptr %.tr94216, i64 16
  %i.yr = load ptr, ptr %i.yq, align 8, !nonnull !4, !noundef !4
  %i.ys = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.yp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.yr) #47
  br i1 %i.ys, label %bb.fb, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fb:                                            ; preds = %bb.fa
  %i.yt = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.yu = load ptr, ptr %i.yt, align 8, !nonnull !4, !noundef !4
  %i.yv = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %i.yw = load ptr, ptr %i.yv, align 8, !nonnull !4, !noundef !4
  %i.yx = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.yu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.yw) #47
  br i1 %i.yx, label %bb.fc, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fc:                                            ; preds = %bb.fb
  %i.yy = getelementptr inbounds nuw i8, ptr %.tr215, i64 32
  %i.yz = load ptr, ptr %i.yy, align 8, !align !32, !noundef !4 ; 2 uses
  %.not27 = icmp eq ptr %i.yz, null               ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.tr94216, i64 32
  %i.zb = load ptr, ptr %i.za, align 8, !align !32, !noundef !4 ; 2 uses
  %i.zc = icmp eq ptr %i.zb, null                 ; 2 uses
  %brmerge948 = or i1 %.not27, %i.zc
  br i1 %brmerge948, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.loopexit956.split.loop.exit1233, label %tailrecurse.backedge

bb.fd:                                            ; preds = %bb.ar
  %i.zd = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %.val57 = load i64, ptr %i.zd, align 8, !noundef !4 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %.val59 = load i64, ptr %i.ze, align 8, !noundef !4
  %i.zf = icmp eq i64 %.val57, %.val59
  br i1 %i.zf, label %bb.fe, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fe:                                            ; preds = %bb.fd
  %i.zg = getelementptr inbounds nuw i8, ptr %.tr94216, i64 16
  %.val58 = load ptr, ptr %i.zg, align 8, !nonnull !4, !noundef !4
  %i.zh = getelementptr inbounds nuw i8, ptr %.tr215, i64 16
  %.val56 = load ptr, ptr %i.zh, align 8, !nonnull !4, !noundef !4
  %i.zi = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.val56, ptr noundef nonnull %.val58, i64 noundef %.val57)
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ff:                                            ; preds = %bb.az
  br i1 %i.if, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.fh

bb.fg:                                            ; preds = %bb.az
  br i1 %i.if, label %bb.fi, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fh:                                            ; preds = %bb.ff
  %i.zj = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ic, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ie) #47
  br i1 %i.zj, label %bb.fi, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.zk = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.zl = load i64, ptr %i.zk, align 8, !noundef !4 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %i.zn = load i64, ptr %i.zm, align 8, !noundef !4
  %i.zo = icmp eq i64 %i.zl, %i.zn
  br i1 %i.zo, label %bb.fj, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fj:                                            ; preds = %bb.fi
  %i.zp = getelementptr inbounds nuw i8, ptr %.tr94216, i64 16
  %i.zq = load ptr, ptr %i.zp, align 8, !nonnull !4, !noundef !4
  %i.zr = getelementptr inbounds nuw i8, ptr %.tr215, i64 16
  %i.zs = load ptr, ptr %i.zr, align 8, !nonnull !4, !noundef !4
  %i.zt = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.zs, ptr noundef nonnull %i.zq, i64 noundef %i.zl)
  br i1 %i.zt, label %bb.fk, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fk:                                            ; preds = %bb.fj
  %i.zu = getelementptr inbounds nuw i8, ptr %.tr215, i64 216
  %i.zv = load ptr, ptr %i.zu, align 8, !align !32, !noundef !4 ; 2 uses
  %.not25 = icmp eq ptr %i.zv, null               ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.tr94216, i64 216
  %i.zx = load ptr, ptr %i.zw, align 8, !align !32, !noundef !4 ; 2 uses
  %i.zy = icmp eq ptr %i.zx, null                 ; 2 uses
  %brmerge950 = or i1 %.not25, %i.zy
  br i1 %brmerge950, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.loopexit956.split.loop.exit1235, label %tailrecurse.backedge

end_hunk_9
begin_hunk_10_@_RNvXs9N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a

_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse, %bb.a, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %bb.s, %bb.r, %bb.q, %bb.p, %bb.v, %bb.u, %bb.t
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.s ], [ false, %bb.d ], [ %i.cn, %bb.t ], [ true, %bb.x ], [ %i.cs, %bb.u ], [ false, %bb.p ], [ false, %bb.ab ], [ %i.cx, %bb.v ], [ false, %bb.q ], [ false, %bb.k ], [ false, %bb.r ], [ %i.ae, %bb.g ], [ false, %bb.e ], [ %i.af, %bb.h ], [ true, %bb.c ], [ false, %bb.b ], [ %i.bg, %bb.n ], [ false, %bb.l ], [ %i.bh, %bb.o ], [ true, %bb.j ], [ false, %bb.i ], [ false, %bb.w ], [ %i.dh, %bb.y ], [ %i.dm, %bb.z ], [ %i.dr, %bb.aa ], [ %i.eb, %bb.ac ], [ false, %bb.a ], [ false, %tailrecurse ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable66:                            ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.tr1033, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16450)
  %i.g = load i64, ptr %i.e, align 8, !range !2196, !alias.scope !16447, !noalias !16450, !noundef !4 ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  %i.i = add i64 %i.g, -9223372036854775807
  %i.j = select i1 %i.h, i64 %i.i, i64 0          ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !range !2196, !alias.scope !16450, !noalias !16447, !noundef !4 ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  %i.m = add i64 %i.k, -9223372036854775807
  %i.n = select i1 %i.l, i64 %i.m, i64 0
  %i.o = icmp eq i64 %i.j, %i.n
  br i1 %i.o, label %bb.c, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i64 %i.j, 0
  br i1 %i.p, label %bb.d, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.tr32, i64 24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !16447, !noalias !16450, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.tr1033, i64 24
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !16450, !noalias !16447, !noundef !4
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.tr1033, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !16450, !noalias !16447, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %.tr32, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !16447, !noalias !16450, !nonnull !4, !noundef !4
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.y, ptr nonnull %i.w, i64 %i.r), !noalias !16452
  %i.z = icmp eq i32 %bcmp.i, 0
  br i1 %i.z, label %bb.f, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr32, i64 64
  %i.ab = load i32, ptr %i.aa, align 8, !range !5453, !alias.scope !16447, !noalias !16450, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.ab, 1114112
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1033, i64 64
  %i.ad = load i32, ptr %i.ac, align 8, !range !5453, !alias.scope !16450, !noalias !16447, !noundef !4 ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.f
  %i.af = icmp eq i32 %i.ad, 1114112
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr1033, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16456)
  %i.ai = load i64, ptr %i.ag, align 8, !range !2196, !alias.scope !16453, !noalias !16456, !noundef !4 ; 2 uses
  %i.aj = icmp slt i64 %i.ai, 0
  %i.ak = add i64 %i.ai, -9223372036854775807
  %i.al = select i1 %i.aj, i64 %i.ak, i64 0       ; 2 uses
  %i.am = load i64, ptr %i.ah, align 8, !range !2196, !alias.scope !16456, !noalias !16453, !noundef !4 ; 2 uses
  %i.an = icmp slt i64 %i.am, 0
  %i.ao = add i64 %i.am, -9223372036854775807
  %i.ap = select i1 %i.an, i64 %i.ao, i64 0
  %i.aq = icmp eq i64 %i.al, %i.ap
  br i1 %i.aq, label %bb.j, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp eq i64 %i.al, 0
  br i1 %i.ar, label %bb.k, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.tr32, i64 24
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !16453, !noalias !16456, !noundef !4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.tr1033, i64 24
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !16456, !noalias !16453, !noundef !4
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %bb.l, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr1033, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !16456, !noalias !16453, !nonnull !4, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %.tr32, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !16453, !noalias !16456, !nonnull !4, !noundef !4
  %bcmp.i6 = tail call i32 @bcmp(ptr nonnull %i.ba, ptr nonnull %i.ay, i64 %i.at), !noalias !16458
  %i.bb = icmp eq i32 %bcmp.i6, 0
  br i1 %i.bb, label %bb.m, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr32, i64 64
  %i.bd = load i32, ptr %i.bc, align 8, !range !5453, !alias.scope !16453, !noalias !16456, !noundef !4 ; 2 uses
  %.not.i7 = icmp eq i32 %i.bd, 1114112
  %i.be = getelementptr inbounds nuw i8, ptr %.tr1033, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !range !5453, !alias.scope !16456, !noalias !16453, !noundef !4 ; 2 uses
  br i1 %.not.i7, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = icmp eq i32 %i.bd, %i.bf
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.m
  %i.bh = icmp eq i32 %i.bf, 1114112
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr32, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr1033, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !4
  %i.bm = icmp eq i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.t, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr32, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.tr1033, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !4
  %i.br = icmp eq i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.u, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr1033, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bw = load i32, ptr %i.bt, align 8, !range !10031, !noundef !4 ; 2 uses
  %i.bx = load i32, ptr %i.bv, align 8, !range !10031, !noundef !4
  %i.by = icmp eq i32 %i.bw, %i.bx
  br i1 %i.by, label %.lr.ph, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr32, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr1033, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !4
  %i.cd = icmp eq i64 %i.ca, %i.cc
  br i1 %i.cd, label %bb.v, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %.tr32, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !4, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr1033, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !4, !noundef !4
  %i.ci = tail call fastcc noundef zeroext i1 @_RNvXs9N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ch) #47
  br i1 %i.ci, label %bb.w, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr1033, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !4, !noundef !4
  %i.cl = getelementptr inbounds nuw i8, ptr %.tr32, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !4, !noundef !4
  %i.cn = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.ck, i64 noundef %i.bj)
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %.tr1033, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !4, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr32, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !4, !noundef !4
  %i.cs = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cp, i64 noundef %i.bo)
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr1033, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !4, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %.tr32, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !4, !noundef !4
  %i.cx = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cu, i64 noundef %i.ca)
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr1033, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.tr32, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16462)
  %i.da = load i32, ptr %i.cz, align 4, !range !10031, !alias.scope !16459, !noalias !16462, !noundef !4 ; 2 uses
  %i.db = load i32, ptr %i.cy, align 4, !range !10031, !alias.scope !16462, !noalias !16459, !noundef !4
  %i.dc = icmp eq i32 %i.da, %i.db
  br i1 %i.dc, label %bb.x, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.w
  switch i32 %i.da, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit [
    i32 3, label %bb.y
    i32 4, label %bb.z
    i32 5, label %bb.aa
    i32 6, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !alias.scope !16459, !noalias !16462, !noundef !4
  %i.df = getelementptr inbounds nuw i8, ptr %.tr1033, i64 8
  %i.dg = load i32, ptr %i.df, align 4, !alias.scope !16462, !noalias !16459, !noundef !4
  %i.dh = icmp eq i32 %i.de, %i.dg
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !alias.scope !16459, !noalias !16462, !noundef !4
  %i.dk = getelementptr inbounds nuw i8, ptr %.tr1033, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !alias.scope !16462, !noalias !16459, !noundef !4
  %i.dm = icmp eq i32 %i.dj, %i.dl
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.do = load i32, ptr %i.dn, align 4, !alias.scope !16459, !noalias !16462, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %.tr1033, i64 8
  %i.dq = load i32, ptr %i.dp, align 4, !alias.scope !16462, !noalias !16459, !noundef !4
  %i.dr = icmp eq i32 %i.do, %i.dq
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.dt = load i32, ptr %i.ds, align 4, !alias.scope !16459, !noalias !16462, !noundef !4
  %i.du = getelementptr inbounds nuw i8, ptr %.tr1033, i64 8
  %i.dv = load i32, ptr %i.du, align 4, !alias.scope !16462, !noalias !16459, !noundef !4
  %i.dw = icmp eq i32 %i.dt, %i.dv
  br i1 %i.dw, label %bb.ac, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr32, i64 12
  %i.dy = load i32, ptr %i.dx, align 4, !alias.scope !16459, !noalias !16462, !noundef !4
  %i.dz = getelementptr inbounds nuw i8, ptr %.tr1033, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !alias.scope !16462, !noalias !16459, !noundef !4
  %i.eb = icmp eq i32 %i.dy, %i.ea
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs9Q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11DropTriggerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !4
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11 = load i64, ptr %i.g, align 8, !noundef !4
  %i.h = icmp eq i64 %.val9, %.val11
  br i1 %i.h, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.k = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.val8, ptr noundef nonnull %.val10, i64 noundef %.val9)
  br i1 %i.k, label %bb.c, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.c:                                             ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !range !133, !noundef !4
  %.not = icmp eq i64 %i.m, -9223372036854775808
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !range !133, !noundef !4
  %i.p = icmp eq i64 %i.o, -9223372036854775808   ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.p, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.p, label %bb.g, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5 = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val7 = load i64, ptr %i.r, align 8, !noundef !4
  %i.s = icmp eq i64 %.val5, %.val7
  br i1 %i.s, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit15, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit15: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val6 = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.v = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.val, ptr noundef nonnull %.val6, i64 noundef %.val5)
  br i1 %i.v, label %bb.g, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.g:                                             ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit15, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.x = load i8, ptr %i.w, align 1, !range !3178, !noundef !4 ; 2 uses
  %.not3 = icmp eq i8 %i.x, 5
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.z = load i8, ptr %i.y, align 1, !range !3178, !noundef !4 ; 2 uses
  br i1 %.not3, label %bb.i, label %bb.h

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.h, %bb.f, %bb.b, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit15, %bb.e, %bb.a, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.d, %bb.i
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ %i.ab, %bb.i ], [ false, %bb.d ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.a ], [ %i.aa, %bb.h ], [ false, %bb.b ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit15 ]
  ret i1 %.sroa.0.0.shrunk

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp eq i8 %i.x, %i.z
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp eq i8 %i.z, 5
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs9R_NtCs4lawaffTVVK_9sqlparser3astNtB6_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6540, !noundef !4
  %.not = icmp eq i64 %i.a, 69
  %i.b = load i64, ptr %1, align 8, !range !6540, !noundef !4
  %i.c = icmp eq i64 %i.b, 69                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #47
  br i1 %i.d, label %bb.e, label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.f = load i8, ptr %i.e, align 8, !range !9767, !noundef !4
  %.not4 = icmp eq i8 %i.f, 103
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.h = load i8, ptr %i.g, align 8, !range !9767, !noundef !4
  %i.i = icmp eq i8 %i.h, 103                     ; 2 uses
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.i, label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.critedge

bb.g:                                             ; preds = %bb.e
  br i1 %i.i, label %.critedge, label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16467)
  %i.l = load i64, ptr %i.j, align 8, !range !133, !alias.scope !16464, !noalias !16467, !noundef !4
  %i.m = icmp ne i64 %i.l, -9223372036854775808   ; 2 uses
  %i.n = load i64, ptr %i.k, align 8, !range !133, !alias.scope !16467, !noalias !16464, !noundef !4
  %i.o = icmp eq i64 %i.n, -9223372036854775808   ; 3 uses
  %not..i = xor i1 %i.o, true
  %i.p = xor i1 %i.m, %i.o
  br i1 %i.p, label %bb.h, label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.critedge
  br i1 %i.m, label %bb.i, label %bb.j

_RNvXsab_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.sink.split.i: ; preds = %bb.j, %bb.i
  %.sink7.i = phi i64 [ 8, %bb.i ], [ 16, %bb.j ] ; 2 uses
  %.val3.sink.i = phi i64 [ %.val3.i, %bb.i ], [ %i.x, %bb.j ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink7.i
  %.val4.i = load ptr, ptr %i.q, align 8, !alias.scope !16467, !noalias !16464, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink7.i
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !16464, !noalias !16467, !nonnull !4, !noundef !4
  %i.s = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast9StatementINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.val.i, ptr noundef nonnull %.val4.i, i64 noundef %.val3.sink.i), !noalias !16469
  br label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.assume(i1 %not..i)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.val3.i = load i64, ptr %i.t, align 8, !alias.scope !16464, !noalias !16467, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.val5.i = load i64, ptr %i.u, align 8, !alias.scope !16467, !noalias !16464, !noundef !4
  %i.v = icmp eq i64 %.val3.i, %.val5.i
  br i1 %i.v, label %_RNvXsab_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.sink.split.i, label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.assume(i1 %i.o)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !16464, !noalias !16467, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !16467, !noalias !16464, !noundef !4
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %_RNvXsab_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.sink.split.i, label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.j, %bb.i, %_RNvXsab_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.sink.split.i, %.critedge, %bb.d, %bb.c, %bb.g, %bb.b, %bb.f
  %.sroa.0.0 = phi i1 [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.b ], [ false, %bb.g ], [ false, %bb.c ], [ false, %bb.j ], [ false, %bb.i ], [ false, %.critedge ], [ %i.s, %_RNvXsab_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.sink.split.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs9_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_11WindowFrameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 16, !range !5, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load i8, ptr %i.c, align 16, !range !5, !noundef !4
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.g = load i8, ptr %i.f, align 1, !range !137, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 161
  %i.i = load i8, ptr %i.h, align 1, !range !137, !noundef !4
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16473)
  %i.k = load i128, ptr %0, align 16, !range !2859, !alias.scope !16470, !noalias !16473, !noundef !4
  %i.l = trunc nuw nsw i128 %i.k to i64           ; 2 uses
  %i.m = load i128, ptr %1, align 16, !range !2859, !alias.scope !16473, !noalias !16470, !noundef !4 ; 3 uses
  %i.n = trunc nuw nsw i128 %i.m to i64
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4
end_hunk_10
begin_hunk_11_@_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
    i64 29, label %bb.w
    i64 30, label %bb.x
    i64 31, label %bb.y
    i64 32, label %tailrecurse.backedge
  ]

_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse.backedge, %bb.ac, %bb.a, %bb.ah, %bb.s, %bb.r, %bb.aj, %bb.ai, %bb.af, %bb.ag, %bb.ad, %bb.f, %bb.aa, %bb.z, %bb.ak, %bb.ae, %bb.ab, %bb.x, %bb.w, %bb.u, %bb.t, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d, %bb.c
  %.sroa.0.0 = phi i1 [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.dk, %bb.ab ], [ false, %bb.z ], [ %i.ch, %bb.u ], [ %.mux, %bb.ac ], [ %i.dt, %bb.ae ], [ false, %bb.f ], [ false, %bb.a ], [ false, %bb.aa ], [ %i.ac, %bb.g ], [ %i.af, %bb.h ], [ %i.ai, %bb.i ], [ false, %bb.ah ], [ false, %bb.r ], [ %i.cb, %bb.s ], [ false, %bb.af ], [ %i.dz, %bb.ai ], [ true, %bb.ad ], [ false, %bb.ag ], [ %i.ed, %bb.ak ], [ %i.cs, %bb.x ], [ %i.cp, %bb.w ], [ %i.aw, %bb.j ], [ %i.az, %bb.k ], [ %i.bc, %bb.l ], [ %i.bf, %bb.m ], [ %i.bi, %bb.n ], [ %i.bl, %bb.o ], [ %i.bq, %bb.p ], [ %i.bt, %bb.q ], [ false, %bb.aj ], [ %i.ce, %bb.t ], [ false, %tailrecurse.backedge ]
  ret i1 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXs1b_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.n) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.q) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr83, i64 32
  %i.t = load ptr, ptr %i.s, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.tr1384, i64 32
  %i.v = load ptr, ptr %i.u, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.aa, label %bb.z

bb.f:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.tr83, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.tr1384, i64 16
  %i.z = tail call noundef zeroext i1 @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.x, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.y)
  br i1 %i.z, label %bb.ac, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvXs1g_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_10BinaryExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.af = tail call fastcc noundef zeroext i1 @_RNvXs1u_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4LikeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ai = tail call fastcc noundef zeroext i1 @_RNvXs1u_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4LikeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

tailrecurse.backedge:                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.tr13.be.in = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %.tr13.be = load ptr, ptr %.tr13.be.in, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.tr.be.in = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %.tr.be = load ptr, ptr %.tr.be.in, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = load i64, ptr %.tr.be, align 16, !range !413, !noundef !4 ; 3 uses
  %i.ak = icmp ne i64 %i.aj, 35
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nsw i64 %i.aj, -4
  %i.am = icmp samesign ugt i64 %i.aj, 3
  %i.an = select i1 %i.am, i64 %i.al, i64 31      ; 2 uses
  %i.ao = load i64, ptr %.tr13.be, align 16, !range !413, !noundef !4 ; 3 uses
  %i.ap = icmp ne i64 %i.ao, 35
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nsw i64 %i.ao, -4
  %i.ar = icmp samesign ugt i64 %i.ao, 3
  %i.as = select i1 %i.ar, i64 %i.aq, i64 31
  %i.at = icmp eq i64 %i.an, %i.as
  br i1 %i.at, label %.lr.ph, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.aw = tail call fastcc noundef zeroext i1 @_RNvXs1B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7BetweenNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.az = tail call fastcc noundef zeroext i1 @_RNvXs1o_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4CaseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ay) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvXs1V_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4CastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bb) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bf = tail call fastcc noundef zeroext i1 @_RNvXs22_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bi = tail call fastcc noundef zeroext i1 @_RNvXs1I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14ScalarFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bh) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bl = tail call fastcc noundef zeroext i1 @_RNvXs2g_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_17AggregateFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bk) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !4, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !4, !noundef !4
  %i.bq = tail call fastcc noundef zeroext i1 @_RNvXs2B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(288) %i.bn, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(288) %i.bp) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bt = tail call fastcc noundef zeroext i1 @_RNvXs2W_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6InListNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bs) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16586)
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr83, i64 64
  %i.bv = load i8, ptr %i.bu, align 8, !range !5, !alias.scope !16583, !noalias !16586, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %.tr1384, i64 64
  %i.bx = load i8, ptr %i.bw, align 8, !range !5, !alias.scope !16586, !noalias !16583, !noundef !4
  %i.by = icmp eq i8 %i.bv, %i.bx
  br i1 %i.by, label %bb.s, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cb = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bz) #47, !inline_history !16588
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ce = tail call fastcc noundef zeroext i1 @_RNvXs33_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_10InSubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cd) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cf = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ch = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cg) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr83, i64 8 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !range !2165, !noundef !4
  %.not = icmp eq i64 %i.cj, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !range !2165, !noundef !4
  %i.cm = icmp eq i64 %i.cl, 3                    ; 2 uses
  br i1 %.not, label %bb.ag, label %bb.af

bb.w:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.cp = tail call fastcc noundef zeroext i1 @_RNvXs3h_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_11GroupingSetNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.co) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.cs = tail call fastcc noundef zeroext i1 @_RNvXs3a_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_11PlaceholderNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cr) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %.lr.ph
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr83, i64 104
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.tr1384, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cx = icmp eq ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.ak, label %bb.aj

bb.z:                                             ; preds = %bb.e
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.da = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cz)
  br i1 %i.da, label %bb.aa, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.e, %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %.tr83, i64 24
  %i.dc = load i64, ptr %i.db, align 8, !noundef !4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr1384, i64 24
  %i.de = load i64, ptr %i.dd, align 8, !noundef !4
  %i.df = icmp eq i64 %i.dc, %i.de
  br i1 %i.df, label %bb.ab, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr1384, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !4, !noundef !4
  %i.di = getelementptr inbounds nuw i8, ptr %.tr83, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !4, !noundef !4
  %i.dk = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dh, i64 noundef %i.dc)
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr83, i64 80
  %i.dm = load ptr, ptr %i.dl, align 16, !noundef !4 ; 3 uses
  %.not11 = icmp eq ptr %i.dm, null               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.tr1384, i64 80
  %i.do = load ptr, ptr %i.dn, align 16, !noundef !4 ; 3 uses
  %i.dp = icmp eq ptr %i.do, null                 ; 2 uses
  %brmerge = or i1 %.not11, %i.dp
  %.mux = and i1 %.not11, %i.dp
  br i1 %brmerge, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = icmp eq ptr %i.dm, %i.do
  br i1 %i.dq, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dt = tail call noundef zeroext i1 @_RNvXs1t_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringB18_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds)
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.v
  br i1 %i.cm, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ah

bb.ag:                                            ; preds = %bb.v
  br i1 %i.cm, label %bb.ai, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.af
  %i.du = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ck) #47
  br i1 %i.du, label %bb.ai, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr83, i64 64
  %i.dw = load ptr, ptr %i.dv, align 16, !nonnull !4, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr1384, i64 64
  %i.dy = load ptr, ptr %i.dx, align 16, !nonnull !4, !noundef !4
  %i.dz = tail call fastcc noundef zeroext i1 @_RNvXs3o_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_15WildcardOptionsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.dy) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.y
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.ec = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ea, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eb)
  br i1 %i.ec, label %bb.ak, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.y, %bb.aj
  %i.ed = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.tr83, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.tr1384) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsC_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsE_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !16589, !noundef !4 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !16589, !nonnull !4, !noundef !4
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !16589, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 3 uses
  %i.p = lshr i32 %1, 6
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 2 uses
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.k, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64
  store i8 %i.ab, ptr %i.k, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.ac, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32
  store i8 %i.ae, ptr %i.k, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.s, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.o, ptr %i.ag, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.w, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.s, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.o, ptr %i.aj, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !16589
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !16592
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !16595, !noalias !16592, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !16595, !noalias !16592, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !16595, !noalias !16592
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !16595, !noalias !16592
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
end_hunk_11
begin_hunk_12_@_RNvXsc7_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.cbh = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 24
  %i.cbi = load i64, ptr %i.cbh, align 8, !noundef !4
  %i.cbj = icmp eq i64 %i.cbg, %i.cbi
  br i1 %i.cbj, label %bb.xn, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.xn:                                            ; preds = %bb.xm
  %i.cbk = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 16
  %i.cbl = load ptr, ptr %i.cbk, align 8, !nonnull !4, !noundef !4
  %i.cbm = getelementptr inbounds nuw i8, ptr %.tr1021, i64 16
  %i.cbn = load ptr, ptr %i.cbm, align 8, !nonnull !4, !noundef !4
  %i.cbo = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.cbn, ptr noundef nonnull %i.cbl, i64 noundef %i.cbg)
  br i1 %i.cbo, label %bb.xo, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.xo:                                            ; preds = %bb.xn
  %i.cbp = getelementptr inbounds nuw i8, ptr %.tr1021, i64 48
  %i.cbq = load i64, ptr %i.cbp, align 8, !noundef !4 ; 2 uses
  %i.cbr = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 48
  %i.cbs = load i64, ptr %i.cbr, align 8, !noundef !4
  %i.cbt = icmp eq i64 %i.cbq, %i.cbs
  br i1 %i.cbt, label %bb.xp, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.xp:                                            ; preds = %bb.xo
  %i.cbu = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 40
  %i.cbv = load ptr, ptr %i.cbu, align 8, !nonnull !4, !noundef !4
  %i.cbw = getelementptr inbounds nuw i8, ptr %.tr1021, i64 40
  %i.cbx = load ptr, ptr %i.cbw, align 8, !nonnull !4, !noundef !4
  %i.cby = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.cbx, ptr noundef nonnull %i.cbv, i64 noundef %i.cbq)
  br i1 %i.cby, label %bb.xq, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.xq:                                            ; preds = %bb.xp
  %i.cbz = getelementptr inbounds nuw i8, ptr %.tr1021, i64 72
  %i.cca = load i64, ptr %i.cbz, align 8, !noundef !4 ; 2 uses
  %i.ccb = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 72
  %i.ccc = load i64, ptr %i.ccb, align 8, !noundef !4
  %i.ccd = icmp eq i64 %i.cca, %i.ccc
  br i1 %i.ccd, label %bb.xr, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.xr:                                            ; preds = %bb.xq
  %i.cce = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 64
  %i.ccf = load ptr, ptr %i.cce, align 8, !nonnull !4, !noundef !4
  %i.ccg = getelementptr inbounds nuw i8, ptr %.tr1021, i64 64
  %i.cch = load ptr, ptr %i.ccg, align 8, !nonnull !4, !noundef !4
  %i.cci = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.cch, ptr noundef nonnull %i.ccf, i64 noundef %i.cca)
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.xs:                                            ; preds = %bb.f, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.ccj = getelementptr inbounds nuw i8, ptr %.tr1021, i64 88
  %i.cck = load i64, ptr %i.ccj, align 8, !noundef !4 ; 3 uses
  %i.ccl = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 88
  %i.ccm = load i64, ptr %i.ccl, align 8, !noundef !4
  %i.ccn = icmp eq i64 %i.cck, %i.ccm
  br i1 %i.ccn, label %bb.xt, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.xt:                                            ; preds = %bb.xs
  %i.cco = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 80
  %i.ccp = load ptr, ptr %i.cco, align 8, !nonnull !4, !noundef !4
  %i.ccq = getelementptr inbounds nuw i8, ptr %.tr1021, i64 80
  %i.ccr = load ptr, ptr %i.ccq, align 8, !nonnull !4, !noundef !4
  %.not7821019.not = icmp eq i64 %i.cck, 0
  br i1 %.not7821019.not, label %tailrecurse, label %.lr.ph

bb.xu:                                            ; preds = %.lr.ph
  %i.ccs = add nuw i64 %.sroa.01.0.i7001020, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ccs, %i.cck
  br i1 %exitcond.not, label %tailrecurse, label %.lr.ph

.lr.ph:                                           ; preds = %bb.xt, %bb.xu
  %.sroa.01.0.i7001020 = phi i64 [ %i.ccs, %bb.xu ], [ 0, %bb.xt ] ; 3 uses
  %i.cct = getelementptr inbounds nuw [56 x i8], ptr %i.ccr, i64 %.sroa.01.0.i7001020
  %i.ccu = getelementptr inbounds nuw [56 x i8], ptr %i.ccp, i64 %.sroa.01.0.i7001020
  %i.ccv = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ccu) #47, !inline_history !16699
  br i1 %i.ccv, label %bb.xu, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

tailrecurse:                                      ; preds = %bb.xu, %bb.xt
  %i.ccw = getelementptr inbounds nuw i8, ptr %.tr1021, i64 96
  %i.ccx = load ptr, ptr %i.ccw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ccy = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 96
  %i.ccz = load ptr, ptr %i.ccy, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cda = load i64, ptr %i.ccx, align 8, !range !11272, !noundef !4 ; 3 uses
  %i.cdb = icmp ne i64 %i.cda, 78
  tail call void @llvm.assume(i1 %i.cdb)
  %i.cdc = add nsw i64 %i.cda, -4
  %i.cdd = icmp samesign ugt i64 %i.cda, 3
  %i.cde = select i1 %i.cdd, i64 %i.cdc, i64 74   ; 2 uses
  %i.cdf = load i64, ptr %i.ccz, align 8, !range !11272, !noundef !4 ; 3 uses
  %i.cdg = icmp ne i64 %i.cdf, 78
  tail call void @llvm.assume(i1 %i.cdg)
  %i.cdh = add nsw i64 %i.cdf, -4
  %i.cdi = icmp samesign ugt i64 %i.cdf, 3
  %i.cdj = select i1 %i.cdi, i64 %i.cdh, i64 74
  %i.cdk = icmp eq i64 %i.cde, %i.cdj
  br i1 %i.cdk, label %.lr.ph1024, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.xv:                                            ; preds = %.lr.ph1024
  %i.cdl = getelementptr inbounds nuw i8, ptr %.tr1021, i64 8
  %i.cdm = load i64, ptr %i.cdl, align 8, !noundef !4
  %i.cdn = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 8
  %i.cdo = load i64, ptr %i.cdn, align 8, !noundef !4
  %i.cdp = icmp eq i64 %i.cdm, %i.cdo
  br i1 %i.cdp, label %bb.xw, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.xw:                                            ; preds = %bb.xv
  %i.cdq = getelementptr inbounds nuw i8, ptr %.tr1021, i64 16
  %i.cdr = load i8, ptr %i.cdq, align 8, !range !2683, !noundef !4 ; 2 uses
  %.not222 = icmp eq i8 %i.cdr, 3
  %i.cds = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 16
  %i.cdt = load i8, ptr %i.cds, align 8, !range !2683, !noundef !4 ; 2 uses
  br i1 %.not222, label %bb.xy, label %bb.xx

bb.xx:                                            ; preds = %bb.xw
  %i.cdu = icmp eq i8 %i.cdr, %i.cdt
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.xy:                                            ; preds = %bb.xw
  %i.cdv = icmp eq i8 %i.cdt, 3
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.xz:                                            ; preds = %.lr.ph1024
  %i.cdw = getelementptr inbounds nuw i8, ptr %.tr1021, i64 32
  %i.cdx = load i8, ptr %i.cdw, align 8, !range !5, !noundef !4
  %i.cdy = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 32
  %i.cdz = load i8, ptr %i.cdy, align 8, !range !5, !noundef !4
  %i.cea = icmp eq i8 %i.cdx, %i.cdz
  br i1 %i.cea, label %bb.ya, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.ya:                                            ; preds = %bb.xz
  %i.ceb = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 33
  %i.cec = getelementptr inbounds nuw i8, ptr %.tr1021, i64 33
  %.val643 = load i8, ptr %i.cec, align 1, !range !137, !noundef !4
  %.val644 = load i8, ptr %i.ceb, align 1, !range !137, !noundef !4
  %i.ced = icmp eq i8 %.val643, %.val644
  br i1 %i.ced, label %bb.yb, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yb:                                            ; preds = %bb.ya
  %i.cee = getelementptr inbounds nuw i8, ptr %.tr1021, i64 34
  %i.cef = load i8, ptr %i.cee, align 2, !range !137, !noundef !4 ; 2 uses
  %.not220 = icmp eq i8 %i.cef, 2
  %i.ceg = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 34
  %i.ceh = load i8, ptr %i.ceg, align 2, !range !137, !noundef !4 ; 2 uses
  br i1 %.not220, label %bb.yd, label %bb.yc

bb.yc:                                            ; preds = %bb.yb
  %i.cei = icmp eq i8 %i.cef, %i.ceh
  br i1 %i.cei, label %bb.ye, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yd:                                            ; preds = %bb.yb
  %i.cej = icmp eq i8 %i.ceh, 2
  br i1 %i.cej, label %bb.ye, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.ye:                                            ; preds = %bb.yc, %bb.yd
  %i.cek = getelementptr inbounds nuw i8, ptr %.tr1021, i64 24
  %.val480 = load i64, ptr %i.cek, align 8, !noundef !4 ; 2 uses
  %i.cel = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 24
  %.val482 = load i64, ptr %i.cel, align 8, !noundef !4
  %i.cem = icmp eq i64 %.val480, %.val482
  br i1 %i.cem, label %bb.yf, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yf:                                            ; preds = %bb.ye
  %i.cen = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 16
  %.val481 = load ptr, ptr %i.cen, align 8, !nonnull !4, !noundef !4
  %i.ceo = getelementptr inbounds nuw i8, ptr %.tr1021, i64 16
  %.val479 = load ptr, ptr %i.ceo, align 8, !nonnull !4, !noundef !4
  %i.cep = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.val479, ptr noundef nonnull %.val481, i64 noundef %.val480)
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yg:                                            ; preds = %.lr.ph1024
  %i.ceq = getelementptr inbounds nuw i8, ptr %.tr1021, i64 46
  %i.cer = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 46
  %i.ces = getelementptr inbounds nuw i8, ptr %.tr1021, i64 42
  %i.cet = load i8, ptr %i.ces, align 2, !range !5, !noundef !4
  %i.ceu = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 42
  %i.cev = load i8, ptr %i.ceu, align 2, !range !5, !noundef !4
  %i.cew = icmp eq i8 %i.cet, %i.cev
  br i1 %i.cew, label %bb.yh, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yh:                                            ; preds = %bb.yg
  %i.cex = getelementptr inbounds nuw i8, ptr %.tr1021, i64 43
  %i.cey = load i8, ptr %i.cex, align 1, !range !5, !noundef !4
  %i.cez = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 43
  %i.cfa = load i8, ptr %i.cez, align 1, !range !5, !noundef !4
  %i.cfb = icmp eq i8 %i.cey, %i.cfa
  br i1 %i.cfb, label %bb.yi, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yi:                                            ; preds = %bb.yh
  %i.cfc = getelementptr inbounds nuw i8, ptr %.tr1021, i64 44
  %i.cfd = load i8, ptr %i.cfc, align 4, !range !5, !noundef !4
  %i.cfe = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 44
  %i.cff = load i8, ptr %i.cfe, align 4, !range !5, !noundef !4
  %i.cfg = icmp eq i8 %i.cfd, %i.cff
  br i1 %i.cfg, label %bb.yj, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yj:                                            ; preds = %bb.yi
  %i.cfh = getelementptr inbounds nuw i8, ptr %.tr1021, i64 45
  %i.cfi = load i8, ptr %i.cfh, align 1, !range !5, !noundef !4
  %i.cfj = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 45
  %i.cfk = load i8, ptr %i.cfj, align 1, !range !5, !noundef !4
  %i.cfl = icmp eq i8 %i.cfi, %i.cfk
  br i1 %i.cfl, label %bb.yk, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yk:                                            ; preds = %bb.yj
  %.val641 = load i8, ptr %i.ceq, align 1, !range !137, !noundef !4
  %.val642 = load i8, ptr %i.cer, align 1, !range !137, !noundef !4
  %i.cfm = icmp eq i8 %.val641, %.val642
  br i1 %i.cfm, label %bb.yl, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yl:                                            ; preds = %bb.yk
  %i.cfn = getelementptr inbounds nuw i8, ptr %.tr1021, i64 32
  %i.cfo = load ptr, ptr %i.cfn, align 8, !nonnull !4, !noundef !4
  %i.cfp = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 32
  %i.cfq = load ptr, ptr %i.cfp, align 8, !nonnull !4, !noundef !4
  %i.cfr = tail call fastcc noundef zeroext i1 @_RNvXsc7_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.cfo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.cfq) #47
  br i1 %i.cfr, label %bb.ym, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.ym:                                            ; preds = %bb.yl
  %i.cfs = getelementptr inbounds nuw i8, ptr %.tr1021, i64 40
  %i.cft = load i8, ptr %i.cfs, align 8, !range !137, !noundef !4 ; 2 uses
  %.not216 = icmp eq i8 %i.cft, 2
  %i.cfu = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 40
  %i.cfv = load i8, ptr %i.cfu, align 8, !range !137, !noundef !4 ; 2 uses
  %i.cfw = icmp eq i8 %i.cfv, 2                   ; 2 uses
  br i1 %.not216, label %bb.yo, label %bb.yn

bb.yn:                                            ; preds = %bb.ym
  br i1 %i.cfw, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit, label %bb.yp

bb.yo:                                            ; preds = %bb.ym
  br i1 %i.cfw, label %bb.yq, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yp:                                            ; preds = %bb.yn
  %i.cfx = getelementptr inbounds nuw i8, ptr %.tr1021, i64 41
  %.val648 = load i8, ptr %i.cfx, align 1
  %i.cfy = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 41
  %.val650 = load i8, ptr %i.cfy, align 1
  %i.cfz = icmp eq i8 %i.cft, %i.cfv
  %i.cga = icmp eq i8 %.val648, %.val650
  %spec.select.i = select i1 %i.cfz, i1 %i.cga, i1 false
  br i1 %spec.select.i, label %bb.yq, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yq:                                            ; preds = %bb.yp, %bb.yo
  %i.cgb = getelementptr inbounds nuw i8, ptr %.tr1021, i64 8
  %i.cgc = load i64, ptr %i.cgb, align 8, !range !133, !noundef !4
  %.not218 = icmp eq i64 %i.cgc, -9223372036854775808 ; 2 uses
  %i.cgd = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 8
  %i.cge = load i64, ptr %i.cgd, align 8, !range !133, !noundef !4
  %i.cgf = icmp eq i64 %i.cge, -9223372036854775808 ; 2 uses
  %brmerge1673 = or i1 %.not218, %i.cgf
  %.mux1674 = and i1 %.not218, %i.cgf
  br i1 %brmerge1673, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.cgg = getelementptr inbounds nuw i8, ptr %.tr1021, i64 24
  %i.cgh = load i64, ptr %i.cgg, align 8, !noundef !4 ; 2 uses
  %i.cgi = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 24
  %i.cgj = load i64, ptr %i.cgi, align 8, !noundef !4
  %i.cgk = icmp eq i64 %i.cgh, %i.cgj
  br i1 %i.cgk, label %bb.ys, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.ys:                                            ; preds = %bb.yr
  %i.cgl = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 16
  %i.cgm = load ptr, ptr %i.cgl, align 8, !nonnull !4, !noundef !4
  %i.cgn = getelementptr inbounds nuw i8, ptr %.tr1021, i64 16
  %i.cgo = load ptr, ptr %i.cgn, align 8, !nonnull !4, !noundef !4
  %i.cgp = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast13UtilityOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.cgo, ptr noundef nonnull %i.cgm, i64 noundef %i.cgh)
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yt:                                            ; preds = %.lr.ph1024
  %i.cgq = getelementptr inbounds nuw i8, ptr %.tr1021, i64 8
  %i.cgr = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 8
  %i.cgs = tail call fastcc noundef zeroext i1 @_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cgq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cgr)
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yu:                                            ; preds = %.lr.ph1024
  %i.cgt = getelementptr inbounds nuw i8, ptr %.tr1021, i64 8
  %i.cgu = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 8
  %i.cgv = tail call fastcc noundef zeroext i1 @_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cgt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cgu)
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yv:                                            ; preds = %.lr.ph1024
  %i.cgw = getelementptr inbounds nuw i8, ptr %.tr1021, i64 624
  %i.cgx = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 624
  %i.cgy = getelementptr inbounds nuw i8, ptr %.tr1021, i64 1328
  %i.cgz = load i8, ptr %i.cgy, align 8, !range !5, !noundef !4
  %i.cha = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 1328
  %i.chb = load i8, ptr %i.cha, align 8, !range !5, !noundef !4
  %i.chc = icmp eq i8 %i.cgz, %i.chb
  br i1 %i.chc, label %bb.yw, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yw:                                            ; preds = %bb.yv
  %i.chd = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 8
  %i.che = getelementptr inbounds nuw i8, ptr %.tr1021, i64 8
  %i.chf = tail call fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.che, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.chd) #47
  br i1 %i.chf, label %bb.yx, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yx:                                            ; preds = %bb.yw
  %i.chg = tail call fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.cgw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.cgx) #47
  br i1 %i.chg, label %bb.yy, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yy:                                            ; preds = %bb.yx
  %i.chh = getelementptr inbounds nuw i8, ptr %.tr1021, i64 1320
  %i.chi = load ptr, ptr %i.chh, align 8, !nonnull !4, !noundef !4
  %i.chj = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 1320
  %i.chk = load ptr, ptr %i.chj, align 8, !nonnull !4, !noundef !4
  %i.chl = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.chi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.chk) #47
  br i1 %i.chl, label %bb.yz, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.yz:                                            ; preds = %bb.yy
  %i.chm = getelementptr inbounds nuw i8, ptr %.tr1021, i64 1256
  %i.chn = load i64, ptr %i.chm, align 8, !noundef !4 ; 2 uses
  %i.cho = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 1256
  %i.chp = load i64, ptr %i.cho, align 8, !noundef !4
  %i.chq = icmp eq i64 %i.chn, %i.chp
  br i1 %i.chq, label %bb.za, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.za:                                            ; preds = %bb.yz
  %i.chr = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 1248
  %i.chs = load ptr, ptr %i.chr, align 8, !nonnull !4, !noundef !4
  %i.cht = getelementptr inbounds nuw i8, ptr %.tr1021, i64 1248
  %i.chu = load ptr, ptr %i.cht, align 8, !nonnull !4, !noundef !4
  %i.chv = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast11MergeClauseINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.chu, ptr noundef nonnull %i.chs, i64 noundef %i.chn)
  br i1 %i.chv, label %bb.zb, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.zb:                                            ; preds = %bb.za
  %i.chw = getelementptr inbounds nuw i8, ptr %.tr1021, i64 1264 ; 2 uses
  %i.chx = load i64, ptr %i.chw, align 8, !range !2196, !noundef !4
  %.not214 = icmp eq i64 %i.chx, -9223372036854775807 ; 2 uses
  %i.chy = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 1264 ; 2 uses
  %i.chz = load i64, ptr %i.chy, align 8, !range !2196, !noundef !4
  %i.cia = icmp eq i64 %i.chz, -9223372036854775807 ; 2 uses
  %brmerge1675 = or i1 %.not214, %i.cia
  %.mux1676 = and i1 %.not214, %i.cia
  br i1 %brmerge1675, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit, label %bb.zc

bb.zc:                                            ; preds = %bb.zb
  %i.cib = tail call fastcc noundef zeroext i1 @_RNvXss0_NtCs4lawaffTVVK_9sqlparser3astNtB6_12OutputClauseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.chw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.chy) #47
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.zd:                                            ; preds = %.lr.ph1024
  %i.cic = getelementptr inbounds nuw i8, ptr %.tr1021, i64 88
  %i.cid = load i8, ptr %i.cic, align 8, !range !5, !noundef !4
  %i.cie = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 88
  %i.cif = load i8, ptr %i.cie, align 8, !range !5, !noundef !4
  %i.cig = icmp eq i8 %i.cid, %i.cif
  br i1 %i.cig, label %bb.ze, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.ze:                                            ; preds = %bb.zd
  %i.cih = getelementptr inbounds nuw i8, ptr %.tr1021, i64 56
  %i.cii = load i64, ptr %i.cih, align 8, !range !133, !noundef !4
  %.not210 = icmp eq i64 %i.cii, -9223372036854775808
  %i.cij = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 56
  %i.cik = load i64, ptr %i.cij, align 8, !range !133, !noundef !4
  %i.cil = icmp eq i64 %i.cik, -9223372036854775808 ; 2 uses
  br i1 %.not210, label %bb.zg, label %bb.zf

bb.zf:                                            ; preds = %bb.ze
  br i1 %i.cil, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit, label %bb.zh

bb.zg:                                            ; preds = %bb.ze
  br i1 %i.cil, label %bb.zi, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.zh:                                            ; preds = %bb.zf
  %i.cim = getelementptr inbounds nuw i8, ptr %.tr1021, i64 72
  %.val476 = load i64, ptr %i.cim, align 8, !noundef !4 ; 2 uses
  %i.cin = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 72
  %.val478 = load i64, ptr %i.cin, align 8, !noundef !4
  %i.cio = icmp eq i64 %.val476, %.val478
  br i1 %i.cio, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit704, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit704: ; preds = %bb.zh
  %i.cip = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 64
  %.val477 = load ptr, ptr %i.cip, align 8, !nonnull !4, !noundef !4
  %i.ciq = getelementptr inbounds nuw i8, ptr %.tr1021, i64 64
  %.val475 = load ptr, ptr %i.ciq, align 8, !nonnull !4, !noundef !4
  %i.cir = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.val475, ptr noundef nonnull %.val477, i64 noundef %.val476)
  br i1 %i.cir, label %bb.zi, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.zi:                                            ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit704, %bb.zg
  %i.cis = getelementptr inbounds nuw i8, ptr %.tr1021, i64 24
  %.val472 = load i64, ptr %i.cis, align 8, !noundef !4 ; 2 uses
  %i.cit = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 24
  %.val474 = load i64, ptr %i.cit, align 8, !noundef !4
  %i.ciu = icmp eq i64 %.val472, %.val474
  br i1 %i.ciu, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit706, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit706: ; preds = %bb.zi
  %i.civ = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 16
  %.val473 = load ptr, ptr %i.civ, align 8, !nonnull !4, !noundef !4
  %i.ciw = getelementptr inbounds nuw i8, ptr %.tr1021, i64 16
  %.val471 = load ptr, ptr %i.ciw, align 8, !nonnull !4, !noundef !4
  %i.cix = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.val471, ptr noundef nonnull %.val473, i64 noundef %.val472)
  br i1 %i.cix, label %bb.zj, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.zj:                                            ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit706
  %i.ciy = getelementptr inbounds nuw i8, ptr %.tr1021, i64 48
  %i.ciz = load i64, ptr %i.ciy, align 8, !noundef !4 ; 2 uses
  %i.cja = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 48
  %i.cjb = load i64, ptr %i.cja, align 8, !noundef !4
  %i.cjc = icmp eq i64 %i.ciz, %i.cjb
  br i1 %i.cjc, label %bb.zk, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.zk:                                            ; preds = %bb.zj
  %i.cjd = getelementptr inbounds nuw i8, ptr %.tr7841022, i64 40
  %i.cje = load ptr, ptr %i.cjd, align 8, !nonnull !4, !noundef !4
end_hunk_12
