Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3-c97dc5db0a5415c3.pyo3.99b17b84ad475dbd-cgu.12?download=true
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state15PyErrStateInnerEBH_:bb.a
  br i1 %.not.i.i.i.i, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function6FnOnceTINtNtCsdc6yCHiM2ZJ_4pyo36marker6PythonL0_EEEp6OutputNtNtNtB1N_3err9err_state22PyErrStateLazyFnOutputNtNtB4_6marker4SendNtB3m_4SyncEL_EEB1N_.exit

bb.k:                                             ; preds = %bb.j
  %i.q = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.q, ptr %.8.val, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function6FnOnceTINtNtCsdc6yCHiM2ZJ_4pyo36marker6PythonL0_EEEp6OutputNtNtNtB1N_3err9err_state22PyErrStateLazyFnOutputNtNtB4_6marker4SendNtB3m_4SyncEL_EEB1N_.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %.8.val) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function6FnOnceTINtNtCsdc6yCHiM2ZJ_4pyo36marker6PythonL0_EEEp6OutputNtNtNtB1N_3err9err_state22PyErrStateLazyFnOutputNtNtB4_6marker4SendNtB3m_4SyncEL_EEB1N_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function6FnOnceTINtNtCsdc6yCHiM2ZJ_4pyo36marker6PythonL0_EEEp6OutputNtNtNtB1N_3err9err_state22PyErrStateLazyFnOutputNtNtB4_6marker4SendNtB3m_4SyncEL_EEB1N_.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.e, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object17PyClassTypeObjectEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i = load i64, ptr %i.b, align 8, !noundef !15
  %i.c = icmp sgt i64 %.val.i.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNvXsA_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_2PypENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEEBG_.exit unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.val, align 8, !noundef !15 ; 2 uses
  %i.e = and i64 %i.d, 2147483648
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEEBG_.exit

bb.d:                                             ; preds = %bb.c
  %i.f = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.f, ptr %.val, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEEBG_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEEBG_.exit

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object13GetSetDefTypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #23
          to label %common.resume unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEEBG_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object13GetSetDefTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object13GetSetDefTypeEEB1e_.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEEBG_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object13GetSetDefTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.h, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object13GetSetDefTypeEEB1e_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEEBG_.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object13GetSetDefTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.i:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1a_8OnceLockNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state13ReferencePoolE10initializeNCINvB19_11get_or_initNvMs0_B1H_B1F_3newE0zE0E0B1L_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !16, !noundef !15 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !16, !noundef !15 ; 6 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.b, align 8
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 0, ptr %.sroa.420.0..sroa_idx.i, align 4
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.622.0..sroa_idx.i, align 8
  %.sroa.723.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.723.0..sroa_idx.i, align 8
  %.sroa.824.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.824.0..sroa_idx.i, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockReE5force0E0Csdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !16, !noundef !15 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !16, !noundef !15 ; 4 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 4, !range !18, !noundef !15
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockReE5force0Csdc6yCHiM2ZJ_4pyo3.exit, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #26
  unreachable

_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockReE5force0Csdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !15, !noundef !15
  %i.f = tail call { ptr, i64 } %i.e(), !inline_history !62 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  store ptr %i.g, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.i, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB1c_11GILOnceCellINtNtB1e_8instance2PyNtNtNtB1e_5types10typeobject6PyTypeEE3set0E0B1e_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !16, !noundef !15 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !16, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !63, !noundef !15 ; 2 uses
  store ptr null, ptr %i.d, align 8, !alias.scope !63
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_RNCNvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB7_11GILOnceCellINtNtB9_8instance2PyNtNtNtB9_5types10typeobject6PyTypeEE3set0B9_.exit, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #26, !noalias !63
  unreachable

_RNCNvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB7_11GILOnceCellINtNtB9_8instance2PyNtNtNtB9_5types10typeobject6PyTypeEE3set0B9_.exit: ; preds = %bb.b
  store ptr %i.e, ptr %i.b, align 8, !noalias !63
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB1c_11GILOnceCellNtNtNtB1e_7pyclass18create_type_object17PyClassTypeObjectE3set0E0B1e_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !16, !noundef !15 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !16, !noundef !15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !alias.scope !66 ; 2 uses
  store i64 -1, ptr %i.d, align 8, !alias.scope !66
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %.not.i, label %bb.c, label %_RNCNvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB7_11GILOnceCellNtNtNtB9_7pyclass18create_type_object17PyClassTypeObjectE3set0B9_.exit, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #26, !noalias !66
  unreachable

_RNCNvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB7_11GILOnceCellNtNtNtB9_7pyclass18create_type_object17PyClassTypeObjectE3set0B9_.exit: ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.b, align 8, !noalias !66
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.411.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, i64 32, i1 false)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCNCNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB17_10PyErrState15make_normalized00E0B1b_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !15, !align !16, !noundef !15 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !align !16, !noundef !15 ; 8 uses
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.ab, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = cmpxchg ptr %i.f, i32 0, i32 1 acquire monotonic, align 4, !noalias !69
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.f), !noalias !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !69
  %i.j = and i64 %i.i, 9223372036854775807
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtBb_6thread2id8ThreadIdEE4lockCsdc6yCHiM2ZJ_4pyo3.exit.i, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #25, !noalias !69
  %i.m = xor i1 %i.l, true
  %i.n = zext i1 %i.m to i8
  br label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtBb_6thread2id8ThreadIdEE4lockCsdc6yCHiM2ZJ_4pyo3.exit.i

_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtBb_6thread2id8ThreadIdEE4lockCsdc6yCHiM2ZJ_4pyo3.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i.i = phi i8 [ %i.n, %bb.e ], [ 0, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.p = load atomic i8, ptr %i.o monotonic, align 4, !noalias !69
  %.not.i.i.i = icmp ne i8 %i.p, 0
  call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtB6_6thread2id8ThreadIdEENCNvMs9_BZ_BW_3new0ECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i1 noundef zeroext %.not.i.i.i, i8 noundef %.sroa.01.0.i.i.i, ptr noundef nonnull align 8 %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.q = load i64, ptr %i.d, align 8, !range !17, !alias.scope !72, !noalias !75, !noundef !15
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.f, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBQ_6thread2id8ThreadIdEEINtBM_11PoisonErrorBH_EE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit.i, !prof !8

bb.f:                                             ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtBb_6thread2id8ThreadIdEE4lockCsdc6yCHiM2ZJ_4pyo3.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !77
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !72, !noalias !75, !nonnull !15, !align !16, !noundef !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = load i8, ptr %i.u, align 8, !range !18, !alias.scope !72, !noalias !75, !noundef !15
  store ptr %i.t, ptr %i.b, align 8, !noalias !77
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.v, ptr %i.w, align 8, !noalias !77
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #22
          to label %bb.h unwind label %bb.g, !noalias !72

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBI_6thread2id8ThreadIdEEEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #23
          to label %common.resume.i unwind label %bb.i, !noalias !72

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !72
  unreachable

common.resume.i:                                  ; preds = %bb.z, %bb.w, %bb.u, %bb.j, %bb.g
  %common.resume.op.i = phi { ptr, i32 } [ %i.ax, %bb.u ], [ %i.x, %bb.g ], [ %i.az, %bb.w ], [ %i.bc, %bb.z ], [ %i.af, %bb.j ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBQ_6thread2id8ThreadIdEEINtBM_11PoisonErrorBH_EE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit.i: ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtBb_6thread2id8ThreadIdEE4lockCsdc6yCHiM2ZJ_4pyo3.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !72, !noalias !75, !nonnull !15, !align !16, !noundef !15 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !18, !alias.scope !72, !noalias !75, !noundef !15 ; 2 uses
  %i.ad = trunc nuw i8 %i.ac to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ae = invoke noundef nonnull ptr @_RNvNtNtCsG258MDvU3F_3std6thread7current7current()
          to label %bb.k unwind label %bb.j       ; 3 uses

bb.j:                                             ; preds = %bb.l, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBQ_6thread2id8ThreadIdEEINtBM_11PoisonErrorBH_EE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECsdc6yCHiM2ZJ_4pyo3(ptr nonnull %i.aa, i8 %i.ac) #23
          to label %common.resume.i unwind label %bb.aa

bb.k:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBQ_6thread2id8ThreadIdEEINtBM_11PoisonErrorBH_EE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ae, ptr %i.c, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !19, !noundef !15
  store i64 %i.ai, ptr %i.ag, align 8
  %i.aj = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !78
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit.i unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br i1 %i.ad, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit.i
  %i.am = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.an = and i64 %i.am, 9223372036854775807
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.ap = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #25
  br i1 %i.ap, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store atomic i8 1, ptr %i.al monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit.i
  %i.aq = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECsdc6yCHiM2ZJ_4pyo3.exit.i, !prof !8

bb.p:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECsdc6yCHiM2ZJ_4pyo3.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECsdc6yCHiM2ZJ_4pyo3.exit.i: ; preds = %bb.p, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.as, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  %.sroa.4.sroa.0.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 4 uses
  %.sroa.4.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8 ; 4 uses
  store i64 0, ptr %i.as, align 8
  %i.at = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.at, label %bb.q, label %bb.y, !prof !7

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECsdc6yCHiM2ZJ_4pyo3.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !87
  %i.au = invoke noundef i32 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6attach()
          to label %bb.r unwind label %bb.w, !noalias !87

bb.r:                                             ; preds = %bb.q
  store i32 %i.au, ptr %i.a, align 4, !noalias !87
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.sroa.4.0.copyload.i) ]
  %i.av = icmp eq ptr %.sroa.4.sroa.0.0.copyload.i, null
  br i1 %i.av, label %_RINvMs_NtCsdc6yCHiM2ZJ_4pyo36markerNtB5_6Python6attachNCNCNCNvMs0_NtNtB7_3err9err_stateNtB12_10PyErrState15make_normalized000NtB12_15PyErrStateInnerEB7_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RNvNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state10raise_lazy(ptr noundef nonnull %.sroa.4.sroa.0.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.sroa.4.0.copyload.i)
          to label %.noexc.i.i unwind label %bb.u, !noalias !87

