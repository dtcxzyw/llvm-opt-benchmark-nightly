inline.NumInlined: 983
inline.NumDeleted: 505
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5retry10RetryErrorEBM_:bb.a
bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !777, !align !285, !noundef !16
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.e

bb.e:                                             ; preds = %.body
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !780, !align !285, !noundef !16
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit1, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit1

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit1: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.f
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #30
          to label %common.resume unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core7TrailerECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !align !285, !noundef !16 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !16, !noundef !16
  invoke void %i.e(ptr noundef %.val1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c, !inline_history !286

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !789, !noundef !16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !790
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_INtNtNtCskQDtHcQtBkN_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SyncNtB2G_4SendEL_E9drop_slowB1C_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !801, !noundef !16 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECsgO8S5jLFugx_23deltalake_catalog_unity.exit3, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !802
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECsgO8S5jLFugx_23deltalake_catalog_unity.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_INtNtNtCskQDtHcQtBkN_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SyncNtB2G_4SendEL_E9drop_slowB1C_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECsgO8S5jLFugx_23deltalake_catalog_unity.exit3

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECsgO8S5jLFugx_23deltalake_catalog_unity.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !67

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsbvkFyIu7lgC_4core6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1o_NtNtNtB1s_4task4wake5WakerEEEENCNvMs9_B10_BX_3new0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #2 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %.sink = and i8 %2, 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCseKAYRfgxGTE_14event_listener3sys5InneruEENCNvMs9_B10_BX_3new0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #2 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %.sink = and i8 %2, 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerENCNvMs9_B10_BX_3new0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #2 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %.sink = and i8 %2, 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerENCNvMs9_B10_BX_3new0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #2 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %.sink = and i8 %2, 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuarduENCNvMs9_B10_BX_3new0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 4 %3) unnamed_addr #2 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %.sink = and i8 %2, 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 6 uses
  %i.b = alloca [96 x i8], align 16               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = tail call noundef zeroext i1 @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !807
  br i1 %i.d, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE15try_read_outputCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !810
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !810
  store i32 2, ptr %i.e, align 16, !noalias !810
  %i.f = load i32, ptr %i.a, align 16, !range !275, !noalias !810, !noundef !16
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE11take_output0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.c, !prof !67

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #29
          to label %bb.e unwind label %bb.d, !noalias !814

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load i32, ptr %i.a, align 16, !range !275, !noalias !810, !noundef !16
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %common.resume.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.f, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.h, %bb.f ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB2e_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5w_5error5ErrorEEs_0EEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 16 dereferenceable(112) %i.a) #30
          to label %common.resume.i unwind label %bb.g, !noalias !814

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !814
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE11take_output0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, ptr noundef nonnull align 16 dereferenceable(96) %i.l, i64 96, i1 false), !noalias !815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !810
  %i.m = load i64, ptr %1, align 16, !range !816, !alias.scope !817, !noalias !820, !noundef !16
  %.not.i.i = icmp eq i64 %i.m, -9223372036854775741
  br i1 %.not.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE11take_output0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1I_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 16 dereferenceable(96) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !820
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.h, %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE11take_output0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE15try_read_outputCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE15try_read_outputCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3l_19UnityCatalogBuilder17execute_uc_futureNCNvB3h_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1H_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5V_B5V_EENtB3l_17UnityCatalogErrorEE0B5i_E00EENtNtB15_8schedule16BlockingScheduleEB3l_(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !821
  br i1 %i.c, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE15try_read_outputB3p_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !824
  store i32 2, ptr %i.d, align 8, !noalias !824
  %i.e = load i32, ptr %i.a, align 8, !range !275, !noalias !824, !noundef !16
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3l_19UnityCatalogBuilder17execute_uc_futureNCNvB3h_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1H_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5V_B5V_EENtB3l_17UnityCatalogErrorEE0B5i_E00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3l_.exit.i, label %bb.c, !prof !67

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #29
          to label %bb.d unwind label %bb.e, !noalias !828

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.x, %.body.i ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3S_19UnityCatalogBuilder17execute_uc_futureNCNvB3O_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtB2e_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6c_B6c_EENtB3S_17UnityCatalogErrorEE0B5P_E00EEEEB3S_(ptr noalias noundef align 8 dereferenceable(32) %i.a) #30
          to label %common.resume.i unwind label %bb.f, !noalias !828

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !828
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3l_19UnityCatalogBuilder17execute_uc_futureNCNvB3h_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1H_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5V_B5V_EENtB3l_17UnityCatalogErrorEE0B5i_E00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3l_.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !824
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %i.j = load i64, ptr %1, align 8, !range !47, !alias.scope !833, !noalias !834, !noundef !16
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3l_19UnityCatalogBuilder17execute_uc_futureNCNvB3h_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1H_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5V_B5V_EENtB3l_17UnityCatalogErrorEE0B5i_E00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3l_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !838, !noalias !834, !noundef !16
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !838, !noalias !834, !noundef !16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !838, !noalias !834 ; 6 uses
  %i.q = icmp eq ptr %.val.i.i.i, null
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.r = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !16, !noalias !838 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.r(ptr noundef nonnull %.val.i.i.i)
          to label %bb.k unwind label %bb.m, !noalias !838

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !140, !invariant.load !16, !noalias !838 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !141, !invariant.load !16, !noalias !838
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #28, !noalias !838
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.m:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !140, !invariant.load !16, !noalias !838 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.body.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !141, !invariant.load !16, !noalias !838
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #28, !noalias !838
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !834
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3l_19UnityCatalogBuilder17execute_uc_futureNCNvB3h_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1H_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5V_B5V_EENtB3l_17UnityCatalogErrorEE0B5i_E00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3l_.exit.i
  store i64 0, ptr %1, align 8, !alias.scope !821, !noalias !834
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !834
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE15try_read_outputB3p_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE15try_read_outputB3p_.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
