Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3-c97dc5db0a5415c3.pyo3.99b17b84ad475dbd-cgu.14?download=true
inline.NumInlined: 228
inline.NumDeleted: 126
begin_hunk_0_@_RINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE10initializeNCINvMs4_NtB8_4syncINtB2h_8OnceCellBP_E11get_or_initNCINvNtNtBU_4sync9once_lock26init_once_cell_py_attachedNCNvNtNtBU_5impl_16extract_argument25argument_extraction_error0BP_E0E0NtNvMs4_B2h_IB2s_pE11get_or_init4VoidEBU_:bb.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB16_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1W_5types6string8PyStringEE11get_or_initNCINvNtNtB1W_4sync9once_lock26init_once_cell_py_attachedNCNvNtNtB1W_5impl_16extract_argument25argument_extraction_error0B1R_E0E0EEB1W_.exit1: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB16_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1W_5types6string8PyStringEE11get_or_initNCINvNtNtB1W_4sync9once_lock26init_once_cell_py_attachedNCNvNtNtB1W_5impl_16extract_argument25argument_extraction_error0B1R_E0E0EEB1W_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.h
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types8datetime10PyDateTimeEE10initializeNCINvNtNtBU_4sync9once_lock30try_init_once_cell_py_attachedNCNvNtNtNtBU_11conversions3std4time13unix_epoch_py0BP_NtNtBU_3err5PyErrE0B42_EBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.e, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.g, align 8
  invoke void @_RNvNtCsjCbDjdVFjRH_9once_cell3imp18initialize_or_wait(ptr noundef nonnull align 8 %1, ptr noundef nonnull %i.a, ptr nonnull @7)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load i64, ptr %i.c, align 8, !range !5, !alias.scope !70, !noundef !4
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !71, !noundef !4
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock30try_init_once_cell_py_attachedNCNvNtNtNtB16_11conversions3std4time13unix_epoch_py0INtNtB16_8instance2PyNtNtNtB16_5types8datetime10PyDateTimeENtNtB16_3err5PyErrE0EEB16_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock30try_init_once_cell_py_attachedNCNvNtNtNtB16_11conversions3std4time13unix_epoch_py0INtNtB16_8instance2PyNtNtNtB16_5types8datetime10PyDateTimeENtNtB16_3err5PyErrE0EEB16_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock30try_init_once_cell_py_attachedNCNvNtNtNtB16_11conversions3std4time13unix_epoch_py0INtNtB16_8instance2PyNtNtNtB16_5types8datetime10PyDateTimeENtNtB16_3err5PyErrE0EEB16_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.g, %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit: ; preds = %bb.b, %bb.c
  %i.p = load ptr, ptr %i.d, align 8, !alias.scope !72, !noundef !4
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock30try_init_once_cell_py_attachedNCNvNtNtNtB16_11conversions3std4time13unix_epoch_py0INtNtB16_8instance2PyNtNtNtB16_5types8datetime10PyDateTimeENtNtB16_3err5PyErrE0EEB16_.exit2, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock30try_init_once_cell_py_attachedNCNvNtNtNtB16_11conversions3std4time13unix_epoch_py0INtNtB16_8instance2PyNtNtNtB16_5types8datetime10PyDateTimeENtNtB16_3err5PyErrE0EEB16_.exit2 unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock30try_init_once_cell_py_attachedNCNvNtNtNtB16_11conversions3std4time13unix_epoch_py0INtNtB16_8instance2PyNtNtNtB16_5types8datetime10PyDateTimeENtNtB16_3err5PyErrE0EEB16_.exit2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit, %bb.g
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.b = load i64, ptr %i.a, align 8, !range !5, !alias.scope !82, !noundef !4
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state10PyErrStateEBH_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !82, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !82, !nonnull !4, !noundef !4 ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !4, !noalias !82 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i)
          to label %bb.e unwind label %bb.g, !noalias !82

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !83, !invariant.load !4, !noalias !82 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state10PyErrStateEBH_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !84, !invariant.load !4, !noalias !82
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #13, !noalias !82
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state10PyErrStateEBH_.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !83, !invariant.load !4, !noalias !82 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtCsdc6yCHiM2ZJ_4pyo36marker6PythonL0_EEEp6OutputNtNtNtB1A_3err9err_state22PyErrStateLazyFnOutputNtNtBR_6marker4SendNtB39_4SyncEL_ENtNtBP_4drop4Drop4dropB1A_.exit4.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !84, !invariant.load !4, !noalias !82
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #13, !noalias !82
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtCsdc6yCHiM2ZJ_4pyo36marker6PythonL0_EEEp6OutputNtNtNtB1A_3err9err_state22PyErrStateLazyFnOutputNtNtBR_6marker4SendNtB39_4SyncEL_ENtNtBP_4drop4Drop4dropB1A_.exit4.i.i.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtCsdc6yCHiM2ZJ_4pyo36marker6PythonL0_EEEp6OutputNtNtNtB1A_3err9err_state22PyErrStateLazyFnOutputNtNtBR_6marker4SendNtB39_4SyncEL_ENtNtBP_4drop4Drop4dropB1A_.exit4.i.i.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.l

bb.i:                                             ; preds = %bb.b
  %i.r = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !82, !noundef !4
  %i.s = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.s, label %bb.k, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNvXsA_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_2PypENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val1.i.i.i), !noalias !82
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state10PyErrStateEBH_.exit

bb.k:                                             ; preds = %bb.i
  %i.t = load i64, ptr %.val1.i.i.i, align 8, !noalias !82, !noundef !4 ; 2 uses
  %i.u = and i64 %i.t, 2147483648
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state10PyErrStateEBH_.exit

bb.l:                                             ; preds = %bb.k
  %i.v = add i64 %i.t, -1                         ; 2 uses
  store i64 %i.v, ptr %.val1.i.i.i, align 8, !noalias !82
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state10PyErrStateEBH_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val1.i.i.i) #13, !noalias !82
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state10PyErrStateEBH_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state10PyErrStateEBH_.exit: ; preds = %bb.a, %bb.e, %bb.f, %bb.j, %bb.k, %bb.l, %bb.m
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvXs1_NtBW_5panicNtB44_14PanicExceptionNtNtBW_11type_object10PyTypeInfo15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0BW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !89
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %i.d, align 8, !noalias !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %i.f, align 8, !noalias !89
  call void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !89
  %i.g = call { ptr, i64 } @_RNvCs971naDxHMnY_8pyo3_ffi32__cstr_from_utf8_with_nul_checked(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 28), !noalias !89 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  %i.j = call { ptr, i64 } @_RNvCs971naDxHMnY_8pyo3_ffi32__cstr_from_utf8_with_nul_checked(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 236), !noalias !89 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 2 uses
  %1 = extractvalue { ptr, i64 } %i.j, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !89
  %i.l = load ptr, ptr @PyExc_BaseException, align 8, !noalias !89, !nonnull !4, !noundef !4 ; 9 uses
  %i.m = load i32, ptr %i.l, align 8, !noalias !89, !noundef !4
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.n, ptr %i.l, align 8, !noalias !89
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.l, ptr %i.b, align 8, !noalias !89
  invoke void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr8new_type(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.b, ptr noundef null)
          to label %bb.g unwind label %bb.d, !noalias !89

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.d
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.x, %bb.i ] ; 3 uses
  %i.q = load i64, ptr %i.l, align 8, !noalias !89, !noundef !4 ; 2 uses
  %i.r = and i64 %i.q, 2147483648
  %.not.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %common.resume