.noexc.i.i:                                       ; preds = %bb.s
  %i.aw = call noundef ptr @PyErr_GetRaisedException() #21, !noalias !91 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i, label %bb.t, label %_RINvMs_NtCsdc6yCHiM2ZJ_4pyo36markerNtB5_6Python6attachNCNCNCNvMs0_NtNtB7_3err9err_stateNtB12_10PyErrState15make_normalized000NtB12_15PyErrStateInnerEB7_.exit.i, !prof !8

bb.t:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #26
          to label %.noexc6.i.i unwind label %bb.u, !noalias !87

.noexc6.i.i:                                      ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %common.resume.i unwind label %bb.v, !noalias !87

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !87
  unreachable

bb.w:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state15PyErrStateInnerEBH_(ptr %.sroa.4.sroa.0.0.copyload.i, ptr %.sroa.4.sroa.4.0.copyload.i)
          to label %common.resume.i unwind label %bb.v, !noalias !87

_RINvMs_NtCsdc6yCHiM2ZJ_4pyo36markerNtB5_6Python6attachNCNCNCNvMs0_NtNtB7_3err9err_stateNtB12_10PyErrState15make_normalized000NtB12_15PyErrStateInnerEB7_.exit.i: ; preds = %.noexc.i.i, %bb.r
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.aw, %.noexc.i.i ], [ %.sroa.4.sroa.4.0.copyload.i, %bb.r ] ; 2 uses
  call void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.a), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !87
  %i.ba = load i64, ptr %i.as, align 8, !range !17, !alias.scope !94, !noundef !15
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNCNCNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB9_10PyErrState15make_normalized00Bd_.exit, label %bb.x

bb.x:                                             ; preds = %_RINvMs_NtCsdc6yCHiM2ZJ_4pyo36markerNtB5_6Python6attachNCNCNCNvMs0_NtNtB7_3err9err_stateNtB12_10PyErrState15make_normalized000NtB12_15PyErrStateInnerEB7_.exit.i
  %.val.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !94, !noundef !15
  %.val1.i.i = load ptr, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !94
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state15PyErrStateInnerEBH_(ptr %.val.i.i, ptr %.val1.i.i)
          to label %_RNCNCNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB9_10PyErrState15make_normalized00Bd_.exit unwind label %bb.z

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECsdc6yCHiM2ZJ_4pyo3.exit.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #26
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.as, align 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 8
  store ptr %.sroa.0.0.i.i.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  br label %common.resume.i

bb.aa:                                            ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNCNCNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB9_10PyErrState15make_normalized00Bd_.exit: ; preds = %_RINvMs_NtCsdc6yCHiM2ZJ_4pyo36markerNtB5_6Python6attachNCNCNCNvMs0_NtNtB7_3err9err_stateNtB12_10PyErrState15make_normalized000NtB12_15PyErrStateInnerEB7_.exit.i, %bb.x
  store i64 1, ptr %i.as, align 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 8
  store ptr %.sroa.0.0.i.i.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  ret void

