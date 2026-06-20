inline.NumInlined: 17049
inline.NumDeleted: 6599
begin_hunk_0_@_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E000EB5e_:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvYB1o_NtB6_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000EB4Z_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef align 16 dereferenceable(128) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = load ptr, ptr %1, align 8, !nonnull !8, !align !1742, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15160)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8, !noalias !15163
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !15160, !noalias !15166, !nonnull !8, !noundef !8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !15160, !noalias !15166, !noundef !8 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.j, 112
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.010.025.i, i64 112 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.k
  br i1 %i.o, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.sroa.010.025.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15163
  call void @_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvYBI_NtBV_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000EB2W_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.010.025.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !15167
  %i.p = load i64, ptr %i.a, align 8, !range !14459, !noalias !15163, !noundef !8 ; 2 uses
  %.not.i = icmp eq i64 %i.p, 20
  %i.q = load i8, ptr %i.m, align 8, !noalias !15163 ; 3 uses
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15163
  %i.r = icmp eq i8 %i.q, 2
  br i1 %i.r, label %.loopexit, label %bb.b

bb.e:                                             ; preds = %bb.c
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.332.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.615.0..sroa_idx.i, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.p, ptr %0, align 8
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.q, ptr %.sroa.231.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.7.0.ph = phi i8 [ 0, %bb.a ], [ 2, %bb.d ], [ %i.q, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !8, !align !1742, !noundef !8
  call void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXsb_B3_TRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_RIB1E_NtB2c_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1I_5boxed3BoxB2a_EEEINtB3_20TreeNodeRefContainerB2a_E18apply_ref_elementsNCNCNCINvYB2a_NtB3_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000E0EB5O_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, i8 noundef %.sroa.7.0.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.u = load i64, ptr %i.c, align 8, !range !14459, !noundef !8 ; 2 uses
  %.not54 = icmp eq i64 %i.u, 20
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load i8, ptr %i.v, align 8               ; 2 uses
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.341.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.638.0..sroa_idx, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.u, ptr %0, align 8
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.w, ptr %.sroa.240.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.g:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !8, !align !1742, !noundef !8
  call void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXsb_B3_TRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_RIB1E_NtB2c_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1I_5boxed3BoxB2a_EEEINtB3_20TreeNodeRefContainerB2a_E18apply_ref_elementsNCNCNCINvYB2a_NtB3_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000Es_0EB5O_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, i8 noundef %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.z = load i64, ptr %i.d, align 8, !range !14459, !noundef !8 ; 2 uses
  %.not55 = icmp eq i64 %i.z, 20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ab = load i8, ptr %i.aa, align 8             ; 2 uses
  br i1 %.not55, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %.sroa.350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.350.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.647.0..sroa_idx, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.z, ptr %0, align 8
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ab, ptr %.sroa.249.0..sroa_idx, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !8, !align !1742, !noundef !8
  call void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXsb_B3_TRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_RIB1E_NtB2c_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1I_5boxed3BoxB2a_EEEINtB3_20TreeNodeRefContainerB2a_E18apply_ref_elementsNCNCNCINvYB2a_NtB3_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000Es0_0EB5O_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.h, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtBW_5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecpENtBW_11Deserialize11deserialize10VecVisitorNtNtB2l_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2d_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorNtNtB2L_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtB8_11Deserialize11deserializeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtBW_5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecpENtBW_11Deserialize11deserialize10VecVisitorNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2S_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot5serde13FileMetaSerdeENtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB35_4read9SliceReadEEB1o_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot5serde13FileMetaSerdeEEB45_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1T_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorhEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef align 16 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.04 = phi ptr [ %0, %.lr.ph ], [ %i.f, %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.0.04, i64 8
  %.sroa.0.0.val = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8
  %i.h = getelementptr i8, ptr %.sroa.0.04, i64 16
  %.sroa.0.0.val3 = load i64, ptr %i.h, align 8, !noundef !8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15177)
  %i.i = load i8, ptr %i.c, align 16, !alias.scope !15180, !noundef !8 ; 3 uses
  %i.j = icmp ugt i8 %i.i, 64
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i64 %.sroa.0.0.val3 to i128
  %i.l = zext nneg i8 %i.i to i128
  %i.m = shl nuw i128 %i.k, %i.l
  %i.n = load i128, ptr %2, align 16, !alias.scope !15180, !noundef !8
  %i.o = or i128 %i.n, %i.m
  %i.p = add nuw i8 %i.i, 64
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i128, ptr %2, align 16, !alias.scope !15180, !noundef !8 ; 2 uses
  %i.r = trunc i128 %i.q to i64
  %i.s = lshr i128 %i.q, 64
  %3 = trunc nuw i128 %i.s to i64
  %i.t = load i64, ptr %i.d, align 8, !alias.scope !15180, !noundef !8
  %i.u = xor i64 %i.t, %i.r
  %i.v = load ptr, ptr %i.e, align 16, !alias.scope !15180, !nonnull !8, !align !1742, !noundef !8
  %i.w = load i64, ptr %i.v, align 8, !noalias !15180, !noundef !8
  %4 = xor i64 %i.w, %3
  %i.x = zext i64 %i.u to i128
  %5 = zext i64 %4 to i128
  %i.y = mul nuw i128 %5, %i.x                    ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = xor i128 %i.z, %i.y
  %i.ab = trunc i128 %i.aa to i64
  store i64 %i.ab, ptr %i.d, align 8, !alias.scope !15180
  %i.ac = zext i64 %.sroa.0.0.val3 to i128
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i = phi i128 [ %i.ac, %bb.d ], [ %i.o, %bb.c ]
  %storemerge.i.i.i.i = phi i8 [ 64, %bb.d ], [ %i.p, %bb.c ]
  store i128 %.sink.i.i, ptr %2, align 16, !alias.scope !15180
  store i8 %storemerge.i.i.i.i, ptr %i.c, align 16, !alias.scope !15180
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val3, ptr noalias noundef nonnull align 16 dereferenceable(48) %2)
  %i.ad = icmp eq ptr %i.f, %i.a
  br i1 %i.ad, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.04 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.0.04, i64 8
  %.sroa.0.0.val = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %i.e = getelementptr i8, ptr %.sroa.0.04, i64 16
  %.sroa.0.0.val3 = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  tail call fastcc void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %.sroa.0.0.val3) #34
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val3, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  %i.f = icmp eq ptr %i.c, %i.a
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtB1e_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.04 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.0.04, i64 8
  %.sroa.0.0.val = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %i.e = getelementptr i8, ptr %.sroa.0.04, i64 16
  %.sroa.0.0.val3 = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.sroa.0.0.val3)
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtBG_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val3, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  %i.f = icmp eq ptr %i.c, %i.a
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef align 16 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.04 = phi ptr [ %0, %.lr.ph ], [ %i.f, %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.0.04, i64 8
  %.sroa.0.0.val = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8
  %i.h = getelementptr i8, ptr %.sroa.0.04, i64 16
  %.sroa.0.0.val3 = load i64, ptr %i.h, align 8, !noundef !8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15190)
  %i.i = load i8, ptr %i.c, align 16, !alias.scope !15193, !noundef !8 ; 3 uses
  %i.j = icmp ugt i8 %i.i, 64
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i64 %.sroa.0.0.val3 to i128
  %i.l = zext nneg i8 %i.i to i128
  %i.m = shl nuw i128 %i.k, %i.l
  %i.n = load i128, ptr %2, align 16, !alias.scope !15193, !noundef !8
  %i.o = or i128 %i.n, %i.m
  %i.p = add nuw i8 %i.i, 64
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i128, ptr %2, align 16, !alias.scope !15193, !noundef !8 ; 2 uses
  %i.r = trunc i128 %i.q to i64
  %i.s = lshr i128 %i.q, 64
  %3 = trunc nuw i128 %i.s to i64
  %i.t = load i64, ptr %i.d, align 8, !alias.scope !15193, !noundef !8
  %i.u = xor i64 %i.t, %i.r
  %i.v = load ptr, ptr %i.e, align 16, !alias.scope !15193, !nonnull !8, !align !1742, !noundef !8
  %i.w = load i64, ptr %i.v, align 8, !noalias !15193, !noundef !8
  %4 = xor i64 %i.w, %3
  %i.x = zext i64 %i.u to i128
  %5 = zext i64 %4 to i128
  %i.y = mul nuw i128 %5, %i.x                    ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = xor i128 %i.z, %i.y
  %i.ab = trunc i128 %i.aa to i64
  store i64 %i.ab, ptr %i.d, align 8, !alias.scope !15193
  %i.ac = zext i64 %.sroa.0.0.val3 to i128
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i = phi i128 [ %i.ac, %bb.d ], [ %i.o, %bb.c ]
  %storemerge.i.i.i.i = phi i8 [ 64, %bb.d ], [ %i.p, %bb.c ]
  store i128 %.sink.i.i, ptr %2, align 16, !alias.scope !15193
  store i8 %storemerge.i.i.i.i, ptr %i.c, align 16, !alias.scope !15193
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val3, ptr noalias noundef nonnull align 16 dereferenceable(48) %2)
  %i.ad = icmp eq ptr %i.f, %i.a
  br i1 %i.ad, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.04 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.0.04, i64 8
  %.sroa.0.0.val = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %i.e = getelementptr i8, ptr %.sroa.0.04, i64 16
  %.sroa.0.0.val3 = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  tail call fastcc void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %.sroa.0.0.val3) #34
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val3, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  %i.f = icmp eq ptr %i.c, %i.a
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtB1m_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.04 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.0.04, i64 8
  %.sroa.0.0.val = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %i.e = getelementptr i8, ptr %.sroa.0.04, i64 16
  %.sroa.0.0.val3 = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.sroa.0.0.val3)
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtBO_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val3, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  %i.f = icmp eq ptr %i.c, %i.a
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef align 16 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.04 = phi ptr [ %0, %.lr.ph ], [ %i.f, %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.0.04, i64 8
  %.sroa.0.0.val = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8
  %i.h = getelementptr i8, ptr %.sroa.0.04, i64 16
  %.sroa.0.0.val3 = load i64, ptr %i.h, align 8, !noundef !8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15203)
  %i.i = load i8, ptr %i.c, align 16, !alias.scope !15206, !noundef !8 ; 3 uses
  %i.j = icmp ugt i8 %i.i, 64
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i64 %.sroa.0.0.val3 to i128
  %i.l = zext nneg i8 %i.i to i128
  %i.m = shl nuw i128 %i.k, %i.l
  %i.n = load i128, ptr %2, align 16, !alias.scope !15206, !noundef !8
  %i.o = or i128 %i.n, %i.m
  %i.p = add nuw i8 %i.i, 64
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i128, ptr %2, align 16, !alias.scope !15206, !noundef !8 ; 2 uses
  %i.r = trunc i128 %i.q to i64
  %i.s = lshr i128 %i.q, 64
  %3 = trunc nuw i128 %i.s to i64
  %i.t = load i64, ptr %i.d, align 8, !alias.scope !15206, !noundef !8
  %i.u = xor i64 %i.t, %i.r
  %i.v = load ptr, ptr %i.e, align 16, !alias.scope !15206, !nonnull !8, !align !1742, !noundef !8
  %i.w = load i64, ptr %i.v, align 8, !noalias !15206, !noundef !8
  %4 = xor i64 %i.w, %3
  %i.x = zext i64 %i.u to i128
  %5 = zext i64 %4 to i128
  %i.y = mul nuw i128 %5, %i.x                    ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = xor i128 %i.z, %i.y
  %i.ab = trunc i128 %i.aa to i64
  store i64 %i.ab, ptr %i.d, align 8, !alias.scope !15206
  %i.ac = zext i64 %.sroa.0.0.val3 to i128
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i = phi i128 [ %i.ac, %bb.d ], [ %i.o, %bb.c ]
  %storemerge.i.i.i.i = phi i8 [ 64, %bb.d ], [ %i.p, %bb.c ]
  store i128 %.sink.i.i, ptr %2, align 16, !alias.scope !15206
  store i8 %storemerge.i.i.i.i, ptr %i.c, align 16, !alias.scope !15206
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val3, ptr noalias noundef nonnull align 16 dereferenceable(48) %2)
  %i.ad = icmp eq ptr %i.f, %i.a
  br i1 %i.ad, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.04 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.0.04, i64 8
  %.sroa.0.0.val = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %i.e = getelementptr i8, ptr %.sroa.0.04, i64 16
  %.sroa.0.0.val3 = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  tail call fastcc void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %.sroa.0.0.val3) #34
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val3, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  %i.f = icmp eq ptr %i.c, %i.a
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtB1m_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.04 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.0.04, i64 8
  %.sroa.0.0.val = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %i.e = getelementptr i8, ptr %.sroa.0.04, i64 16
  %.sroa.0.0.val3 = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.sroa.0.0.val3)
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtBO_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val3, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  %i.f = icmp eq ptr %i.c, %i.a
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 82351536043346213) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw [112 x i8], ptr %1, i64 %2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15213)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15216
  store ptr %1, ptr %i.c, align 8, !noalias !15217
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.e, align 8, !noalias !15217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15217
  call void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !15217
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !79, !noalias !15217, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noalias !15217 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15217
  %i.j = trunc nuw i64 %i.g to i1
  br i1 %i.j, label %bb.b, label %bb.d, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !15218, !noundef !8 ; 3 uses
  %i.m = load i64, ptr %0, align 8, !range !83, !alias.scope !15218, !noundef !8
  %i.n = sub i64 %i.m, %i.l
  %i.o = icmp ugt i64 %i.i, %i.n
  br i1 %i.o, label %bb.c, label %_RNvXs1_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_10SpecExtendRBU_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBU_EE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit, !prof !84

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.i, i64 noundef 8, i64 noundef 112)
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !15217
  br label %_RNvXs1_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_10SpecExtendRBU_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBU_EE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27, !noalias !15217
  unreachable

