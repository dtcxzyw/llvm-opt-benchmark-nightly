Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_arrow-40563aeb3a74498c.polars_arrow.5e84758b183e9a03-cgu.06?download=true
inline.NumInlined: 2402
inline.NumDeleted: 1611
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtB1t_2io3ipc5write17default_ipc_field0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB34_8for_each4callNtB2o_8IpcFieldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4v_3VecB47_E14extend_trustedBN_E0E0EB1t_:bb.a
  %i.h = ptrtoint ptr %i.d to i64, !dbg !8776
  %i.i = ptrtoint ptr %i.b to i64, !dbg !8776
  %i.j = sub nuw i64 %i.h, %i.i, !dbg !8776
  %i.k = udiv exact i64 %i.j, 72, !dbg !8776
  br label %bb.c, !dbg !8777

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ], !dbg !8778 ; 2 uses
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.01.0.i, !dbg !8779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8780, !noalias !8763
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc5write17default_ipc_field(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.d unwind label %bb.e, !dbg !8781, !noalias !8764

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !8782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !8783, !noalias !8765
  %i.n = add i64 %.val15.i, 1, !dbg !8784         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8785, !noalias !8763
  %i.o = add nuw i64 %.sroa.01.0.i, 1, !dbg !8786 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.k, !dbg !8787
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_NtNtNtBW_2io3ipc8IpcFielduNCNvNtB3b_5write17default_ipc_field0NCINvNvB1L_8for_each4callB39_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4L_3VecB39_E14extend_trustedINtB2B_3MapBF_B3z_EE0E0E0EBW_.exit, label %bb.c, !dbg !8787

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !8788, !noalias !8764
  resume { ptr, i32 } %i.q, !dbg !8789

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_NtNtNtBW_2io3ipc8IpcFielduNCNvNtB3b_5write17default_ipc_field0NCINvNvB1L_8for_each4callB39_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4L_3VecB39_E14extend_trustedINtB2B_3MapBF_B3z_EE0E0E0EBW_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.n, %bb.d ], !dbg !8790
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !8790, !noalias !8764
  ret void, !dbg !8791
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtB1t_2io3ipc5write17default_ipc_fields_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB36_8for_each4callNtB2o_8IpcFieldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4x_3VecB49_E14extend_trustedBN_E0E0EB1t_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !8792 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !8856, !nonnull !385, !noundef !385 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8856
  %i.d = load ptr, ptr %i.c, align 8, !dbg !8856, !nonnull !385, !noundef !385 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8857
  %i.f = load ptr, ptr %i.e, align 8, !dbg !8857, !nonnull !385, !align !445, !noundef !385
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !8858 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !8858
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !8858 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !8858
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !8858
  %i.g = icmp eq ptr %i.b, %i.d, !dbg !8859
  br i1 %i.g, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_NtNtNtBW_2io3ipc8IpcFielduNCNvNtB3b_5write17default_ipc_fields_0NCINvNvB1L_8for_each4callB39_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4N_3VecB39_E14extend_trustedINtB2B_3MapBF_B3z_EE0E0E0EBW_.exit, label %bb.b, !dbg !8860

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64, !dbg !8861
  %i.i = ptrtoint ptr %i.b to i64, !dbg !8861
  %i.j = sub nuw i64 %i.h, %i.i, !dbg !8861
  %i.k = udiv exact i64 %i.j, 72, !dbg !8861
  br label %bb.c, !dbg !8862

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ], !dbg !8863 ; 2 uses
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.01.0.i, !dbg !8864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8865, !noalias !8848
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc5write17default_ipc_field(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.d unwind label %bb.e, !dbg !8866, !noalias !8849

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !8867
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !8868, !noalias !8850
  %i.n = add i64 %.val15.i, 1, !dbg !8869         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8870, !noalias !8848
  %i.o = add nuw i64 %.sroa.01.0.i, 1, !dbg !8871 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.k, !dbg !8872
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_NtNtNtBW_2io3ipc8IpcFielduNCNvNtB3b_5write17default_ipc_fields_0NCINvNvB1L_8for_each4callB39_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4N_3VecB39_E14extend_trustedINtB2B_3MapBF_B3z_EE0E0E0EBW_.exit, label %bb.c, !dbg !8872

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !8873, !noalias !8849
  resume { ptr, i32 } %i.q, !dbg !8874

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_NtNtNtBW_2io3ipc8IpcFielduNCNvNtB3b_5write17default_ipc_fields_0NCINvNvB1L_8for_each4callB39_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4N_3VecB39_E14extend_trustedINtB2B_3MapBF_B3z_EE0E0E0EBW_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.n, %bb.d ], !dbg !8875
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !8875, !noalias !8849
  ret void, !dbg !8876
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB1t_2io4avro4read11deserialize12make_mutable0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3e_8try_folduNCINvNvB3e_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1t_5array12MutableArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB6G_ENcNtB7M_5Break0E0B7M_E0IB7N_B7M_EEB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !8877 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca ptr, align 8                ; 5 uses
  %.sroa.73.i = alloca ptr, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8924), !dbg !8942
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8925), !dbg !8942
  %i.b = load ptr, ptr %1, align 8, !dbg !8943, !alias.scope !8926, !noalias !8924, !nonnull !385, !noundef !385 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !8944
  %i.d = load ptr, ptr %i.c, align 8, !dbg !8944, !alias.scope !8926, !noalias !8924, !nonnull !385, !noundef !385
  %i.e = icmp eq ptr %i.b, %i.d, !dbg !8945
  br i1 %i.e, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBP_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3x_EENCNvNtNtNtNtBP_2io4avro4read11deserialize12make_mutable0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B6b_EIB3c_NtNtBa_7convert10InfallibleB4C_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B60_NcNtB60_5Break0E0B60_E0E0B5l_EBP_.exit, label %bb.b, !dbg !8946

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !8947
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !8948
  store ptr %i.g, ptr %1, align 8, !dbg !8949, !alias.scope !8926, !noalias !8924
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !8950
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !8950
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8927), !dbg !8950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8928
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.f, align 8, !dbg !8951, !noalias !8929, !nonnull !385, !align !445, !noundef !385
  %i.i = load i64, ptr %.val.i.i, align 8, !dbg !8952, !noalias !8930, !noundef !385
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro4read11deserialize12make_mutable(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(144) null, i64 noundef %i.i), !dbg !8953, !noalias !8932
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !dbg !8954, !noalias !8929 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8954
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !8954, !noalias !8929 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !8954
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !8954, !noalias !8929 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8933), !dbg !8954
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !8955
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c, !dbg !8956

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %3, align 8, !dbg !8957, !range !574, !alias.scope !8934, !noalias !8935, !noundef !385
  %i.k = icmp eq i64 %i.j, 18, !dbg !8957
  br i1 %i.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, label %bb.d, !dbg !8957

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i unwind label %bb.f, !dbg !8958, !noalias !8936

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.i, align 8, !dbg !8959, !alias.scope !8937, !noalias !8938
  br label %bb.g, !dbg !8960

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !8961, !noalias !8935
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !8961
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !8961, !noalias !8935
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !8961
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !8961, !noalias !8935
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !8961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !8961, !noalias !8929
  resume { ptr, i32 } %i.l, !dbg !8962

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !8961, !noalias !8935
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !8961
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !8961, !noalias !8935
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !8961
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !8961, !noalias !8935
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !8961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !8961, !noalias !8929
  br label %bb.g, !dbg !8963

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, %bb.e
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.e ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !8964, !alias.scope !8937, !noalias !8938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8965, !noalias !8928
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load ptr, ptr %.sroa.4.i, align 8, !dbg !8966, !alias.scope !8939, !noalias !8940, !noundef !385
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load ptr, ptr %.sroa.73.i, align 8, !dbg !8966, !alias.scope !8939, !noalias !8940
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !8967
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !8967
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8968
  store ptr %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.m, align 8, !dbg !8968, !alias.scope !8941, !noalias !8925
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8968
  store ptr %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i, ptr %i.n, align 8, !dbg !8968, !alias.scope !8941, !noalias !8925
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBP_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3x_EENCNvNtNtNtNtBP_2io4avro4read11deserialize12make_mutable0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B6b_EIB3c_NtNtBa_7convert10InfallibleB4C_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B60_NcNtB60_5Break0E0B60_E0E0B5l_EBP_.exit, !dbg !8969

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBP_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3x_EENCNvNtNtNtNtBP_2io4avro4read11deserialize12make_mutable0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B6b_EIB3c_NtNtBa_7convert10InfallibleB4C_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B60_NcNtB60_5Break0E0B60_E0E0B5l_EBP_.exit: ; preds = %bb.a, %bb.g
  %storemerge.i = phi i64 [ 1, %bb.g ], [ 0, %bb.a ], !dbg !8970
  store i64 %storemerge.i, ptr %0, align 8, !dbg !8970, !alias.scope !8924, !noalias !8925
  ret void, !dbg !8971
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB1t_2io4avro4read11deserialize17deserialize_value0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3j_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4w_3VecbE14extend_trustedBN_E0E0EB1t_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !8972 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !9040 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !9040
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !9040 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !9040
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !9040 ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !9041
  %i.a = icmp eq ptr %0, %1, !dbg !9042
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_buNCNvNtNtNtNtBW_2io4avro4read11deserialize17deserialize_value0NCINvNvB1L_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecbE14extend_trustedINtB2B_3MapBF_B3b_EE0E0E0EBW_.exit, label %iter.check, !dbg !9043

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !9044
  %i.c = ptrtoint ptr %0 to i64, !dbg !9044
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !9044       ; 4 uses
  %i.e = udiv i64 %i.d, 72, !dbg !9044            ; 9 uses
  %min.iters.check = icmp ult i64 %i.d, 288, !dbg !9045
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !9045

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload, !dbg !9045
  %i.f = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload, !dbg !9045
  %scevgep2 = getelementptr i8, ptr %i.f, i64 %i.e, !dbg !9045
  %scevgep3 = getelementptr i8, ptr %0, i64 64, !dbg !9045
  %i.g = getelementptr i8, ptr %0, i64 %i.d, !dbg !9045
  %scevgep4 = getelementptr i8, ptr %i.g, i64 -7, !dbg !9045
  %bound0 = icmp ult ptr %scevgep, %scevgep4, !dbg !9045
  %bound1 = icmp ult ptr %scevgep3, %scevgep2, !dbg !9045
  %found.conflict = and i1 %bound0, %bound1, !dbg !9045
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !9046

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check5 = icmp ult i64 %i.d, 1152, !dbg !9045
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph, !dbg !9045

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %i.e, 12
  %n.vec = and i64 %i.e, 288230376151711728       ; 5 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !9045

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !9046 ; 18 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !9047
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !9047
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !9047
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !9047
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !9047
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !9047
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !9047
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !9047
  %i.s = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !9047
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !9047
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !9047
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !9047
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !9047
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !9047
  %i.y = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !9047
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !9047
  %i.aa = getelementptr i8, ptr %i.k, i64 64, !dbg !9048
  %i.ab = getelementptr i8, ptr %i.l, i64 136, !dbg !9048
  %i.ac = getelementptr i8, ptr %i.m, i64 208, !dbg !9048
  %i.ad = getelementptr i8, ptr %i.n, i64 280, !dbg !9048
  %i.ae = getelementptr i8, ptr %i.o, i64 352, !dbg !9048
  %i.af = getelementptr i8, ptr %i.p, i64 424, !dbg !9048
  %i.ag = getelementptr i8, ptr %i.q, i64 496, !dbg !9048
  %i.ah = getelementptr i8, ptr %i.r, i64 568, !dbg !9048
  %i.ai = getelementptr i8, ptr %i.s, i64 640, !dbg !9048
  %i.aj = getelementptr i8, ptr %i.t, i64 712, !dbg !9048
  %i.ak = getelementptr i8, ptr %i.u, i64 784, !dbg !9048
  %i.al = getelementptr i8, ptr %i.v, i64 856, !dbg !9048
  %i.am = getelementptr i8, ptr %i.w, i64 928, !dbg !9048
  %i.an = getelementptr i8, ptr %i.x, i64 1000, !dbg !9048
  %i.ao = getelementptr i8, ptr %i.y, i64 1072, !dbg !9048
  %i.ap = getelementptr i8, ptr %i.z, i64 1144, !dbg !9048
  %i.aq = load i8, ptr %i.aa, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.ar = load i8, ptr %i.ab, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.as = load i8, ptr %i.ac, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.at = load i8, ptr %i.ad, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.au = load i8, ptr %i.ae, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.av = load i8, ptr %i.af, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.aw = load i8, ptr %i.ag, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.ax = load i8, ptr %i.ah, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.ay = load i8, ptr %i.ai, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.az = load i8, ptr %i.aj, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.ba = load i8, ptr %i.ak, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.bb = load i8, ptr %i.al, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.bc = load i8, ptr %i.am, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.bd = load i8, ptr %i.an, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.be = load i8, ptr %i.ao, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.bf = load i8, ptr %i.ap, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.bg = insertelement <16 x i8> poison, i8 %i.aq, i64 0
  %i.bh = insertelement <16 x i8> %i.bg, i8 %i.ar, i64 1
  %i.bi = insertelement <16 x i8> %i.bh, i8 %i.as, i64 2
  %i.bj = insertelement <16 x i8> %i.bi, i8 %i.at, i64 3
  %i.bk = insertelement <16 x i8> %i.bj, i8 %i.au, i64 4
  %i.bl = insertelement <16 x i8> %i.bk, i8 %i.av, i64 5
  %i.bm = insertelement <16 x i8> %i.bl, i8 %i.aw, i64 6
  %i.bn = insertelement <16 x i8> %i.bm, i8 %i.ax, i64 7
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 8
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 9
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 10
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 11
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 12
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 13
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 14
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 15
  %i.bw = getelementptr i8, ptr %i.j, i64 %index, !dbg !9049
  store <16 x i8> %i.bv, ptr %i.bw, align 1, !dbg !9050, !alias.scope !9031, !noalias !9032
  %index.next = add nuw i64 %index, 16, !dbg !9046 ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec, !dbg !9051
  br i1 %i.bx, label %middle.block, label %vector.body, !dbg !9051, !llvm.loop !9017

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !9051
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_buNCNvNtNtNtNtBW_2io4avro4read11deserialize17deserialize_value0NCINvNvB1L_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecbE14extend_trustedINtB2B_3MapBF_B3b_EE0E0E0EBW_.exit, label %vec.epilog.iter.check, !dbg !9051

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !9033

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !9046
  %n.vec6 = and i64 %i.e, 288230376151711740      ; 4 uses
  %i.by = add i64 %.sroa.5.0.copyload, %n.vec6    ; 2 uses
  %i.bz = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ], !dbg !9046 ; 6 uses
  %i.ca = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index7, !dbg !9047
  %i.cb = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index7, !dbg !9047
  %i.cc = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index7, !dbg !9047
  %i.cd = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index7, !dbg !9047
  %i.ce = getelementptr i8, ptr %i.ca, i64 64, !dbg !9048
  %i.cf = getelementptr i8, ptr %i.cb, i64 136, !dbg !9048
  %i.cg = getelementptr i8, ptr %i.cc, i64 208, !dbg !9048
  %i.ch = getelementptr i8, ptr %i.cd, i64 280, !dbg !9048
  %i.ci = load i8, ptr %i.ce, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.cj = load i8, ptr %i.cf, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.ck = load i8, ptr %i.cg, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %i.cl = load i8, ptr %i.ch, align 8, !dbg !9048, !range !549, !alias.scope !9029, !noalias !9030, !noundef !385
  %3 = insertelement <4 x i8> poison, i8 %i.ci, i64 0
  %4 = insertelement <4 x i8> %3, i8 %i.cj, i64 1
  %5 = insertelement <4 x i8> %4, i8 %i.ck, i64 2
  %6 = insertelement <4 x i8> %5, i8 %i.cl, i64 3
  %i.cm = getelementptr i8, ptr %i.bz, i64 %index7, !dbg !9049
  store <4 x i8> %6, ptr %i.cm, align 1, !dbg !9050, !alias.scope !9031, !noalias !9032
  %index.next8 = add nuw i64 %index7, 4, !dbg !9046 ; 2 uses
  %i.cn = icmp eq i64 %index.next8, %n.vec6, !dbg !9051
  br i1 %i.cn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !9051, !llvm.loop !9018

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.e, %n.vec6, !dbg !9051
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_buNCNvNtNtNtNtBW_2io4avro4read11deserialize17deserialize_value0NCINvNvB1L_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecbE14extend_trustedINtB2B_3MapBF_B3b_EE0E0E0EBW_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !9051

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !9051         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !9051
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !9051

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.co = phi i64 [ %i.cs, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !9047 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ct, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !9046 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cp = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !9047
  %i.cq = getelementptr i8, ptr %i.cp, i64 64, !dbg !9048
  %.val16.i.prol = load i8, ptr %i.cq, align 8, !dbg !9048, !range !549, !noalias !9030, !noundef !385
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.co, !dbg !9049
  store i8 %.val16.i.prol, ptr %i.cr, align 1, !dbg !9050, !noalias !9034
  %i.cs = add i64 %i.co, 1, !dbg !9052            ; 3 uses
  %i.ct = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !9053 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !9051 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !9051
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !9051, !llvm.loop !9023

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.cs, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cs, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ct, %vec.epilog.scalar.ph.prol ]
  %i.cu = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !9051
  %i.cv = icmp ugt i64 %i.cu, -4, !dbg !9051
  br i1 %i.cv, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_buNCNvNtNtNtNtBW_2io4avro4read11deserialize17deserialize_value0NCINvNvB1L_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecbE14extend_trustedINtB2B_3MapBF_B3b_EE0E0E0EBW_.exit, label %vec.epilog.scalar.ph, !dbg !9051

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.cw = phi i64 [ %i.dm, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !9047 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.dn, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !9046 ; 5 uses
  %i.cx = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !9047
  %i.cy = getelementptr i8, ptr %i.cx, i64 64, !dbg !9048
  %.val16.i = load i8, ptr %i.cy, align 8, !dbg !9048, !range !549, !noalias !9030, !noundef !385
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.cw, !dbg !9049
  store i8 %.val16.i, ptr %i.cz, align 1, !dbg !9050, !noalias !9034
  %i.da = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !9047
  %i.db = getelementptr i8, ptr %i.da, i64 136, !dbg !9048
  %.val16.i.1 = load i8, ptr %i.db, align 8, !dbg !9048, !range !549, !noalias !9030, !noundef !385
  %i.dc = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.cw, !dbg !9049
  %i.dd = getelementptr i8, ptr %i.dc, i64 1, !dbg !9049
  store i8 %.val16.i.1, ptr %i.dd, align 1, !dbg !9050, !noalias !9034
  %i.de = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !9047
  %i.df = getelementptr i8, ptr %i.de, i64 208, !dbg !9048
  %.val16.i.2 = load i8, ptr %i.df, align 8, !dbg !9048, !range !549, !noalias !9030, !noundef !385
  %i.dg = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.cw, !dbg !9049
  %i.dh = getelementptr i8, ptr %i.dg, i64 2, !dbg !9049
  store i8 %.val16.i.2, ptr %i.dh, align 1, !dbg !9050, !noalias !9034
  %i.di = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !9047
  %i.dj = getelementptr i8, ptr %i.di, i64 280, !dbg !9048
  %.val16.i.3 = load i8, ptr %i.dj, align 8, !dbg !9048, !range !549, !noalias !9030, !noundef !385
  %i.dk = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.cw, !dbg !9049
  %i.dl = getelementptr i8, ptr %i.dk, i64 3, !dbg !9049
  store i8 %.val16.i.3, ptr %i.dl, align 1, !dbg !9050, !noalias !9034
  %i.dm = add i64 %i.cw, 4, !dbg !9052            ; 2 uses
  %i.dn = add nuw i64 %.sroa.01.0.i, 4, !dbg !9053 ; 2 uses
  %i.do = icmp eq i64 %i.dn, %i.e, !dbg !9051
  br i1 %i.do, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_buNCNvNtNtNtNtBW_2io4avro4read11deserialize17deserialize_value0NCINvNvB1L_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecbE14extend_trustedINtB2B_3MapBF_B3b_EE0E0E0EBW_.exit, label %vec.epilog.scalar.ph, !dbg !9051, !llvm.loop !9024

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_buNCNvNtNtNtNtBW_2io4avro4read11deserialize17deserialize_value0NCINvNvB1L_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecbE14extend_trustedINtB2B_3MapBF_B3b_EE0E0E0EBW_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.by, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.dm, %vec.epilog.scalar.ph ], !dbg !9054
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !9054, !noalias !9030
  ret void, !dbg !9055
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB1t_2io4avro5write6schema15__type_to_schema0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3d_8try_folduNCINvNvB3d_12try_for_each4callNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldINtNtNtBc_3ops12control_flow11ControlFlowB6F_ENcNtB7n_5Break0E0B7n_E0IB7o_B7n_EEB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([368 x i8]) align 8 captures(none) dereferenceable(368) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9056 {
bb.a:
  %.sroa.4.i.i.i = alloca [360 x i8], align 8     ; 5 uses
  %i.a = alloca [368 x i8], align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9091), !dbg !9101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9092), !dbg !9101
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !9093, !noalias !9091, !nonnull !385, !noundef !385 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !9093, !noalias !9091 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i, %i.c, !dbg !9102
  br i1 %i.d, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4Z_B3x_EENCNvNtNtNtNtBP_2io4avro5write6schema15__type_to_schema0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B5O_EIB3c_NtNtBa_7convert10InfallibleB4f_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B5D_NcNtB5D_5Break0E0B5D_E0E0B4Y_EBP_.exit, label %.lr.ph.i, !dbg !9103

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9104
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.4.80..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 72
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !9094, !nonnull !385, !align !471, !noundef !385
  br label %bb.b, !dbg !9103

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.i, %bb.f ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72, !dbg !9105 ; 3 uses
  store ptr %i.i, ptr %1, align 8, !dbg !9106, !alias.scope !9093, !noalias !9091
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9095
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro5write6schema14field_to_field(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.h, ptr noalias noundef nonnull align 4 dereferenceable(4) %.val.i.i), !dbg !9107, !noalias !9096
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !dbg !9108, !noalias !9094 ; 3 uses
  %i.j = icmp eq i64 %.sroa.0.0.copyload.i.i, -9223372036854775808, !dbg !9109
  br i1 %i.j, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3I_B2g_EENCNvNtNtNtNtB16_2io4avro5write6schema15__type_to_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4x_EIB1V_NtNtBa_7convert10InfallibleB2Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7g_12try_for_each4callB2g_B4m_NcNtB4m_5Break0E0B4m_E0E0B16_.exit.i, !dbg !9110

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %3, align 8, !dbg !9111, !range !574, !alias.scope !9098, !noalias !9099, !noundef !385
  %i.l = icmp eq i64 %i.k, 18, !dbg !9111
  br i1 %i.l, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3I_B2g_EENCNvNtNtNtNtB16_2io4avro5write6schema15__type_to_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4x_EIB1V_NtNtBa_7convert10InfallibleB2Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7g_12try_for_each4callB2g_B4m_NcNtB4m_5Break0E0B4m_E0E0B16_.exit.thread.i, label %bb.d, !dbg !9111

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3I_B2g_EENCNvNtNtNtNtB16_2io4avro5write6schema15__type_to_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4x_EIB1V_NtNtBa_7convert10InfallibleB2Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7g_12try_for_each4callB2g_B4m_NcNtB4m_5Break0E0B4m_E0E0B16_.exit.thread.i unwind label %bb.e, !dbg !9112, !noalias !9100

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !dbg !9113, !noalias !9094
  resume { ptr, i32 } %i.m, !dbg !9114

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3I_B2g_EENCNvNtNtNtNtB16_2io4avro5write6schema15__type_to_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4x_EIB1V_NtNtBa_7convert10InfallibleB2Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7g_12try_for_each4callB2g_B4m_NcNtB4m_5Break0E0B4m_E0E0B16_.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !dbg !9113, !noalias !9094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9115, !noalias !9095
  br label %.loopexit.i, !dbg !9116

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3I_B2g_EENCNvNtNtNtNtB16_2io4avro5write6schema15__type_to_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4x_EIB1V_NtNtBa_7convert10InfallibleB2Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7g_12try_for_each4callB2g_B4m_NcNtB4m_5Break0E0B4m_E0E0B16_.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.4.80..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %i.g, i64 288, i1 false), !dbg !9117, !noalias !9095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !dbg !9118, !noalias !9095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9115, !noalias !9095
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -9223372036854775807, !dbg !9119
  br i1 %.not.i.i, label %bb.f, label %.loopexit.i, !dbg !9116

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3I_B2g_EENCNvNtNtNtNtB16_2io4avro5write6schema15__type_to_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4x_EIB1V_NtNtBa_7convert10InfallibleB2Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7g_12try_for_each4callB2g_B4m_NcNtB4m_5Break0E0B4m_E0E0B16_.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3I_B2g_EENCNvNtNtNtNtB16_2io4avro5write6schema15__type_to_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4x_EIB1V_NtNtBa_7convert10InfallibleB2Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7g_12try_for_each4callB2g_B4m_NcNtB4m_5Break0E0B4m_E0E0B16_.exit.thread.i
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.4.i.i.i, i64 360, i1 false), !dbg !9121, !noalias !9092
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4Z_B3x_EENCNvNtNtNtNtBP_2io4avro5write6schema15__type_to_schema0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B5O_EIB3c_NtNtBa_7convert10InfallibleB4f_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B5D_NcNtB5D_5Break0E0B5D_E0E0B4Y_EBP_.exit, !dbg !9122

