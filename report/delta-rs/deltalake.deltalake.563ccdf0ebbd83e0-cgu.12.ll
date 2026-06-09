inline.NumInlined: 5547
inline.NumDeleted: 1701
begin_hunk_0_@_RINvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1n_5types3any5PyAnyEEENtNtB1n_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtB8_3vec3VecB3_EECs7p2uQeJxui2_9deltalake:bb.a

bb.r:                                             ; preds = %bb.q, %bb.p
  %storemerge = phi i64 [ 0, %bb.q ], [ 1, %bb.p ]
  store i64 %storemerge, ptr %0, align 8
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1Z_5types3any5PyAnyEEEENtNtNtB1n_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.s:                                             ; preds = %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1l_6string6StringINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB2Q_5types3any5PyAnyEEEENCINvYB22_NtNtB2Q_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1j_3VecB22_EE0EECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %0, i64 noundef range(i64 0, 64051194700380388) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %.idx = mul nuw nsw i64 %1, 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14756)
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !14756, !noalias !14759, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %.val1.i = load i64, ptr %i.g, align 8, !alias.scope !14756, !noalias !14759, !noundef !4
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i) #47, !noalias !14756, !inline_history !14761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14762
  store i8 -1, ptr %i.a, align 1, !noalias !14762
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #47, !noalias !14771, !inline_history !14761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14762
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(72) %2) #47, !inline_history !14761
  %i.h = icmp eq ptr %i.d, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %0, i64 noundef range(i64 0, 41175768021673107) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 224
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 224 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 112
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(224) %.sroa.0.03, ptr noalias noundef nonnull align 8 dereferenceable(72) %2) #47, !inline_history !14772
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %2) #47, !inline_history !14772
  %i.e = icmp eq ptr %i.c, %i.a
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB44_10DeltaError15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B46_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !align !32, !noundef !4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14773
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %i.d, align 8, !noalias !14773
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %i.f, align 8, !noalias !14773
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !14773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14773
  %i.g = call { ptr, i64 } @_RNvCs8qYbsySkclr_8pyo3_ffi32__cstr_from_utf8_with_nul_checked(ptr noalias noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 21), !noalias !14773 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14773
  %i.j = load ptr, ptr @PyExc_Exception, align 8, !noalias !14773, !nonnull !4, !noundef !4 ; 4 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.j) #41, !noalias !14773
  store ptr %i.j, ptr %i.b, align 8, !noalias !14773
  invoke void @_RNvMs1_NtCsgbCypRs12E4_4pyo33errNtB5_5PyErr8new_type(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.i, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.b, ptr noundef null)
          to label %bb.c unwind label %bb.b, !noalias !14773

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !14776)
  %i.l = load i64, ptr %i.c, align 8, !range !3, !alias.scope !14776, !noalias !14779, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.d, label %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_10DeltaError15type_object_raw0BS_E0E0B3i_.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14781
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.n, i64 56, i1 false), !noalias !14779
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 40, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @155, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #42
          to label %bb.f unwind label %bb.e, !noalias !14782

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #43
          to label %bb.h unwind label %bb.g, !noalias !14782

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !14782
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.h ], [ %i.x, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.o, %bb.e ]
  call void @_Py_DecRef(ptr noundef nonnull %i.j) #41, !noalias !14773
  br label %common.resume

_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_10DeltaError15type_object_raw0BS_E0E0B3i_.exit: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !14776, !noalias !14779, !nonnull !4, !noundef !4 ; 2 uses
  call void @_Py_DecRef(ptr noundef nonnull %i.j) #41, !noalias !14773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14773
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !align !32, !noundef !4 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !noundef !4 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !14783, !noundef !4
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_10DeltaError15type_object_raw0BS_E0E0B3i_.exit
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types10typeobject6PyTypeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge unwind label %bb.j