bb.e:                                             ; preds = %.body.i.i.i
  %i.s = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.s, ptr %i.l, align 8, !noalias !89
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.f, label %common.resume

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #13, !noalias !89
  br label %common.resume

bb.g:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.u = load i64, ptr %i.c, align 8, !range !5, !alias.scope !90, !noalias !89, !noundef !4
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.h, label %bb.l, !prof !9

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !91
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.w, i64 48, i1 false), !noalias !89
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 40, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #15
          to label %bb.j unwind label %bb.i, !noalias !91

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #16
          to label %.body.i.i.i unwind label %bb.k, !noalias !91

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !91
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !90, !noalias !89, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !89
  %i.ab = load i64, ptr %i.l, align 8, !noalias !89, !noundef !4 ; 2 uses
  %i.ac = and i64 %i.ab, 2147483648
  %.not.i.i2.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i2.i.i.i, label %bb.m, label %_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvXs1_NtBX_5panicNtB3g_14PanicExceptionNtNtBX_11type_object10PyTypeInfo15type_object_raw0BS_E0E0BX_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = add i64 %i.ab, -1                       ; 2 uses
  store i64 %i.ad, ptr %i.l, align 8, !noalias !89
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvXs1_NtBX_5panicNtB3g_14PanicExceptionNtNtBX_11type_object10PyTypeInfo15type_object_raw0BS_E0E0BX_.exit

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #13, !noalias !89
  br label %_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvXs1_NtBX_5panicNtB3g_14PanicExceptionNtNtBX_11type_object10PyTypeInfo15type_object_raw0BS_E0E0BX_.exit

common.resume:                                    ; preds = %.body.i.i.i, %bb.e, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.t ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %eh.lpad-body.i.i.i, %bb.e ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op

_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvXs1_NtBX_5panicNtB3g_14PanicExceptionNtNtBX_11type_object10PyTypeInfo15type_object_raw0BS_E0E0BX_.exit: ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !89
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !noundef !4
  %.val = load ptr, ptr %i.ah, align 8, !noundef !4 ; 5 uses
  %i.ai = icmp eq ptr %.val, null
  br i1 %i.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEEB12_.exit, label %bb.o

bb.o:                                             ; preds = %_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvXs1_NtBX_5panicNtB3g_14PanicExceptionNtNtBX_11type_object10PyTypeInfo15type_object_raw0BS_E0E0BX_.exit
  %i.aj = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.aj, align 8, !noundef !4
  %i.ak = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.ak, label %bb.q, label %bb.p, !prof !7

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNvXsA_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_2PypENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEEB12_.exit unwind label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.al = load i64, ptr %.val, align 8, !noundef !4 ; 2 uses
  %i.am = and i64 %i.al, 2147483648
  %.not.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEEB12_.exit

bb.r:                                             ; preds = %bb.q
  %i.an = add i64 %i.al, -1                       ; 2 uses
  store i64 %i.an, ptr %.val, align 8
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEEB12_.exit

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %.val) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEEB12_.exit

bb.t:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %i.ag, align 8, !noundef !4
  store ptr %i.aa, ptr %i.aq, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEEB12_.exit: ; preds = %bb.s, %bb.r, %bb.q, %_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvXs1_NtBX_5panicNtB3g_14PanicExceptionNtNtBX_11type_object10PyTypeInfo15type_object_raw0BS_E0E0BX_.exit, %bb.p
  %i.ar = load ptr, ptr %i.ag, align 8, !noundef !4
  store ptr %i.aa, ptr %i.ar, align 8
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvNtNtBW_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2i_INtB2i_10PyOnceLockBR_E6import0BR_NtNtBW_3err5PyErrE0B3U_E0BW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.13 = alloca [40 x i8], align 8           ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.5.sroa.6.0.copyload = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !101
  store i64 %.sroa.5.sroa.5.0.copyload, ptr %i.e, align 8, !noalias !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5.sroa.6.0.copyload, ptr %i.g, align 8, !noalias !101
  call void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e), !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !101
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102
  %i.h = load ptr, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !102, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !102, !noundef !4
  call fastcc void @_RINvMNtNtCsdc6yCHiM2ZJ_4pyo35types6moduleNtB3_8PyModule6importReEB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j), !noalias !102
  %i.k = load i64, ptr %i.b, align 8, !range !5, !noalias !102, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.015.0.copyload.i.i = load ptr, ptr %i.m, align 8, !noalias !102 ; 11 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.416.0..sroa_idx.i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !102
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  store ptr %.sroa.015.0.copyload.i.i, ptr %i.c, align 8, !noalias !102
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  %i.n = load ptr, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !102, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !102, !noundef !4
  invoke void @_RINvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReEB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p)
          to label %bb.g unwind label %bb.d, !noalias !102

bb.d:                                             ; preds = %bb.l, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.r = load i64, ptr %.sroa.015.0.copyload.i.i, align 8, !noalias !102, !noundef !4 ; 2 uses
  %i.s = and i64 %i.r, 2147483648
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  %i.t = add i64 %i.r, -1                         ; 2 uses
  store i64 %i.t, ptr %.sroa.015.0.copyload.i.i, align 8, !noalias !102
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.f, label %common.resume

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.015.0.copyload.i.i) #13, !noalias !102
  br label %common.resume

bb.g:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.d, align 8, !range !5, !noalias !102, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.021.0.copyload.i.i = load ptr, ptr %i.x, align 8, !noalias !102 ; 6 uses
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.422.0..sroa_idx.i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !102
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !102
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !103, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !103, !noundef !4
  %i.ac = and i64 %i.ab, 2147483648
  %.not.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.j, label %_RINvNvMs_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_5BoundpE9cast_into5innerNtNtNtB9_5types10typeobject6PyTypeEB9_.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr @PyType_Type, align 8, !noalias !103, !noundef !4
  %i.ae = add i32 %i.ad, 1                        ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ae, ptr @PyType_Type, align 8, !noalias !103
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102
  invoke void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo33err10cast_errorNtB7_5PyErrINtNtCskKLDkoKarTP_4core7convert4FromNtB5_13CastIntoErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.021.0.copyload.i.i, ptr noundef nonnull @PyType_Type)
          to label %bb.o unwind label %bb.d, !noalias !102

