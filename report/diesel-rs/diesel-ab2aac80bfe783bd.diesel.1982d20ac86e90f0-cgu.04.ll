Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.04?download=true
inline.NumInlined: 1806
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableDataENCNvNtB1t_12print_schema13output_schemas_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3g_8for_each4callINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBc_6option6OptionNtNtB1r_15data_structures10ColumnTypeEENCINvMsj_B4m_IB4k_B4j_E14extend_trustedBN_E0E0EB1t_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2547)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2548
  call void @llvm.experimental.noalias.scope.decl(metadata !2549)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2550
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !2551, !noalias !2552, !nonnull !12, !noundef !12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !2551, !noalias !2552, !noundef !12
  %i.v = getelementptr inbounds nuw [192 x i8], ptr %i.s, i64 %i.u
  store ptr %i.s, ptr %i.a, align 8, !noalias !2550
  store ptr %i.v, ptr %i.o, align 8, !noalias !2550
  store <2 x ptr> %i.g, ptr %i.p, align 8, !noalias !2550
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !2550
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !2550
  invoke void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtB1H_16ColumnDefinitionENCNCNvNtB1L_12print_schema13output_schemas_00EE9from_iterB1L_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.e, !noalias !2553

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2550
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2554
  %i.x = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2548
  %i.y = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.l
  br i1 %i.z, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableDataENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_INtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtBU_15data_structures10ColumnTypeEEuNCNvNtBW_12print_schema13output_schemas_0NCINvNvB22_8for_each4callB3q_NCINvMsj_B3t_IB3r_B3q_E14extend_trustedINtB2S_3MapBF_B4W_EE0E0E0EBW_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2553
  resume { ptr, i32 } %i.aa

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableDataENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_INtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtBU_15data_structures10ColumnTypeEEuNCNvNtBW_12print_schema13output_schemas_0NCINvNvB22_8for_each4callB3q_NCINvMsj_B3t_IB3r_B3q_E14extend_trustedINtB2S_3MapBF_B4W_EE0E0E0EBW_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.x, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2553
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableDataENCNvXs0_NtB1t_12print_schemaNtB2H_16TableDefinitionsNtNtBc_3fmt7Display3fmts0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3R_8for_each4callRNtB1p_9TableNameNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5k_3VecB4U_E14extend_trustedBN_E0E0EB1t_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableDataENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_RNtBS_9TableNameuNCNvXs0_NtBW_12print_schemaNtB3P_16TableDefinitionsNtNtBb_3fmt7Display3fmts0_0NCINvNvB22_8for_each4callB3q_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5z_3VecB3q_E14extend_trustedINtB2S_3MapBF_B3H_EE0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 144                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 576
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 144115188075855868       ; 4 uses
  %i.f = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [144 x i8], ptr %0, <2 x i64> %vec.ind
  %wide.gep2 = getelementptr inbounds nuw [144 x i8], ptr %0, <2 x i64> %step.add
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x ptr> %wide.gep, ptr %i.h, align 8, !noalias !2568
  store <2 x ptr> %wide.gep2, ptr %i.i, align 8, !noalias !2568
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !2566

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableDataENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_RNtBS_9TableNameuNCNvXs0_NtBW_12print_schemaNtB3P_16TableDefinitionsNtNtBb_3fmt7Display3fmts0_0NCINvNvB22_8for_each4callB3q_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5z_3VecB3q_E14extend_trustedINtB2S_3MapBF_B3H_EE0E0E0EBW_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.f, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.k = phi i64 [ %i.n, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.o, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.k
  store ptr %i.l, ptr %i.m, align 8, !noalias !2568
  %i.n = add i64 %i.k, 1                          ; 2 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e
  br i1 %i.p, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableDataENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_RNtBS_9TableNameuNCNvXs0_NtBW_12print_schemaNtB3P_16TableDefinitionsNtNtBb_3fmt7Display3fmts0_0NCINvNvB22_8for_each4callB3q_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5z_3VecB3q_E14extend_trustedINtB2S_3MapBF_B3H_EE0E0E0EBW_.exit, label %scalar.ph, !llvm.loop !2567

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableDataENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_RNtBS_9TableNameuNCNvXs0_NtBW_12print_schemaNtB3P_16TableDefinitionsNtNtBb_3fmt7Display3fmts0_0NCINvNvB22_8for_each4callB3q_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5z_3VecB3q_E14extend_trustedINtB2S_3MapBF_B3H_EE0E0E0EBW_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.f, %middle.block ], [ %i.n, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2569
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionENCNCNvNtB1t_12print_schema13output_schemas_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3w_8for_each4callINtNtBc_6option6OptionNtB1p_10ColumnTypeENCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5n_3VecB4z_E14extend_trustedBN_E0E0EB1t_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 16              ; 12 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 10 uses
  %i.i = alloca [120 x i8], align 16              ; 13 uses
  %.sroa.5.i.i = alloca [112 x i8], align 8       ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.m, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8
  %i.n = icmp eq ptr %i.j, %i.l
  br i1 %i.n, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionNtBS_10ColumnTypeEuNCNCNvNtBW_12print_schema13output_schemas_00NCINvNvB2f_8for_each4callB3D_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5C_3VecB3D_E14extend_trustedINtB35_3MapBF_B4i_EE0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.62.0.copyload = load ptr, ptr %.sroa.62.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = udiv exact i64 %i.q, 192
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.7.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.9.0..sroa_idx6.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 113
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 113
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 114
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 114
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  %i.ao = getelementptr i8, ptr %.sroa.4.0.copyload, i64 40
  %i.ap = getelementptr i8, ptr %.sroa.4.0.copyload, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.62.0.copyload, i64 24
  br label %bb.c

.loopexit.i:                                      ; preds = %bb.p, %bb.o, %_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE3getCs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i, %_RNvMs4_NtNtCs3MibkwviICO_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit19.i.i.i.i, %.split.i.i.i.i, %.invoke.i, %bb.c
  %lpad.loopexit26.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.noexc9.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp27.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.c:                                             ; preds = %.loopexit25.i, %bb.b
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.eh, %.loopexit25.i ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ei, %.loopexit25.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [192 x i8], ptr %i.j, i64 %.sroa.01.0.i ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2607)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !2609, !noalias !2610, !nonnull !12, !noundef !12 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !2609, !noalias !2610, !noundef !12 ; 5 uses
  %i.aw = invoke noundef zeroext i1 @_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapReuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyeECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.01.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef %i.av)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !2611