._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge: ; preds = %bb.i
  %.pre = load ptr, ptr %i.t, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.t, align 8, !noundef !4
  store ptr %i.r, ptr %i.y, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge, %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_10DeltaError15type_object_raw0BS_E0E0B3i_.exit
  %i.z = phi ptr [ %.pre, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge ], [ %i.u, %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_10DeltaError15type_object_raw0BS_E0E0B3i_.exit ]
  store ptr %i.r, ptr %i.z, align 8
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB44_18TableNotFoundError15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B46_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !align !32, !noundef !4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14786
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %i.d, align 8, !noalias !14786
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %i.f, align 8, !noalias !14786
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !14786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14786
  %i.g = call { ptr, i64 } @_RNvCs8qYbsySkclr_8pyo3_ffi32__cstr_from_utf8_with_nul_checked(ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 29), !noalias !14786 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14786
  %i.j = call noundef nonnull ptr @_RNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB5_10DeltaError15type_object_raw(), !noalias !14786 ; 4 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.j) #41, !noalias !14786
  store ptr %i.j, ptr %i.b, align 8, !noalias !14786
  invoke void @_RNvMs1_NtCsgbCypRs12E4_4pyo33errNtB5_5PyErr8new_type(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.i, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.b, ptr noundef null)
          to label %bb.c unwind label %bb.b, !noalias !14786

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !14789)
  %i.l = load i64, ptr %i.c, align 8, !range !3, !alias.scope !14789, !noalias !14792, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.d, label %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_18TableNotFoundError15type_object_raw0BS_E0E0B3i_.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14794
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.n, i64 56, i1 false), !noalias !14792
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 40, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @155, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #42
          to label %bb.f unwind label %bb.e, !noalias !14795

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #43
          to label %bb.h unwind label %bb.g, !noalias !14795

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !14795
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.h ], [ %i.x, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.o, %bb.e ]
  call void @_Py_DecRef(ptr noundef nonnull %i.j) #41, !noalias !14786
  br label %common.resume

_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_18TableNotFoundError15type_object_raw0BS_E0E0B3i_.exit: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !14789, !noalias !14792, !nonnull !4, !noundef !4 ; 2 uses
  call void @_Py_DecRef(ptr noundef nonnull %i.j) #41, !noalias !14786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14786
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !align !32, !noundef !4 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !noundef !4 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !14796, !noundef !4
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_18TableNotFoundError15type_object_raw0BS_E0E0B3i_.exit
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types10typeobject6PyTypeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge unwind label %bb.j

._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge: ; preds = %bb.i
  %.pre = load ptr, ptr %i.t, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.t, align 8, !noundef !4
  store ptr %i.r, ptr %i.y, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge, %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_18TableNotFoundError15type_object_raw0BS_E0E0B3i_.exit
  %i.z = phi ptr [ %.pre, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge ], [ %i.u, %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_18TableNotFoundError15type_object_raw0BS_E0E0B3i_.exit ]
  store ptr %i.r, ptr %i.z, align 8
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB44_18DeltaProtocolError15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B46_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !align !32, !noundef !4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14799
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %i.d, align 8, !noalias !14799
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %i.f, align 8, !noalias !14799
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !14799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14799
  %i.g = call { ptr, i64 } @_RNvCs8qYbsySkclr_8pyo3_ffi32__cstr_from_utf8_with_nul_checked(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 29), !noalias !14799 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14799
  %i.j = call noundef nonnull ptr @_RNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB5_10DeltaError15type_object_raw(), !noalias !14799 ; 4 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.j) #41, !noalias !14799
  store ptr %i.j, ptr %i.b, align 8, !noalias !14799
  invoke void @_RNvMs1_NtCsgbCypRs12E4_4pyo33errNtB5_5PyErr8new_type(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.i, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.b, ptr noundef null)
          to label %bb.c unwind label %bb.b, !noalias !14799

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !14802)
  %i.l = load i64, ptr %i.c, align 8, !range !3, !alias.scope !14802, !noalias !14805, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.d, label %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_18DeltaProtocolError15type_object_raw0BS_E0E0B3i_.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14807
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.n, i64 56, i1 false), !noalias !14805
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 40, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @155, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #42
          to label %bb.f unwind label %bb.e, !noalias !14808

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #43
          to label %bb.h unwind label %bb.g, !noalias !14808

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !14808
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.h ], [ %i.x, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.o, %bb.e ]
  call void @_Py_DecRef(ptr noundef nonnull %i.j) #41, !noalias !14799
  br label %common.resume