_RNvXs1_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_10SpecExtendRBU_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBU_EE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.c
  %i.p = phi i64 [ %i.l, %bb.b ], [ %.pre.i.i.i, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !15217, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15221
  store ptr %i.k, ptr %i.a, align 8, !noalias !15217
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.p, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !15217
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.r, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !15217
  call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2c_8for_each4callB1s_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3s_3VecB1s_E14extend_trustedBP_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !15224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15216
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecbE6resizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 6 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecbE11extend_withCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.f = zext i1 %2 to i8                         ; 2 uses
  %i.g = load i64, ptr %0, align 8, !range !83, !alias.scope !15225, !noundef !8
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %i.e, %i.h
  br i1 %i.i, label %bb.c, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 1, i64 noundef 1)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !15230
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !15230, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr i8, ptr %i.l, i64 %i.j     ; 2 uses
  %i.o = icmp ugt i64 %i.e, 1
  br i1 %i.o, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.thread.i:                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.p = add i64 %i.e, -1                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 %i.f, i64 %i.p, i1 false)
  %i.q = add i64 %i.p, %i.j                       ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.l, i64 %i.q
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %scevgep.i, %._crit_edge.thread.i ], [ %i.n, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.q, %._crit_edge.thread.i ], [ %i.j, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i ]
  store i8 %i.f, ptr %.sroa.0.0.lcssa28.i, align 1
  %i.r = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecbE11extend_withCs14kWLkQVSKO_14deltalake_core.exit

