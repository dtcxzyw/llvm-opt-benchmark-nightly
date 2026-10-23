Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.14?download=true
inline.NumInlined: 10276
inline.NumDeleted: 5308
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterbENCINvXs_NtCs6ti0Crti64P_13serde_stacker3serINtB1x_10SerializerQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3d_bEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4V_12try_for_each4callINtB1x_14SerializeSizedRbEINtNtBc_6result6ResultuNtB2t_5ErrorENCINvXsi_B2t_B2p_B3N_11collect_seqBN_Es0_0E0B6x_ECsfcROwRM8ZtH_11polars_plan:bb.a
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterbENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRbINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB2d_EuINtNtBa_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B2i_INtB2i_10SerializerQINtB3C_10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB56_bEE0NCINvNvBL_12try_for_each4callB2f_B3d_NCINvXsi_B3C_B4L_B5G_11collect_seqINtB1F_3MapB3_B4g_EEs0_0E0E0B3d_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !78869

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !78868, !noalias !78846
  %i.k = icmp eq ptr %i.h, %i.d, !dbg !78854
  br i1 %i.k, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterbENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRbINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB2d_EuINtNtBa_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B2i_INtB2i_10SerializerQINtB3C_10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB56_bEE0NCINvNvBL_12try_for_each4callB2f_B3d_NCINvXsi_B3C_B4L_B5G_11collect_seqINtB1F_3MapB3_B4g_EEs0_0E0E0B3d_ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.b, !dbg !78855

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterbENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRbINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB2d_EuINtNtBa_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B2i_INtB2i_10SerializerQINtB3C_10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB56_bEE0NCINvNvBL_12try_for_each4callB2f_B3d_NCINvXsi_B3C_B4L_B5G_11collect_seqINtB1F_3MapB3_B4g_EEs0_0E0E0B3d_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.d, %bb.a, %bb.c
  %storemerge.i = phi i64 [ %i.j, %bb.c ], [ -9223372036854775804, %bb.a ], [ -9223372036854775804, %bb.d ], !dbg !78870
  store i64 %storemerge.i, ptr %0, align 8, !dbg !78870, !alias.scope !78841
  ret void, !dbg !78871
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterbENCINvXs_NtCs6ti0Crti64P_13serde_stacker3serINtB1x_10SerializerQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB2v_6config15StructMapConfigNtB3P_13DefaultConfigEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3e_bEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5P_12try_for_each4callINtB1x_14SerializeSizedRbEINtNtBc_6result6ResultuNtB2t_5ErrorENCINvMsj_B2t_B2q_15bytes_from_iterINtNtB8_8peekable8PeekableBN_EE0E0B7r_ECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !78872 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78934), !dbg !78948
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78935), !dbg !78948
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78936), !dbg !78948
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78937), !dbg !78948
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !78938, !nonnull !2315, !noundef !2315 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !78938 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i, %i.c, !dbg !78949
  br i1 %i.d, label %._crit_edge.i, label %.lr.ph.i, !dbg !78950

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !78951
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !78937, !noalias !78939, !nonnull !2315, !align !2417, !noundef !2315
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.i.i.i = load ptr, ptr %2, align 8, !alias.scope !78936, !nonnull !2315, !align !2417 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  br label %bb.b, !dbg !78950

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1, !dbg !78952 ; 3 uses
  store ptr %i.i, ptr %1, align 8, !dbg !78953, !alias.scope !78938
  %i.j = load <2 x i64>, ptr %.val.i.i, align 8, !dbg !78954, !noalias !78940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !78955, !noalias !78941
  store ptr %i.h, ptr %i.a, align 8, !dbg !78955, !noalias !78942
  store <2 x i64> %i.j, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !78955, !noalias !78942
  %i.k = call { i1, i8 } @_RINvXsh_NtCs6ti0Crti64P_13serde_stacker3serINtB6_14SerializeSizedRbENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeNtNtCs721FSB8TeJg_9rmp_serde5bytes9OnlyBytesECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a), !dbg !78956, !noalias !78943 ; 2 uses
  %i.l = extractvalue { i1, i8 } %i.k, 0, !dbg !78957
  br i1 %i.l, label %bb.c, label %bb.d, !dbg !78958

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  store i64 -9223372036854775804, ptr %0, align 8, !dbg !78959, !alias.scope !78944
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterbENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRbINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB2d_EuINtNtBa_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B2i_INtB2i_10SerializerQINtB3C_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB3E_6config15StructMapConfigNtB5I_13DefaultConfigEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB57_bEE0NCINvNvBL_12try_for_each4callB2f_B3d_NCINvMsj_B3C_B4M_15bytes_from_iterINtNtB1H_8peekable8PeekableINtB1F_3MapB3_B4g_EEE0E0E0B3d_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !78960