bb.f:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3I_B2g_EENCNvNtNtNtNtB16_2io4avro5write6schema15__type_to_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4x_EIB1V_NtNtBa_7convert10InfallibleB2Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7g_12try_for_each4callB2g_B4m_NcNtB4m_5Break0E0B4m_E0E0B16_.exit.i
  %i.n = icmp eq ptr %i.i, %i.c, !dbg !9102
  br i1 %i.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4Z_B3x_EENCNvNtNtNtNtBP_2io4avro5write6schema15__type_to_schema0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B5O_EIB3c_NtNtBa_7convert10InfallibleB4f_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B5D_NcNtB5D_5Break0E0B5D_E0E0B4Y_EBP_.exit, label %bb.b, !dbg !9103

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4Z_B3x_EENCNvNtNtNtNtBP_2io4avro5write6schema15__type_to_schema0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B5O_EIB3c_NtNtBa_7convert10InfallibleB4f_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B5D_NcNtB5D_5Break0E0B5D_E0E0B4Y_EBP_.exit: ; preds = %bb.f, %bb.a, %.loopexit.i
  %storemerge.i = phi i64 [ %.sroa.0.0.copyload.i.i, %.loopexit.i ], [ -9223372036854775807, %bb.a ], [ -9223372036854775807, %bb.f ], !dbg !9123
  store i64 %storemerge.i, ptr %0, align 8, !dbg !9123, !alias.scope !9091, !noalias !9092
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i), !dbg !9124
  ret void, !dbg !9125
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENCNvMNtNtB1t_5array15fixed_size_listNtB2B_18FixedSizeListArray10from_shape0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4X_3VecjE14extend_trustedBN_E0E0EB1t_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !9126 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !9194, !nonnull !385, !noundef !385 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9194
  %i.c = load ptr, ptr %i.b, align 8, !dbg !9194, !nonnull !385, !noundef !385 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9195
  %i.e = load ptr, ptr %i.d, align 8, !dbg !9195, !nonnull !385, !align !445, !noundef !385 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !9196 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9196
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !9196 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9196
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !9196 ; 3 uses
  %i.f = icmp eq ptr %i.a, %i.c, !dbg !9197
  br i1 %i.f, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_juNCNvMNtNtBW_5array15fixed_size_listNtB3u_18FixedSizeListArray10from_shape0NCINvNvB1Z_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0EBW_.exit, label %bb.b, !dbg !9198

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64, !dbg !9199
  %i.h = ptrtoint ptr %i.a to i64, !dbg !9199
  %i.i = sub nuw i64 %i.g, %i.h, !dbg !9199       ; 3 uses
  %i.j = lshr exact i64 %i.i, 3, !dbg !9199       ; 2 uses
  %i.k = icmp eq i64 %i.i, 8, !dbg !9200
  br i1 %i.k, label %.epil.preheader, label %.new, !dbg !9200

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.j, 2305843009213693950, !dbg !9200
  br label %bb.c, !dbg !9200