.noexc.i:                                         ; preds = %bb.c
  br i1 %i.aw, label %.loopexit25.i, label %bb.d

bb.d:                                             ; preds = %.noexc.i
  %.val.i.i.i = load ptr, ptr %i.ao, align 8, !noalias !2612, !nonnull !12, !noundef !12 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.ap, align 8, !noalias !2612 ; 2 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.val2.i.i.i, 5
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.idx.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %.val2.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeE6filterNCNCNCNvNtBP_12print_schema13output_schemas_00s_0EBP_.exit.thread8.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.backedge.i.i.i.i.i.i
  %i.ay = phi ptr [ %i.az, %.backedge.i.i.i.i.i.i ], [ %.val.i.i.i, %bb.d ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 2 uses
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !noalias !2613, !nonnull !12, !noundef !12 ; 4 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 8
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !noalias !2613 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2613
  store i32 0, ptr %i.h, align 8, !noalias !2613
  store ptr %i.at, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2613
  store i64 %i.av, ptr %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i, align 8, !noalias !2613
  store i64 0, ptr %.sroa.7.0..sroa_idx5.i.i.i.i.i.i.i, align 8, !noalias !2613
  store i64 %i.av, ptr %.sroa.9.0..sroa_idx6.i.i.i.i.i.i.i, align 8, !noalias !2613
  store i8 1, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2613
  %i.bb = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i.i, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !2614, !nonnull !12, !noundef !12 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 154
  %i.bf = load i8, ptr %i.be, align 2, !range !22, !noalias !2614, !noundef !12
  %cond.i.i.i.i.i.i.i.i = icmp eq i8 %i.bf, 2
  br i1 %cond.i.i.i.i.i.i.i.i, label %_RNvMs4_NtNtCs3MibkwviICO_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 184
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !2615 ; 6 uses
  %i.bi = load i64, ptr %i.bh, align 8, !range !28, !noalias !2615, !noundef !12
  %i.bj = trunc nuw i64 %i.bi to i1
  br i1 %i.bj, label %bb.e, label %_RNvMs4_NtNtCs3MibkwviICO_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !2615
  %i.bm = icmp ult i64 %i.av, %i.bl
  br i1 %i.bm, label %_RNvMs4_NtNtCs3MibkwviICO_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 60
  %i.bo = load i32, ptr %i.bn, align 4, !noalias !2615, !noundef !12
  %i.bp = and i32 %i.bo, 1
  %.not8.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not8.i.i.i.i.i.i.i.i.i, label %_RNvMs4_NtNtCs3MibkwviICO_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.br = load i32, ptr %i.bq, align 8, !noalias !2615, !noundef !12
  %i.bs = and i32 %i.br, 2
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_RNvMs4_NtNtCs3MibkwviICO_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !range !28, !noalias !2615, !noundef !12
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %_RNvMs4_NtNtCs3MibkwviICO_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i.i.i.i.i, label %_RNvMs4_NtNtCs3MibkwviICO_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i

_RNvMs4_NtNtCs3MibkwviICO_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !noalias !2615
  %i.bz = icmp ugt i64 %i.av, %i.by
  br i1 %i.bz, label %_RNvMs4_NtNtCs3MibkwviICO_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i.i.i.i.i.i.i.i, label %_RNvMs4_NtNtCs3MibkwviICO_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i

_RNvMs4_NtNtCs3MibkwviICO_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i.i.i.i.i.i.i.i: ; preds = %_RNvMs4_NtNtCs3MibkwviICO_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2613
  br label %.backedge.i.i.i.i.i.i

_RNvMs4_NtNtCs3MibkwviICO_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_RNvMs4_NtNtCs3MibkwviICO_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i.i.i.i.i, %bb.h, %bb.g, %bb.f, %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i.i.i.i.i) ]
  %i.ca = invoke noundef i64 @_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB48_4SendNtB4s_13RefUnwindSafeEL_EE3get0jECs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @39)
          to label %.noexc16.i unwind label %.loopexit.i, !noalias !2611 ; 3 uses