bb.c:                                             ; preds = %bb.b
  %.sroa.4.1.extract.shift.i.i.i.i = lshr i64 ptrtoint (ptr @164 to i64), 8, !dbg !78961
  %.sroa.4.1.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.4.1.extract.shift.i.i.i.i to i56, !dbg !78961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !78962, !noalias !78941
  store i64 -9223372036854775806, ptr %0, align 8, !dbg !78963, !alias.scope !78945
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !78963
  store i8 ptrtoint (ptr @164 to i8), ptr %.sroa.213.0..sroa_idx.i, align 8, !dbg !78963, !alias.scope !78945
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !78963
  store i56 %.sroa.4.1.extract.trunc.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i, align 1, !dbg !78963, !alias.scope !78945
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !78963
  store i64 9, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !78963, !alias.scope !78945
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterbENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRbINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB2d_EuINtNtBa_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B2i_INtB2i_10SerializerQINtB3C_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB3E_6config15StructMapConfigNtB5I_13DefaultConfigEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB57_bEE0NCINvNvBL_12try_for_each4callB2f_B3d_NCINvMsj_B3C_B4M_15bytes_from_iterINtNtB1H_8peekable8PeekableINtB1F_3MapB3_B4g_EEE0E0E0B3d_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !78964

bb.d:                                             ; preds = %bb.b
  %i.m = extractvalue { i1, i8 } %i.k, 1, !dbg !78957
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, i64 noundef 1), !dbg !78965, !noalias !78946
  %i.n = load i64, ptr %i.f, align 8, !dbg !78966, !alias.scope !78947, !noalias !78943, !noundef !2315 ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !78967
  call void @llvm.assume(i1 %i.o), !dbg !78968
  %i.p = load ptr, ptr %i.g, align 8, !dbg !78969, !alias.scope !78947, !noalias !78943, !nonnull !2315, !noundef !2315
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n, !dbg !78970
  store i8 %i.m, ptr %i.q, align 1, !dbg !78971, !noalias !78946
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !dbg !78972, !alias.scope !78947, !noalias !78943
  %i.r = add i64 %.pre.i.i.i.i.i.i.i, 1, !dbg !78972
  store i64 %i.r, ptr %i.f, align 8, !dbg !78972, !alias.scope !78947, !noalias !78943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !78962, !noalias !78941
  %i.s = icmp eq ptr %i.i, %i.c, !dbg !78949
  br i1 %i.s, label %._crit_edge.i, label %bb.b, !dbg !78950

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterbENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRbINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB2d_EuINtNtBa_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B2i_INtB2i_10SerializerQINtB3C_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB3E_6config15StructMapConfigNtB5I_13DefaultConfigEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB57_bEE0NCINvNvBL_12try_for_each4callB2f_B3d_NCINvMsj_B3C_B4M_15bytes_from_iterINtNtB1H_8peekable8PeekableINtB1F_3MapB3_B4g_EEE0E0E0B3d_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %._crit_edge.i, %bb.c
  ret void, !dbg !78973
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterbENCINvXs_NtCs6ti0Crti64P_13serde_stacker3serINtB1x_10SerializerQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB2v_6config15StructMapConfigNtB3P_13DefaultConfigEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3e_bEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5P_12try_for_each4callINtB1x_14SerializeSizedRbEINtNtBc_6result6ResultuNtB2t_5ErrorENCINvXsi_B2t_B2p_B4H_11collect_seqBN_Es0_0E0B7r_ECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !78974 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79011), !dbg !79023
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79012), !dbg !79023
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79013), !dbg !79023
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !79014, !nonnull !2315, !noundef !2315 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !79014 ; 2 uses
  %i.e = icmp eq ptr %.promoted.i, %i.d, !dbg !79024
  br i1 %i.e, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterbENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRbINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB2d_EuINtNtBa_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B2i_INtB2i_10SerializerQINtB3C_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB3E_6config15StructMapConfigNtB5I_13DefaultConfigEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB57_bEE0NCINvNvBL_12try_for_each4callB2f_B3d_NCINvXsi_B3C_B4L_B6A_11collect_seqINtB1F_3MapB3_B4g_EEs0_0E0E0B3d_ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.i, !dbg !79025

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !79026
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !79013, !noalias !79015, !nonnull !2315, !align !2417, !noundef !2315
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b, !dbg !79025

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.g = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1, !dbg !79027 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !dbg !79028, !alias.scope !79014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !79029, !noalias !79016
  %i.i = load <2 x i64>, ptr %.val.i.i, align 8, !dbg !79030, !noalias !79017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !79031, !noalias !79018
  store ptr %i.g, ptr %i.a, align 8, !dbg !79031, !noalias !79019
  store <2 x i64> %i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !79031, !noalias !79019
  call void @_RINvXsg_NtCs721FSB8TeJg_9rmp_serde6encodeINtB6_26MaybeUnknownLengthCompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB8_6config15StructMapConfigNtB1O_13DefaultConfigEENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedRbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a), !dbg !79032, !noalias !79020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !79033, !noalias !79018
  %i.j = load i64, ptr %i.b, align 8, !dbg !79034, !range !2742, !alias.scope !79021, !noalias !79016, !noundef !2315 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, -9223372036854775804, !dbg !79034
  br i1 %.not.i.i, label %bb.d, label %bb.c, !dbg !79035