_RINvNvMs_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_5BoundpE9cast_into5innerNtNtNtB9_5types10typeobject6PyTypeEB9_.exit.i.i: ; preds = %bb.i
  %i.ag = load i64, ptr %.sroa.015.0.copyload.i.i, align 8, !noalias !102, !noundef !4 ; 2 uses
  %i.ah = and i64 %i.ag, 2147483648
  %.not.i.i32.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i32.i.i, label %bb.m, label %bb.u

bb.m:                                             ; preds = %_RINvNvMs_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_5BoundpE9cast_into5innerNtNtNtB9_5types10typeobject6PyTypeEB9_.exit.i.i
  %i.ai = add i64 %i.ag, -1                       ; 2 uses
  store i64 %i.ai, ptr %.sroa.015.0.copyload.i.i, align 8, !noalias !102
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.015.0.copyload.i.i) #13, !noalias !102
  br label %bb.u

common.resume:                                    ; preds = %bb.aa, %bb.ac, %bb.d, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.q, %bb.f ], [ %i.q, %bb.e ], [ %i.bg, %bb.ac ], [ %i.bd, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.l
  %.sroa.715.8.copyload16 = load ptr, ptr %i.a, align 8, !noalias !104
  %.sroa.13.8..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.8..sroa_idx17, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.h
  %.sroa.715.0 = phi ptr [ %.sroa.021.0.copyload.i.i, %bb.h ], [ %.sroa.715.8.copyload16, %bb.o ] ; 3 uses
  %i.ak = load i64, ptr %.sroa.015.0.copyload.i.i, align 8, !noalias !102, !noundef !4 ; 2 uses
  %i.al = and i64 %i.ak, 2147483648
  %.not.i.i35.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i35.i.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.am = add i64 %i.ak, -1                       ; 2 uses
  store i64 %i.am, ptr %.sroa.015.0.copyload.i.i, align 8, !noalias !102
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.015.0.copyload.i.i) #13, !noalias !102
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.p, %bb.q, %bb.r
  %.sroa.715.1 = phi ptr [ %.sroa.015.0.copyload.i.i, %bb.b ], [ %.sroa.715.0, %bb.r ], [ %.sroa.715.0, %bb.q ], [ %.sroa.715.0, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !102
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !4, !align !8, !noundef !4 ; 7 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !5, !alias.scope !105, !noundef !4
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.as)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit unwind label %bb.ac

bb.u:                                             ; preds = %bb.n, %bb.m, %_RINvNvMs_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_5BoundpE9cast_into5innerNtNtNtB9_5types10typeobject6PyTypeEB9_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !102
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.0.copyload.i.i) ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !noundef !4
  %.val = load ptr, ptr %i.av, align 8, !noundef !4 ; 5 uses
  %i.aw = icmp eq ptr %.val, null
  br i1 %i.aw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEEB12_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.ax, align 8, !noundef !4
  %i.ay = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.ay, label %bb.x, label %bb.w, !prof !7

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNvXsA_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_2PypENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEEB12_.exit unwind label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.az = load i64, ptr %.val, align 8, !noundef !4 ; 2 uses
  %i.ba = and i64 %i.az, 2147483648
  %.not.i.i.i.i11 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i11, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEEB12_.exit

bb.y:                                             ; preds = %bb.x
  %i.bb = add i64 %i.az, -1                       ; 2 uses
  store i64 %i.bb, ptr %.val, align 8
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEEB12_.exit

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %.val) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEEB12_.exit

bb.aa:                                            ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %i.au, align 8, !noundef !4
  store ptr %.sroa.021.0.copyload.i.i, ptr %i.be, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEEB12_.exit: ; preds = %bb.z, %bb.y, %bb.x, %bb.u, %bb.w
  %i.bf = load ptr, ptr %i.au, align 8, !noundef !4
  store ptr %.sroa.021.0.copyload.i.i, ptr %i.bf, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEEB12_.exit
  %.sroa.0.0 = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEEB12_.exit ]
  ret i1 %.sroa.0.0

bb.ac:                                            ; preds = %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.ap, align 8
  store ptr %.sroa.715.1, ptr %i.as, align 8
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13, i64 40, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit: ; preds = %bb.s, %bb.t
  store i64 1, ptr %i.ap, align 8
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %.sroa.715.1, ptr %.sroa.56.0..sroa_idx7, align 8
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx7.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13, i64 40, i1 false)
  br label %bb.ab
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBW_5types3any5PyAnyEE10initializeNCINvNtNtBW_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B29_INtB29_10PyOnceLockBR_E6import0BR_NtNtBW_3err5PyErrE0B3L_E0BW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.11 = alloca [40 x i8], align 8           ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.5.sroa.6.0.copyload = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !113
  store i64 %.sroa.5.sroa.5.0.copyload, ptr %i.d, align 8, !noalias !113
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.sroa.6.0.copyload, ptr %i.f, align 8, !noalias !113
  call void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !113
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !114
  %i.g = load ptr, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !114, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !114, !noundef !4
  call fastcc void @_RINvMNtNtCsdc6yCHiM2ZJ_4pyo35types6moduleNtB3_8PyModule6importReEB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i), !noalias !114
  %i.j = load i64, ptr %i.a, align 8, !range !5, !noalias !114, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.015.0.copyload.i.i = load ptr, ptr %i.l, align 8, !noalias !114 ; 11 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.416.0..sroa_idx.i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !114
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !114
  store ptr %.sroa.015.0.copyload.i.i, ptr %i.b, align 8, !noalias !114
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  %i.m = load ptr, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !114, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !114, !noundef !4
  invoke void @_RINvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReEB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.g unwind label %bb.d, !noalias !114

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.q = load i64, ptr %.sroa.015.0.copyload.i.i, align 8, !noalias !114, !noundef !4 ; 2 uses
  %i.r = and i64 %i.q, 2147483648
  %.not.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  %i.s = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.s, ptr %.sroa.015.0.copyload.i.i, align 8, !noalias !114
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.f, label %common.resume

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.015.0.copyload.i.i) #13, !noalias !114
  br label %common.resume