.noexc16.i:                                       ; preds = %_RNvMs4_NtNtCs3MibkwviICO_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8, !noalias !2616 ; 2 uses
  %i.cd = icmp eq i64 %i.ca, %i.cc
  br i1 %i.cd, label %_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE3getCs2bNgeUs5Jlc_6diesel.exit.i.thread.i.i.i.i.i.i.i, label %_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE3getCs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i, !prof !30

_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE3getCs2bNgeUs5Jlc_6diesel.exit.i.thread.i.i.i.i.i.i.i: ; preds = %.noexc16.i
  store atomic i64 1, ptr %i.cb release, align 8, !noalias !2616
  %i.ce = inttoptr i64 %i.ca to ptr
  store ptr %.val4.i.i.i.i.i.i, ptr %i.t, align 8, !noalias !2614
  store i64 1, ptr %i.f, align 8, !noalias !2614
  store ptr %i.ce, ptr %i.s, align 8, !noalias !2614
  store i8 0, ptr %i.u, align 8, !noalias !2614
  %i.cf = load ptr, ptr %i.bb, align 8, !noalias !2614, !nonnull !12, !noundef !12
  %i.cg = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i.i, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !2614, !nonnull !12, !align !16, !noundef !12 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !range !18, !invariant.load !12, !noalias !2614
  %i.ck = add nsw i64 %i.cj, -1
  %i.cl = and i64 %i.ck, -16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  br label %bb.i

_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE3getCs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc16.i
  invoke void @_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE8get_slowCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noundef nonnull align 8 %.val4.i.i.i.i.i.i, i64 noundef %i.ca, i64 noundef %i.cc)
          to label %.noexc17.i unwind label %.loopexit.i, !noalias !2611

.noexc17.i:                                       ; preds = %_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE3getCs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !range !28, !noalias !2614
  %i.co = trunc nuw i64 %.pre.i.i.i.i.i.i.i to i1
  %i.cp = load ptr, ptr %i.bb, align 8, !noalias !2614, !nonnull !12, !noundef !12
  %i.cq = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i.i, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !2614, !nonnull !12, !align !16, !noundef !12 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !range !18, !invariant.load !12, !noalias !2614
  %i.cu = add nsw i64 %i.ct, -1
  %i.cv = and i64 %i.cu, -16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  br i1 %i.co, label %_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE3getCs2bNgeUs5Jlc_6diesel.exit.i.i._crit_edge.i.i.i.i.i.i, label %bb.j

