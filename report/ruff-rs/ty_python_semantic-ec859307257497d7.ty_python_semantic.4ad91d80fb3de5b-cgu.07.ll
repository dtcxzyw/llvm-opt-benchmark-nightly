Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.07?download=true
inline.NumInlined: 8805
inline.NumDeleted: 4118
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic26constructor_parameter_type:bb.a
  %.sroa.0.0.copyload.i = load i56, ptr %i.r, align 8
  %.sroa.01.0.extract.trunc = trunc i56 %.sroa.0.0.copyload.i to i8
  %i.s = icmp eq i8 %7, 0
  %..i = select i1 %i.s, i8 %.sroa.01.0.extract.trunc, i8 %7
  %i.t = icmp eq i8 %..i, 2
  br i1 %i.t, label %bb.i, label %bb.f

bb.e:                                             ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.u, align 4, !alias.scope !19861
  store i32 4, ptr %0, align 4, !alias.scope !19861
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.v = call { i32, i32 } @_RINvMs9_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB8_18StaticClassLiteral10body_scopeDNtNtBe_2db2DbEL_EBe_(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) ; 2 uses
  %i.w = extractvalue { i32, i32 } %i.v, 0
  %i.x = extractvalue { i32, i32 } %i.v, 1
  store i32 3, ptr %i.d, align 4, !alias.scope !19862
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.w, ptr %.sroa.45.0..sroa_idx.i, align 4, !alias.scope !19862
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.x, ptr %.sroa.56.0..sroa_idx.i, align 4, !alias.scope !19862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @62, i64 32, i1 false), !noalias !19863
  invoke void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic19lax_input_type_impl(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %i.d, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic14lax_input_type.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_.exit.i unwind label %bb.h, !noalias !19864

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !19864
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_.exit.i: ; preds = %bb.g
  resume { ptr, i32 } %i.y

_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic14lax_input_type.exit: ; preds = %bb.f
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !19864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic14lax_input_type.exit, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic31constructor_fields_are_optional(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !19871 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [16 x i8], align 4                ; 10 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr null, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 0, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %2, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 %3, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19872
  call void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.d = load i8, ptr %i.b, align 4, !range !105, !noalias !19872, !noundef !51 ; 2 uses
  %.not7.not.i = icmp eq i8 %i.d, -1
  br i1 %.not7.not.i, label %_RINvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB19_8adapters10filter_map19filter_map_try_foldNtNtB7_10class_base9ClassBaseNtNtB7_5class9ClassTypeuINtNtNtB1b_3ops12control_flow11ControlFlowuENvMB33_B31_10into_classNCINvNvB13_3any5checkB3u_NCNvNtNtB7_9dedicated8pydantic31constructor_fields_are_optional0E0E0B3S_EB9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowuENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2j_NCNvNtNtB1i_9dedicated8pydantic31constructor_fields_are_optional0E0E0B1k_.exit.thread.i, %.lr.ph.i
  %i.e = phi i8 [ %i.d, %.lr.ph.i ], [ %i.h, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowuENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2j_NCNvNtNtB1i_9dedicated8pydantic31constructor_fields_are_optional0E0E0B1k_.exit.thread.i ]
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !19872 ; 2 uses
  %i.f = icmp ne i8 %i.e, 3
  %.not.i.i = icmp eq i32 %.sroa.6.0.copyload.i, -2
  %or.cond.i.i = select i1 %i.f, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowuENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2j_NCNvNtNtB1i_9dedicated8pydantic31constructor_fields_are_optional0E0E0B1k_.exit.thread.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowuENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2j_NCNvNtNtB1i_9dedicated8pydantic31constructor_fields_are_optional0E0E0B1k_.exit.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowuENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2j_NCNvNtNtB1i_9dedicated8pydantic31constructor_fields_are_optional0E0E0B1k_.exit.i: ; preds = %bb.b
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 4, !noalias !19872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19873
  store i32 %.sroa.6.0.copyload.i, ptr %i.a, align 4, !noalias !19874
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.49.0..sroa_idx.i.i, align 4, !noalias !19874
  %i.g = call noundef zeroext i1 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType8is_known(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, i8 noundef 104), !noalias !19875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19873
  br i1 %i.g, label %_RINvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB19_8adapters10filter_map19filter_map_try_foldNtNtB7_10class_base9ClassBaseNtNtB7_5class9ClassTypeuINtNtNtB1b_3ops12control_flow11ControlFlowuENvMB33_B31_10into_classNCINvNvB13_3any5checkB3u_NCNvNtNtB7_9dedicated8pydantic31constructor_fields_are_optional0E0E0B3S_EB9_.exit, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowuENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2j_NCNvNtNtB1i_9dedicated8pydantic31constructor_fields_are_optional0E0E0B1k_.exit.thread.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowuENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2j_NCNvNtNtB1i_9dedicated8pydantic31constructor_fields_are_optional0E0E0B1k_.exit.thread.i: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowuENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2j_NCNvNtNtB1i_9dedicated8pydantic31constructor_fields_are_optional0E0E0B1k_.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19872
  call void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.h = load i8, ptr %i.b, align 4, !range !105, !noalias !19872, !noundef !51 ; 2 uses
  %.not.not.i = icmp eq i8 %i.h, -1
  br i1 %.not.not.i, label %_RINvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB19_8adapters10filter_map19filter_map_try_foldNtNtB7_10class_base9ClassBaseNtNtB7_5class9ClassTypeuINtNtNtB1b_3ops12control_flow11ControlFlowuENvMB33_B31_10into_classNCINvNvB13_3any5checkB3u_NCNvNtNtB7_9dedicated8pydantic31constructor_fields_are_optional0E0E0B3S_EB9_.exit, label %bb.b

_RINvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB19_8adapters10filter_map19filter_map_try_foldNtNtB7_10class_base9ClassBaseNtNtB7_5class9ClassTypeuINtNtNtB1b_3ops12control_flow11ControlFlowuENvMB33_B31_10into_classNCINvNvB13_3any5checkB3u_NCNvNtNtB7_9dedicated8pydantic31constructor_fields_are_optional0E0E0B3S_EB9_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowuENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2j_NCNvNtNtB1i_9dedicated8pydantic31constructor_fields_are_optional0E0E0B1k_.exit.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowuENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2j_NCNvNtNtB1i_9dedicated8pydantic31constructor_fields_are_optional0E0E0B1k_.exit.thread.i, %bb.a
  %.not6.i = phi i1 [ false, %bb.a ], [ true, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowuENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2j_NCNvNtNtB1i_9dedicated8pydantic31constructor_fields_are_optional0E0E0B1k_.exit.i ], [ false, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowuENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2j_NCNvNtNtB1i_9dedicated8pydantic31constructor_fields_are_optional0E0E0B1k_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %.not6.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic32report_discarded_extra_arguments(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noundef nonnull align 8 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(432) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !19881 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 6 uses
  %i.j = alloca [80 x i8], align 8                ; 5 uses
  %i.k = alloca [64 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %i.m = alloca [12 x i8], align 4                ; 6 uses
  %i.n = alloca [12 x i8], align 4                ; 7 uses
  %i.o = alloca [16 x i8], align 4                ; 6 uses
  %i.p = tail call noundef zeroext i1 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB4_12InferContext15is_lint_enabled(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic33PYDANTIC_DISCARDED_EXTRA_ARGUMENT)
  br i1 %i.p, label %bb.b, label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic25model_init_discards_extra.exit.thread

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !51, !noundef !51 ; 4 uses
  %i.q = getelementptr i8, ptr %0, i64 8
  %.val20 = load ptr, ptr %i.q, align 8, !nonnull !51, !align !54, !noundef !51 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType20static_class_literal(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val20)
  %i.r = load i32, ptr %i.o, align 4, !noundef !51 ; 3 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.c

_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic25model_init_discards_extra.exit.thread: ; preds = %bb.g, %bb.e, %bb.f, %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsoTR8nlGN3X_18ty_python_semantic.exit, %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic25model_init_discards_extra.exit, %bb.a, %bb.v
  ret void

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.t = load i32, ptr %i.s, align 4, !noundef !51 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.r, ptr %i.u, align 4, !alias.scope !19882
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %i.t, ptr %i.v, align 4, !alias.scope !19882
  store i32 0, ptr %i.m, align 4, !alias.scope !19882
  call void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.n, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val20, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.w = load i32, ptr %i.n, align 4, !range !110, !noundef !51 ; 2 uses
  %.not14 = icmp eq i32 %i.w, -1
  br i1 %.not14, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic25model_init_discards_extra.exit.thread

bb.e:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx22, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4
  %i.x = icmp ne i32 %i.w, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not1524 = icmp eq i32 %.sroa.4.0.copyload, 0
  %.not15 = select i1 %i.x, i1 true, i1 %.not1524
  br i1 %.not15, label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic25model_init_discards_extra.exit.thread, label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic25model_init_discards_extra.exit.thread

bb.g:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !19883)
  %i.y = getelementptr inbounds nuw i8, ptr %.val20, i64 40
  %.val.i = load ptr, ptr %i.y, align 8, !alias.scope !19883
  %i.z = call noundef nonnull align 8 ptr %.val.i(ptr noundef nonnull %.val), !noalias !19883, !inline_history !19880 ; 2 uses
  %i.aa = call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic13ModelMetadataEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic1__NtB9_13ModelMetadata10ingredient5CACHE, ptr noundef nonnull align 8 %i.z), !noalias !19883
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic13ModelMetadataE6fieldsB14_(ptr noundef nonnull align 8 %i.aa, ptr noundef nonnull align 8 %i.z, i32 noundef range(i32 1, 0) %.sroa.4.0.copyload, i32 noundef %.sroa.5.0.copyload), !noalias !19883
  %i.ac = getelementptr i8, ptr %i.ab, i64 22
  %trunc.i = load i8, ptr %i.ac, align 2, !noalias !19883
  switch i8 %trunc.i, label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic25model_init_discards_extra.exit.thread [
    i8 -1, label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic25model_init_discards_extra.exit
    i8 2, label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic25model_init_discards_extra.exit
  ]

_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic25model_init_discards_extra.exit: ; preds = %bb.g, %bb.g
  %i.ad = call fastcc noundef i8 @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic19model_init_behavior(ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val20, i32 noundef range(i32 1, 0) %i.r, i32 noundef %i.t)
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic25model_init_discards_extra.exit.thread

bb.h:                                             ; preds = %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic25model_init_discards_extra.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments17iter_source_order(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull align 8 %2)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %3, ptr %i.af, align 8
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB2s_9enumerate9EnumerateNtB13_20ArgumentsSourceOrderENCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic32report_discarded_extra_arguments0EE9from_iterB4v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !51 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 1152921504606846976
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.i, ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic33PYDANTIC_DISCARDED_EXTRA_ARGUMENT, ptr noundef nonnull align 8 %2)
          to label %bb.o unwind label %bb.n

bb.j:                                             ; preds = %bb.h, %bb.q
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %bb.m, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %.pn18, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic25model_init_discards_extra.exit.thread

bb.m:                                             ; preds = %bb.w, %bb.y, %bb.n
  %.pn18 = phi { ptr, i32 } [ %i.am, %bb.n ], [ %i.au, %bb.w ], [ %i.av, %bb.y ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %i.l) #41
          to label %common.resume unwind label %bb.ac

bb.n:                                             ; preds = %bb.r, %bb.t, %bb.aa, %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.i
  %i.an = load i64, ptr %i.i, align 8, !range !82, !noundef !51
  %.not16 = icmp eq i64 %i.an, -2
  br i1 %.not16, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ag, align 8, !noundef !51 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.j

bb.r:                                             ; preds = %bb.p
  %i.ar = load ptr, ptr %i.ao, align 8, !nonnull !51, !noundef !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.ar, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.48.0..sroa_idx, align 8
  invoke void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.f, ptr noundef nonnull @225, ptr noundef nonnull %i.e)
          to label %bb.t unwind label %bb.n

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.as = load ptr, ptr %i.ao, align 8, !nonnull !51, !noundef !51 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ap
  invoke void @_RINvNtCsoTR8nlGN3X_18ty_python_semantic10diagnostic18format_enumerationINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1g_5slice4iter4IterRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENCNvNtNtNtB4_5types9dedicated8pydantic32report_discarded_extra_argumentss_0EB17_NtNtCscdodAO9FK5_5alloc6string6StringEB4_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.as, ptr noundef nonnull %i.at)
          to label %bb.x unwind label %bb.w

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.g)
          to label %bb.u unwind label %bb.n

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.v