bb.c:                                             ; preds = %bb.c, %.new
  %i.l = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.w, %bb.c ], !dbg !9201 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.x, %bb.c ], !dbg !9202 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !9201
  %.val16.i = load i64, ptr %i.m, align 8, !dbg !9203, !noalias !9179, !noundef !385
  %i.n = load i64, ptr %i.e, align 8, !dbg !9204, !noalias !9180, !noundef !385 ; 2 uses
  %.sroa.0.0.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val16.i, i64 1), !dbg !9205
  %i.o = mul i64 %i.n, %.sroa.0.0.i.i.i, !dbg !9206
  store i64 %i.o, ptr %i.e, align 8, !dbg !9206, !noalias !9180
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !9207
  store i64 %i.n, ptr %i.p, align 8, !dbg !9208, !noalias !9188
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !9201
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !9201
  %.val16.i.1 = load i64, ptr %i.r, align 8, !dbg !9203, !noalias !9179, !noundef !385
  %i.s = load i64, ptr %i.e, align 8, !dbg !9204, !noalias !9180, !noundef !385 ; 2 uses
  %.sroa.0.0.i.i.i.1 = tail call i64 @llvm.usub.sat.i64(i64 %.val16.i.1, i64 1), !dbg !9205
  %i.t = mul i64 %i.s, %.sroa.0.0.i.i.i.1, !dbg !9206
  store i64 %i.t, ptr %i.e, align 8, !dbg !9206, !noalias !9180
  %i.u = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !9207
  %i.v = getelementptr i8, ptr %i.u, i64 8, !dbg !9207
  store i64 %i.s, ptr %i.v, align 8, !dbg !9208, !noalias !9188