bb.c:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !79036
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !79037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.210.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i, i64 16, i1 false), !dbg !79036, !noalias !79022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !79038, !noalias !79016
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterbENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRbINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB2d_EuINtNtBa_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B2i_INtB2i_10SerializerQINtB3C_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB3E_6config15StructMapConfigNtB5I_13DefaultConfigEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB57_bEE0NCINvNvBL_12try_for_each4callB2f_B3d_NCINvXsi_B3C_B4L_B6A_11collect_seqINtB1F_3MapB3_B4g_EEs0_0E0E0B3d_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !79039

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !79038, !noalias !79016
  %i.k = icmp eq ptr %i.h, %i.d, !dbg !79024
  br i1 %i.k, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterbENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRbINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB2d_EuINtNtBa_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B2i_INtB2i_10SerializerQINtB3C_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB3E_6config15StructMapConfigNtB5I_13DefaultConfigEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB57_bEE0NCINvNvBL_12try_for_each4callB2f_B3d_NCINvXsi_B3C_B4L_B6A_11collect_seqINtB1F_3MapB3_B4g_EEs0_0E0E0B3d_ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.b, !dbg !79025

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterbENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRbINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB2d_EuINtNtBa_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B2i_INtB2i_10SerializerQINtB3C_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB3E_6config15StructMapConfigNtB5I_13DefaultConfigEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB57_bEE0NCINvNvBL_12try_for_each4callB2f_B3d_NCINvXsi_B3C_B4L_B6A_11collect_seqINtB1F_3MapB3_B4g_EEs0_0E0E0B3d_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.d, %bb.a, %bb.c
  %storemerge.i = phi i64 [ %i.j, %bb.c ], [ -9223372036854775804, %bb.a ], [ -9223372036854775804, %bb.d ], !dbg !79040
  store i64 %storemerge.i, ptr %0, align 8, !dbg !79040, !alias.scope !79011
  ret void, !dbg !79041
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterbENCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr18simplify_functions18optimize_functions0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3d_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4q_3VecbE14extend_trustedBN_E0E0EB1B_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !79042 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !79103 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !79103
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !79103 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !79103
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !79103 ; 8 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !79104
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !79104
  %i.a = icmp eq ptr %0, %1, !dbg !79105
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRbbuNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr18simplify_functions18optimize_functions0NCINvNvBS_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4A_3VecbE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %iter.check, !dbg !79106

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !79107      ; 3 uses
  %i.c = ptrtoint ptr %0 to i64, !dbg !79107      ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !79107      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !79108
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !79108

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload3, !dbg !79108
  %i.f = sub i64 %i.c, %i.e, !dbg !79108
  %diff.check = icmp ugt i64 %i.f, -32, !dbg !79108
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !79109

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.d, 32, !dbg !79108
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !79108

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !79108

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !79109 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !79110 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !79111
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !dbg !79111, !noalias !79096
  %wide.load5 = load <16 x i8>, ptr %i.k, align 1, !dbg !79111, !noalias !79096
  %i.l = getelementptr i8, ptr %i.i, i64 %index, !dbg !79112 ; 2 uses
  %i.m = xor <16 x i8> %wide.load, splat (i8 1), !dbg !79113
  %i.n = xor <16 x i8> %wide.load5, splat (i8 1), !dbg !79113
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !79113
  store <16 x i8> %i.m, ptr %i.l, align 1, !dbg !79113, !noalias !79097
  store <16 x i8> %i.n, ptr %i.o, align 1, !dbg !79113, !noalias !79097
  %index.next = add nuw i64 %index, 32, !dbg !79109 ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec, !dbg !79114
  br i1 %i.p, label %middle.block, label %vector.body, !dbg !79114, !llvm.loop !79084

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !79114
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRbbuNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr18simplify_functions18optimize_functions0NCINvNvBS_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4A_3VecbE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %vec.epilog.iter.check, !dbg !79114

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !3339

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %i.d, -4                      ; 4 uses
  %i.q = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !79109 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %index7, !dbg !79110
  %wide.load8 = load <4 x i8>, ptr %i.s, align 1, !dbg !79111, !noalias !79096
  %i.t = getelementptr i8, ptr %i.r, i64 %index7, !dbg !79112
  %i.u = xor <4 x i8> %wide.load8, splat (i8 1), !dbg !79113
  store <4 x i8> %i.u, ptr %i.t, align 1, !dbg !79113, !noalias !79097
  %index.next9 = add nuw i64 %index7, 4, !dbg !79109 ; 2 uses
  %i.v = icmp eq i64 %index.next9, %n.vec6, !dbg !79114
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !79114, !llvm.loop !79085

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.d, %n.vec6, !dbg !79114
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRbbuNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr18simplify_functions18optimize_functions0NCINvNvBS_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4A_3VecbE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !79114

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %i.w = sub i64 %i.b, %i.c, !dbg !79114
  %xtraiter = and i64 %i.w, 3, !dbg !79114        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !79114
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !79114

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.x = phi i64 [ %i.ab, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !79110 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ac, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !79109 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.prol, !dbg !79110
  %.val16.i.prol = load i8, ptr %i.y, align 1, !dbg !79111, !range !2472, !noalias !79096, !noundef !2315
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !79112
  %i.aa = xor i8 %.val16.i.prol, 1, !dbg !79113
  store i8 %i.aa, ptr %i.z, align 1, !dbg !79113, !noalias !79097
  %i.ab = add i64 %i.x, 1, !dbg !79115            ; 3 uses
  %i.ac = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !79116 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !79114 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !79114
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !79114, !llvm.loop !79090

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ac, %vec.epilog.scalar.ph.prol ]
  %i.ad = sub i64 %.sroa.01.0.i.ph, %i.b, !dbg !79114
  %i.ae = add i64 %i.ad, %i.c, !dbg !79114
  %i.af = icmp ugt i64 %i.ae, -4, !dbg !79114
  br i1 %i.af, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRbbuNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr18simplify_functions18optimize_functions0NCINvNvBS_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4A_3VecbE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %vec.epilog.scalar.ph, !dbg !79114

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ag = phi i64 [ %i.az, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !79110 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ba, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !79109 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !79110
  %.val16.i = load i8, ptr %i.ah, align 1, !dbg !79111, !range !2472, !noalias !79096, !noundef !2315
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !79112
  %i.aj = xor i8 %.val16.i, 1, !dbg !79113
  store i8 %i.aj, ptr %i.ai, align 1, !dbg !79113, !noalias !79097
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !79110
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1, !dbg !79110
  %.val16.i.1 = load i8, ptr %i.al, align 1, !dbg !79111, !range !2472, !noalias !79096, !noundef !2315
  %i.am = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !79112
  %i.an = getelementptr i8, ptr %i.am, i64 1, !dbg !79112
  %i.ao = xor i8 %.val16.i.1, 1, !dbg !79113
  store i8 %i.ao, ptr %i.an, align 1, !dbg !79113, !noalias !79097
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !79110
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2, !dbg !79110
  %.val16.i.2 = load i8, ptr %i.aq, align 1, !dbg !79111, !range !2472, !noalias !79096, !noundef !2315
  %i.ar = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !79112
  %i.as = getelementptr i8, ptr %i.ar, i64 2, !dbg !79112
  %i.at = xor i8 %.val16.i.2, 1, !dbg !79113
  store i8 %i.at, ptr %i.as, align 1, !dbg !79113, !noalias !79097
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !79110
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 3, !dbg !79110
  %.val16.i.3 = load i8, ptr %i.av, align 1, !dbg !79111, !range !2472, !noalias !79096, !noundef !2315
  %i.aw = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !79112
  %i.ax = getelementptr i8, ptr %i.aw, i64 3, !dbg !79112
  %i.ay = xor i8 %.val16.i.3, 1, !dbg !79113
  store i8 %i.ay, ptr %i.ax, align 1, !dbg !79113, !noalias !79097
  %i.az = add i64 %i.ag, 4, !dbg !79115           ; 2 uses
  %i.ba = add nuw i64 %.sroa.01.0.i, 4, !dbg !79116 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, %i.d, !dbg !79114
  br i1 %i.bb, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRbbuNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr18simplify_functions18optimize_functions0NCINvNvBS_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4A_3VecbE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %vec.epilog.scalar.ph, !dbg !79114, !llvm.loop !79091

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRbbuNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr18simplify_functions18optimize_functions0NCINvNvBS_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4A_3VecbE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.az, %vec.epilog.scalar.ph ], !dbg !79117
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !79117, !noalias !79096
  ret void, !dbg !79118
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterbENCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr18simplify_functions18optimize_functionss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3f_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4s_3VecbE14extend_trustedBN_E0E0EB1B_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !79119 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !79180 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !79180
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !79180 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !79180
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !79180 ; 8 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !79181
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !79181
  %i.a = icmp eq ptr %0, %1, !dbg !79182
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRbbuNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr18simplify_functions18optimize_functionss_0NCINvNvBS_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4C_3VecbE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %iter.check, !dbg !79183

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !79184      ; 3 uses
  %i.c = ptrtoint ptr %0 to i64, !dbg !79184      ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !79184      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !79185
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !79185

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload3, !dbg !79185
  %i.f = sub i64 %i.c, %i.e, !dbg !79185
  %diff.check = icmp ugt i64 %i.f, -32, !dbg !79185
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !79186

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.d, 32, !dbg !79185
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !79185

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !79185

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !79186 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !79187 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !79188
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !dbg !79188, !noalias !79173
  %wide.load5 = load <16 x i8>, ptr %i.k, align 1, !dbg !79188, !noalias !79173
  %i.l = getelementptr i8, ptr %i.i, i64 %index, !dbg !79189 ; 2 uses
  %i.m = xor <16 x i8> %wide.load, splat (i8 1), !dbg !79190
  %i.n = xor <16 x i8> %wide.load5, splat (i8 1), !dbg !79190
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !79190
  store <16 x i8> %i.m, ptr %i.l, align 1, !dbg !79190, !noalias !79174
  store <16 x i8> %i.n, ptr %i.o, align 1, !dbg !79190, !noalias !79174
  %index.next = add nuw i64 %index, 32, !dbg !79186 ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec, !dbg !79191
  br i1 %i.p, label %middle.block, label %vector.body, !dbg !79191, !llvm.loop !79161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !79191
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRbbuNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr18simplify_functions18optimize_functionss_0NCINvNvBS_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4C_3VecbE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %vec.epilog.iter.check, !dbg !79191

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !3339

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %i.d, -4                      ; 4 uses
  %i.q = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !79186 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %index7, !dbg !79187
  %wide.load8 = load <4 x i8>, ptr %i.s, align 1, !dbg !79188, !noalias !79173
  %i.t = getelementptr i8, ptr %i.r, i64 %index7, !dbg !79189
  %i.u = xor <4 x i8> %wide.load8, splat (i8 1), !dbg !79190
  store <4 x i8> %i.u, ptr %i.t, align 1, !dbg !79190, !noalias !79174
  %index.next9 = add nuw i64 %index7, 4, !dbg !79186 ; 2 uses
  %i.v = icmp eq i64 %index.next9, %n.vec6, !dbg !79191
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !79191, !llvm.loop !79162

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.d, %n.vec6, !dbg !79191
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRbbuNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr18simplify_functions18optimize_functionss_0NCINvNvBS_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4C_3VecbE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !79191

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %i.w = sub i64 %i.b, %i.c, !dbg !79191
  %xtraiter = and i64 %i.w, 3, !dbg !79191        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !79191
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !79191

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.x = phi i64 [ %i.ab, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !79187 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ac, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !79186 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.prol, !dbg !79187
  %.val16.i.prol = load i8, ptr %i.y, align 1, !dbg !79188, !range !2472, !noalias !79173, !noundef !2315
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !79189
  %i.aa = xor i8 %.val16.i.prol, 1, !dbg !79190
  store i8 %i.aa, ptr %i.z, align 1, !dbg !79190, !noalias !79174
  %i.ab = add i64 %i.x, 1, !dbg !79192            ; 3 uses
  %i.ac = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !79193 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !79191 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !79191
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !79191, !llvm.loop !79167

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ac, %vec.epilog.scalar.ph.prol ]
  %i.ad = sub i64 %.sroa.01.0.i.ph, %i.b, !dbg !79191
  %i.ae = add i64 %i.ad, %i.c, !dbg !79191
  %i.af = icmp ugt i64 %i.ae, -4, !dbg !79191
  br i1 %i.af, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRbbuNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr18simplify_functions18optimize_functionss_0NCINvNvBS_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4C_3VecbE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %vec.epilog.scalar.ph, !dbg !79191

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ag = phi i64 [ %i.az, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !79187 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ba, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !79186 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !79187
  %.val16.i = load i8, ptr %i.ah, align 1, !dbg !79188, !range !2472, !noalias !79173, !noundef !2315
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !79189
  %i.aj = xor i8 %.val16.i, 1, !dbg !79190
  store i8 %i.aj, ptr %i.ai, align 1, !dbg !79190, !noalias !79174
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !79187
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1, !dbg !79187
  %.val16.i.1 = load i8, ptr %i.al, align 1, !dbg !79188, !range !2472, !noalias !79173, !noundef !2315
  %i.am = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !79189
  %i.an = getelementptr i8, ptr %i.am, i64 1, !dbg !79189
  %i.ao = xor i8 %.val16.i.1, 1, !dbg !79190
  store i8 %i.ao, ptr %i.an, align 1, !dbg !79190, !noalias !79174
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !79187
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2, !dbg !79187
  %.val16.i.2 = load i8, ptr %i.aq, align 1, !dbg !79188, !range !2472, !noalias !79173, !noundef !2315
  %i.ar = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !79189
  %i.as = getelementptr i8, ptr %i.ar, i64 2, !dbg !79189
  %i.at = xor i8 %.val16.i.2, 1, !dbg !79190
  store i8 %i.at, ptr %i.as, align 1, !dbg !79190, !noalias !79174
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !79187
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 3, !dbg !79187
  %.val16.i.3 = load i8, ptr %i.av, align 1, !dbg !79188, !range !2472, !noalias !79173, !noundef !2315
  %i.aw = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !79189
  %i.ax = getelementptr i8, ptr %i.aw, i64 3, !dbg !79189
  %i.ay = xor i8 %.val16.i.3, 1, !dbg !79190
  store i8 %i.ay, ptr %i.ax, align 1, !dbg !79190, !noalias !79174
  %i.az = add i64 %i.ag, 4, !dbg !79192           ; 2 uses
  %i.ba = add nuw i64 %.sroa.01.0.i, 4, !dbg !79193 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, %i.d, !dbg !79191
  br i1 %i.bb, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRbbuNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr18simplify_functions18optimize_functionss_0NCINvNvBS_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4C_3VecbE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %vec.epilog.scalar.ph, !dbg !79191, !llvm.loop !79168

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRbbuNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr18simplify_functions18optimize_functionss_0NCINvNvBS_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4C_3VecbE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.az, %vec.epilog.scalar.ph ], !dbg !79194
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !79194, !noalias !79173
  ret void, !dbg !79195
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCINvXs_NtCs6ti0Crti64P_13serde_stacker3serINtB1x_10SerializerQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3d_dEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4V_12try_for_each4callINtB1x_14SerializeSizedRdEINtNtBc_6result6ResultuNtB2t_5ErrorENCINvMsj_B2t_B2q_15bytes_from_iterINtNtB8_8peekable8PeekableBN_EE0E0B6x_ECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !79196 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79258), !dbg !79273
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79259), !dbg !79273
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79260), !dbg !79273
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79261), !dbg !79273
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !79262, !nonnull !2315, !noundef !2315 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !79262 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i, %i.c, !dbg !79274
  br i1 %i.d, label %._crit_edge.i, label %.lr.ph.i, !dbg !79275

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !79276
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !79261, !noalias !79263, !nonnull !2315, !align !2417, !noundef !2315
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b, !dbg !79275

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !79277 ; 3 uses
  store ptr %i.i, ptr %1, align 8, !dbg !79278, !alias.scope !79262
  %i.j = load <2 x i64>, ptr %.val.i.i, align 8, !dbg !79279, !noalias !79264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !79280, !noalias !79265
  store ptr %i.h, ptr %i.a, align 8, !dbg !79280, !noalias !79266
  store <2 x i64> %i.j, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !79280, !noalias !79266
  %i.k = call { i1, i8 } @_RINvXsh_NtCs6ti0Crti64P_13serde_stacker3serINtB6_14SerializeSizedRdENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeNtNtCs721FSB8TeJg_9rmp_serde5bytes9OnlyBytesECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a), !dbg !79281, !noalias !79267 ; 2 uses
  %i.l = extractvalue { i1, i8 } %i.k, 0, !dbg !79282
  br i1 %i.l, label %bb.c, label %bb.d, !dbg !79283

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  store i64 -9223372036854775804, ptr %0, align 8, !dbg !79284, !alias.scope !79268
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRdINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB2d_EuINtNtBa_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B2i_INtB2i_10SerializerQINtB3C_10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB56_dEE0NCINvNvBL_12try_for_each4callB2f_B3d_NCINvMsj_B3C_B4M_15bytes_from_iterINtNtB1H_8peekable8PeekableINtB1F_3MapB3_B4g_EEE0E0E0B3d_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !79285