bb.g:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.c, align 8, !range !5, !noalias !114, !noundef !4
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.021.0.copyload.i.i = load ptr, ptr %i.w, align 8, !noalias !114 ; 6 uses
  br i1 %i.v, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !114
  %i.x = load i64, ptr %.sroa.015.0.copyload.i.i, align 8, !noalias !114, !noundef !4 ; 2 uses
  %i.y = and i64 %i.x, 2147483648
  %.not.i.i32.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i32.i.i, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.z = add i64 %i.x, -1                         ; 2 uses
  store i64 %i.z, ptr %.sroa.015.0.copyload.i.i, align 8, !noalias !114
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.015.0.copyload.i.i) #13, !noalias !114
  br label %bb.p

common.resume:                                    ; preds = %bb.v, %bb.x, %bb.d, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.p, %bb.f ], [ %i.p, %bb.e ], [ %i.ax, %bb.x ], [ %i.au, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.g
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.422.0..sroa_idx.i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !114
  %i.ab = load i64, ptr %.sroa.015.0.copyload.i.i, align 8, !noalias !114, !noundef !4 ; 2 uses
  %i.ac = and i64 %i.ab, 2147483648
  %.not.i.i35.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i35.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ad = add i64 %i.ab, -1                       ; 2 uses
  store i64 %i.ad, ptr %.sroa.015.0.copyload.i.i, align 8, !noalias !114
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.015.0.copyload.i.i) #13, !noalias !114
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.k, %bb.l, %bb.m
  %.sroa.615.0 = phi ptr [ %.sroa.015.0.copyload.i.i, %bb.b ], [ %.sroa.021.0.copyload.i.i, %bb.m ], [ %.sroa.021.0.copyload.i.i, %bb.l ], [ %.sroa.021.0.copyload.i.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !114
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !align !8, !noundef !4 ; 7 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !5, !alias.scope !115, !noundef !4
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit unwind label %bb.x

bb.p:                                             ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !114
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.0.copyload.i.i) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !noundef !4
  %.val = load ptr, ptr %i.am, align 8, !noundef !4 ; 5 uses
  %i.an = icmp eq ptr %.val, null
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEEB12_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.ao, align 8, !noundef !4
  %i.ap = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.ap, label %bb.s, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNvXsA_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_2PypENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEEB12_.exit unwind label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.aq = load i64, ptr %.val, align 8, !noundef !4 ; 2 uses
  %i.ar = and i64 %i.aq, 2147483648
  %.not.i.i.i.i11 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i11, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEEB12_.exit

bb.t:                                             ; preds = %bb.s
  %i.as = add i64 %i.aq, -1                       ; 2 uses
  store i64 %i.as, ptr %.val, align 8
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEEB12_.exit

bb.u:                                             ; preds = %bb.t
  call void @_Py_Dealloc(ptr noundef nonnull %.val) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEEB12_.exit

bb.v:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %i.al, align 8, !noundef !4
  store ptr %.sroa.021.0.copyload.i.i, ptr %i.av, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEEB12_.exit: ; preds = %bb.u, %bb.t, %bb.s, %bb.p, %bb.r
  %i.aw = load ptr, ptr %i.al, align 8, !noundef !4
  store ptr %.sroa.021.0.copyload.i.i, ptr %i.aw, align 8
  br label %bb.w

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEEB12_.exit
  %.sroa.0.0 = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEEB12_.exit ]
  ret i1 %.sroa.0.0

bb.x:                                             ; preds = %bb.o
  %i.ax = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.ag, align 8
  store ptr %.sroa.615.0, ptr %i.aj, align 8
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, i64 40, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit: ; preds = %bb.n, %bb.o
  store i64 1, ptr %i.ag, align 8
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.sroa.615.0, ptr %.sroa.56.0..sroa_idx7, align 8
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx7.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, i64 40, i1 false)
  br label %bb.w
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBW_5types3any5PyAnyEE10initializeNCINvNtNtBW_4sync9once_lock30try_init_once_cell_py_attachedNCNvXNtNtB1v_7weakref6anyrefNtB36_9PyWeakrefNtNtBW_11type_object11PyTypeCheck16classinfo_object0BR_NtNtBW_3err5PyErrE0B4C_E0BW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.56.sroa.5 = alloca [40 x i8], align 8    ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !122
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %i.c, align 8, !noalias !122
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %i.e, align 8, !noalias !122
  call void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !123
  %i.f = call noundef nonnull ptr @_RNvXNtNtNtCsdc6yCHiM2ZJ_4pyo35types7weakref5proxyNtB2_14PyWeakrefProxyNtNtB8_11type_object11PyTypeCheck16classinfo_object(), !noalias !123
  %i.g = load i32, ptr @_PyWeakref_RefType, align 8, !noalias !123, !noundef !4
  %i.h = add i32 %i.g, 1                          ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.h, ptr @_PyWeakref_RefType, align 8, !noalias !123
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.f, ptr %i.a, align 8, !noalias !123
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_PyWeakref_RefType, ptr %i.j, align 8, !noalias !123
  call void @_RINvMNtNtCsdc6yCHiM2ZJ_4pyo35types5tupleNtB3_7PyTuple3newINtNtB7_8instance5BoundNtNtB5_3any5PyAnyEINtNtNtCskKLDkoKarTP_4core5array4iter8IntoIterBT_Kj2_EABT_B2m_EB7_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !123
  %i.k = load i64, ptr %i.b, align 8, !range !5, !noalias !123, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.06.0.copyload.i.i = load ptr, ptr %i.m, align 8, !noalias !123 ; 5 uses
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx.i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !align !8, !noundef !4 ; 7 uses
  %i.p = load i64, ptr %i.o, align 8, !range !5, !alias.scope !124, !noundef !4
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit unwind label %bb.o

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.0.copyload.i.i) ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !noundef !4
  %.val = load ptr, ptr %i.u, align 8, !noundef !4 ; 5 uses
  %i.v = icmp eq ptr %.val, null
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEEB12_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.w, align 8, !noundef !4
  %i.x = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.x, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvXsA_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_2PypENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEEB12_.exit unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.y = load i64, ptr %.val, align 8, !noundef !4 ; 2 uses
  %i.z = and i64 %i.y, 2147483648
  %.not.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEEB12_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = add i64 %i.y, -1                        ; 2 uses
  store i64 %i.aa, ptr %.val, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEEB12_.exit

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %.val) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEEB12_.exit

bb.l:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %i.t, align 8, !noundef !4
  store ptr %.sroa.06.0.copyload.i.i, ptr %i.ad, align 8
  br label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEEB12_.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.f, %bb.h
  %i.ae = load ptr, ptr %i.t, align 8, !noundef !4
  store ptr %.sroa.06.0.copyload.i.i, ptr %i.ae, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEEB12_.exit
  %.sroa.0.0 = xor i1 %i.l, true
  ret i1 %.sroa.0.0