_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE3getCs2bNgeUs5Jlc_6diesel.exit.i.i._crit_edge.i.i.i.i.i.i: ; preds = %.noexc17.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !noalias !2614
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE3getCs2bNgeUs5Jlc_6diesel.exit.i.i._crit_edge.i.i.i.i.i.i, %_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE3getCs2bNgeUs5Jlc_6diesel.exit.i.thread.i.i.i.i.i.i.i
  %i.cy = phi ptr [ %.val4.i.i.i.i.i.i, %_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE3getCs2bNgeUs5Jlc_6diesel.exit.i.thread.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE3getCs2bNgeUs5Jlc_6diesel.exit.i.i._crit_edge.i.i.i.i.i.i ]
  %i.cz = phi ptr [ %i.cn, %_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE3getCs2bNgeUs5Jlc_6diesel.exit.i.thread.i.i.i.i.i.i.i ], [ %i.cx, %_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE3getCs2bNgeUs5Jlc_6diesel.exit.i.i._crit_edge.i.i.i.i.i.i ]
  %i.da = phi ptr [ %i.ch, %_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE3getCs2bNgeUs5Jlc_6diesel.exit.i.thread.i.i.i.i.i.i.i ], [ %i.cr, %_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE3getCs2bNgeUs5Jlc_6diesel.exit.i.i._crit_edge.i.i.i.i.i.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  br label %bb.k

bb.j:                                             ; preds = %.noexc17.i
  %i.dc = load ptr, ptr %i.s, align 8, !noalias !2614, !nonnull !12, !noundef !12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dd = phi ptr [ %i.cz, %bb.i ], [ %i.cx, %bb.j ]
  %i.de = phi ptr [ %i.da, %bb.i ], [ %i.cr, %bb.j ]
  %i.df = phi i1 [ true, %bb.i ], [ false, %bb.j ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %i.db, %bb.i ], [ %i.dc, %bb.j ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 88
  %i.dh = load ptr, ptr %i.dg, align 8, !invariant.load !12, !noalias !2614, !nonnull !12
  invoke void %i.dh(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %i.dd, ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.0.0.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
          to label %bb.l unwind label %bb.q, !noalias !2613

bb.l:                                             ; preds = %bb.k
  %.sroa.46.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !noalias !2614 ; 5 uses
  %.sroa.57.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !noalias !2614 ; 4 uses
  %i.di = ptrtoint ptr %.sroa.46.0.copyload.i.i.i.i.i.i.i.i to i64 ; 2 uses
  br i1 %i.df, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2617
  store i64 %i.di, ptr %i.e, align 8, !noalias !2617
  %i.dj = icmp eq ptr %.sroa.46.0.copyload.i.i.i.i.i.i.i.i, inttoptr (i64 2 to ptr)
  br i1 %i.dj, label %.noexc9.i.i.i.i.i.i.i.i, label %.noexc10.i.i.i.i.i.i.i.i, !prof !13

bb.n:                                             ; preds = %bb.l
  %.sroa.68.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %i.u, align 8, !noalias !2614
  %i.dk = trunc nuw i8 %.sroa.68.0.copyload.i.i.i.i.i.i.i.i to i1
  br i1 %i.dk, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE9put_valueCs2bNgeUs5Jlc_6diesel(ptr noundef nonnull align 8 %.sroa.57.0.copyload.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 %.sroa.46.0.copyload.i.i.i.i.i.i.i.i)
          to label %_RNCNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s_00Bb_.exitthread-pre-split.i.i.i.i.i.i unwind label %.loopexit.i, !noalias !2611

bb.p:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEECs2bNgeUs5Jlc_6diesel(ptr nonnull %.sroa.46.0.copyload.i.i.i.i.i.i.i.i)
          to label %_RNCNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s_00Bb_.exitthread-pre-split.i.i.i.i.i.i unwind label %.loopexit.i, !noalias !2611

.noexc9.i.i.i.i.i.i.i.i:                          ; preds = %bb.m
  invoke void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCs3MibkwviICO_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #31
          to label %.noexc20.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2611

.noexc20.i:                                       ; preds = %.noexc9.i.i.i.i.i.i.i.i
  unreachable

.noexc10.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i.i.i.i.i.i.i.i) ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.57.0.copyload.i.i.i.i.i.i.i.i, i64 40
  store atomic i64 %i.di, ptr %i.dl release, align 8, !noalias !2618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2617
  br label %_RNCNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s_00Bb_.exitthread-pre-split.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.k
  %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs3MibkwviICO_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtB4_6marker4SyncNtNtNtB4_5panic11unwind_safe10UnwindSafeNtB3c_4SendNtB3v_13RefUnwindSafeEL_EEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(32) %i.f) #30
          to label %.loopexit.split-lp.i unwind label %bb.r, !noalias !2618

bb.r:                                             ; preds = %bb.q
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !2618
  unreachable

_RNCNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s_00Bb_.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.noexc10.i.i.i.i.i.i.i.i, %bb.p, %bb.o
  %.pr.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !2613
  %i.dn = icmp eq i64 %.pr.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2613
  br i1 %i.dn, label %.backedge.i.i.i.i.i.i, label %.loopexit25.i

.backedge.i.i.i.i.i.i:                            ; preds = %_RNCNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s_00Bb_.exitthread-pre-split.i.i.i.i.i.i, %_RNvMs4_NtNtCs3MibkwviICO_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i.i.i.i.i.i.i.i
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.az, %i.ax
  br i1 %.not8.i.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeE6filterNCNCNCNvNtBP_12print_schema13output_schemas_00s_0EBP_.exit.thread8.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeE6filterNCNCNCNvNtBP_12print_schema13output_schemas_00s_0EBP_.exit.thread8.i.i.i: ; preds = %.backedge.i.i.i.i.i.i, %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2612
  call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  %i.do = load i8, ptr %.sroa.5.0.copyload, align 1, !range !20, !noalias !2620, !noundef !12
  %i.dp = icmp eq i8 %i.do, 2
  br i1 %i.dp, label %.split.i.i.i.i, label %.invoke.i

.invoke.i:                                        ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeE6filterNCNCNCNvNtBP_12print_schema13output_schemas_00s_0EBP_.exit.thread8.i.i.i
  invoke fastcc void @_RNvXsa_NtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structuresNtB5_10ColumnTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(120) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ar)
          to label %.invoke.i._RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i_crit_edge unwind label %.loopexit.split-lp.loopexit.i, !noalias !2611