bb.ab:                                            ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB15_10PyErrState10normalized0E0B19_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1f_8OnceLockNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state13ReferencePoolE10initializeNCINvB1e_11get_or_initNvMs0_B1M_B1K_3newE0zE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1Q_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !16, !noundef !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !97, !noalias !100, !align !16, !noundef !15 ; 6 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !97, !noalias !100
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1d_8OnceLockNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state13ReferencePoolE10initializeNCINvB1c_11get_or_initNvMs0_B1K_B1I_3newE0zE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1O_.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26, !noalias !103
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1d_8OnceLockNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state13ReferencePoolE10initializeNCINvB1c_11get_or_initNvMs0_B1K_B1I_3newE0zE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1O_.exit: ; preds = %bb.a
  store i32 0, ptr %i.b, align 8, !noalias !103
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 0, ptr %.sroa.420.0..sroa_idx.i.i.i, align 4, !noalias !103
  %.sroa.622.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.622.0..sroa_idx.i.i.i, align 8, !noalias !103
  %.sroa.723.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.723.0..sroa_idx.i.i.i, align 8, !noalias !103
  %.sroa.824.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.824.0..sroa_idx.i.i.i, align 8, !noalias !103
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1e_8LazyLockReE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCsdc6yCHiM2ZJ_4pyo3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !16, !noundef !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !104, !noalias !107, !align !16, !noundef !15 ; 4 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !104, !noalias !107
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.c, align 4, !range !18, !noalias !110, !noundef !15
  %i.d = trunc nuw i8 %.val.i.i to i1
  br i1 %i.d, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockReE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsdc6yCHiM2ZJ_4pyo3.exit, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #26, !noalias !110
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26, !noalias !110
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockReE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !noalias !110, !nonnull !15, !noundef !15
  %i.f = tail call { ptr, i64 } %i.e(), !noalias !110, !inline_history !111 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  store ptr %i.g, ptr %i.b, align 8, !noalias !110
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.i, align 8, !noalias !110
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB1h_11GILOnceCellINtNtB1j_8instance2PyNtNtNtB1j_5types10typeobject6PyTypeEE3set0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1j_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !16, !noundef !15 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !112, !noalias !115, !align !16, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !112, !noalias !115 ; 3 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !112, !noalias !115
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !118, !noalias !121, !noundef !15 ; 2 uses
  store ptr null, ptr %i.d, align 8, !alias.scope !118, !noalias !121
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB1f_11GILOnceCellINtNtB1h_8instance2PyNtNtNtB1h_5types10typeobject6PyTypeEE3set0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1h_.exit, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #26, !noalias !122
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26, !noalias !121
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB1f_11GILOnceCellINtNtB1h_8instance2PyNtNtNtB1h_5types10typeobject6PyTypeEE3set0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1h_.exit: ; preds = %bb.b
  store ptr %i.e, ptr %i.b, align 8, !noalias !122
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB1h_11GILOnceCellNtNtNtB1j_7pyclass18create_type_object17PyClassTypeObjectE3set0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1j_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !16, !noundef !15 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !123, !noalias !126, !align !16, !noundef !15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !123, !noalias !126 ; 4 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !123, !noalias !126
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !129, !noalias !132 ; 2 uses
  store i64 -1, ptr %i.d, align 8, !alias.scope !129, !noalias !132
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB1f_11GILOnceCellNtNtNtB1h_7pyclass18create_type_object17PyClassTypeObjectE3set0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1h_.exit, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #26, !noalias !133
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26, !noalias !132
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB1f_11GILOnceCellNtNtNtB1h_7pyclass18create_type_object17PyClassTypeObjectE3set0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1h_.exit: ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.b, align 8, !noalias !133
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.411.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !132
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCNCNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB1c_10PyErrState15make_normalized00E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1g_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !15, !align !16, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !134
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCNCNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB17_10PyErrState15make_normalized00E0B1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB1a_10PyErrState10normalized0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1e_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.b = load i8, ptr %i.a, align 1, !range !18, !alias.scope !137, !noalias !140, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 1, !alias.scope !137, !noalias !140
  br i1 %i.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB18_10PyErrState10normalized0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1c_.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26, !noalias !143
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB18_10PyErrState10normalized0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1c_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtBd_10PyErrState14lazy_argumentsINtNtBh_8instance2PyNtNtNtBh_5types3any5PyAnyEE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtNtBh_6marker6PythonEE9call_once6vtableBh_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !15, !noundef !15
  %i.d = invoke noundef nonnull ptr @_RNvXNtCsdc6yCHiM2ZJ_4pyo33errINtNtB4_8instance2PyNtNtNtB4_5types3any5PyAnyENtB2_14PyErrArguments9argumentsB4_(ptr noundef nonnull %i.c)
          to label %_RNCINvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB8_10PyErrState14lazy_argumentsINtNtBc_8instance2PyNtNtNtBc_5types3any5PyAnyEE0Bc_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEEBG_(ptr nonnull %i.a) #23
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RNCINvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB8_10PyErrState14lazy_argumentsINtNtBc_8instance2PyNtNtNtBc_5types3any5PyAnyEE0Bc_.exit: ; preds = %bb.a
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.d, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBc_5PyErr3newNtNtBe_10exceptions12PyValueErrorNtNtNtCskKLDkoKarTP_4core3net6parser14AddrParseErrorE0INtNtNtB1t_3ops8function6FnOnceTNtNtBe_6marker6PythonEE9call_once6vtableBe_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !144, !noundef !15
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !noundef !15
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions12PyValueErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.d, ptr %i.b, align 8
  br label %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions12PyValueErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i