bb.n:                                             ; preds = %bb.o, %bb.l
  %.pn = phi { ptr, i32 } [ %i.af, %bb.o ], [ %i.ac, %bb.l ]
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.o, align 8
  store ptr %.sroa.06.0.copyload.i.i, ptr %i.r, align 8
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.sroa.5, i64 40, i1 false)
  br label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit: ; preds = %bb.d, %bb.e
  store i64 1, ptr %i.o, align 8
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.06.0.copyload.i.i, ptr %.sroa.56.0..sroa_idx7, align 8
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx7.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.sroa.5, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56.sroa.5)
  br label %bb.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBW_5types6module8PyModuleEE10initializeNCINvNtNtBW_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs_NtNtBW_5impl_8pymoduleNtB3e_9ModuleDef11make_modules_0BR_NtNtBW_3err5PyErrE0B49_E0BW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 6 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 5 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.5.sroa.6.0.copyload = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !134
  store i64 %.sroa.5.sroa.5.0.copyload, ptr %i.e, align 8, !noalias !134
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5.sroa.6.0.copyload, ptr %i.h, align 8, !noalias !134
  call void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e), !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !134
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !134
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 16 ; 2 uses
  %i.k = load ptr, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !135, !nonnull !4, !noundef !4
  %i.l = call noundef ptr @PyModule_FromDefAndSpec2(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, i32 noundef 1013) #13, !noalias !135 ; 13 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !136, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, @PyModule_Type
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_RNvXNtCsdc6yCHiM2ZJ_4pyo311type_objectNtNtNtB4_5types6module8PyModuleNtB2_11PyTypeCheck10type_checkB4_.exit.i.i.i

_RNvXNtCsdc6yCHiM2ZJ_4pyo311type_objectNtNtNtB4_5types6module8PyModuleNtB2_11PyTypeCheck10type_checkB4_.exit.i.i.i: ; preds = %bb.b
  %i.p = call noundef i32 @PyType_IsSubtype(ptr noundef %i.o, ptr noundef nonnull @PyModule_Type) #13, !noalias !136
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_RNvXNtCsdc6yCHiM2ZJ_4pyo311type_objectNtNtNtB4_5types6module8PyModuleNtB2_11PyTypeCheck10type_checkB4_.exit.i.i.i
  %i.q = load i32, ptr @PyModule_Type, align 8, !noalias !136, !noundef !4
  %i.r = add i32 %i.q, 1                          ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_RINvNvMs_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_5BoundpE9cast_into5innerNtNtNtB9_5types6module8PyModuleEB9_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.r, ptr @PyModule_Type, align 8, !noalias !136
  br label %_RINvNvMs_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_5BoundpE9cast_into5innerNtNtNtB9_5types6module8PyModuleEB9_.exit.i.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !135
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c), !noalias !135
  %i.t = load i64, ptr %i.c, align 8, !range !5, !noalias !135, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.q, label %bb.r, !prof !6

_RINvNvMs_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_5BoundpE9cast_into5innerNtNtNtB9_5types6module8PyModuleEB9_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo33err10cast_errorNtB7_5PyErrINtNtCskKLDkoKarTP_4core7convert4FromNtB5_13CastIntoErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noundef nonnull %i.l, ptr noundef nonnull @PyModule_Type)
  br label %bb.t

bb.f:                                             ; preds = %_RNvXNtCsdc6yCHiM2ZJ_4pyo311type_objectNtNtNtB4_5types6module8PyModuleNtB2_11PyTypeCheck10type_checkB4_.exit.i.i.i, %bb.b
  %i.w = call noundef i32 @PyModule_ExecDef(ptr noundef nonnull %i.l, ptr noundef nonnull %i.j) #13, !noalias !135
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !135
  invoke void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a)
          to label %bb.k unwind label %bb.h, !noalias !135

bb.h:                                             ; preds = %bb.m, %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.z = load i64, ptr %i.l, align 8, !noalias !135, !noundef !4 ; 2 uses
  %i.aa = and i64 %i.z, 2147483648
  %.not.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  %i.ab = add i64 %i.z, -1                        ; 2 uses
  store i64 %i.ab, ptr %i.l, align 8, !noalias !135
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %common.resume

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #13, !noalias !135
  br label %common.resume

bb.k:                                             ; preds = %bb.g
  %i.ad = load i64, ptr %i.a, align 8, !range !5, !noalias !135, !noundef !4
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false), !noalias !135
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d)
          to label %bb.n unwind label %bb.h, !noalias !135

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !135
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !135
  %i.ah = load i64, ptr %i.l, align 8, !noalias !135, !noundef !4 ; 2 uses
  %i.ai = and i64 %i.ah, 2147483648
  %.not.i.i21.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i21.i.i, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.aj = add i64 %i.ah, -1                       ; 2 uses
  store i64 %i.aj, ptr %i.l, align 8, !noalias !135
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #13, !noalias !135
  br label %bb.t

common.resume:                                    ; preds = %bb.ab, %bb.ad, %bb.h, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.y, %bb.j ], [ %i.y, %bb.i ], [ %i.bh, %bb.ad ], [ %i.be, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.al, i64 48, i1 false), !noalias !135
  br label %bb.s

bb.r:                                             ; preds = %bb.e
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b), !noalias !135
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !135
  %.sroa.56.8.copyload.i.i = load ptr, ptr %i.b, align 8, !noalias !135
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.56.8.copyload.i.i, ptr %i.am, align 8
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.416.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_RINvNvMs_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_5BoundpE9cast_into5innerNtNtNtB9_5types6module8PyModuleEB9_.exit.i.i, %bb.n, %bb.o, %bb.p, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !134
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !4, !align !8, !noundef !4 ; 5 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !5, !alias.scope !137, !noundef !4
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.as)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit unwind label %bb.ad

bb.v:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.l, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !134
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4
  %.val = load ptr, ptr %i.aw, align 8, !noundef !4 ; 5 uses
  %i.ax = icmp eq ptr %.val, null
  br i1 %i.ax, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6module8PyModuleEEEB12_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.ay, align 8, !noundef !4
  %i.az = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.az, label %bb.y, label %bb.x, !prof !7

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNvXsA_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_2PypENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6module8PyModuleEEEB12_.exit unwind label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.ba = load i64, ptr %.val, align 8, !noundef !4 ; 2 uses
  %i.bb = and i64 %i.ba, 2147483648
  %.not.i.i.i.i11 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i.i11, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6module8PyModuleEEEB12_.exit

bb.z:                                             ; preds = %bb.y
  %i.bc = add i64 %i.ba, -1                       ; 2 uses
  store i64 %i.bc, ptr %.val, align 8
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6module8PyModuleEEEB12_.exit

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %.val) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6module8PyModuleEEEB12_.exit