.invoke.i._RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i_crit_edge: ; preds = %.invoke.i
  %.sroa.0.0.copyload2.i.i.pre = load i64, ptr %i.i, align 16, !noalias !2621
  br label %_RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i

.split.i.i.i.i:                                   ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeE6filterNCNCNCNvNtBP_12print_schema13output_schemas_00s_0EBP_.exit.thread8.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2620
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2620
  store ptr %i.aq, ptr %i.b, align 8, !noalias !2620
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !2620
  store ptr %i.dq, ptr %i.v, align 8, !noalias !2620
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !2620
  store ptr %i.dr, ptr %i.w, align 8, !noalias !2620
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !2620
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @24, ptr noundef nonnull %i.b)
          to label %.noexc23.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !2611

.noexc23.i:                                       ; preds = %.split.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2620
  %i.ds = load ptr, ptr %i.x, align 8, !noalias !2620, !nonnull !12, !noundef !12
  %i.dt = load i64, ptr %i.y, align 8, !noalias !2620, !noundef !12
  invoke void @_RNvXNtCs8t5PhLzwZ12_4heck11upper_cameleNtB2_16ToUpperCamelCase19to_upper_camel_case(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef %i.dt)
          to label %bb.t unwind label %bb.s, !noalias !2622

.body.i.i.i.i:                                    ; preds = %bb.w, %bb.u, %bb.s
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.dv, %bb.u ], [ %i.du, %bb.s ], [ %i.eb, %bb.w ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #30
          to label %.loopexit.split-lp.i unwind label %bb.aa, !noalias !2622

bb.s:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i, %.noexc23.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.t:                                             ; preds = %.noexc23.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2620
  invoke fastcc void @_RNvXsa_NtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structuresNtB5_10ColumnTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(120) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ar)
          to label %bb.v unwind label %bb.u, !noalias !2622