_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecbE11extend_withCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %._crit_edge.i
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.r, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !15231, !noundef !8 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !83, !alias.scope !15231, !noundef !8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !84

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !15238, !noundef !8 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterhEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b
end_hunk_0
begin_hunk_1_@_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !36964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.m, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ai

bb.ai:                                            ; preds = %_RNvXsz_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_7MapDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %_RNvXsu_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_9ArrayDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %_RNvXsD_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_10StructDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.r, %bb.q, %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvXsK_NtCs2HSpDNxY7OE_9hashbrown3setINtB5_10DifferenceReNtNtB7_6hasher18DefaultHashBuilderENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 3 uses
  %.promoted15 = load ptr, ptr %0, align 8        ; 3 uses
  %i.b = icmp eq i64 %.promoted, 0
  br i1 %i.b, label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !align !1742, !noundef !8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !36980, !noundef !8
  %i.i = icmp eq i64 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.promoted19 = load i16, ptr %i.c, align 8, !alias.scope !36983 ; 3 uses
  %.promoted20 = load ptr, ptr %i.d, align 8      ; 2 uses
  br i1 %i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36983)
  %.not9.i.us = icmp eq i16 %.promoted19, 0
  br i1 %.not9.i.us, label %.lr.ph.i.us, label %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTReuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us, %.lr.ph.i.us
  %i.k = phi ptr [ %i.p, %.lr.ph.i.us ], [ %.promoted20, %.lr.ph.split.us ] ; 2 uses
  %i.l = phi ptr [ %i.o, %.lr.ph.i.us ], [ %.promoted15, %.lr.ph.split.us ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !36986
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -256 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.us = bitcast <16 x i1> %i.n to i16     ; 2 uses
  %.not.i.us = icmp eq i16 %.cast.i.us, 0
  br i1 %.not.i.us, label %.lr.ph.i.us, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  store ptr %i.p, ptr %i.d, align 8, !alias.scope !36983
  store ptr %i.o, ptr %0, align 8, !alias.scope !36983
  br label %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTReuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.us

_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTReuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.us: ; preds = %.lr.ph.split.us, %._crit_edge.i.us
  %.lcssa916.us = phi ptr [ %i.o, %._crit_edge.i.us ], [ %.promoted15, %.lr.ph.split.us ]
  %.lcssa.i.us = phi i16 [ %.cast.i.us, %._crit_edge.i.us ], [ %.promoted19, %.lr.ph.split.us ] ; 3 uses
  %i.q = add i16 %.lcssa.i.us, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.us, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.us
  store i16 %i.t, ptr %i.c, align 8, !alias.scope !36983
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [16 x i8], ptr %.lcssa916.us, i64 %i.u
  %i.w = add i64 %.promoted, -1
  store i64 %i.w, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36980)
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -16
  br label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.thread

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !36989, !noalias !36992, !noundef !8 ; 2 uses
  br label %bb.b