_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_18DeltaProtocolError15type_object_raw0BS_E0E0B3i_.exit: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !14802, !noalias !14805, !nonnull !4, !noundef !4 ; 2 uses
  call void @_Py_DecRef(ptr noundef nonnull %i.j) #41, !noalias !14799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14799
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !align !32, !noundef !4 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !noundef !4 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !14809, !noundef !4
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_18DeltaProtocolError15type_object_raw0BS_E0E0B3i_.exit
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types10typeobject6PyTypeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge unwind label %bb.j

._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge: ; preds = %bb.i
  %.pre = load ptr, ptr %i.t, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.t, align 8, !noundef !4
  store ptr %i.r, ptr %i.y, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge, %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_18DeltaProtocolError15type_object_raw0BS_E0E0B3i_.exit
  %i.z = phi ptr [ %.pre, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge ], [ %i.u, %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_18DeltaProtocolError15type_object_raw0BS_E0E0B3i_.exit ]
  store ptr %i.r, ptr %i.z, align 8
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB44_17CommitFailedError15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B46_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !align !32, !noundef !4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14812
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %i.d, align 8, !noalias !14812
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %i.f, align 8, !noalias !14812
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !14812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14812
  %i.g = call { ptr, i64 } @_RNvCs8qYbsySkclr_8pyo3_ffi32__cstr_from_utf8_with_nul_checked(ptr noalias noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 28), !noalias !14812 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14812
  %i.j = call noundef nonnull ptr @_RNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB5_10DeltaError15type_object_raw(), !noalias !14812 ; 4 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.j) #41, !noalias !14812
  store ptr %i.j, ptr %i.b, align 8, !noalias !14812
  invoke void @_RNvMs1_NtCsgbCypRs12E4_4pyo33errNtB5_5PyErr8new_type(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.i, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.b, ptr noundef null)
          to label %bb.c unwind label %bb.b, !noalias !14812

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !14815)
  %i.l = load i64, ptr %i.c, align 8, !range !3, !alias.scope !14815, !noalias !14818, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.d, label %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_17CommitFailedError15type_object_raw0BS_E0E0B3i_.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14820
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.n, i64 56, i1 false), !noalias !14818
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 40, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @155, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #42
          to label %bb.f unwind label %bb.e, !noalias !14821

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #43
          to label %bb.h unwind label %bb.g, !noalias !14821

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !14821
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.h ], [ %i.x, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.o, %bb.e ]
  call void @_Py_DecRef(ptr noundef nonnull %i.j) #41, !noalias !14812
  br label %common.resume

_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_17CommitFailedError15type_object_raw0BS_E0E0B3i_.exit: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !14815, !noalias !14818, !nonnull !4, !noundef !4 ; 2 uses
  call void @_Py_DecRef(ptr noundef nonnull %i.j) #41, !noalias !14812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14812
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !align !32, !noundef !4 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !noundef !4 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !14822, !noundef !4
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_17CommitFailedError15type_object_raw0BS_E0E0B3i_.exit
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types10typeobject6PyTypeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge unwind label %bb.j

._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge: ; preds = %bb.i
  %.pre = load ptr, ptr %i.t, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.t, align 8, !noundef !4
  store ptr %i.r, ptr %i.y, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge, %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_17CommitFailedError15type_object_raw0BS_E0E0B3i_.exit
  %i.z = phi ptr [ %.pre, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge ], [ %i.u, %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_17CommitFailedError15type_object_raw0BS_E0E0B3i_.exit ]
  store ptr %i.r, ptr %i.z, align 8
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB44_19SchemaMismatchError15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B46_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !align !32, !noundef !4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14825
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %i.d, align 8, !noalias !14825
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %i.f, align 8, !noalias !14825
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !14825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14825
  %i.g = call { ptr, i64 } @_RNvCs8qYbsySkclr_8pyo3_ffi32__cstr_from_utf8_with_nul_checked(ptr noalias noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 30), !noalias !14825 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14825
  %i.j = call noundef nonnull ptr @_RNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB5_10DeltaError15type_object_raw(), !noalias !14825 ; 4 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.j) #41, !noalias !14825
  store ptr %i.j, ptr %i.b, align 8, !noalias !14825
  invoke void @_RNvMs1_NtCsgbCypRs12E4_4pyo33errNtB5_5PyErr8new_type(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.i, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.b, ptr noundef null)
          to label %bb.c unwind label %bb.b, !noalias !14825

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !14828)
  %i.l = load i64, ptr %i.c, align 8, !range !3, !alias.scope !14828, !noalias !14831, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.d, label %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_19SchemaMismatchError15type_object_raw0BS_E0E0B3i_.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14833
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.n, i64 56, i1 false), !noalias !14831
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 40, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @155, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #42
          to label %bb.f unwind label %bb.e, !noalias !14834

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #43
          to label %bb.h unwind label %bb.g, !noalias !14834

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !14834
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.h ], [ %i.x, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.o, %bb.e ]
  call void @_Py_DecRef(ptr noundef nonnull %i.j) #41, !noalias !14825
  br label %common.resume