bb.u:                                             ; preds = %bb.t
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #30
          to label %.body.i.i.i.i unwind label %bb.aa, !noalias !2622

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aa, ptr noundef nonnull align 16 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !2623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !2623
  %i.dw = load i8, ptr %i.ae, align 16, !range !29, !noalias !2620, !noundef !12
  store i8 %i.dw, ptr %i.af, align 16, !alias.scope !2619, !noalias !2623
  %i.dx = load i8, ptr %i.ag, align 1, !range !29, !noalias !2620, !noundef !12
  store i8 %i.dx, ptr %i.ah, align 1, !alias.scope !2619, !noalias !2623
  %i.dy = load i8, ptr %i.ai, align 2, !range !29, !noalias !2620, !noundef !12
  store i8 %i.dy, ptr %i.aj, align 2, !alias.scope !2619, !noalias !2623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !2623
  %i.dz = load <2 x i64>, ptr %i.a, align 16, !noalias !2620
  %i.ea = load i64, ptr %i.a, align 16, !range !28, !noalias !2620, !noundef !12
  store <2 x i64> %i.dz, ptr %i.i, align 16, !alias.scope !2619, !noalias !2623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2620
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i unwind label %bb.w, !noalias !2622

bb.w:                                             ; preds = %bb.v
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body.i.i.i.i unwind label %bb.x, !noalias !2622

bb.x:                                             ; preds = %bb.w
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !2622
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i unwind label %bb.s, !noalias !2622

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2620
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit19.i.i.i.i unwind label %bb.y, !noalias !2622

bb.y:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.loopexit.split-lp.i unwind label %bb.z, !noalias !2622

bb.z:                                             ; preds = %bb.y
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !2622
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit19.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc24.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !2611

.noexc24.i:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit19.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2620
  br label %_RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i

bb.aa:                                            ; preds = %bb.u, %.body.i.i.i.i
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !2622
  unreachable

_RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i: ; preds = %.invoke.i._RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i_crit_edge, %.noexc24.i
  %.sroa.0.0.copyload2.i.i = phi i64 [ %.sroa.0.0.copyload2.i.i.pre, %.invoke.i._RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i_crit_edge ], [ %i.ea, %.noexc24.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(112) %i.am, i64 112, i1 false), !noalias !2624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2612
  br label %.loopexit25.i