end_hunk_0
begin_hunk_1_@llvm.usub.sat.i64
!8833 = distinct !DISubprogram(name: "write<polars_arrow::io::ipc::IpcField>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writeNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc8IpcFieldEBD_", scope: !402, file: !401, line: 1898, type: !386, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8834 = distinct !DILocation(line: 4029, column: 21, scope: !8824, inlinedAt: !8827)
!8835 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !515, file: !513, line: 18, type: !386, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8836 = distinct !DILocation(line: 4033, column: 31, scope: !8824, inlinedAt: !8827)
!8837 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !518, file: !516, line: 886, type: !386, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8838 = distinct !DILocation(line: 283, column: 36, scope: !8812, inlinedAt: !8798)
!8839 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<polars_arrow::io::ipc::IpcField, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::ipc::write::default_ipc_field::{closure_env#1}>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtBP_3VecNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc8IpcFieldE14extend_trustedINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5slice4iter4IterNtNtNtB1v_9datatypes5field5FieldENCNvNtB1r_5write17default_ipc_fields_0EE0EB1v_", scope: !402, file: !401, line: 810, type: !405, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8840 = distinct !DISubprogram(name: "drop_in_place<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<polars_arrow::io::ipc::IpcField, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<polars_arrow::io::ipc::IpcField, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::ipc::write::default_ipc_field::{closure_env#1}>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc8IpcFieldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2D_3VecB1G_E14extend_trustedINtNtNtBT_8adapters3map3MapINtNtNtB4_5slice4iter4IterNtNtNtB1M_9datatypes5field5FieldENCNvNtB1I_5write17default_ipc_fields_0EE0E0EB1M_", scope: !402, file: !401, line: 810, type: !405, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8841 = distinct !DISubprogram(name: "drop_in_place<core::iter::adapters::map::map_fold::{closure_env#0}<&polars_arrow::datatypes::field::Field, polars_arrow::io::ipc::IpcField, (), polars_arrow::io::ipc::write::default_ipc_field::{closure_env#1}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<polars_arrow::io::ipc::IpcField, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<polars_arrow::io::ipc::IpcField, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::ipc::write::default_ipc_field::{closure_env#1}>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtNtB4_4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtNtNtB1s_2io3ipc8IpcFielduNCNvNtB2i_5write17default_ipc_fields_0NCINvNvNtNtNtBP_6traits8iterator8Iterator8for_each4callB2g_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4p_3VecB2g_E14extend_trustedINtBL_3MapINtNtNtB4_5slice4iter4IterB1m_EB2H_EE0E0E0EB1s_", scope: !402, file: !401, line: 810, type: !405, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8842 = distinct !DILocation(line: 289, column: 13, scope: !8795, inlinedAt: !8798)
!8843 = distinct !DILocation(line: 810, column: 1, scope: !8841, inlinedAt: !8842)
!8844 = distinct !DILocation(line: 810, column: 1, scope: !8840, inlinedAt: !8843)
!8845 = distinct !DILocation(line: 810, column: 1, scope: !8839, inlinedAt: !8844)
!8846 = distinct !DILocation(line: 810, column: 1, scope: !60, inlinedAt: !8845)
!8847 = !DILocation(line: 128, column: 30, scope: !8792)
!8848 = !{!8818, !8817, !8815}
!8849 = !{!8815}
!8850 = !{!8832, !8830, !8818, !8815}
!8851 = !DILocation(line: 289, column: 13, scope: !8795, inlinedAt: !8798)
!8852 = !DILocation(line: 810, column: 1, scope: !8841, inlinedAt: !8851)
!8853 = !DILocation(line: 810, column: 1, scope: !8840, inlinedAt: !8852)
!8854 = !DILocation(line: 810, column: 1, scope: !8839, inlinedAt: !8853)
!8855 = !DILocation(line: 810, column: 1, scope: !60, inlinedAt: !8854)
!8856 = !DILocation(line: 128, column: 9, scope: !8792)
!8857 = !DILocation(line: 128, column: 39, scope: !8792)
!8858 = !DILocation(line: 88, column: 5, scope: !8793, inlinedAt: !8847)
!8859 = !DILocation(line: 1717, column: 9, scope: !8794, inlinedAt: !8799)
!8860 = !DILocation(line: 25, column: 86, scope: !8796, inlinedAt: !8798)
!8861 = !DILocation(line: 729, column: 18, scope: !8801, inlinedAt: !8810)
!8862 = !DILocation(line: 28, column: 9, scope: !8806, inlinedAt: !8798)
!8863 = !DILocation(line: 0, scope: !8804, inlinedAt: !8798)
!8864 = !DILocation(line: 659, column: 28, scope: !8811, inlinedAt: !8813)
!8865 = !DILocation(line: 88, column: 21, scope: !8819, inlinedAt: !8820)
!8866 = !DILocation(line: 45, column: 26, scope: !8821, inlinedAt: !8822)
!8867 = !DILocation(line: 961, column: 18, scope: !8823, inlinedAt: !8828)
!8868 = !DILocation(line: 1921, column: 41, scope: !8833, inlinedAt: !8834)
!8869 = !DILocation(line: 19, column: 9, scope: !8835, inlinedAt: !8836)
!8870 = !DILocation(line: 88, column: 34, scope: !8819, inlinedAt: !8820)
!8871 = !DILocation(line: 898, column: 17, scope: !8837, inlinedAt: !8838)
!8872 = !DILocation(line: 284, column: 24, scope: !8812, inlinedAt: !8798)
!8873 = !DILocation(line: 31, column: 9, scope: !59, inlinedAt: !8846)
!8874 = !DILocation(line: 259, column: 13, scope: !8795, inlinedAt: !8798)
!8875 = !DILocation(line: 31, column: 9, scope: !59, inlinedAt: !8855)
!8876 = !DILocation(line: 129, column: 6, scope: !8792)
!8877 = distinct !DISubprogram(name: "try_fold<core::result::Result<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, polars_error::PolarsError>, core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::read::deserialize::make_mutable::{closure_env#0}, (), core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::read::deserialize::make_mutable::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, ()>, fn(alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>) -> core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, ()>>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, ()>>, core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, ()>, ()>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB1t_2io4avro4read11deserialize12make_mutable0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3e_8try_folduNCINvNvB3e_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1t_5array12MutableArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB6G_ENcNtB7M_5Break0E0B7M_E0IB7N_B7M_EEB1t_", scope: !470, file: !466, line: 115, type: !386, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8878 = distinct !{!8878, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBP_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3x_EENCNvNtNtNtNtBP_2io4avro4read11deserialize12make_mutable0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B6b_EIB3c_NtNtBa_7convert10InfallibleB4C_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B60_NcNtB60_5Break0E0B60_E0E0B5l_EBP_"}
!8879 = distinct !{!8879, !8878, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBP_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3x_EENCNvNtNtNtNtBP_2io4avro4read11deserialize12make_mutable0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B6b_EIB3c_NtNtBa_7convert10InfallibleB4C_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B60_NcNtB60_5Break0E0B60_E0E0B5l_EBP_: argument 0"}
!8880 = distinct !{!8880, !8878, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBP_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3x_EENCNvNtNtNtNtBP_2io4avro4read11deserialize12make_mutable0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B6b_EIB3c_NtNtBa_7convert10InfallibleB4C_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B60_NcNtB60_5Break0E0B60_E0E0B5l_EBP_: argument 1"}
!8881 = distinct !{!8881, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_"}
!8882 = distinct !{!8882, !8881, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_: argument 0"}
!8883 = distinct !DISubprogram(name: "try_fold<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, (), core::iter::adapters::map::map_try_fold::{closure_env#0}<&polars_arrow::datatypes::field::Field, core::result::Result<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, polars_error::PolarsError>, (), core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, ()>, ()>, polars_arrow::io::avro::read::deserialize::make_mutable::{closure_env#0}, core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::read::deserialize::make_mutable::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, ()>, fn(alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>) -> core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, ()>>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, ()>>>, core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, ()>, ()>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBP_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3x_EENCNvNtNtNtNtBP_2io4avro4read11deserialize12make_mutable0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B6b_EIB3c_NtNtBa_7convert10InfallibleB4C_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B60_NcNtB60_5Break0E0B60_E0E0B5l_EBP_", scope: !510, file: !507, line: 2501, type: !405, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8884 = distinct !DILexicalBlock(scope: !8883, file: !507, line: 2507, column: 9)
!8885 = distinct !DILexicalBlock(scope: !8884, file: !507, line: 2508, column: 41)
!8886 = distinct !DILocation(line: 121, column: 19, scope: !8877)
!8887 = distinct !DILocation(line: 2508, column: 34, scope: !8885, inlinedAt: !8886)
!8888 = distinct !DILocation(line: 180, column: 28, scope: !206, inlinedAt: !8887)
!8889 = distinct !DILocation(line: 185, column: 40, scope: !206, inlinedAt: !8887)
!8890 = distinct !{!8890, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB16_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2g_EENCNvNtNtNtNtB16_2io4avro4read11deserialize12make_mutable0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB1V_NtNtBa_7convert10InfallibleB3m_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7F_12try_for_each4callB2g_B4K_NcNtB4K_5Break0E0B4K_E0E0B16_"}
!8891 = distinct !{!8891, !8890, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB16_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2g_EENCNvNtNtNtNtB16_2io4avro4read11deserialize12make_mutable0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB1V_NtNtBa_7convert10InfallibleB3m_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7F_12try_for_each4callB2g_B4K_NcNtB4K_5Break0E0B4K_E0E0B16_: argument 0"}
!8892 = distinct !{!8892, !8890, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB16_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2g_EENCNvNtNtNtNtB16_2io4avro4read11deserialize12make_mutable0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB1V_NtNtBa_7convert10InfallibleB3m_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7F_12try_for_each4callB2g_B4K_NcNtB4K_5Break0E0B4K_E0E0B16_: argument 1"}
!8893 = distinct !DISubprogram(name: "{closure#0}<&polars_arrow::datatypes::field::Field, core::result::Result<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, polars_error::PolarsError>, (), core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, ()>, ()>, polars_arrow::io::avro::read::deserialize::make_mutable::{closure_env#0}, core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::read::deserialize::make_mutable::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, ()>, fn(alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>) -> core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, ()>>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, ()>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB16_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2g_EENCNvNtNtNtNtB16_2io4avro4read11deserialize12make_mutable0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB1V_NtNtBa_7convert10InfallibleB3m_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7F_12try_for_each4callB2g_B4K_NcNtB4K_5Break0E0B4K_E0E0B16_", scope: !571, file: !466, line: 95, type: !405, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8894 = distinct !DILocation(line: 2509, column: 21, scope: !8885, inlinedAt: !8886)
!8895 = distinct !{!8895, !"_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro4read11deserialize12make_mutable0Bb_"}
!8896 = distinct !{!8896, !8895, !"_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro4read11deserialize12make_mutable0Bb_: argument 1"}
!8897 = distinct !{!8897, !8895, !"_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro4read11deserialize12make_mutable0Bb_: argument 0"}
!8898 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro4read11deserialize12make_mutable0Bb_", scope: !8931, file: !567, line: 59, type: !405, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8899 = distinct !DILocation(line: 95, column: 28, scope: !8893, inlinedAt: !8894)
!8900 = distinct !{!8900, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB1M_2io4avro4read11deserialize12make_mutable0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB53_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1M_5array12MutableArrayEL_EINtNtNtB9_3ops12control_flow11ControlFlowB6f_ENcNtB7l_5Break0E0B7l_E0B1M_"}
!8901 = distinct !{!8901, !8900, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB1M_2io4avro4read11deserialize12make_mutable0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB53_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1M_5array12MutableArrayEL_EINtNtNtB9_3ops12control_flow11ControlFlowB6f_ENcNtB7l_5Break0E0B7l_E0B1M_: argument 0"}
!8902 = distinct !DISubprogram(name: "{closure#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::read::deserialize::make_mutable::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, ()>, fn(alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>) -> core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, ()>>, core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, ()>>", linkageName: "_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB1M_2io4avro4read11deserialize12make_mutable0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB53_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1M_5array12MutableArrayEL_EINtNtNtB9_3ops12control_flow11ControlFlowB6f_ENcNtB7l_5Break0E0B7l_E0B1M_", scope: !573, file: !572, line: 195, type: !405, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8903 = distinct !DILocation(line: 95, column: 21, scope: !8893, inlinedAt: !8894)
!8904 = distinct !DILocation(line: 195, column: 44, scope: !8902, inlinedAt: !8903)
!8905 = distinct !{!8905, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow"}
!8906 = distinct !{!8906, !8905, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow: argument 0"}
!8907 = distinct !{!8907, !8900, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB1M_2io4avro4read11deserialize12make_mutable0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB53_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1M_5array12MutableArrayEL_EINtNtNtB9_3ops12control_flow11ControlFlowB6f_ENcNtB7l_5Break0E0B7l_E0B1M_: argument 1"}
!8908 = distinct !DILexicalBlock(scope: !8902, file: !572, line: 197, column: 17)
!8909 = distinct !DILocation(line: 198, column: 21, scope: !8908, inlinedAt: !8903)
!8910 = distinct !DILocation(line: 810, column: 1, scope: !93, inlinedAt: !8909)
!8911 = distinct !DISubprogram(name: "from_try<core::ops::control_flow::ControlFlow<alloc::boxed::Box<dyn polars_arrow::array::MutableArray, alloc::alloc::Global>, ()>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core3ops12control_flowINtB5_11ControlFlowIBL_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array12MutableArrayEL_EEE8from_tryB1L_", scope: !577, file: !575, line: 429, type: !386, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8912 = distinct !DILexicalBlock(scope: !8911, file: !575, line: 432, column: 13)
!8913 = distinct !DILexicalBlock(scope: !8902, file: !572, line: 196, column: 17)
!8914 = distinct !DILocation(line: 196, column: 45, scope: !8913, inlinedAt: !8903)
!8915 = distinct !{!8915, !"_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowIBI_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array12MutableArrayEL_EEENtNtB4_9try_trait3Try6branchB1I_"}
!8916 = distinct !{!8916, !8915, !"_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowIBI_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array12MutableArrayEL_EEENtNtB4_9try_trait3Try6branchB1I_: argument 1"}
!8917 = distinct !{!8917, !8915, !"_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowIBI_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array12MutableArrayEL_EEENtNtB4_9try_trait3Try6branchB1I_: argument 0"}
!8918 = distinct !DILocation(line: 2509, column: 21, scope: !8885, inlinedAt: !8886)
!8919 = distinct !DILexicalBlock(scope: !8885, file: !507, line: 2509, column: 32)
!8920 = distinct !DILexicalBlock(scope: !8919, file: !507, line: 2509, column: 32)
!8921 = distinct !DILocation(line: 2509, column: 21, scope: !8920, inlinedAt: !8886)
!8922 = distinct !{!8922, !"_RNvXs_NtNtCscgRAwXFJnXP_4core3ops12control_flowINtB4_11ControlFlowIBK_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array12MutableArrayEL_EEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualB1K_"}
!8923 = distinct !{!8923, !8922, !"_RNvXs_NtNtCscgRAwXFJnXP_4core3ops12control_flowINtB4_11ControlFlowIBK_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array12MutableArrayEL_EEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualB1K_: argument 0"}
!8924 = !{!8879}
!8925 = !{!8880}
!8926 = !{!8882, !8880}
!8927 = !{!8891}
!8928 = !{!8879, !8880}
!8929 = !{!8891, !8892, !8879, !8880}
!8930 = !{!8897, !8896, !8891, !8892, !8879, !8880}
!8931 = !DINamespace(name: "make_mutable", scope: !570)
!8932 = !{!8891, !8879, !8880}
!8933 = !{!8901}
!8934 = !{!8906}
!8935 = !{!8901, !8907, !8891, !8892, !8879, !8880}
!8936 = !{!8901, !8907, !8891, !8879, !8880}
!8937 = !{!8901, !8891}
!8938 = !{!8907, !8892, !8879, !8880}
!8939 = !{!8916}
!8940 = !{!8917, !8879, !8880}
!8941 = !{!8923, !8879}
!8942 = !DILocation(line: 121, column: 19, scope: !8877)
!8943 = !DILocation(line: 161, column: 27, scope: !203, inlinedAt: !8887)
!8944 = !DILocation(line: 162, column: 34, scope: !204, inlinedAt: !8887)
!8945 = !DILocation(line: 1717, column: 9, scope: !205, inlinedAt: !8888)
!8946 = !DILocation(line: 180, column: 28, scope: !206, inlinedAt: !8887)
!8947 = !DILocation(line: 121, column: 47, scope: !8877)
!8948 = !DILocation(line: 659, column: 28, scope: !207, inlinedAt: !8889)
!8949 = !DILocation(line: 185, column: 25, scope: !206, inlinedAt: !8887)
!8950 = !DILocation(line: 2509, column: 21, scope: !8885, inlinedAt: !8886)
!8951 = !DILocation(line: 95, column: 28, scope: !8893, inlinedAt: !8894)
!8952 = !DILocation(line: 59, column: 68, scope: !8898, inlinedAt: !8899)
!8953 = !DILocation(line: 59, column: 34, scope: !8898, inlinedAt: !8899)
!8954 = !DILocation(line: 95, column: 21, scope: !8893, inlinedAt: !8894)
!8955 = !DILocation(line: 2173, column: 15, scope: !92, inlinedAt: !8904)
!8956 = !DILocation(line: 2173, column: 9, scope: !92, inlinedAt: !8904)
!8957 = !DILocation(line: 810, column: 1, scope: !93, inlinedAt: !8909)
!8958 = !DILocation(line: 810, column: 1, scope: !94, inlinedAt: !8910)
!8959 = !DILocation(line: 432, column: 38, scope: !8912, inlinedAt: !8914)
!8960 = !DILocation(line: 432, column: 76, scope: !8911, inlinedAt: !8914)
!8961 = !DILocation(line: 198, column: 21, scope: !8908, inlinedAt: !8903)
!8962 = !DILocation(line: 195, column: 29, scope: !8902, inlinedAt: !8903)
!8963 = !DILocation(line: 200, column: 17, scope: !8902, inlinedAt: !8903)
!8964 = !DILocation(line: 0, scope: !8902, inlinedAt: !8903)
!8965 = !DILocation(line: 95, column: 35, scope: !8893, inlinedAt: !8894)
!8966 = !DILocation(line: 118, column: 32, scope: !95, inlinedAt: !8918)
!8967 = !DILocation(line: 2509, column: 32, scope: !8885, inlinedAt: !8886)
!8968 = !DILocation(line: 131, column: 38, scope: !97, inlinedAt: !8921)
!8969 = !DILocation(line: 2512, column: 5, scope: !8883, inlinedAt: !8886)
!8970 = !DILocation(line: 0, scope: !8884, inlinedAt: !8886)
!8971 = !DILocation(line: 122, column: 6, scope: !8877)
!8972 = distinct !DISubprogram(name: "fold<bool, core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::read::deserialize::deserialize_value::{closure_env#0}, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<bool, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<bool, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::read::deserialize::deserialize_value::{closure_env#0}>>>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB1t_2io4avro4read11deserialize17deserialize_value0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3j_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4w_3VecbE14extend_trustedBN_E0E0EB1t_", scope: !470, file: !466, line: 124, type: !386, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8973 = distinct !DISubprogram(name: "map_fold<&polars_arrow::datatypes::field::Field, bool, (), polars_arrow::io::avro::read::deserialize::deserialize_value::{closure_env#0}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<bool, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<bool, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::read::deserialize::deserialize_value::{closure_env#0}>>>>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldbuNCNvNtNtNtNtBZ_2io4avro4read11deserialize17deserialize_value0NCINvNvNtNtNtB6_6traits8iterator8Iterator8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3R_3VecbE14extend_trustedINtB2_3MapINtNtNtB8_5slice4iter4IterBT_EB1P_EE0E0EBZ_", scope: !469, file: !466, line: 84, type: !386, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8974 = distinct !DISubprogram(name: "as_ptr<polars_arrow::datatypes::field::Field>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE6as_ptrBZ_", scope: !448, file: !446, line: 401, type: !386, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8975 = distinct !DISubprogram(name: "eq<polars_arrow::datatypes::field::Field>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtB9_3cmp9PartialEq2eqBZ_", scope: !472, file: !446, line: 1716, type: !386, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8976 = distinct !DISubprogram(name: "fold<polars_arrow::datatypes::field::Field, (), core::iter::adapters::map::map_fold::{closure_env#0}<&polars_arrow::datatypes::field::Field, bool, (), polars_arrow::io::avro::read::deserialize::deserialize_value::{closure_env#0}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<bool, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<bool, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::read::deserialize::deserialize_value::{closure_env#0}>>>>>", linkageName: "_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_buNCNvNtNtNtNtBW_2io4avro4read11deserialize17deserialize_value0NCINvNvB1L_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecbE14extend_trustedINtB2B_3MapBF_B3b_EE0E0E0EBW_", scope: !476, file: !473, line: 259, type: !386, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8977 = distinct !DILexicalBlock(scope: !8976, file: !473, line: 25, column: 86)
!8978 = distinct !DILexicalBlock(scope: !8977, file: !473, line: 33, column: 13)
!8979 = distinct !DILocation(line: 128, column: 19, scope: !8972)
!8980 = distinct !DILocation(line: 44, column: 20, scope: !8978, inlinedAt: !8979)
!8981 = distinct !DILocation(line: 1717, column: 32, scope: !8975, inlinedAt: !8980)
!8982 = distinct !DISubprogram(name: "offset_from_unsigned<polars_arrow::datatypes::field::Field>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5Field20offset_from_unsignedBK_", scope: !479, file: !477, line: 701, type: !386, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8983 = distinct !DILexicalBlock(scope: !8982, file: !477, line: 726, column: 9)
!8984 = distinct !DISubprogram(name: "offset_from_unsigned<polars_arrow::datatypes::field::Field>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5Field20offset_from_unsignedBI_", scope: !482, file: !480, line: 882, type: !386, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8985 = distinct !DISubprogram(name: "offset_from_unsigned<polars_arrow::datatypes::field::Field>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE20offset_from_unsignedBZ_", scope: !448, file: !446, line: 948, type: !386, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8986 = distinct !DILexicalBlock(scope: !8976, file: !473, line: 273, column: 17)
!8987 = distinct !DILexicalBlock(scope: !8986, file: !473, line: 274, column: 17)
!8988 = distinct !DILexicalBlock(scope: !8987, file: !473, line: 25, column: 86)
!8989 = distinct !DILexicalBlock(scope: !8988, file: !473, line: 33, column: 13)
!8990 = distinct !DILocation(line: 57, column: 30, scope: !8989, inlinedAt: !8979)
!8991 = distinct !DILocation(line: 953, column: 32, scope: !8985, inlinedAt: !8990)
!8992 = distinct !DILocation(line: 887, column: 37, scope: !8984, inlinedAt: !8991)
!8993 = distinct !DISubprogram(name: "add<polars_arrow::datatypes::field::Field>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3addBZ_", scope: !448, file: !446, line: 651, type: !386, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!8994 = distinct !DILexicalBlock(scope: !8987, file: !473, line: 275, column: 17)
!8995 = distinct !DILocation(line: 279, column: 67, scope: !8994, inlinedAt: !8979)
!8996 = distinct !{!8996, !"LVerDomain"}
!8997 = distinct !{!8997, !8996}
!8998 = distinct !{!8998, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_buNCNvNtNtNtNtBW_2io4avro4read11deserialize17deserialize_value0NCINvNvB1L_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecbE14extend_trustedINtB2B_3MapBF_B3b_EE0E0E0EBW_"}
!8999 = distinct !{!8999, !8998, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_buNCNvNtNtNtNtBW_2io4avro4read11deserialize17deserialize_value0NCINvNvB1L_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecbE14extend_trustedINtB2B_3MapBF_B3b_EE0E0E0EBW_: argument 0"}
!9000 = distinct !DISubprogram(name: "add<bool>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOb3addCs8774dFTUdNv_12polars_arrow", scope: !482, file: !480, line: 927, type: !386, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9001 = distinct !DISubprogram(name: "{closure#0}<bool, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::read::deserialize::deserialize_value::{closure_env#0}>>", linkageName: "_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecbE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB2l_2io4avro4read11deserialize17deserialize_value0EE0B2l_", scope: !506, file: !483, line: 4028, type: !386, scopeLine: 4028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9002 = distinct !DISubprogram(name: "{closure#0}<bool, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<bool, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::read::deserialize::deserialize_value::{closure_env#0}>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecbE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB3f_2io4avro4read11deserialize17deserialize_value0EE0E0B3f_", scope: !512, file: !507, line: 884, type: !386, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9003 = distinct !DISubprogram(name: "{closure#0}<&polars_arrow::datatypes::field::Field, bool, (), polars_arrow::io::avro::read::deserialize::deserialize_value::{closure_env#0}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<bool, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<bool, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::read::deserialize::deserialize_value::{closure_env#0}>>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldbuNCNvNtNtNtNtB11_2io4avro4read11deserialize17deserialize_value0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3U_3VecbE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1R_EE0E0E0B11_", scope: !491, file: !466, line: 88, type: !405, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9004 = distinct !DILocation(line: 279, column: 27, scope: !8994, inlinedAt: !8979)
!9005 = distinct !DILocation(line: 88, column: 21, scope: !9003, inlinedAt: !9004)
!9006 = distinct !DILocation(line: 884, column: 29, scope: !9002, inlinedAt: !9005)
!9007 = distinct !DILocation(line: 4029, column: 36, scope: !9001, inlinedAt: !9006)
!9008 = distinct !{!9008, !8996}
!9009 = distinct !{!9009, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldbuNCNvNtNtNtNtB11_2io4avro4read11deserialize17deserialize_value0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3U_3VecbE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1R_EE0E0E0B11_"}
!9010 = distinct !{!9010, !9009, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldbuNCNvNtNtNtNtB11_2io4avro4read11deserialize17deserialize_value0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3U_3VecbE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1R_EE0E0E0B11_: argument 0"}
!9011 = distinct !{!9011, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecbE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB3f_2io4avro4read11deserialize17deserialize_value0EE0E0B3f_"}
!9012 = distinct !{!9012, !9011, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecbE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB3f_2io4avro4read11deserialize17deserialize_value0EE0E0B3f_: argument 0"}
!9013 = distinct !{!9013, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecbE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB2l_2io4avro4read11deserialize17deserialize_value0EE0B2l_"}
!9014 = distinct !{!9014, !9013, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecbE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB2l_2io4avro4read11deserialize17deserialize_value0EE0B2l_: argument 0"}
!9015 = distinct !DISubprogram(name: "write<bool>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writebECs8774dFTUdNv_12polars_arrow", scope: !402, file: !401, line: 1898, type: !386, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9016 = distinct !DILocation(line: 4029, column: 21, scope: !9001, inlinedAt: !9006)
!9017 = distinct !{!9017, !666, !667}
!9018 = distinct !{!9018, !666, !667}
!9019 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !515, file: !513, line: 18, type: !386, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9020 = distinct !DILocation(line: 4033, column: 31, scope: !9001, inlinedAt: !9006)
!9021 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !518, file: !516, line: 886, type: !386, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9022 = distinct !DILocation(line: 283, column: 36, scope: !8994, inlinedAt: !8979)
!9023 = distinct !{!9023, !682}
!9024 = distinct !{!9024, !666}
!9025 = distinct !DISubprogram(name: "drop_in_place<core::iter::adapters::map::map_fold::{closure_env#0}<&polars_arrow::datatypes::field::Field, bool, (), polars_arrow::io::avro::read::deserialize::deserialize_value::{closure_env#0}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<bool, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<bool, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::read::deserialize::deserialize_value::{closure_env#0}>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtNtB4_4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldbuNCNvNtNtNtNtB1s_2io4avro4read11deserialize17deserialize_value0NCINvNvNtNtNtBP_6traits8iterator8Iterator8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4l_3VecbE14extend_trustedINtBL_3MapINtNtNtB4_5slice4iter4IterB1m_EB2i_EE0E0E0EB1s_", scope: !402, file: !401, line: 810, type: !405, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9026 = distinct !DISubprogram(name: "drop_in_place<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<bool, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<bool, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::read::deserialize::deserialize_value::{closure_env#0}>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1Q_3VecbE14extend_trustedINtNtNtBT_8adapters3map3MapINtNtNtB4_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB3G_2io4avro4read11deserialize17deserialize_value0EE0E0EB3G_", scope: !402, file: !401, line: 810, type: !405, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9027 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<bool, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::read::deserialize::deserialize_value::{closure_env#0}>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtBP_3VecbE14extend_trustedINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB2L_2io4avro4read11deserialize17deserialize_value0EE0EB2L_", scope: !402, file: !401, line: 810, type: !405, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9028 = !DILocation(line: 128, column: 30, scope: !8972)
!9029 = !{!8997}
!9030 = !{!8999}
!9031 = !{!9008}
!9032 = !{!9014, !9012, !9010, !8999, !8997}
!9033 = !{!"branch_weights", i32 4, i32 12}
!9034 = !{!9014, !9012, !9010, !8999}
!9035 = !DILocation(line: 289, column: 13, scope: !8976, inlinedAt: !8979)
!9036 = !DILocation(line: 810, column: 1, scope: !9025, inlinedAt: !9035)
!9037 = !DILocation(line: 810, column: 1, scope: !9026, inlinedAt: !9036)
!9038 = !DILocation(line: 810, column: 1, scope: !9027, inlinedAt: !9037)
!9039 = !DILocation(line: 810, column: 1, scope: !60, inlinedAt: !9038)
!9040 = !DILocation(line: 88, column: 5, scope: !8973, inlinedAt: !9028)
!9041 = !DILocation(line: 407, column: 18, scope: !8974, inlinedAt: !8981)
!9042 = !DILocation(line: 1717, column: 9, scope: !8975, inlinedAt: !8980)
!9043 = !DILocation(line: 25, column: 86, scope: !8977, inlinedAt: !8979)
!9044 = !DILocation(line: 729, column: 18, scope: !8983, inlinedAt: !8992)
!9045 = !DILocation(line: 28, column: 9, scope: !8988, inlinedAt: !8979)
!9046 = !DILocation(line: 0, scope: !8986, inlinedAt: !8979)
!9047 = !DILocation(line: 659, column: 28, scope: !8993, inlinedAt: !8995)
!9048 = !DILocation(line: 279, column: 27, scope: !8994, inlinedAt: !8979)
!9049 = !DILocation(line: 961, column: 18, scope: !9000, inlinedAt: !9007)
!9050 = !DILocation(line: 1921, column: 41, scope: !9015, inlinedAt: !9016)
!9051 = !DILocation(line: 284, column: 24, scope: !8994, inlinedAt: !8979)
!9052 = !DILocation(line: 19, column: 9, scope: !9019, inlinedAt: !9020)
!9053 = !DILocation(line: 898, column: 17, scope: !9021, inlinedAt: !9022)
!9054 = !DILocation(line: 31, column: 9, scope: !59, inlinedAt: !9039)
!9055 = !DILocation(line: 129, column: 6, scope: !8972)
!9056 = distinct !DISubprogram(name: "try_fold<core::result::Result<avro_schema::schema::Field, polars_error::PolarsError>, core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::write::schema::_type_to_schema::{closure_env#0}, (), core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::write::schema::_type_to_schema::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<avro_schema::schema::Field, core::ops::control_flow::ControlFlow<avro_schema::schema::Field, ()>, fn(avro_schema::schema::Field) -> core::ops::control_flow::ControlFlow<avro_schema::schema::Field, ()>>, core::ops::control_flow::ControlFlow<avro_schema::schema::Field, ()>>, core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<avro_schema::schema::Field, ()>, ()>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB1t_2io4avro5write6schema15__type_to_schema0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3d_8try_folduNCINvNvB3d_12try_for_each4callNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldINtNtNtBc_3ops12control_flow11ControlFlowB6F_ENcNtB7n_5Break0E0B7n_E0IB7o_B7n_EEB1t_", scope: !470, file: !466, line: 115, type: !386, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9057 = distinct !{!9057, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4Z_B3x_EENCNvNtNtNtNtBP_2io4avro5write6schema15__type_to_schema0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B5O_EIB3c_NtNtBa_7convert10InfallibleB4f_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B5D_NcNtB5D_5Break0E0B5D_E0E0B4Y_EBP_"}
!9058 = distinct !{!9058, !9057, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4Z_B3x_EENCNvNtNtNtNtBP_2io4avro5write6schema15__type_to_schema0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B5O_EIB3c_NtNtBa_7convert10InfallibleB4f_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B5D_NcNtB5D_5Break0E0B5D_E0E0B4Y_EBP_: argument 0"}
!9059 = distinct !{!9059, !9057, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4Z_B3x_EENCNvNtNtNtNtBP_2io4avro5write6schema15__type_to_schema0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B5O_EIB3c_NtNtBa_7convert10InfallibleB4f_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B5D_NcNtB5D_5Break0E0B5D_E0E0B4Y_EBP_: argument 1"}
!9060 = distinct !{!9060, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_"}
!9061 = distinct !{!9061, !9060, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_: argument 0"}
!9062 = distinct !DISubprogram(name: "try_fold<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, (), core::iter::adapters::map::map_try_fold::{closure_env#0}<&polars_arrow::datatypes::field::Field, core::result::Result<avro_schema::schema::Field, polars_error::PolarsError>, (), core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<avro_schema::schema::Field, ()>, ()>, polars_arrow::io::avro::write::schema::_type_to_schema::{closure_env#0}, core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::write::schema::_type_to_schema::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<avro_schema::schema::Field, core::ops::control_flow::ControlFlow<avro_schema::schema::Field, ()>, fn(avro_schema::schema::Field) -> core::ops::control_flow::ControlFlow<avro_schema::schema::Field, ()>>, core::ops::control_flow::ControlFlow<avro_schema::schema::Field, ()>>>, core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<avro_schema::schema::Field, ()>, ()>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4Z_B3x_EENCNvNtNtNtNtBP_2io4avro5write6schema15__type_to_schema0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B5O_EIB3c_NtNtBa_7convert10InfallibleB4f_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B5D_NcNtB5D_5Break0E0B5D_E0E0B4Y_EBP_", scope: !510, file: !507, line: 2501, type: !405, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9063 = distinct !DILexicalBlock(scope: !9062, file: !507, line: 2507, column: 9)
!9064 = distinct !DILexicalBlock(scope: !9063, file: !507, line: 2508, column: 41)
!9065 = distinct !DILocation(line: 121, column: 19, scope: !9056)
!9066 = distinct !DILocation(line: 2508, column: 34, scope: !9064, inlinedAt: !9065)
!9067 = distinct !DILocation(line: 180, column: 28, scope: !206, inlinedAt: !9066)
!9068 = distinct !{!9068, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3I_B2g_EENCNvNtNtNtNtB16_2io4avro5write6schema15__type_to_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4x_EIB1V_NtNtBa_7convert10InfallibleB2Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7g_12try_for_each4callB2g_B4m_NcNtB4m_5Break0E0B4m_E0E0B16_"}
!9069 = distinct !{!9069, !9068, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3I_B2g_EENCNvNtNtNtNtB16_2io4avro5write6schema15__type_to_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4x_EIB1V_NtNtBa_7convert10InfallibleB2Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7g_12try_for_each4callB2g_B4m_NcNtB4m_5Break0E0B4m_E0E0B16_: argument 1"}
!9070 = distinct !{!9070, !9068, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3I_B2g_EENCNvNtNtNtNtB16_2io4avro5write6schema15__type_to_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4x_EIB1V_NtNtBa_7convert10InfallibleB2Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7g_12try_for_each4callB2g_B4m_NcNtB4m_5Break0E0B4m_E0E0B16_: argument 0"}
!9071 = distinct !DILocation(line: 185, column: 40, scope: !206, inlinedAt: !9066)
!9072 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro5write6schema15__type_to_schema0Bb_", scope: !9097, file: !726, line: 73, type: !405, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9073 = distinct !DISubprogram(name: "{closure#0}<&polars_arrow::datatypes::field::Field, core::result::Result<avro_schema::schema::Field, polars_error::PolarsError>, (), core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<avro_schema::schema::Field, ()>, ()>, polars_arrow::io::avro::write::schema::_type_to_schema::{closure_env#0}, core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::write::schema::_type_to_schema::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<avro_schema::schema::Field, core::ops::control_flow::ControlFlow<avro_schema::schema::Field, ()>, fn(avro_schema::schema::Field) -> core::ops::control_flow::ControlFlow<avro_schema::schema::Field, ()>>, core::ops::control_flow::ControlFlow<avro_schema::schema::Field, ()>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBa_6result6ResultNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3I_B2g_EENCNvNtNtNtNtB16_2io4avro5write6schema15__type_to_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4x_EIB1V_NtNtBa_7convert10InfallibleB2Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7g_12try_for_each4callB2g_B4m_NcNtB4m_5Break0E0B4m_E0E0B16_", scope: !571, file: !466, line: 95, type: !405, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9074 = distinct !DILocation(line: 2509, column: 21, scope: !9064, inlinedAt: !9065)
!9075 = distinct !DILocation(line: 95, column: 28, scope: !9073, inlinedAt: !9074)
!9076 = distinct !DISubprogram(name: "{closure#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, polars_arrow::io::avro::write::schema::_type_to_schema::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<avro_schema::schema::Field, core::ops::control_flow::ControlFlow<avro_schema::schema::Field, ()>, fn(avro_schema::schema::Field) -> core::ops::control_flow::ControlFlow<avro_schema::schema::Field, ()>>, core::ops::control_flow::ControlFlow<avro_schema::schema::Field, ()>>", linkageName: "_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB1M_2io4avro5write6schema15__type_to_schema0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB52_12try_for_each4callNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldINtNtNtB9_3ops12control_flow11ControlFlowB6e_ENcNtB6W_5Break0E0B6W_E0B1M_", scope: !573, file: !572, line: 195, type: !405, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9077 = distinct !DILocation(line: 95, column: 21, scope: !9073, inlinedAt: !9074)
!9078 = distinct !DILocation(line: 195, column: 44, scope: !9076, inlinedAt: !9077)
!9079 = distinct !{!9079, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow"}
!9080 = distinct !{!9080, !9079, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow: argument 0"}
!9081 = distinct !{!9081, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB1M_2io4avro5write6schema15__type_to_schema0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB52_12try_for_each4callNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldINtNtNtB9_3ops12control_flow11ControlFlowB6e_ENcNtB6W_5Break0E0B6W_E0B1M_"}
!9082 = distinct !{!9082, !9081, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB1M_2io4avro5write6schema15__type_to_schema0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB52_12try_for_each4callNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldINtNtNtB9_3ops12control_flow11ControlFlowB6e_ENcNtB6W_5Break0E0B6W_E0B1M_: argument 1"}
!9083 = distinct !{!9083, !9081, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB1M_2io4avro5write6schema15__type_to_schema0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB52_12try_for_each4callNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldINtNtNtB9_3ops12control_flow11ControlFlowB6e_ENcNtB6W_5Break0E0B6W_E0B1M_: argument 0"}
!9084 = distinct !DILexicalBlock(scope: !9076, file: !572, line: 197, column: 17)
!9085 = distinct !DILocation(line: 198, column: 21, scope: !9084, inlinedAt: !9077)
!9086 = distinct !DILocation(line: 810, column: 1, scope: !93, inlinedAt: !9085)
!9087 = distinct !DILocation(line: 2509, column: 21, scope: !9064, inlinedAt: !9065)
!9088 = distinct !DILexicalBlock(scope: !9064, file: !507, line: 2509, column: 32)
!9089 = distinct !DILexicalBlock(scope: !9088, file: !507, line: 2509, column: 32)
!9090 = distinct !DILocation(line: 2509, column: 21, scope: !9089, inlinedAt: !9065)
!9091 = !{!9058}
!9092 = !{!9059}
!9093 = !{!9061, !9059}
!9094 = !{!9070, !9069, !9058, !9059}
!9095 = !{!9058, !9059}
!9096 = !{!9070, !9058, !9059}
!9097 = !DINamespace(name: "_type_to_schema", scope: !727)
!9098 = !{!9080}
!9099 = !{!9083, !9082, !9070, !9069, !9058, !9059}
!9100 = !{!9083, !9082, !9070, !9058, !9059}
!9101 = !DILocation(line: 121, column: 19, scope: !9056)
!9102 = !DILocation(line: 1717, column: 9, scope: !205, inlinedAt: !9067)
!9103 = !DILocation(line: 180, column: 28, scope: !206, inlinedAt: !9066)
!9104 = !DILocation(line: 121, column: 47, scope: !9056)
!9105 = !DILocation(line: 659, column: 28, scope: !207, inlinedAt: !9071)
!9106 = !DILocation(line: 185, column: 25, scope: !206, inlinedAt: !9066)
!9107 = !DILocation(line: 73, column: 26, scope: !9072, inlinedAt: !9075)
!9108 = !DILocation(line: 95, column: 21, scope: !9073, inlinedAt: !9074)
!9109 = !DILocation(line: 2173, column: 15, scope: !208, inlinedAt: !9078)
!9110 = !DILocation(line: 2173, column: 9, scope: !208, inlinedAt: !9078)
!9111 = !DILocation(line: 810, column: 1, scope: !93, inlinedAt: !9085)
!9112 = !DILocation(line: 810, column: 1, scope: !94, inlinedAt: !9086)
!9113 = !DILocation(line: 198, column: 21, scope: !9084, inlinedAt: !9077)
!9114 = !DILocation(line: 195, column: 29, scope: !9076, inlinedAt: !9077)
!9115 = !DILocation(line: 95, column: 35, scope: !9073, inlinedAt: !9074)
!9116 = !DILocation(line: 116, column: 9, scope: !209, inlinedAt: !9087)
!9117 = !DILocation(line: 2174, column: 22, scope: !210, inlinedAt: !9078)
!9118 = !DILocation(line: 196, column: 39, scope: !9076, inlinedAt: !9077)
!9119 = !DILocation(line: 116, column: 15, scope: !209, inlinedAt: !9087)
!9120 = !DILocation(line: 131, column: 38, scope: !212, inlinedAt: !9090)
!9121 = !DILocation(line: 118, column: 38, scope: !213, inlinedAt: !9087)
!9122 = !DILocation(line: 2512, column: 5, scope: !9062, inlinedAt: !9065)
!9123 = !DILocation(line: 0, scope: !9063, inlinedAt: !9065)
!9124 = !DILocation(line: 2512, column: 6, scope: !9062, inlinedAt: !9065)
!9125 = !DILocation(line: 122, column: 6, scope: !9056)
!9126 = distinct !DISubprogram(name: "fold<usize, core::slice::iter::Iter<polars_arrow::datatypes::reshape::ReshapeDimension>, polars_arrow::array::fixed_size_list::{impl#0}::from_shape::{closure_env#0}, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<usize, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<usize, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::reshape::ReshapeDimension>, polars_arrow::array::fixed_size_list::{impl#0}::from_shape::{closure_env#0}>>>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENCNvMNtNtB1t_5array15fixed_size_listNtB2B_18FixedSizeListArray10from_shape0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4X_3VecjE14extend_trustedBN_E0E0EB1t_", scope: !470, file: !466, line: 124, type: !386, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9127 = distinct !DISubprogram(name: "map_fold<&polars_arrow::datatypes::reshape::ReshapeDimension, usize, (), polars_arrow::array::fixed_size_list::{impl#0}::from_shape::{closure_env#0}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<usize, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<usize, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::reshape::ReshapeDimension>, polars_arrow::array::fixed_size_list::{impl#0}::from_shape::{closure_env#0}>>>>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionjuNCNvMNtNtBZ_5array15fixed_size_listNtB28_18FixedSizeListArray10from_shape0NCINvNvNtNtNtB6_6traits8iterator8Iterator8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4i_3VecjE14extend_trustedINtB2_3MapINtNtNtB8_5slice4iter4IterBT_EB23_EE0E0EBZ_", scope: !469, file: !466, line: 84, type: !386, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9128 = distinct !DISubprogram(name: "eq<polars_arrow::datatypes::reshape::ReshapeDimension>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENtNtB9_3cmp9PartialEq2eqBZ_", scope: !472, file: !446, line: 1716, type: !386, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9129 = distinct !DISubprogram(name: "fold<polars_arrow::datatypes::reshape::ReshapeDimension, (), core::iter::adapters::map::map_fold::{closure_env#0}<&polars_arrow::datatypes::reshape::ReshapeDimension, usize, (), polars_arrow::array::fixed_size_list::{impl#0}::from_shape::{closure_env#0}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<usize, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<usize, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::reshape::ReshapeDimension>, polars_arrow::array::fixed_size_list::{impl#0}::from_shape::{closure_env#0}>>>>>", linkageName: "_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_juNCNvMNtNtBW_5array15fixed_size_listNtB3u_18FixedSizeListArray10from_shape0NCINvNvB1Z_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0EBW_", scope: !476, file: !473, line: 259, type: !386, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9130 = distinct !DILexicalBlock(scope: !9129, file: !473, line: 25, column: 86)
!9131 = distinct !DILexicalBlock(scope: !9130, file: !473, line: 33, column: 13)
!9132 = distinct !DILocation(line: 128, column: 19, scope: !9126)
!9133 = distinct !DILocation(line: 44, column: 20, scope: !9131, inlinedAt: !9132)
!9134 = distinct !DISubprogram(name: "offset_from_unsigned<polars_arrow::datatypes::reshape::ReshapeDimension>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimension20offset_from_unsignedBK_", scope: !479, file: !477, line: 701, type: !386, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9135 = distinct !DILexicalBlock(scope: !9134, file: !477, line: 726, column: 9)
!9136 = distinct !DISubprogram(name: "offset_from_unsigned<polars_arrow::datatypes::reshape::ReshapeDimension>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimension20offset_from_unsignedBI_", scope: !482, file: !480, line: 882, type: !386, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9137 = distinct !DISubprogram(name: "offset_from_unsigned<polars_arrow::datatypes::reshape::ReshapeDimension>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionE20offset_from_unsignedBZ_", scope: !448, file: !446, line: 948, type: !386, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9138 = distinct !DILexicalBlock(scope: !9129, file: !473, line: 273, column: 17)
!9139 = distinct !DILexicalBlock(scope: !9138, file: !473, line: 274, column: 17)
!9140 = distinct !DILexicalBlock(scope: !9139, file: !473, line: 25, column: 86)
!9141 = distinct !DILexicalBlock(scope: !9140, file: !473, line: 33, column: 13)
!9142 = distinct !DILocation(line: 57, column: 30, scope: !9141, inlinedAt: !9132)
!9143 = distinct !DILocation(line: 953, column: 32, scope: !9137, inlinedAt: !9142)
!9144 = distinct !DILocation(line: 887, column: 37, scope: !9136, inlinedAt: !9143)
!9145 = distinct !DISubprogram(name: "add<polars_arrow::datatypes::reshape::ReshapeDimension>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionE3addBZ_", scope: !448, file: !446, line: 651, type: !386, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9146 = distinct !DILexicalBlock(scope: !9139, file: !473, line: 275, column: 17)
!9147 = distinct !DILocation(line: 279, column: 67, scope: !9146, inlinedAt: !9132)
!9148 = distinct !{!9148, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_juNCNvMNtNtBW_5array15fixed_size_listNtB3u_18FixedSizeListArray10from_shape0NCINvNvB1Z_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0EBW_"}
!9149 = distinct !{!9149, !9148, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_juNCNvMNtNtBW_5array15fixed_size_listNtB3u_18FixedSizeListArray10from_shape0NCINvNvB1Z_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0EBW_: argument 0"}
!9150 = distinct !{!9150, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionjuNCNvMNtNtB11_5array15fixed_size_listNtB2a_18FixedSizeListArray10from_shape0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4l_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB25_EE0E0E0B11_"}
!9151 = distinct !{!9151, !9150, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionjuNCNvMNtNtB11_5array15fixed_size_listNtB2a_18FixedSizeListArray10from_shape0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4l_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB25_EE0E0E0B11_: argument 0"}
!9152 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB4_18FixedSizeListArray10from_shape0B8_", scope: !9184, file: !9181, line: 166, type: !405, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9153 = distinct !DISubprogram(name: "{closure#0}<&polars_arrow::datatypes::reshape::ReshapeDimension, usize, (), polars_arrow::array::fixed_size_list::{impl#0}::from_shape::{closure_env#0}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<usize, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<usize, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::reshape::ReshapeDimension>, polars_arrow::array::fixed_size_list::{impl#0}::from_shape::{closure_env#0}>>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionjuNCNvMNtNtB11_5array15fixed_size_listNtB2a_18FixedSizeListArray10from_shape0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4l_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB25_EE0E0E0B11_", scope: !491, file: !466, line: 88, type: !405, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9154 = distinct !DILocation(line: 279, column: 27, scope: !9146, inlinedAt: !9132)
!9155 = distinct !DILocation(line: 88, column: 28, scope: !9153, inlinedAt: !9154)
!9156 = distinct !DISubprogram(name: "get_or_infer", linkageName: "_RNvMs2_NtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshapeNtB5_16ReshapeDimension12get_or_infer", scope: !9187, file: !9185, line: 89, type: !386, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9157 = distinct !DILexicalBlock(scope: !9152, file: !9181, line: 167, column: 21)
!9158 = distinct !DILocation(line: 168, column: 41, scope: !9157, inlinedAt: !9155)
!9159 = distinct !DISubprogram(name: "add<usize>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOj3addCs8774dFTUdNv_12polars_arrow", scope: !482, file: !480, line: 927, type: !386, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9160 = distinct !DISubprogram(name: "{closure#0}<usize, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::reshape::ReshapeDimension>, polars_arrow::array::fixed_size_list::{impl#0}::from_shape::{closure_env#0}>>", linkageName: "_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecjE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENCNvMNtNtB2l_5array15fixed_size_listNtB3t_18FixedSizeListArray10from_shape0EE0B2l_", scope: !506, file: !483, line: 4028, type: !386, scopeLine: 4028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9161 = distinct !DISubprogram(name: "{closure#0}<usize, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<usize, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::reshape::ReshapeDimension>, polars_arrow::array::fixed_size_list::{impl#0}::from_shape::{closure_env#0}>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecjE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENCNvMNtNtB3f_5array15fixed_size_listNtB4n_18FixedSizeListArray10from_shape0EE0E0B3f_", scope: !512, file: !507, line: 884, type: !386, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9162 = distinct !DILocation(line: 88, column: 21, scope: !9153, inlinedAt: !9154)
!9163 = distinct !DILocation(line: 884, column: 29, scope: !9161, inlinedAt: !9162)
!9164 = distinct !DILocation(line: 4029, column: 36, scope: !9160, inlinedAt: !9163)
!9165 = distinct !{!9165, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecjE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENCNvMNtNtB3f_5array15fixed_size_listNtB4n_18FixedSizeListArray10from_shape0EE0E0B3f_"}
!9166 = distinct !{!9166, !9165, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecjE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENCNvMNtNtB3f_5array15fixed_size_listNtB4n_18FixedSizeListArray10from_shape0EE0E0B3f_: argument 0"}
!9167 = distinct !{!9167, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecjE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENCNvMNtNtB2l_5array15fixed_size_listNtB3t_18FixedSizeListArray10from_shape0EE0B2l_"}
!9168 = distinct !{!9168, !9167, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecjE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENCNvMNtNtB2l_5array15fixed_size_listNtB3t_18FixedSizeListArray10from_shape0EE0B2l_: argument 0"}
!9169 = distinct !DISubprogram(name: "write<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writejECs8774dFTUdNv_12polars_arrow", scope: !402, file: !401, line: 1898, type: !386, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9170 = distinct !DILocation(line: 4029, column: 21, scope: !9160, inlinedAt: !9163)
!9171 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !515, file: !513, line: 18, type: !386, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9172 = distinct !DILocation(line: 4033, column: 31, scope: !9160, inlinedAt: !9163)
!9173 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !518, file: !516, line: 886, type: !386, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9174 = distinct !DILocation(line: 283, column: 36, scope: !9146, inlinedAt: !9132)
!9175 = distinct !DISubprogram(name: "drop_in_place<core::iter::adapters::map::map_fold::{closure_env#0}<&polars_arrow::datatypes::reshape::ReshapeDimension, usize, (), polars_arrow::array::fixed_size_list::{impl#0}::from_shape::{closure_env#0}, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<usize, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<usize, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::reshape::ReshapeDimension>, polars_arrow::array::fixed_size_list::{impl#0}::from_shape::{closure_env#0}>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtNtB4_4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionjuNCNvMNtNtB1s_5array15fixed_size_listNtB2B_18FixedSizeListArray10from_shape0NCINvNvNtNtNtBP_6traits8iterator8Iterator8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4M_3VecjE14extend_trustedINtBL_3MapINtNtNtB4_5slice4iter4IterB1m_EB2w_EE0E0E0EB1s_", scope: !402, file: !401, line: 810, type: !405, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9176 = distinct !DISubprogram(name: "drop_in_place<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<usize, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<usize, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::reshape::ReshapeDimension>, polars_arrow::array::fixed_size_list::{impl#0}::from_shape::{closure_env#0}>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1Q_3VecjE14extend_trustedINtNtNtBT_8adapters3map3MapINtNtNtB4_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENCNvMNtNtB3G_5array15fixed_size_listNtB4O_18FixedSizeListArray10from_shape0EE0E0EB3G_", scope: !402, file: !401, line: 810, type: !405, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9177 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<usize, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::datatypes::reshape::ReshapeDimension>, polars_arrow::array::fixed_size_list::{impl#0}::from_shape::{closure_env#0}>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtBP_3VecjE14extend_trustedINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENCNvMNtNtB2L_5array15fixed_size_listNtB3T_18FixedSizeListArray10from_shape0EE0EB2L_", scope: !402, file: !401, line: 810, type: !405, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9178 = !DILocation(line: 128, column: 30, scope: !9126)
!9179 = !{!9149}
!9180 = !{!9151, !9149}
!9181 = !DIFile(filename: "crates/polars-arrow/src/array/fixed_size_list/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "f21b2f15004ff024337c79be44a95eea")
!9182 = !DINamespace(name: "fixed_size_list", scope: !490)
!9183 = !DINamespace(name: "{impl#0}", scope: !9182)
!9184 = !DINamespace(name: "from_shape", scope: !9183)
!9185 = !DIFile(filename: "crates/polars-arrow/src/datatypes/reshape.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "6bbbd5614419f387a5f1aec1167f834c")
!9186 = !DINamespace(name: "reshape", scope: !546)
!9187 = !DINamespace(name: "ReshapeDimension", scope: !9186)
!9188 = !{!9168, !9166, !9151, !9149}
!9189 = !DILocation(line: 289, column: 13, scope: !9129, inlinedAt: !9132)
!9190 = !DILocation(line: 810, column: 1, scope: !9175, inlinedAt: !9189)
!9191 = !DILocation(line: 810, column: 1, scope: !9176, inlinedAt: !9190)
!9192 = !DILocation(line: 810, column: 1, scope: !9177, inlinedAt: !9191)
!9193 = !DILocation(line: 810, column: 1, scope: !60, inlinedAt: !9192)
!9194 = !DILocation(line: 128, column: 9, scope: !9126)
!9195 = !DILocation(line: 128, column: 39, scope: !9126)
!9196 = !DILocation(line: 88, column: 5, scope: !9127, inlinedAt: !9178)
!9197 = !DILocation(line: 1717, column: 9, scope: !9128, inlinedAt: !9133)
!9198 = !DILocation(line: 25, column: 86, scope: !9130, inlinedAt: !9132)
!9199 = !DILocation(line: 729, column: 18, scope: !9135, inlinedAt: !9144)
!9200 = !DILocation(line: 28, column: 9, scope: !9140, inlinedAt: !9132)
!9201 = !DILocation(line: 659, column: 28, scope: !9145, inlinedAt: !9147)
!9202 = !DILocation(line: 0, scope: !9138, inlinedAt: !9132)
!9203 = !DILocation(line: 279, column: 27, scope: !9146, inlinedAt: !9132)
!9204 = !DILocation(line: 167, column: 34, scope: !9152, inlinedAt: !9155)
!9205 = !DILocation(line: 90, column: 9, scope: !9156, inlinedAt: !9158)
!9206 = !DILocation(line: 168, column: 21, scope: !9157, inlinedAt: !9155)
!9207 = !DILocation(line: 961, column: 18, scope: !9159, inlinedAt: !9164)
!9208 = !DILocation(line: 1921, column: 41, scope: !9169, inlinedAt: !9170)
!9209 = !DILocation(line: 19, column: 9, scope: !9171, inlinedAt: !9172)
!9210 = !DILocation(line: 898, column: 17, scope: !9173, inlinedAt: !9174)
!9211 = !DILocation(line: 284, column: 24, scope: !9146, inlinedAt: !9132)
!9212 = !DILocation(line: 31, column: 9, scope: !59, inlinedAt: !9193)
!9213 = !DILocation(line: 129, column: 6, scope: !9126)
!9214 = distinct !DISubprogram(name: "fold<u32, core::slice::iter::Iter<polars_arrow::array::binview::view::View>, polars_arrow::array::binview::{impl#6}::len_iter::{closure_env#0}<[u8]>, usize, core::iter::adapters::map::map_fold::{closure_env#0}<u32, usize, usize, polars_arrow::compute::concatenate::concatenate_view::{closure_env#0}<[u8], alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>, core::iter::traits::accum::{impl#48}::sum::{closure_env#0}<core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::array::binview::view::View>, polars_arrow::array::binview::{impl#6}::len_iter::{closure_env#0}<[u8]>>, polars_arrow::compute::concatenate::concatenate_view::{closure_env#0}<[u8], alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>>>>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1r_INtB1r_22BinaryViewArrayGenericShE8len_iter0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldmjjNCINvNtNtB1v_7compute11concatenate16concatenate_viewB33_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB1t_5ArrayEL_EE0NCINvXsK_NtB3l_5accumjNtB6a_3Sum3sumIBO_BN_B4f_EE0E0EB1v_", scope: !470, file: !466, line: 124, type: !386, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9215 = distinct !DISubprogram(name: "as_ptr<polars_arrow::array::binview::view::View>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE6as_ptrB11_", scope: !448, file: !446, line: 401, type: !386, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9216 = distinct !DISubprogram(name: "eq<polars_arrow::array::binview::view::View>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtB9_3cmp9PartialEq2eqB11_", scope: !472, file: !446, line: 1716, type: !386, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9217 = distinct !DISubprogram(name: "fold<polars_arrow::array::binview::view::View, usize, core::iter::adapters::map::map_fold::{closure_env#0}<&polars_arrow::array::binview::view::View, u32, usize, polars_arrow::array::binview::{impl#6}::len_iter::{closure_env#0}<[u8]>, core::iter::adapters::map::map_fold::{closure_env#0}<u32, usize, usize, polars_arrow::compute::concatenate::concatenate_view::{closure_env#0}<[u8], alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>, core::iter::traits::accum::{impl#48}::sum::{closure_env#0}<core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<polars_arrow::array::binview::view::View>, polars_arrow::array::binview::{impl#6}::len_iter::{closure_env#0}<[u8]>>, polars_arrow::compute::concatenate::concatenate_view::{closure_env#0}<[u8], alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>>>>>>", linkageName: "_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1V_8adapters3map8map_foldRBQ_mjNCNvMs4_BU_INtBU_22BinaryViewArrayGenericShE8len_iter0NCIB2D_mjjNCINvNtNtBY_7compute11concatenate16concatenate_viewB3U_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtBW_5ArrayEL_EE0NCINvXsK_NtB1T_5accumjNtB6a_3Sum3sumINtB2F_3MapIB6C_BF_B3f_EB4h_EE0E0E0EBY_", scope: !476, file: !473, line: 259, type: !386, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9218 = distinct !DILexicalBlock(scope: !9217, file: !473, line: 25, column: 86)
!9219 = distinct !DILexicalBlock(scope: !9218, file: !473, line: 33, column: 13)
!9220 = distinct !DILocation(line: 128, column: 19, scope: !9214)
!9221 = distinct !DILocation(line: 44, column: 20, scope: !9219, inlinedAt: !9220)
!9222 = distinct !DILocation(line: 1717, column: 32, scope: !9216, inlinedAt: !9221)
!9223 = distinct !DISubprogram(name: "offset_from_unsigned<polars_arrow::array::binview::view::View>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4View20offset_from_unsignedBM_", scope: !479, file: !477, line: 701, type: !386, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9224 = distinct !DILexicalBlock(scope: !9223, file: !477, line: 726, column: 9)
!9225 = distinct !DISubprogram(name: "offset_from_unsigned<polars_arrow::array::binview::view::View>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4View20offset_from_unsignedBK_", scope: !482, file: !480, line: 882, type: !386, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9226 = distinct !DISubprogram(name: "offset_from_unsigned<polars_arrow::array::binview::view::View>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE20offset_from_unsignedB11_", scope: !448, file: !446, line: 948, type: !386, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !385)
!9227 = distinct !DILexicalBlock(scope: !9217, file: !473, line: 273, column: 17)
!9228 = distinct !DILexicalBlock(scope: !9227, file: !473, line: 274, column: 17)
!9229 = distinct !DILexicalBlock(scope: !9228, file: !473, line: 25, column: 86)
!9230 = distinct !DILexicalBlock(scope: !9229, file: !473, line: 33, column: 13)
!9231 = distinct !DILocation(line: 57, column: 30, scope: !9230, inlinedAt: !9220)
!9232 = distinct !DILocation(line: 953, column: 32, scope: !9226, inlinedAt: !9231)
!9233 = distinct !DILocation(line: 887, column: 37, scope: !9225, inlinedAt: !9232)
end_hunk_1