bb.c:                                             ; preds = %bb.b
  %.sroa.4.1.extract.shift.i.i.i.i = lshr i64 ptrtoint (ptr @164 to i64), 8, !dbg !79286
  %.sroa.4.1.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.4.1.extract.shift.i.i.i.i to i56, !dbg !79286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !79287, !noalias !79265
  store i64 -9223372036854775806, ptr %0, align 8, !dbg !79288, !alias.scope !79269
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !79288
  store i8 ptrtoint (ptr @164 to i8), ptr %.sroa.213.0..sroa_idx.i, align 8, !dbg !79288, !alias.scope !79269
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !79288
  store i56 %.sroa.4.1.extract.trunc.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i, align 1, !dbg !79288, !alias.scope !79269
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !79288
  store i64 9, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79288, !alias.scope !79269
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRdINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB2d_EuINtNtBa_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B2i_INtB2i_10SerializerQINtB3C_10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB56_dEE0NCINvNvBL_12try_for_each4callB2f_B3d_NCINvMsj_B3C_B4M_15bytes_from_iterINtNtB1H_8peekable8PeekableINtB1F_3MapB3_B4g_EEE0E0E0B3d_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !79289

bb.d:                                             ; preds = %bb.b
  %i.m = extractvalue { i1, i8 } %i.k, 1, !dbg !79282
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1), !dbg !79290, !noalias !79270
  %i.n = load i64, ptr %i.f, align 8, !dbg !79291, !alias.scope !79271, !noalias !79272, !noundef !2315 ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1, !dbg !79292
  call void @llvm.assume(i1 %i.o), !dbg !79293
  %i.p = load ptr, ptr %i.g, align 8, !dbg !79294, !alias.scope !79271, !noalias !79272, !nonnull !2315, !noundef !2315
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n, !dbg !79295
  store i8 %i.m, ptr %i.q, align 1, !dbg !79296, !noalias !79270
  %.pre.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !dbg !79297, !alias.scope !79271, !noalias !79272
  %i.r = add i64 %.pre.i.i.i.i.i.i, 1, !dbg !79297
  store i64 %i.r, ptr %i.f, align 8, !dbg !79297, !alias.scope !79271, !noalias !79272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !79287, !noalias !79265
  %i.s = icmp eq ptr %i.i, %i.c, !dbg !79274
  br i1 %i.s, label %._crit_edge.i, label %bb.b, !dbg !79275

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRdINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB2d_EuINtNtBa_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B2i_INtB2i_10SerializerQINtB3C_10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB56_dEE0NCINvNvBL_12try_for_each4callB2f_B3d_NCINvMsj_B3C_B4M_15bytes_from_iterINtNtB1H_8peekable8PeekableINtB1F_3MapB3_B4g_EEE0E0E0B3d_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %._crit_edge.i, %bb.c
  ret void, !dbg !79298
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCINvXs_NtCs6ti0Crti64P_13serde_stacker3serINtB1x_10SerializerQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3d_dEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4V_12try_for_each4callINtB1x_14SerializeSizedRdEINtNtBc_6result6ResultuNtB2t_5ErrorENCINvXsi_B2t_B2p_B3N_11collect_seqBN_Es0_0E0B6x_ECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !79299 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79336), !dbg !79348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79337), !dbg !79348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79338), !dbg !79348
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !79339, !nonnull !2315, !noundef !2315 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !79339 ; 2 uses
  %i.e = icmp eq ptr %.promoted.i, %i.d, !dbg !79349
  br i1 %i.e, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRdINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB2d_EuINtNtBa_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B2i_INtB2i_10SerializerQINtB3C_10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB56_dEE0NCINvNvBL_12try_for_each4callB2f_B3d_NCINvXsi_B3C_B4L_B5G_11collect_seqINtB1F_3MapB3_B4g_EEs0_0E0E0B3d_ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.i, !dbg !79350

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !79351
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !79338, !noalias !79340, !nonnull !2315, !align !2417, !noundef !2315
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b, !dbg !79350

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.g = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !79352 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !dbg !79353, !alias.scope !79339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !79354, !noalias !79341
  %i.i = load <2 x i64>, ptr %.val.i.i, align 8, !dbg !79355, !noalias !79342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !79356, !noalias !79343
  store ptr %i.g, ptr %i.a, align 8, !dbg !79356, !noalias !79344
  store <2 x i64> %i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !79356, !noalias !79344
  call void @_RINvXsg_NtCs721FSB8TeJg_9rmp_serde6encodeINtB6_26MaybeUnknownLengthCompoundINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtB8_6config13DefaultConfigENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedRdEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a), !dbg !79357, !noalias !79345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !79358, !noalias !79343
  %i.j = load i64, ptr %i.b, align 8, !dbg !79359, !range !2742, !alias.scope !79346, !noalias !79341, !noundef !2315 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, -9223372036854775804, !dbg !79359
  br i1 %.not.i.i, label %bb.d, label %bb.c, !dbg !79360

bb.c:                                             ; preds = %bb.b
end_hunk_0