_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_19SchemaMismatchError15type_object_raw0BS_E0E0B3i_.exit: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !14828, !noalias !14831, !nonnull !4, !noundef !4 ; 2 uses
  call void @_Py_DecRef(ptr noundef nonnull %i.j) #41, !noalias !14825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14825
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !align !32, !noundef !4 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !noundef !4 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !14835, !noundef !4
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_19SchemaMismatchError15type_object_raw0BS_E0E0B3i_.exit
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types10typeobject6PyTypeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge unwind label %bb.j

._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge: ; preds = %bb.i
  %.pre = load ptr, ptr %i.t, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.t, align 8, !noundef !4
  store ptr %i.r, ptr %i.y, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge, %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_19SchemaMismatchError15type_object_raw0BS_E0E0B3i_.exit
  %i.z = phi ptr [ %.pre, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge ], [ %i.u, %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_19SchemaMismatchError15type_object_raw0BS_E0E0B3i_.exit ]
  store ptr %i.r, ptr %i.z, align 8
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types6string8PyStringEE10initializeNCINvMs4_NtBa_4syncINtB2j_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMs7_B37_NtB37_8Interned3get0BR_E0E0NtNvMs4_B2j_IB2u_pE11get_or_init4VoidE0Cs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5.sroa.6.0.copyload = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14838
  store i64 %.sroa.5.sroa.5.0.copyload, ptr %i.a, align 8, !noalias !14838
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.sroa.6.0.copyload, ptr %i.c, align 8, !noalias !14838
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !14838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14838
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.d = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString6intern(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.4.0.copyload), !noalias !14838 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !32, !noundef !4 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !14843, !noundef !4
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types6string8PyStringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit_crit_edge unwind label %bb.c

._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %i.f, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.f, align 8, !noundef !4
  store ptr %i.d, ptr %i.k, align 8
  resume { ptr, i32 } %i.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit_crit_edge, %bb.a
  %i.l = phi ptr [ %.pre, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit_crit_edge ], [ %i.g, %bb.a ]
  store ptr %i.d, ptr %i.l, align 8
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB9_13RawDeltaTable5write0s_0B9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1697) 16, i64 noundef range(i64 8, 17) 8) #41 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #42
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store ptr @84, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 39, ptr %i.c, align 8
  store i64 1, ptr %0, align 8
  %.sroa.03.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.03.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.03.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.03.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @85, ptr %.sroa.03.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 3, ptr %.sroa.54.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtCsjyY8HP3IvQ6_12object_store6uploadINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB6_15MultipartUploadEL_EB1h_8complete0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !2683, !noundef !4
  switch i8 %i.d, label %default.unreachable9 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !align !32, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !4, !nonnull !4
  %i.k = invoke { ptr, ptr } %i.j(ptr noundef nonnull %i.f)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.m = extractvalue { ptr, ptr } %i.k, 0
  %i.n = extractvalue { ptr, ptr } %i.k, 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.n, ptr %i.p, align 8