.loopexit25.i:                                    ; preds = %_RNCNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s_00Bb_.exitthread-pre-split.i.i.i.i.i.i, %_RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i, %.noexc.i
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload2.i.i, %_RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i ], [ -1, %.noexc.i ], [ -1, %_RNCNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s_00Bb_.exitthread-pre-split.i.i.i.i.i.i ]
  %i.eg = getelementptr inbounds nuw [120 x i8], ptr %.sroa.10.0.copyload, i64 %.sroa.6.0 ; 2 uses
  store i64 %.sroa.0.0.i.i, ptr %i.eg, align 8, !noalias !2625
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.i.i, i64 112, i1 false), !noalias !2626
  %i.eh = add i64 %.sroa.6.0, 1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  %i.ei = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ej = icmp eq i64 %i.ei, %i.r
  br i1 %i.ej, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionNtBS_10ColumnTypeEuNCNCNvNtBW_12print_schema13output_schemas_00NCINvNvB2f_8for_each4callB3D_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5C_3VecB3D_E14extend_trustedINtB35_3MapBF_B4i_EE0E0E0EBW_.exit, label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.y, %.body.i.i.i.i, %bb.q, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i, %bb.q ], [ %i.ed, %bb.y ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit26.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp27.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.sroa.6.0, ptr %.sroa.0.0.copyload, align 8, !noalias !2611
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionNtBS_10ColumnTypeEuNCNCNvNtBW_12print_schema13output_schemas_00NCINvNvB2f_8for_each4callB3D_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5C_3VecB3D_E14extend_trustedINtB35_3MapBF_B4i_EE0E0E0EBW_.exit: ; preds = %.loopexit25.i, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.eh, %.loopexit25.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2611
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionENCNvNtNtB1t_10migrations11diff_schema20collect_record_types0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB4E_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDB3L_p4ItemTINtNtB62_6borrow3CoweEINtNtBc_6option6OptionRSNtB1p_10ColumnTypeEEEL_EINtNtNtBa_7sources4once4OnceB6H_EEuINtNtNtBc_3ops12control_flow11ControlFlowTB6I_B7q_EENCINvNvXsi_B4E_B4R_B3L_8try_fold7flattenB5D_uB8p_NCINvNvB3L_8find_map5checkB6H_B94_QNCB2O_s_0E0E0E0B8p_EB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(8) %2, ptr noalias noundef align 8 dereferenceable(56) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2653, !noalias !2651, !nonnull !12, !noundef !12 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !2653, !noalias !2651 ; 2 uses
  %i.e = icmp eq ptr %.promoted.i, %i.d
  br i1 %i.e, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2e_8adapters3map12map_try_foldRBJ_INtNtB34_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDB28_p4ItemTINtNtB45_6borrow3CoweEINtNtBa_6option6OptionRSNtBL_10ColumnTypeEEEL_EINtNtNtB2e_7sources4once4OnceB4K_EEuINtNtNtBa_3ops12control_flow11ControlFlowTB4L_B5t_EENCNvNtNtBP_10migrations11diff_schema20collect_record_types0NCINvNvMsg_NtB34_7flattenINtB8q_13FlattenCompatppE13iter_try_fold7flattenB3F_uB6s_NCINvNvXsi_B8q_B8E_B28_8try_fold7flattenB3F_uB6s_NCINvNvB28_8find_map5checkB4K_B77_QNCB7k_s_0E0E0E0E0B6s_EBP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %.sroa.53.0..8.val.sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.66.0..8.val.sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.79.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.sroa.812.0..8.val.sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.p, %.lr.ph.i
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.p ] ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192 ; 3 uses
  store ptr %i.k, ptr %1, align 8, !alias.scope !2653, !noalias !2651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2654
  call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2657
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !2658, !noalias !2659, !nonnull !12, !noundef !12 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !2658, !noalias !2659, !noundef !12 ; 3 uses
  store ptr %i.m, ptr %i.f, align 8, !noalias !2657
  store i64 %i.o, ptr %i.g, align 8, !noalias !2657
  store i64 -1, ptr %i.a, align 8, !noalias !2657
  %i.p = call { ptr, ptr } @_RNvNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema22recursive_record_types(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2659 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2657
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.r = load i64, ptr %i.q, align 8, !range !15, !alias.scope !2658, !noalias !2659, !noundef !12
  %.not.i.i.i = icmp eq i64 %i.r, -1              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !2658, !noalias !2659, !nonnull !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !2658, !noalias !2659
  %.sroa.54.0.i.i.i = select i1 %.not.i.i.i, i64 undef, i64 %i.v ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, ptr null, ptr %i.t ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  call void @llvm.experimental.noalias.scope.decl(metadata !2661)
  call void @llvm.experimental.noalias.scope.decl(metadata !2662)
  %i.y = load i64, ptr %3, align 8, !range !2663, !alias.scope !2664, !noalias !2665, !noundef !12 ; 2 uses
  %i.z = icmp eq i64 %i.y, -4
  br i1 %i.z, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionINtNtB6_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemTINtNtB2N_6borrow3CoweEINtNtBa_6option6OptionRSNtB12_10ColumnTypeEEEL_EINtNtNtB8_7sources4once4OnceB3W_EEuINtNtNtBa_3ops12control_flow11ControlFlowTB3X_B4F_EENCNvNtNtB16_10migrations11diff_schema20collect_record_types0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE13iter_try_fold7flattenB2o_uB5E_NCINvNvXsi_B7D_B7Q_B3i_8try_fold7flattenB2o_uB5E_NCINvNvB3i_8find_map5checkB3W_B6j_QNCB6w_s_0E0E0E0E0B16_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !2667, !noalias !2665, !noundef !12 ; 4 uses
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !2667, !noalias !2665 ; 6 uses
  %i.aa = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.aa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTINtNtB12_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EEEB2R_.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i) ]
  %i.ab = load ptr, ptr %.val1.i.i.i.i.i.i, align 8, !invariant.load !12, !noalias !2668 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.ab(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %bb.f unwind label %bb.h, !noalias !2668

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !17, !invariant.load !12, !noalias !2668 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTINtNtB12_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EEEB2R_.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !18, !invariant.load !12, !noalias !2668
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #33, !noalias !2668
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTINtNtB12_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EEEB2R_.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !17, !invariant.load !12, !noalias !2668 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %.body.i.i.i.i.i.i, label %bb.i

end_hunk_0