_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.loopexit: ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.z = icmp eq i64 %i.ao, 0
  br i1 %i.z, label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split, %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.loopexit
  %.lcssa22 = phi ptr [ %.promoted20, %.lr.ph.split ], [ %.lcssa21, %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.loopexit ] ; 2 uses
  %i.aa = phi i16 [ %.promoted19, %.lr.ph.split ], [ %i.al, %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.loopexit ] ; 2 uses
  %i.ab = phi i64 [ %.promoted, %.lr.ph.split ], [ %i.ao, %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.loopexit ]
  %.lcssa91718 = phi ptr [ %.promoted15, %.lr.ph.split ], [ %.lcssa916, %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.loopexit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36983)
  %.not9.i = icmp eq i16 %i.aa, 0
  br i1 %.not9.i, label %.lr.ph.i, label %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTReuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store ptr %i.ah, ptr %i.d, align 8, !alias.scope !36983
  store ptr %i.ag, ptr %0, align 8, !alias.scope !36983
  br label %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTReuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.ac = phi ptr [ %i.ah, %.lr.ph.i ], [ %.lcssa22, %bb.b ] ; 2 uses
  %i.ad = phi ptr [ %i.ag, %.lr.ph.i ], [ %.lcssa91718, %bb.b ]
  %i.ae = load <16 x i8>, ptr %i.ac, align 16, !noalias !36986
  %i.af = icmp sgt <16 x i8> %i.ae, splat (i8 -1)
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 -256 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %.cast.i = bitcast <16 x i1> %i.af to i16       ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i