end_hunk_0
begin_hunk_1_@_RNCNvXs_NtCsjyY8HP3IvQ6_12object_store6uploadINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB6_15MultipartUploadEL_EB1h_8complete0Cs7p2uQeJxui2_9deltalake:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtBb_5types17GenericStringTypexEENtB9_5Array9into_data6vtableCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataINtNtCsbvkFyIu7lgC_4core7convert4FromINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypexEEE4fromCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtBf_10exceptions12PyValueErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14847
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !noalias !14847, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.c) #41, !noalias !14847
  store ptr %i.c, ptr %i.b, align 8, !noalias !14847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14847
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.d = invoke noundef nonnull ptr @_RNvXs4_NtNtNtCsgbCypRs12E4_4pyo311conversions3std6stringNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBb_10conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions12PyValueErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.b, !noalias !14847

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %bb.d unwind label %bb.c, !noalias !14847

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !14847
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions12PyValueErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14847
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.d, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtBf_10exceptions12PyValueErrorReE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14850
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !noalias !14850, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.e) #41, !noalias !14850
  store ptr %i.e, ptr %i.a, align 8, !noalias !14850
  %i.f = invoke noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions12PyValueErrorReE0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.g

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions12PyValueErrorReE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14850
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.f, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtBf_10exceptions13PySystemErrorReE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14853
  %i.e = load ptr, ptr @PyExc_SystemError, align 8, !noalias !14853, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.e) #41, !noalias !14853
  store ptr %i.e, ptr %i.a, align 8, !noalias !14853
  %i.f = invoke noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions13PySystemErrorReE0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.g

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions13PySystemErrorReE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14853
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.f, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtBf_10exceptions14PyRuntimeErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14856
  %i.c = load ptr, ptr @PyExc_RuntimeError, align 8, !noalias !14856, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.c) #41, !noalias !14856
  store ptr %i.c, ptr %i.b, align 8, !noalias !14856
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.d = invoke noundef nonnull ptr @_RNvXs4_NtNtNtCsgbCypRs12E4_4pyo311conversions3std6stringNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBb_10conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions14PyRuntimeErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.b, !noalias !14856

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %bb.d unwind label %bb.c, !noalias !14856

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !14856
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions14PyRuntimeErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14856
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.d, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtBf_10exceptions9PyIOErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14859
  %i.c = load ptr, ptr @PyExc_IOError, align 8, !noalias !14859, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.c) #41, !noalias !14859
  store ptr %i.c, ptr %i.b, align 8, !noalias !14859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.d = invoke noundef nonnull ptr @_RNvXs4_NtNtNtCsgbCypRs12E4_4pyo311conversions3std6stringNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBb_10conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions9PyIOErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.b, !noalias !14859

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %bb.d unwind label %bb.c, !noalias !14859

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !14859
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions9PyIOErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14859
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.d, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtCs7p2uQeJxui2_9deltalake5error18DeltaProtocolErrorReE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableBV_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14862
  %i.e = tail call noundef nonnull ptr @_RNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB5_18DeltaProtocolError15type_object_raw(), !noalias !14862 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.e) #41, !noalias !14862
  store ptr %i.e, ptr %i.a, align 8, !noalias !14862
  %i.f = invoke noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtCs7p2uQeJxui2_9deltalake5error18DeltaProtocolErrorReE0BQ_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.g

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtCs7p2uQeJxui2_9deltalake5error18DeltaProtocolErrorReE0BQ_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14862
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.f, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBd_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB4b_10DeltaError15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_once6vtableB4d_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB44_10DeltaError15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B46_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0) ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBd_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB4b_18TableNotFoundError15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_once6vtableB4d_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB44_18TableNotFoundError15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B46_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0) ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBd_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB4b_18DeltaProtocolError15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_once6vtableB4d_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB44_18DeltaProtocolError15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B46_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0) ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBd_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB4b_17CommitFailedError15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_once6vtableB4d_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB44_17CommitFailedError15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B46_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0) ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBd_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB4b_19SchemaMismatchError15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_once6vtableB4d_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB44_19SchemaMismatchError15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B46_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0) ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBd_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB11_5types6string8PyStringEE10initializeNCINvMs4_NtBf_4syncINtB2p_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvMs7_B3d_NtB3d_8Interned3get0BW_E0E0NtNvMs4_B2p_IB2A_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !alias.scope !14865, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !14868 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.5.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14868
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.5.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14868
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.sroa.5.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14868
  store ptr null, ptr %.val, align 8, !noalias !14868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14871
  store i64 %.sroa.5.sroa.5.0.copyload.i.i, ptr %i.a, align 8, !noalias !14871
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.sroa.6.0.copyload.i.i, ptr %i.c, align 8, !noalias !14871
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !14871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14871
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  %i.d = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString6intern(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload.i.i, i64 noundef %.sroa.5.sroa.4.0.copyload.i.i), !noalias !14871 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.e = load ptr, ptr %.val1, align 8, !noalias !14868, !noundef !4 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !14876, !noalias !14868, !noundef !4
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBb_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvMs7_B3a_NtB3a_8Interned3get0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceCs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types6string8PyStringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit_crit_edge.i.i unwind label %bb.c, !noalias !14868