bb.v:                                             ; preds = %bb.ab, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic25model_init_discards_extra.exit.thread

bb.w:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context26LintDiagnosticGuardBuilderEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.c) #41
          to label %bb.m unwind label %bb.ac

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8
  invoke void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.c, ptr noundef nonnull @226, ptr noundef nonnull %i.a)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %i.b) #41
          to label %bb.m unwind label %bb.ac

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.d)
          to label %bb.aa unwind label %bb.y

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %i.b)
          to label %bb.ab unwind label %bb.n

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

bb.ac:                                            ; preds = %bb.y, %bb.w, %bb.m
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic35constructor_fields_are_keyword_only(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #0 !guid !19886 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %2, ptr %i.b, align 4, !noalias !19887
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %3, ptr %i.c, align 4, !noalias !19887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19887
  store ptr %0, ptr %i.a, align 8, !noalias !19887
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.d, align 8, !noalias !19887
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.e, align 8, !noalias !19887
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !19887
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !19887
  %i.f = call noundef zeroext i1 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachbDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_NCNvNtNtNtB1Z_5types9dedicated8pydantic13is_root_model0E0bEB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @168, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = xor i1 %i.f, true
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic38extend_settings_constructor_parameters(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noalias noundef align 8 dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !19905 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  %i.b = alloca [12 x i8], align 4                ; 6 uses
  %i.c = alloca [16 x i8], align 4                ; 11 uses
end_hunk_0