_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTReuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %.lcssa21 = phi ptr [ %i.ah, %._crit_edge.i ], [ %.lcssa22, %bb.b ]
  %.lcssa916 = phi ptr [ %i.ag, %._crit_edge.i ], [ %.lcssa91718, %bb.b ] ; 2 uses
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.aa, %bb.b ] ; 3 uses
  %i.ai = add i16 %.lcssa.i, -1
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = and i16 %i.ai, %.lcssa.i                ; 2 uses
  store i16 %i.al, ptr %i.c, align 8, !alias.scope !36983
  %i.am = sub nsw i64 0, %i.ak
  %i.an = getelementptr inbounds [16 x i8], ptr %.lcssa916, i64 %i.am ; 3 uses
  %i.ao = add i64 %i.ab, -1                       ; 3 uses
  store i64 %i.ao, ptr %i.a, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -16
  %.val = load ptr, ptr %i.ap, align 8, !nonnull !8, !noundef !8 ; 9 uses
  %i.aq = getelementptr i8, ptr %i.an, i64 -8
  %.val6 = load i64, ptr %i.aq, align 8           ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37000)
  %i.ar = tail call noundef i64 @llvm.fshr.i64(i64 %.val.i, i64 %.val.i, i64 %.val6) ; 5 uses
  %i.as = icmp samesign ult i64 %.val6, 17
  br i1 %i.as, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTReuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit
  %i.at = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef range(i64 0, -9223372036854775808) %.val6, i64 noundef %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #30, !noalias !37003
  br label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashReNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i