bb.ab:                                            ; preds = %bb.x
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %i.av, align 8, !noundef !4
  store ptr %i.l, ptr %i.bf, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6module8PyModuleEEEB12_.exit: ; preds = %bb.aa, %bb.z, %bb.y, %bb.v, %bb.x
  %i.bg = load ptr, ptr %i.av, align 8, !noundef !4
  store ptr %i.l, ptr %i.bg, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6module8PyModuleEEEB12_.exit
  %.sroa.0.0 = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6module8PyModuleEEEB12_.exit ]
  ret i1 %.sroa.0.0

bb.ad:                                            ; preds = %bb.u
  %i.bh = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.ap, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %i.an, i64 48, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit: ; preds = %bb.t, %bb.u
  store i64 1, ptr %i.ap, align 8
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.56.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(48) %i.an, i64 48, i1 false)
  br label %bb.ac
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBW_5types6string8PyStringEE10initializeNCINvMs4_NtBa_4syncINtB2j_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B37_NtB37_8Interned3get0BR_E0E0NtNvMs4_B2j_IB2u_pE11get_or_init4VoidE0BW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5.sroa.6.0.copyload = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !142
  store i64 %.sroa.5.sroa.5.0.copyload, ptr %i.a, align 8, !noalias !142
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.sroa.6.0.copyload, ptr %i.c, align 8, !noalias !142
  call void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !142
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.d = call noundef nonnull ptr @_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB4_8PyString6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.4.0.copyload), !noalias !142 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !4
  %.val = load ptr, ptr %i.g, align 8, !noundef !4 ; 5 uses
  %i.h = icmp eq ptr %.val, null
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6string8PyStringEEEB12_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.i, align 8, !noundef !4
  %i.j = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNvXsA_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_2PypENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6string8PyStringEEEB12_.exit unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.k = load i64, ptr %.val, align 8, !noundef !4 ; 2 uses
  %i.l = and i64 %i.k, 2147483648
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6string8PyStringEEEB12_.exit

bb.e:                                             ; preds = %bb.d
  %i.m = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.m, ptr %.val, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6string8PyStringEEEB12_.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %.val) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6string8PyStringEEEB12_.exit

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %i.f, align 8, !noundef !4
  store ptr %i.d, ptr %i.p, align 8
  resume { ptr, i32 } %i.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6string8PyStringEEEB12_.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.a, %bb.c
  %i.q = load ptr, ptr %i.f, align 8, !noundef !4
  store ptr %i.d, ptr %i.q, align 8
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBW_5types6string8PyStringEE10initializeNCINvMs4_NtBa_4syncINtB2j_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvNtNtBW_5impl_16extract_argument25argument_extraction_error0BR_E0E0NtNvMs4_B2j_IB2u_pE11get_or_init4VoidE0BW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5.sroa.6.0.copyload = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !147
  store i64 %.sroa.5.sroa.5.0.copyload, ptr %i.a, align 8, !noalias !147
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.sroa.6.0.copyload, ptr %i.c, align 8, !noalias !147
  call void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !147
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.d = call noundef nonnull ptr @_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB4_8PyString6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.4.0.copyload), !noalias !147 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !4
  %.val = load ptr, ptr %i.g, align 8, !noundef !4 ; 5 uses
  %i.h = icmp eq ptr %.val, null
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6string8PyStringEEEB12_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.i, align 8, !noundef !4
  %i.j = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNvXsA_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_2PypENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6string8PyStringEEEB12_.exit unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.k = load i64, ptr %.val, align 8, !noundef !4 ; 2 uses
  %i.l = and i64 %i.k, 2147483648
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6string8PyStringEEEB12_.exit

bb.e:                                             ; preds = %bb.d
  %i.m = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.m, ptr %.val, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6string8PyStringEEEB12_.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %.val) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6string8PyStringEEEB12_.exit

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %i.f, align 8, !noundef !4
  store ptr %i.d, ptr %i.p, align 8
  resume { ptr, i32 } %i.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types6string8PyStringEEEB12_.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.a, %bb.c
  %i.q = load ptr, ptr %i.f, align 8, !noundef !4
  store ptr %i.d, ptr %i.q, align 8
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBW_5types8datetime10PyDateTimeEE10initializeNCINvNtNtBW_4sync9once_lock30try_init_once_cell_py_attachedNCNvNtNtNtBW_11conversions3std4time13unix_epoch_py0BR_NtNtBW_3err5PyErrE0B44_E0BW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !158
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %i.e, align 8, !noalias !158
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %i.i, align 8, !noalias !158
  call void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !159
  %i.j = load atomic ptr, ptr @_RNvNtCs971naDxHMnY_8pyo3_ffi8datetime18PyDateTimeAPI_impl acquire, align 8, !noalias !160 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs971naDxHMnY_8pyo3_ffi8datetime17PyDateTime_IMPORT(), !noalias !160
  %i.l = load atomic ptr, ptr @_RNvNtCs971naDxHMnY_8pyo3_ffi8datetime18PyDateTimeAPI_impl acquire, align 8, !noalias !160 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !160
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a), !noalias !160
  %i.n = load i64, ptr %i.a, align 8, !range !5, !noalias !160, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b)
  br label %bb.h

bb.f:                                             ; preds = %bb.b, %bb.a
  %.sroa.7.0.ph.i.i.i = phi ptr [ %i.l, %bb.b ], [ %i.j, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.7.0.ph.i.i.i, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !noalias !161, !noundef !4 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.i, !prof !9

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #15, !noalias !161
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !160
  %.sroa.7.8.copyload.i.i.i = load ptr, ptr %i.b, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  store ptr %i.r, ptr %i.d, align 8, !noalias !159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !159
  call void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo35types8datetimeNtB5_10PyDateTime3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, i32 noundef 1970, i8 noundef 1, i8 noundef 1, i8 noundef 0, i8 noundef 0, i8 noundef 0, i32 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.d), !noalias !159
  %i.t = load i64, ptr %i.c, align 8, !range !5, !noalias !159, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.019.0.copyload.i.i = load ptr, ptr %i.v, align 8, !noalias !159 ; 4 uses
  br i1 %i.u, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.420.0..sroa_idx.i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !159
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %.sroa.4.0.ph = phi ptr [ %.sroa.019.0.copyload.i.i, %bb.j ], [ %.sroa.7.8.copyload.i.i.i, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !159
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !align !8, !noundef !4 ; 7 uses
  %i.y = load i64, ptr %i.x, align 8, !range !5, !alias.scope !162, !noundef !4
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit unwind label %bb.v

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !159
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.019.0.copyload.i.i) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !noundef !4
  %.val12 = load ptr, ptr %i.ad, align 8, !noundef !4 ; 5 uses
  %i.ae = icmp eq ptr %.val12, null
  br i1 %i.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types8datetime10PyDateTimeEEEB12_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.af, align 8, !noundef !4
  %i.ag = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.ag, label %bb.p, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNvXsA_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_2PypENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val12)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types8datetime10PyDateTimeEEEB12_.exit unwind label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ah = load i64, ptr %.val12, align 8, !noundef !4 ; 2 uses
  %i.ai = and i64 %i.ah, 2147483648
  %.not.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types8datetime10PyDateTimeEEEB12_.exit