_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions12PyValueErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i: ; preds = %bb.b, %bb.a
  %i.f = invoke noundef nonnull ptr @_RNvXsl_NtNtCsdc6yCHiM2ZJ_4pyo33err5implsNtNtNtCskKLDkoKarTP_4core3net6parser14AddrParseErrorNtB7_14PyErrArguments9arguments(i8 noundef range(i8 0, 6) %i.a)
          to label %_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions12PyValueErrorNtNtNtCskKLDkoKarTP_4core3net6parser14AddrParseErrorE0B9_.exit unwind label %bb.c

bb.c:                                             ; preds = %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions12PyValueErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEEBG_(ptr nonnull %i.b) #23
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions12PyValueErrorNtNtNtCskKLDkoKarTP_4core3net6parser14AddrParseErrorE0B9_.exit: ; preds = %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions12PyValueErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.f, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBc_5PyErr3newNtNtBe_10exceptions12PyValueErrorReE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtNtBe_6marker6PythonEE9call_once6vtableBe_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !15
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !noalias !145, !nonnull !15, !noundef !15 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !noalias !145, !noundef !15
  %i.f = add i32 %i.e, 1                          ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions12PyValueErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.f, ptr %i.d, align 8, !noalias !145
  br label %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions12PyValueErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i

_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions12PyValueErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i: ; preds = %bb.b, %bb.a
  %i.h = invoke noundef nonnull ptr @_RNvXNtCsdc6yCHiM2ZJ_4pyo33errReNtB2_14PyErrArguments9argumentsB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c)
          to label %_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions12PyValueErrorReE0B9_.exit unwind label %bb.c

bb.c:                                             ; preds = %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions12PyValueErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEEBG_(ptr nonnull %i.d) #23
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions12PyValueErrorReE0B9_.exit: ; preds = %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions12PyValueErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %i.h, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo35types5frameNtB2_7PyFrame3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, i32 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = tail call noundef ptr @_PyThreadState_UncheckedGet() #21
  %i.d = tail call noundef nonnull ptr @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo35types4codeNtB2_6PyCode5empty(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, i32 noundef %5) ; 9 uses
  %i.e = invoke noundef nonnull ptr @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo35types4dictNtB2_6PyDict3new()
          to label %bb.e unwind label %bb.d       ; 10 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEEBG_.exit: ; preds = %bb.g, %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEEBG_.exit43, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEEBG_.exit43 ], [ %.pn, %bb.f ], [ %.pn, %bb.g ]
  %i.f = load i64, ptr %i.d, align 8, !noundef !15 ; 2 uses
  %i.g = and i64 %i.f, 2147483648
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEEBG_.exit
  %i.h = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.h, ptr %i.d, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEEBG_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = invoke noundef nonnull ptr @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo35types4dictNtB2_6PyDict3new()
          to label %bb.i unwind label %bb.h       ; 10 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEEBG_.exit43: ; preds = %bb.s, %bb.r, %bb.q, %bb.h
  %.pn = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.af, %bb.q ], [ %i.af, %bb.r ], [ %i.af, %bb.s ] ; 3 uses
  %i.l = load i64, ptr %i.e, align 8, !noundef !15 ; 2 uses
  %i.m = and i64 %i.l, 2147483648
  %.not.i.i31 = icmp eq i64 %i.m, 0
  br i1 %.not.i.i31, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEEBG_.exit

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEEBG_.exit43
  %i.n = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.n, ptr %i.e, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEEBG_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEEBG_.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEEBG_.exit43
end_hunk_0