bb.d:                                             ; preds = %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTReuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37012)
  %i.au = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !alias.scope !37012, !noalias !37014, !noundef !8 ; 4 uses
  %i.av = icmp samesign ugt i64 %.val6, 7
  br i1 %i.av, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = icmp samesign ugt i64 %.val6, 3
  br i1 %i.aw, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, label %bb.f

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.d
  %.sroa.014.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.val, align 1, !alias.scope !37015, !noalias !37016
  %i.ax = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i, %i.ar
  %i.ay = getelementptr i8, ptr %.val, i64 %.val6
  %i.az = getelementptr i8, ptr %i.ay, i64 -8
  %.sroa.016.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.az, align 1, !alias.scope !37015, !noalias !37016
  %i.ba = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i, %i.au
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val6, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, label %bb.g

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.bb = getelementptr i8, ptr %.val, i64 %.val6
  %i.bc = getelementptr i8, ptr %i.bb, i64 -4
  %.sroa.019.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.bc, align 1, !alias.scope !37015, !noalias !37016
  %.sroa.018.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.val, align 1, !alias.scope !37015, !noalias !37016
  %i.bd = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i to i64
  %i.be = xor i64 %i.ar, %i.bd
  %i.bf = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i to i64
  %i.bg = xor i64 %i.au, %i.bf
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.bh = load i8, ptr %.val, align 1, !alias.scope !37015, !noalias !37016, !noundef !8
  %i.bi = lshr i64 %.val6, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !37015, !noalias !37016, !noundef !8
  %i.bl = getelementptr i8, ptr %.val, i64 %.val6
  %i.bm = getelementptr i8, ptr %i.bl, i64 -1
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !37015, !noalias !37016, !noundef !8
  %i.bo = zext i8 %i.bh to i64
  %i.bp = xor i64 %i.ar, %i.bo
  %i.bq = zext i8 %i.bn to i64
  %i.br = shl nuw nsw i64 %i.bq, 8
  %i.bs = zext i8 %i.bk to i64
  %i.bt = or disjoint i64 %i.br, %i.bs
  %i.bu = xor i64 %i.bt, %i.au
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, %bb.f, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ %i.ba, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ], [ %i.bg, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ], [ %i.bu, %bb.g ], [ %i.au, %bb.f ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.ax, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ], [ %i.be, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ], [ %i.bp, %bb.g ], [ %i.ar, %bb.f ]
  %i.bv = zext i64 %.sroa.0.0.i.i.i.i.i.i.i to i128
  %i.bw = zext i64 %.sroa.04.0.i.i.i.i.i.i.i to i128
  %i.bx = mul nuw i128 %i.bv, %i.bw               ; 2 uses
  %i.by = lshr i128 %i.bx, 64
  %i.bz = xor i128 %i.by, %i.bx
  %i.ca = trunc i128 %i.bz to i64
  br label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashReNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashReNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, %bb.c
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.at, %bb.c ], [ %i.ca, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i ]
  %i.cb = xor i64 %storemerge.i.i.i.i.i.i, 255
  %i.cc = load i64, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !37017, !noundef !8
  %i.cd = zext i64 %i.cb to i128
  %i.ce = zext i64 %i.cc to i128
  %i.cf = mul nuw i128 %i.cd, %i.ce               ; 2 uses
  %i.cg = lshr i128 %i.cf, 64
  %i.ch = xor i128 %i.cg, %i.cf
  %i.ci = trunc i128 %i.ch to i64                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37023)
  %i.cj = lshr i64 %i.ci, 57
  %i.ck = trunc nuw nsw i64 %i.cj to i8
  %i.cl = load i64, ptr %i.j, align 8, !alias.scope !37026, !noalias !37027, !noundef !8 ; 2 uses
  %i.cm = load ptr, ptr %i.f, align 8, !alias.scope !37026, !noalias !37027, !nonnull !8, !noundef !8 ; 2 uses
  %i.cn = insertelement <16 x i8> poison, i8 %i.ck, i64 0
  %i.co = shufflevector <16 x i8> %i.cn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashReNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.011.0.i.i.i = phi i64 [ 0, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashReNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.dh, %bb.i ]
  %.pn.i.i.i = phi i64 [ %i.ci, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashReNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.di, %bb.i ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.cl   ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i22.i.i = load <16 x i8>, ptr %i.cp, align 1, !noalias !37029 ; 2 uses
  %i.cq = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i.i, %i.co
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %.not.i.not28.i.i = icmp eq i16 %i.cr, 0
  br i1 %.not.i.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  %.sroa.05.0.i29.i.i = phi i16 [ %i.dg, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ %i.cr, %bb.h ] ; 3 uses
  %i.cs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i29.i.i, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = add i64 %.sroa.01.0.i.i.i, %i.ct
  %i.cv = and i64 %i.cu, %i.cl
  %i.cw = sub nsw i64 0, %i.cv
  %i.cx = getelementptr inbounds [16 x i8], ptr %i.cm, i64 %i.cw ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 -8
  %.val3.i.i.i = load i64, ptr %i.cy, align 8, !noalias !37032, !noundef !8
  %i.cz = icmp eq i64 %.val6, %.val3.i.i.i
  br i1 %i.cz, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, !prof !37035

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.lr.ph.i.i
  %i.da = getelementptr inbounds i8, ptr %i.cx, i64 -16
  %.val2.i.i.i = load ptr, ptr %i.da, align 8, !noalias !37032, !nonnull !8, !noundef !8
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2.i.i.i, i64 %.val6), !alias.scope !37036, !noalias !37032
  %i.db = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.db, label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.loopexit, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, !prof !37040

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, %bb.h
  %i.dc = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i.i, splat (i8 -1)
  %i.dd = bitcast <16 x i1> %i.dc to i16
  %i.de = icmp eq i16 %i.dd, 0
  br i1 %i.de, label %bb.i, label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.thread.loopexit, !prof !84

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.lr.ph.i.i
  %i.df = add i16 %.sroa.05.0.i29.i.i, -1
  %i.dg = and i16 %i.df, %.sroa.05.0.i29.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.dg, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.dh = add i64 %.sroa.011.0.i.i.i, 16          ; 2 uses
  %i.di = add i64 %.sroa.01.0.i.i.i, %i.dh
  br label %bb.h