._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit_crit_edge.i.i: ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %.val1, align 8, !noalias !14868
  br label %_RNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBb_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvMs7_B3a_NtB3a_8Interned3get0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceCs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %.val1, align 8, !noalias !14868, !noundef !4
  store ptr %i.d, ptr %i.i, align 8, !noalias !14868
  resume { ptr, i32 } %i.h

_RNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBb_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvMs7_B3a_NtB3a_8Interned3get0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit_crit_edge.i.i
  %i.j = phi ptr [ %.pre.i.i, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit_crit_edge.i.i ], [ %i.e, %bb.a ]
  store ptr %i.d, ptr %i.j, align 8, !noalias !14868
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE10bind_innerCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %1, ptr %i.e, align 8
  store ptr %2, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !range !14879, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noalias !14880, !nonnull !4, !align !32, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load i64, ptr %i.k, align 8, !noalias !14880, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !range !14879, !noalias !14880, !noundef !4 ; 3 uses
  %i.o = load ptr, ptr %0, align 8, !noalias !14880, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !14880, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i64, ptr %i.r, align 8, !noalias !14880, !noundef !4
  %i.t = and i64 %i.s, %i.n                       ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.q
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.t ; 10 uses
  %i.w = cmpxchg weak ptr %i.v, i8 0, i8 1 acquire monotonic, align 1, !noalias !14880
  %i.x = extractvalue { i8, i1 } %i.w, 1
  br i1 %i.x, label %bb.e, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.y = invoke noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.v, i64 undef, i32 noundef 1000000000)
          to label %bb.e unwind label %bb.c       ; 0 uses

.body:                                            ; preds = %bb.d, %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake.exit.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.z, %bb.c ], [ %i.aa, %bb.d ], [ %i.au, %bb.m ], [ %i.au, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake.exit.i ]
  %.sroa.02.0 = phi i1 [ true, %bb.c ], [ %.sroa.02.1, %bb.d ], [ false, %bb.m ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake.exit.i ]
  invoke void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio7runtime4taskINtB5_4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.q, %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util12sharded_list10ShardGuardINtNtNtBN_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB1H_9scheduler14current_thread6HandleEENtNtB1F_4core6HeaderEECs7p2uQeJxui2_9deltalake.exit
  %.sroa.02.1 = phi i1 [ false, %bb.l ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util12sharded_list10ShardGuardINtNtNtBN_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB1H_9scheduler14current_thread6HandleEENtNtB1F_4core6HeaderEECs7p2uQeJxui2_9deltalake.exit ], [ true, %bb.q ]
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load atomic i8, ptr %i.ad acquire, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.v, ptr %i.c, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ab, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ac, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i64 %i.n, ptr %.sroa.9.0..sroa_idx, align 8
  %i.ag = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ag, ptr %i.b, align 8, !noalias !14883
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !14883, !nonnull !4, !align !32, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !14883, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !range !14879, !noalias !14883, !noundef !4 ; 2 uses
  store i64 %i.am, ptr %i.a, align 8, !noalias !14883
  %i.an = icmp eq i64 %i.am, %i.n
  br i1 %i.an, label %bb.i, label %bb.h, !prof !31

bb.g:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
end_hunk_1