bb.q:                                             ; preds = %bb.p
  %i.aj = add i64 %i.ah, -1                       ; 2 uses
  store i64 %i.aj, ptr %.val12, align 8
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types8datetime10PyDateTimeEEEB12_.exit

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %.val12) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types8datetime10PyDateTimeEEEB12_.exit

bb.s:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %i.ac, align 8, !noundef !4
  store ptr %.sroa.019.0.copyload.i.i, ptr %i.am, align 8
  br label %bb.u

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types8datetime10PyDateTimeEEEB12_.exit: ; preds = %bb.r, %bb.q, %bb.p, %bb.m, %bb.o
  %i.an = load ptr, ptr %i.ac, align 8, !noundef !4
  store ptr %.sroa.019.0.copyload.i.i, ptr %i.an, align 8
  br label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types8datetime10PyDateTimeEEEB12_.exit
  %.sroa.0.0 = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB12_5types8datetime10PyDateTimeEEEB12_.exit ]
  ret i1 %.sroa.0.0

bb.u:                                             ; preds = %bb.v, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.v ], [ %i.al, %bb.s ]
  resume { ptr, i32 } %.pn

bb.v:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.x, align 8
  store ptr %.sroa.4.0.ph, ptr %i.aa, align 8
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  br label %bb.u

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEB12_.exit: ; preds = %bb.k, %bb.l
  store i64 1, ptr %i.x, align 8
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.4.0.ph, ptr %.sroa.56.0..sroa_idx7, align 8
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx7.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  br label %bb.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvXs1_NtB11_5panicNtB4b_14PanicExceptionNtNtB11_11type_object10PyTypeInfo15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableB11_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvXs1_NtBW_5panicNtB44_14PanicExceptionNtNtBW_11type_object10PyTypeInfo15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0BW_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #17 ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvNtNtB11_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2o_INtB2o_10PyOnceLockBW_E6import0BW_NtNtB11_3err5PyErrE0B41_E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableB11_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvNtNtBW_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2i_INtB2i_10PyOnceLockBR_E6import0BR_NtNtBW_3err5PyErrE0B3U_E0BW_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #17
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB11_5types3any5PyAnyEE10initializeNCINvNtNtB11_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2f_INtB2f_10PyOnceLockBW_E6import0BW_NtNtB11_3err5PyErrE0B3S_E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableB11_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBW_5types3any5PyAnyEE10initializeNCINvNtNtBW_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B29_INtB29_10PyOnceLockBR_E6import0BR_NtNtBW_3err5PyErrE0B3L_E0BW_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #17
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB11_5types3any5PyAnyEE10initializeNCINvNtNtB11_4sync9once_lock30try_init_once_cell_py_attachedNCNvXNtNtB1A_7weakref6anyrefNtB3d_9PyWeakrefNtNtB11_11type_object11PyTypeCheck16classinfo_object0BW_NtNtB11_3err5PyErrE0B4K_E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableB11_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBW_5types3any5PyAnyEE10initializeNCINvNtNtBW_4sync9once_lock30try_init_once_cell_py_attachedNCNvXNtNtB1v_7weakref6anyrefNtB36_9PyWeakrefNtNtBW_11type_object11PyTypeCheck16classinfo_object0BR_NtNtBW_3err5PyErrE0B4C_E0BW_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #17
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB11_5types6module8PyModuleEE10initializeNCINvNtNtB11_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs_NtNtB11_5impl_8pymoduleNtB3l_9ModuleDef11make_modules_0BW_NtNtB11_3err5PyErrE0B4h_E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableB11_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBW_5types6module8PyModuleEE10initializeNCINvNtNtBW_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs_NtNtBW_5impl_8pymoduleNtB3e_9ModuleDef11make_modules_0BR_NtNtBW_3err5PyErrE0B49_E0BW_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #17
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB11_5types6string8PyStringEE10initializeNCINvMs4_NtBf_4syncINtB2p_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B3d_NtB3d_8Interned3get0BW_E0E0NtNvMs4_B2p_IB2A_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableB11_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !alias.scope !171, !nonnull !4, !align !8, !noundef !4 ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !172 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.5.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !172
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.5.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !172
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.sroa.5.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !172
  store ptr null, ptr %.val, align 8, !noalias !172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !173
  store i64 %.sroa.5.sroa.5.0.copyload.i.i, ptr %i.a, align 8, !noalias !173
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.sroa.6.0.copyload.i.i, ptr %i.c, align 8, !noalias !173
  call void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !173
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  %i.d = call noundef nonnull ptr @_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB4_8PyString6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload.i.i, i64 noundef %.sroa.5.sroa.4.0.copyload.i.i), !noalias !173 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.e = load ptr, ptr %.val1, align 8, !noalias !172, !noundef !4
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !172, !noundef !4 ; 5 uses
  %i.f = icmp eq ptr %.val.i.i, null
  br i1 %i.f, label %_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B3a_NtB3a_8Interned3get0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBZ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !172, !noundef !4
  %i.h = icmp sgt i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNvXsA_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_2PypENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val.i.i)
          to label %_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B3a_NtB3a_8Interned3get0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBZ_.exit unwind label %bb.g, !noalias !172

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %.val.i.i, align 8, !noalias !172, !noundef !4 ; 2 uses
  %i.j = and i64 %i.i, 2147483648
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B3a_NtB3a_8Interned3get0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBZ_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.k, ptr %.val.i.i, align 8, !noalias !172
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B3a_NtB3a_8Interned3get0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBZ_.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %.val.i.i) #13, !noalias !172
  br label %_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B3a_NtB3a_8Interned3get0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBZ_.exit

bb.g:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %.val1, align 8, !noalias !172, !noundef !4
  store ptr %i.d, ptr %i.n, align 8, !noalias !172
  resume { ptr, i32 } %i.m