_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.thread.loopexit: ; preds = %._crit_edge.i.i
  %i.dj = getelementptr inbounds i8, ptr %i.an, i64 -16
  br label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.loopexit, %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.thread.loopexit, %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTReuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.us, %bb.a
  %.sroa.0.0 = phi ptr [ %i.dj, %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.thread.loopexit ], [ %i.x, %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTReuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.us ], [ null, %bb.a ], [ null, %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core.exit.loopexit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsbvkFyIu7lgC_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.024.i240 = alloca [112 x i8], align 16   ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [112 x i8], align 16              ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.024.i = alloca [112 x i8], align 16      ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [112 x i8], align 16              ; 4 uses
  %i.h = alloca [64 x i8], align 16               ; 4 uses
  %i.i = alloca [64 x i8], align 16               ; 4 uses
  %.sroa.6.i.i = alloca [64 x i8], align 16       ; 5 uses
  %i.j = alloca [80 x i8], align 16               ; 7 uses
  %i.k = alloca [176 x i8], align 16              ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [112 x i8], align 16              ; 4 uses
  %i.p = alloca [112 x i8], align 16              ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [112 x i8], align 16              ; 4 uses
  %i.s = alloca [112 x i8], align 16              ; 4 uses
  %.sroa.0225 = alloca [248 x i8], align 16       ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [112 x i8], align 16              ; 4 uses
  %i.x = alloca [112 x i8], align 16              ; 4 uses
  %i.y = alloca [112 x i8], align 16              ; 4 uses
  %i.z = alloca [112 x i8], align 16              ; 4 uses
  %i.aa = alloca [112 x i8], align 16             ; 4 uses
  %i.ab = alloca [112 x i8], align 16             ; 4 uses
  %i.ac = alloca [112 x i8], align 16             ; 4 uses
  %i.ad = alloca [112 x i8], align 16             ; 4 uses
  %i.ae = alloca [112 x i8], align 16             ; 4 uses
  %i.af = alloca [112 x i8], align 16             ; 4 uses
  %i.ag = alloca [112 x i8], align 16             ; 4 uses
  %i.ah = alloca [112 x i8], align 16             ; 4 uses
  %i.ai = alloca [112 x i8], align 16             ; 4 uses
  %i.aj = alloca [112 x i8], align 16             ; 4 uses
  %i.ak = alloca [112 x i8], align 16             ; 4 uses
  %i.al = alloca [112 x i8], align 16             ; 4 uses
  %i.am = alloca [112 x i8], align 16             ; 4 uses
  %i.an = alloca [112 x i8], align 16             ; 4 uses
  %i.ao = alloca [112 x i8], align 16             ; 4 uses
  %i.ap = alloca [112 x i8], align 16             ; 4 uses
  %i.aq = alloca [112 x i8], align 16             ; 4 uses
  %i.ar = alloca [112 x i8], align 16             ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 5 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [56 x i8], align 8               ; 4 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.0196 = alloca [48 x i8], align 8         ; 3 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [24 x i8], align 8               ; 4 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [24 x i8], align 8               ; 4 uses
  %i.bf = alloca [8 x i8], align 8                ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 5 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [8 x i8], align 8                ; 4 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [8 x i8], align 8                ; 4 uses
  %i.bm = alloca [8 x i8], align 8                ; 4 uses
  %i.bn = alloca [24 x i8], align 8               ; 4 uses
  %i.bo = alloca [56 x i8], align 8               ; 7 uses
  %i.bp = alloca [8 x i8], align 8                ; 4 uses
  %i.bq = alloca [104 x i8], align 8              ; 4 uses
  %i.br = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.6183 = alloca [24 x i8], align 8         ; 6 uses
  %i.bs = alloca [56 x i8], align 8               ; 7 uses
  %.sroa.0173 = alloca [56 x i8], align 8         ; 4 uses
  %i.bt = alloca [64 x i8], align 16              ; 4 uses
  %i.bu = alloca [24 x i8], align 8               ; 4 uses
  %i.bv = alloca [8 x i8], align 8                ; 4 uses
  %i.bw = alloca [104 x i8], align 8              ; 4 uses
  %.sroa.0 = alloca [80 x i8], align 8            ; 5 uses
  %i.bx = load i64, ptr %1, align 16, !range !6652, !noundef !8 ; 3 uses
  %i.by = icmp ne i64 %i.bx, 35
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = add nsw i64 %i.bx, -4
  %i.ca = icmp samesign ugt i64 %i.bx, 3
  %i.cb = select i1 %i.ca, i64 %i.bz, i64 31
  switch i64 %i.cb, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.n
    i64 2, label %bb.o
    i64 3, label %bb.p
    i64 4, label %bb.q
    i64 5, label %bb.v
    i64 6, label %bb.aa
    i64 7, label %bb.af
    i64 8, label %bb.ah
    i64 9, label %bb.aj
    i64 10, label %bb.al
    i64 11, label %bb.an
    i64 12, label %bb.ap
    i64 13, label %bb.ar
    i64 14, label %bb.at
    i64 15, label %bb.av
    i64 16, label %bb.ax
    i64 17, label %bb.az
    i64 18, label %bb.bh
    i64 19, label %bb.bq
    i64 20, label %bb.bu
    i64 21, label %bb.by
    i64 22, label %bb.ce
    i64 23, label %bb.cv
    i64 24, label %bb.dz
    i64 25, label %bb.ed
    i64 26, label %bb.ee
    i64 27, label %bb.ei
    i64 28, label %bb.et
    i64 29, label %bb.eu
end_hunk_1