_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B3a_NtB3a_8Interned3get0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBZ_.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f
  %i.o = load ptr, ptr %.val1, align 8, !noalias !172, !noundef !4
  store ptr %i.d, ptr %i.o, align 8, !noalias !172
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB11_5types6string8PyStringEE10initializeNCINvMs4_NtBf_4syncINtB2p_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvNtNtB11_5impl_16extract_argument25argument_extraction_error0BW_E0E0NtNvMs4_B2p_IB2A_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableB11_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !alias.scope !182, !nonnull !4, !align !8, !noundef !4 ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !183 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.5.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !183
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.5.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !183
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.sroa.5.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !183
  store ptr null, ptr %.val, align 8, !noalias !183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !184
  store i64 %.sroa.5.sroa.5.0.copyload.i.i, ptr %i.a, align 8, !noalias !184
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.sroa.6.0.copyload.i.i, ptr %i.c, align 8, !noalias !184
  call void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !184
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  %i.d = call noundef nonnull ptr @_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB4_8PyString6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload.i.i, i64 noundef %.sroa.5.sroa.4.0.copyload.i.i), !noalias !184 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.e = load ptr, ptr %.val1, align 8, !noalias !183, !noundef !4
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !183, !noundef !4 ; 5 uses
  %i.f = icmp eq ptr %.val.i.i, null
  br i1 %i.f, label %_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvNtNtBZ_5impl_16extract_argument25argument_extraction_error0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBZ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !183, !noundef !4
  %i.h = icmp sgt i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNvXsA_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_2PypENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val.i.i)
          to label %_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvNtNtBZ_5impl_16extract_argument25argument_extraction_error0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBZ_.exit unwind label %bb.g, !noalias !183

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %.val.i.i, align 8, !noalias !183, !noundef !4 ; 2 uses
  %i.j = and i64 %i.i, 2147483648
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvNtNtBZ_5impl_16extract_argument25argument_extraction_error0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBZ_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.k, ptr %.val.i.i, align 8, !noalias !183
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvNtNtBZ_5impl_16extract_argument25argument_extraction_error0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBZ_.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %.val.i.i) #13, !noalias !183
  br label %_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvNtNtBZ_5impl_16extract_argument25argument_extraction_error0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBZ_.exit

bb.g:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %.val1, align 8, !noalias !183, !noundef !4
  store ptr %i.d, ptr %i.n, align 8, !noalias !183
  resume { ptr, i32 } %i.m

_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvNtNtBZ_5impl_16extract_argument25argument_extraction_error0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBZ_.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f
  %i.o = load ptr, ptr %.val1, align 8, !noalias !183, !noundef !4
  store ptr %i.d, ptr %i.o, align 8, !noalias !183
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB11_5types8datetime10PyDateTimeEE10initializeNCINvNtNtB11_4sync9once_lock30try_init_once_cell_py_attachedNCNvNtNtNtB11_11conversions3std4time13unix_epoch_py0BW_NtNtB11_3err5PyErrE0B4c_E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableB11_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBW_5types8datetime10PyDateTimeEE10initializeNCINvNtNtBW_4sync9once_lock30try_init_once_cell_py_attachedNCNvNtNtNtBW_11conversions3std4time13unix_epoch_py0BR_NtNtBW_3err5PyErrE0B44_E0BW_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #17
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo35types6moduleNtB2_8PyModule3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = tail call noundef nonnull ptr @_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB4_8PyString3new(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 9 uses
  %i.d = tail call noundef ptr @PyModule_NewObject(ptr noundef nonnull %i.c) #13 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
  store i64 0, ptr %0, align 8
  %i.g = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.h = and i64 %i.g, 2147483648
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.i, ptr %i.c, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a)
          to label %bb.h unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit.sink.split: ; preds = %bb.c, %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit.sink.split, %bb.l, %bb.k, %bb.c, %bb.b
  ret void

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.m = and i64 %i.l, 2147483648
  %.not.i.i19 = icmp eq i64 %i.m, 0
  br i1 %.not.i.i19, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit20

bb.f:                                             ; preds = %bb.e
  %i.n = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.n, ptr %i.c, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit20

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit20

bb.h:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.a, align 8, !range !5, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.i, label %bb.j, !prof !6

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b)
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.54.8.copyload = load ptr, ptr %i.b, align 8
  %.sroa.96.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.96.8..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.54.8.copyload, ptr %i.s, align 8
  store i64 1, ptr %0, align 8
  %i.t = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.u = and i64 %i.t, 2147483648
  %.not.i.i21 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i21, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit

bb.l:                                             ; preds = %bb.k
  %i.v = add i64 %i.t, -1                         ; 2 uses
  store i64 %i.v, ptr %i.c, align 8
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEEBG_.exit20: ; preds = %bb.g, %bb.f, %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo35types6moduleNtB2_8PyModule9from_code(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = load i8, ptr %3, align 1, !noundef !4
  %i.h = icmp eq i8 %i.g, 0
  %spec.select = select i1 %i.h, ptr @16, ptr %3  ; 2 uses
  %i.i = tail call noundef ptr @Py_CompileStringExFlags(ptr noundef nonnull %1, ptr noundef nonnull %spec.select, i32 noundef 257, ptr noundef null, i32 noundef -1) #13 ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @PyImport_ExecCodeModuleEx(ptr noundef nonnull %5, ptr noundef nonnull %i.i, ptr noundef nonnull %spec.select) #13 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f)
  %i.m = load i64, ptr %i.f, align 8, !range !5, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.t, label %bb.u, !prof !6

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !187, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, @PyModule_Type
  br i1 %.not.i.i.i, label %bb.k, label %_RNvXNtCsdc6yCHiM2ZJ_4pyo311type_objectNtNtNtB4_5types6module8PyModuleNtB2_11PyTypeCheck10type_checkB4_.exit.i

_RNvXNtCsdc6yCHiM2ZJ_4pyo311type_objectNtNtNtB4_5types6module8PyModuleNtB2_11PyTypeCheck10type_checkB4_.exit.i: ; preds = %bb.d
  %i.q = tail call noundef i32 @PyType_IsSubtype(ptr noundef %i.p, ptr noundef nonnull @PyModule_Type) #13, !noalias !187
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_RNvXNtCsdc6yCHiM2ZJ_4pyo311type_objectNtNtNtB4_5types6module8PyModuleNtB2_11PyTypeCheck10type_checkB4_.exit.i
  %i.r = load i32, ptr @PyModule_Type, align 8, !noalias !187, !noundef !4
  %i.s = add i32 %i.r, 1                          ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_RINvNvMs_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_5BoundpE9cast_into5innerNtNtNtB9_5types6module8PyModuleEB9_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.s, ptr @PyModule_Type, align 8, !noalias !187
  br label %_RINvNvMs_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_5BoundpE9cast_into5innerNtNtNtB9_5types6module8PyModuleEB9_.exit

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_0
