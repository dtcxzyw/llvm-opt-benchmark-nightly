Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_semantic-8b57ce3c9490ced2.ruff_python_semantic.53ada49ff6bfddb5-cgu.00?download=true
inline.NumInlined: 672
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel25lookup_attribute_in_scope:bb.a
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit

.loopexit52:                                      ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %.invoke, %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit52
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit52 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef align 8 dereferenceable(144) %i.b) #23
          to label %common.resume unwind label %bb.u

bb.j:                                             ; preds = %bb.d
  %i.y = extractvalue { i32, i32 } %i.t, 0
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.aa = extractvalue { i32, i32 } %i.t, 1       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4
  %.sroa.519.094 = add i64 %.sroa.55.0, -1        ; 2 uses
  %.not4696 = icmp eq i64 %.sroa.519.094, 0
  br i1 %.not4696, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %bb.t
  %.sroa.519.0 = add i64 %.sroa.519.099, -1       ; 2 uses
  %.not46 = icmp eq i64 %.sroa.519.0, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %.sroa.025.0.lcssa = phi i32 [ %i.aa, %bb.k ], [ %i.bh, %bb.l ] ; 2 uses
  %i.aj = load i64, ptr %i.b, align 8, !range !5, !alias.scope !821, !noundef !4
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit

bb.n:                                             ; preds = %._crit_edge
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i49 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i49: ; preds = %bb.n
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.sroa.519.099 = phi i64 [ %.sroa.519.0, %bb.l ], [ %.sroa.519.094, %bb.k ]
  %.sroa.02.0.pn98 = phi ptr [ %.sroa.016.0100, %bb.l ], [ %.sroa.02.0, %bb.k ] ; 2 uses
  %.sroa.025.097 = phi i32 [ %i.bh, %bb.l ], [ %i.aa, %bb.k ] ; 2 uses
  %.sroa.016.0100 = getelementptr inbounds nuw i8, ptr %.sroa.02.0.pn98, i64 16 ; 2 uses
  %i.an = add i32 %.sroa.025.097, -1
  %i.ao = icmp ne i32 %.sroa.025.097, 0
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = zext i32 %i.an to i64                   ; 3 uses
  %i.aq = icmp ugt i64 %i.ac, %i.ap
  br i1 %i.aq, label %bb.q, label %.invoke

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i49, %bb.m, %bb.c, %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i
  %.sroa.0.2 = phi i32 [ 0, %bb.c ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i ], [ 0, %bb.e ], [ %.sroa.025.0.lcssa, %bb.m ], [ %.sroa.025.0.lcssa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.sroa.0.2

bb.q:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw [72 x i8], ptr %i.ae, i64 %i.ap ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i32, ptr %i.as, align 8, !range !6, !noundef !4
  %i.au = icmp eq i32 %i.at, 10
  br i1 %i.au, label %bb.r, label %.loopexit

.invoke:                                          ; preds = %bb.r, %.lr.ph
  %i.av = phi i64 [ %i.ap, %.lr.ph ], [ %i.bb, %bb.r ]
  %i.aw = phi i64 [ %i.ac, %.lr.ph ], [ %i.ag, %bb.r ]
  %i.ax = phi ptr [ @15, %.lr.ph ], [ @64, %bb.r ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax) #20
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !range !13, !noundef !4
  %i.ba = add i32 %i.az, -1
  %i.bb = zext i32 %i.ba to i64                   ; 3 uses
  %i.bc = icmp ugt i64 %i.ag, %i.bb
  br i1 %i.bc, label %bb.s, label %.invoke

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw [120 x i8], ptr %i.ai, i64 %i.bb
  %i.be = load ptr, ptr %.sroa.016.0100, align 8, !nonnull !4, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.02.0.pn98, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !4
  %i.bh = invoke noundef i32 @_RNvMNtCs7bpTdHNYxeX_20ruff_python_semantic5scopeNtB2_5Scope3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bd, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef %i.bg)
          to label %bb.t unwind label %.loopexit52 ; 3 uses

bb.t:                                             ; preds = %bb.s
  %.not47 = icmp eq i32 %i.bh, 0
  br i1 %.not47, label %.loopexit, label %bb.l

bb.u:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27current_statement_parent_id(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdENCNvMs_NtB1D_5modelNtB2y_13SemanticModel21current_statement_ids0EEINtB6_8FuseImplBZ_E8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNvMsg_NtB8_7flattenINtB4E_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBa_7sources10successors10SuccessorsB1z_NCNvMB1B_NtB1B_5Nodes12ancestor_ids0EB3X_INtB1i_6OptionB3X_ENCINvNvXsi_B4E_B4R_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5D_B3X_B72_NCINvNtB8_6filter15filter_try_foldB1z_B3X_B72_NCB2t_s_0NCNvXs_NvB7E_10advance_byINtB8K_6FilterINtB4E_7FlatMapB1f_B5D_B2r_EB9p_ENtB9F_13SpecAdvanceBy15spec_advance_by0E0E0E0B72_EB1D_.exit.i:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq i32 %i.e, 0
  %. = select i1 %.not, ptr null, ptr %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %0, ptr %i.f, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %., ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store ptr null, ptr %.sroa.89.0..sroa_idx, align 8
  store ptr %0, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8, !noalias !834
  store ptr null, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !833, !noalias !835
  %i.g = call noundef i64 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtBc_6option4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdENCNvMs_NtB1l_5modelNtB2g_13SemanticModel21current_statement_ids0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNvMsg_NtB8_7flattenINtB4A_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBa_7sources10successors10SuccessorsB1h_NCNvMB1j_NtB1j_5Nodes12ancestor_ids0EB3T_INtB10_6OptionB3T_ENCINvNvXsi_B4A_B4N_B3c_8try_fold7flattenB5z_B3T_B6Y_NCINvNtB8_6filter15filter_try_foldB1h_B3T_B6Y_NCB2b_s_0NCNvXs_NvB3c_10advance_byINtB8c_6FilterINtB4A_7FlatMapBX_B5z_B29_EB8R_ENtB97_13SpecAdvanceBy15spec_advance_by0E0E0E0B6Y_EB1l_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef range(i64 1, 0) 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx) ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdENCNvMs_NtB1D_5modelNtB2y_13SemanticModel21current_statement_ids0EEINtB6_8FuseImplBZ_E8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNvMsg_NtB8_7flattenINtB4E_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBa_7sources10successors10SuccessorsB1z_NCNvMB1B_NtB1B_5Nodes12ancestor_ids0EB3X_INtB1i_6OptionB3X_ENCINvNvXsi_B4E_B4R_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5D_B3X_B72_NCINvNtB8_6filter15filter_try_foldB1z_B3X_B72_NCB2t_s_0NCNvXs_NvB7E_10advance_byINtB8K_6FilterINtB4E_7FlatMapB1f_B5D_B2r_EB9p_ENtB9F_13SpecAdvanceBy15spec_advance_by0E0E0E0B72_EB1D_.exit.thread.i

_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdENCNvMs_NtB1D_5modelNtB2y_13SemanticModel21current_statement_ids0EEINtB6_8FuseImplBZ_E8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNvMsg_NtB8_7flattenINtB4E_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBa_7sources10successors10SuccessorsB1z_NCNvMB1B_NtB1B_5Nodes12ancestor_ids0EB3X_INtB1i_6OptionB3X_ENCINvNvXsi_B4E_B4R_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5D_B3X_B72_NCINvNtB8_6filter15filter_try_foldB1z_B3X_B72_NCB2t_s_0NCNvXs_NvB7E_10advance_byINtB8K_6FilterINtB4E_7FlatMapB1f_B5D_B2r_EB9p_ENtB9F_13SpecAdvanceBy15spec_advance_by0E0E0E0B72_EB1D_.exit.thread.i: ; preds = %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdENCNvMs_NtB1D_5modelNtB2y_13SemanticModel21current_statement_ids0EEINtB6_8FuseImplBZ_E8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNvMsg_NtB8_7flattenINtB4E_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBa_7sources10successors10SuccessorsB1z_NCNvMB1B_NtB1B_5Nodes12ancestor_ids0EB3X_INtB1i_6OptionB3X_ENCINvNvXsi_B4E_B4R_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5D_B3X_B72_NCINvNtB8_6filter15filter_try_foldB1z_B3X_B72_NCB2t_s_0NCNvXs_NvB7E_10advance_byINtB8K_6FilterINtB4E_7FlatMapB1f_B5D_B2r_EB9p_ENtB9F_13SpecAdvanceBy15spec_advance_by0E0E0E0B72_EB1D_.exit.i
  store ptr null, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !833, !noalias !835
  %i.i = load ptr, ptr %.sroa.89.0..sroa_idx, align 8, !alias.scope !833, !noalias !835, !align !3, !noundef !4 ; 3 uses
  %.not13.i = icmp eq ptr %i.i, null
  br i1 %.not13.i, label %_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdENCNvMs_NtB1Q_5modelNtB2L_13SemanticModel21current_statement_ids0EINtNtNtBa_7sources10successors10SuccessorsB1M_NCNvMB1O_NtB1O_5Nodes12ancestor_ids0EE13iter_try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3H_B5i_INtB1v_6OptionB5i_ENCINvNtB8_6filter15filter_try_foldB1M_B5i_B76_NCB2G_s_0NCNvXs_NvB69_10advance_byINtB7u_6FilterINtB6_7FlatMapB1s_B3H_B2E_EB89_ENtB8p_13SpecAdvanceBy15spec_advance_by0E0E0B76_EB1Q_.exit, label %bb.a

bb.a:                                             ; preds = %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdENCNvMs_NtB1D_5modelNtB2y_13SemanticModel21current_statement_ids0EEINtB6_8FuseImplBZ_E8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNvMsg_NtB8_7flattenINtB4E_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBa_7sources10successors10SuccessorsB1z_NCNvMB1B_NtB1B_5Nodes12ancestor_ids0EB3X_INtB1i_6OptionB3X_ENCINvNvXsi_B4E_B4R_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5D_B3X_B72_NCINvNtB8_6filter15filter_try_foldB1z_B3X_B72_NCB2t_s_0NCNvXs_NvB7E_10advance_byINtB8K_6FilterINtB4E_7FlatMapB1f_B5D_B2r_EB9p_ENtB9F_13SpecAdvanceBy15spec_advance_by0E0E0E0B72_EB1D_.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !838
  store ptr %i.b, ptr %i.a, align 8, !noalias !839
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.promoted.i.i14.i = load i32, ptr %i.j, align 8, !alias.scope !840, !noalias !841
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.m = phi i32 [ %.promoted.i.i14.i, %bb.a ], [ %i.u, %bb.e ] ; 3 uses
  %.sroa.01.0.i.i16.i = phi i64 [ %i.g, %bb.a ], [ %i.v, %bb.e ]
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %.not.i.i.i17.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i17.i, label %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBe_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2Q_NtB2Q_5Nodes12ancestor_ids0EINtNtNtBg_3num7nonzero7NonZerojEINtNtBg_6option6OptionB4g_ENCINvNtBc_6filter15filter_try_foldB2O_B4g_B4M_NCNvMs_NtB2S_5modelNtB64_13SemanticModel21current_statement_idss_0NCNvXs_NvB1j_10advance_byINtB5i_6FilterINtBa_7FlatMapINtB4P_4IterB2O_EB28_NCB5Z_0EB5X_ENtB78_13SpecAdvanceBy15spec_advance_by0E0E0B2S_.exit19.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.k, align 8, !noalias !843, !noundef !4 ; 2 uses
  %i.o = add i32 %i.m, -1
  %i.p = zext i32 %i.o to i64                     ; 3 uses
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20, !noalias !843
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.l, align 8, !noalias !843, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8, !noalias !843, !noundef !4 ; 2 uses
  store i32 %i.u, ptr %i.j, align 8, !alias.scope !840, !noalias !841
  %i.v = call noundef i64 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter15filter_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdINtNtNtBb_3num7nonzero7NonZerojEINtNtBb_6option6OptionB2v_ENCNvMs_NtB1I_5modelNtB3z_13SemanticModel21current_statement_idss_0NCNvXs_NvNtNtNtBX_6traits8iterator8Iterator10advance_byINtBT_6FilterINtNtBV_7flatten7FlatMapINtB34_4IterB1E_EINtNtNtBX_7sources10successors10SuccessorsB1E_NCNvMB1G_NtB1G_5Nodes12ancestor_ids0ENCB3u_0EB3s_ENtB4D_13SpecAdvanceBy15spec_advance_by0E0INtB7_5FnMutTB2v_B1E_EE8call_mutB1I_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.sroa.01.0.i.i16.i, i32 noundef %i.m), !noalias !844 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.b

_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBe_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2Q_NtB2Q_5Nodes12ancestor_ids0EINtNtNtBg_3num7nonzero7NonZerojEINtNtBg_6option6OptionB4g_ENCINvNtBc_6filter15filter_try_foldB2O_B4g_B4M_NCNvMs_NtB2S_5modelNtB64_13SemanticModel21current_statement_idss_0NCNvXs_NvB1j_10advance_byINtB5i_6FilterINtBa_7FlatMapINtB4P_4IterB2O_EB28_NCB5Z_0EB5X_ENtB78_13SpecAdvanceBy15spec_advance_by0E0E0B2S_.exit19.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !838
  br label %_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdENCNvMs_NtB1Q_5modelNtB2L_13SemanticModel21current_statement_ids0EINtNtNtBa_7sources10successors10SuccessorsB1M_NCNvMB1O_NtB1O_5Nodes12ancestor_ids0EE13iter_try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3H_B5i_INtB1v_6OptionB5i_ENCINvNtB8_6filter15filter_try_foldB1M_B5i_B76_NCB2G_s_0NCNvXs_NvB69_10advance_byINtB7u_6FilterINtB6_7FlatMapB1s_B3H_B2E_EB89_ENtB8p_13SpecAdvanceBy15spec_advance_by0E0E0B76_EB1Q_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !838
  br label %bb.g

_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdENCNvMs_NtB1Q_5modelNtB2L_13SemanticModel21current_statement_ids0EINtNtNtBa_7sources10successors10SuccessorsB1M_NCNvMB1O_NtB1O_5Nodes12ancestor_ids0EE13iter_try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3H_B5i_INtB1v_6OptionB5i_ENCINvNtB8_6filter15filter_try_foldB1M_B5i_B76_NCB2G_s_0NCNvXs_NvB69_10advance_byINtB7u_6FilterINtB6_7FlatMapB1s_B3H_B2E_EB89_ENtB8p_13SpecAdvanceBy15spec_advance_by0E0E0B76_EB1Q_.exit: ; preds = %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdENCNvMs_NtB1D_5modelNtB2y_13SemanticModel21current_statement_ids0EEINtB6_8FuseImplBZ_E8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNvMsg_NtB8_7flattenINtB4E_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBa_7sources10successors10SuccessorsB1z_NCNvMB1B_NtB1B_5Nodes12ancestor_ids0EB3X_INtB1i_6OptionB3X_ENCINvNvXsi_B4E_B4R_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5D_B3X_B72_NCINvNtB8_6filter15filter_try_foldB1z_B3X_B72_NCB2t_s_0NCNvXs_NvB7E_10advance_byINtB8K_6FilterINtB4E_7FlatMapB1f_B5D_B2r_EB9p_ENtB9F_13SpecAdvanceBy15spec_advance_by0E0E0E0B72_EB1D_.exit.thread.i, %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBe_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2Q_NtB2Q_5Nodes12ancestor_ids0EINtNtNtBg_3num7nonzero7NonZerojEINtNtBg_6option6OptionB4g_ENCINvNtBc_6filter15filter_try_foldB2O_B4g_B4M_NCNvMs_NtB2S_5modelNtB64_13SemanticModel21current_statement_idss_0NCNvXs_NvB1j_10advance_byINtB5i_6FilterINtBa_7FlatMapINtB4P_4IterB2O_EB28_NCB5Z_0EB5X_ENtB78_13SpecAdvanceBy15spec_advance_by0E0E0B2S_.exit19.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdENCNvMs_NtB1D_5modelNtB2y_13SemanticModel21current_statement_ids0EEINtB6_8FuseImplBZ_E8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNvMsg_NtB8_7flattenINtB4E_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBa_7sources10successors10SuccessorsB1z_NCNvMB1B_NtB1B_5Nodes12ancestor_ids0EB3X_INtB1i_6OptionB3X_ENCINvNvXsi_B4E_B4R_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5D_B3X_B72_NCINvNtB8_6filter15filter_try_foldB1z_B3X_B72_NCB2t_s_0NCNvXs_NvB7E_10advance_byINtB8K_6FilterINtB4E_7FlatMapB1f_B5D_B2r_EB9p_ENtB9F_13SpecAdvanceBy15spec_advance_by0E0E0E0B72_EB1D_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = call fastcc noundef i32 @_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdENCNvMs_NtB1Q_5modelNtB2L_13SemanticModel21current_statement_ids0EINtNtNtBa_7sources10successors10SuccessorsB1M_NCNvMB1O_NtB1O_5Nodes12ancestor_ids0EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3H_uINtNtNtBc_3ops12control_flow11ControlFlowB1M_ENCINvNvB5E_4find5checkB1M_QNCB2G_s_0E0E0B6y_EB1Q_(ptr noalias noundef align 8 dereferenceable(48) %i.f, ptr noalias noundef align 8 dereferenceable(8) %i.c)
  br label %bb.h

bb.h:                                             ; preds = %_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdENCNvMs_NtB1Q_5modelNtB2L_13SemanticModel21current_statement_ids0EINtNtNtBa_7sources10successors10SuccessorsB1M_NCNvMB1O_NtB1O_5Nodes12ancestor_ids0EE13iter_try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3H_B5i_INtB1v_6OptionB5i_ENCINvNtB8_6filter15filter_try_foldB1M_B5i_B76_NCB2G_s_0NCNvXs_NvB69_10advance_byINtB7u_6FilterINtB6_7FlatMapB1s_B3H_B2E_EB89_ENtB8p_13SpecAdvanceBy15spec_advance_by0E0E0B76_EB1Q_.exit, %bb.g
  %.sroa.0.1 = phi i32 [ %i.x, %bb.g ], [ 0, %_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdENCNvMs_NtB1Q_5modelNtB2L_13SemanticModel21current_statement_ids0EINtNtNtBa_7sources10successors10SuccessorsB1M_NCNvMB1O_NtB1O_5Nodes12ancestor_ids0EE13iter_try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3H_B5i_INtB1v_6OptionB5i_ENCINvNtB8_6filter15filter_try_foldB1M_B5i_B76_NCB2G_s_0NCNvXs_NvB69_10advance_byINtB7u_6FilterINtB6_7FlatMapB1s_B3H_B2E_EB89_ENtB8p_13SpecAdvanceBy15spec_advance_by0E0E0B76_EB1Q_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i32 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27match_typing_qualified_name(ptr noalias noundef readonly align 8 captures(none) dereferenceable(472) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  %.sroa.513.i.i.i.i = alloca [24 x i8], align 8  ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 14 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [144 x i8], align 8               ; 11 uses
  %i.f = alloca [144 x i8], align 8               ; 7 uses
  %i.g = alloca [144 x i8], align 8               ; 4 uses
  %i.h = load i64, ptr %1, align 8, !range !5, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8
  %i.p = zext i32 %i.o to i64
  %.sroa.12.0 = select i1 %i.i, i64 %i.m, i64 %i.p
  %.sroa.01.0 = select i1 %i.i, ptr %i.k, ptr %i.j ; 10 uses
  %i.q = icmp eq i64 %.sroa.12.0, 2
  br i1 %i.q, label %bb.b, label %.thread36

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  switch i64 %i.s, label %.thread36 [
    i64 6, label %bb.af
    i64 9, label %bb.ah
    i64 17, label %bb.aj
  ]

.thread36:                                        ; preds = %bb.b, %bb.af, %bb.ah, %bb.an, %bb.ag, %bb.am, %bb.ai, %bb.al, %bb.ak, %bb.aj, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !align !3, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.w, 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 65
  %.sroa.52.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.7.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.8.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %.not.not.not.i.not.not84 = icmp eq i64 %i.w, 0
  br i1 %.not.not.not.i.not.not84, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB2i_13SemanticModel27match_typing_qualified_name0EB2k_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel27match_typing_qualified_name0B8_.exit.i, %.thread36
  %i.af = phi ptr [ %i.ag, %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel27match_typing_qualified_name0B8_.exit.i ], [ %i.u, %.thread36 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !noalias !877, !nonnull !4, !noundef !4 ; 5 uses
  %i.ai = getelementptr i8, ptr %i.af, i64 16
  %.val3.i = load i64, ptr %i.ai, align 8, !noalias !877, !noundef !4 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !879
  call void @_RNvXsz_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_11SegmentsVecNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.e), !noalias !879
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %i.aj = load i64, ptr %i.e, align 8, !range !5, !alias.scope !880, !noalias !881, !noundef !4
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.c, label %.split.i.i.i.i

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !882
  store i64 0, ptr %i.b, align 8, !alias.scope !883, !noalias !884
  store i64 %.val3.i, ptr %.sroa.52.0..sroa_idx3.i.i, align 8, !alias.scope !883, !noalias !884
  store ptr %.val.i, ptr %.sroa.6.0..sroa_idx6.i.i, align 8, !alias.scope !883, !noalias !884
  store i64 %.val3.i, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx6.sroa_idx.i.i, align 8, !alias.scope !883, !noalias !884
  store i64 0, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx6.sroa_idx.i.i, align 8, !alias.scope !883, !noalias !884
  store i64 %.val3.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.i.i, align 8, !alias.scope !883, !noalias !884
  store i32 46, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx6.sroa_idx.i.i, align 8, !alias.scope !883, !noalias !884
  store i32 46, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx6.sroa_idx.i.i, align 4, !alias.scope !883, !noalias !884
  store i8 1, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx6.sroa_idx.i.i, align 8, !alias.scope !883, !noalias !884
  store i8 1, ptr %.sroa.7.0..sroa_idx8.i.i, align 8, !alias.scope !883, !noalias !884
  store i8 0, ptr %.sroa.8.0..sroa_idx10.i.i, align 1, !alias.scope !883, !noalias !884
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcEE11spec_extendCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.b)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.i, !noalias !879

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !882
  br label %_RINvXsF_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_11SegmentsVecINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB19_3str4iter5SplitcEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i

.split.i.i.i.i:                                   ; preds = %.lr.ph, %.noexc5.i.i.i
  %i.al = phi i8 [ %i.bh, %.noexc5.i.i.i ], [ 0, %.lr.ph ]
  %.lcssa5261.i.i.i.i = phi i64 [ %.lcssa5259.i.i.i.i, %.noexc5.i.i.i ], [ 0, %.lr.ph ] ; 3 uses
  %.lcssa4657.i.i.i.i = phi i64 [ %.lcssa4656.i.i.i.i, %.noexc5.i.i.i ], [ 0, %.lr.ph ] ; 5 uses
  %i.am = phi i1 [ %i.bi, %.noexc5.i.i.i ], [ false, %.lr.ph ]
  br i1 %i.am, label %_RINvXsF_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_11SegmentsVecINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB19_3str4iter5SplitcEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.split.i.i.i.i
  %i.an = icmp ult i64 %.val3.i, %.lcssa5261.i.i.i.i
  br i1 %i.an, label %select.unfold.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %bb.h
  %i.ao = phi i64 [ %i.bd, %bb.h ], [ %.lcssa5261.i.i.i.i, %bb.d ] ; 4 uses
  %i.ap = sub nuw i64 %.val3.i, %i.ao             ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ao ; 2 uses
  %i.ar = icmp samesign ult i64 %i.ap, 16
  br i1 %i.ar, label %.preheader.i.i.i.i.i.i.i.i, label %bb.e

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.as = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef range(i64 0, -9223372036854775808) %i.ap)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !879

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ap, %bb.f ]
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.f ]
  %i.at = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i.i, 0
  %i.au = insertvalue { i64, i64 } %i.at, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i.i, %bb.f
  %.sroa.01.05.i.i.i.i.i.i.i.i = phi i64 [ %i.ay, %bb.f ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.01.05.i.i.i.i.i.i.i.i
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !885, !noalias !886, !noundef !4
  %i.ax = icmp eq i8 %i.aw, 46
  br i1 %i.ax, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ay = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ay, %i.ap
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.e
  %.merged.i.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.au, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.as, %bb.e ] ; 2 uses
  %i.az = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i.i, 0
  %i.ba = trunc nuw i64 %i.az to i1
  br i1 %i.ba, label %bb.g, label %select.unfold.i.i.i.i

bb.g:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i
  %i.bb = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bc = add i64 %i.ao, 1
  %i.bd = add i64 %i.bc, %i.bb                    ; 5 uses
  %.not13.i.i.i.i.i.i.i = icmp ugt i64 %i.bd, %.val3.i
  %i.be = add i64 %i.bb, %i.ao                    ; 3 uses
  %or.cond.i.i.i.i.i.not.i.i = icmp ult i64 %i.be, %.val3.i
  br i1 %or.cond.i.i.i.i.i.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  br i1 %.not13.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.be
  %lhsc.i.i = load i8, ptr %i.bf, align 1, !noalias !878
  %i.bg = icmp eq i8 %lhsc.i.i, 46
  br i1 %i.bg, label %select.unfold.i.i.i.i, label %bb.h

select.unfold.i.i.i.i:                            ; preds = %bb.i, %bb.h, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i, %bb.d
  %i.bh = phi i8 [ 1, %bb.d ], [ 1, %bb.h ], [ 1, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i ], [ %i.al, %bb.i ] ; 2 uses
  %.lcssa5259.i.i.i.i = phi i64 [ %.lcssa5261.i.i.i.i, %bb.d ], [ %i.bd, %bb.h ], [ %.val3.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i ], [ %i.bd, %bb.i ] ; 2 uses
  %.lcssa4656.i.i.i.i = phi i64 [ %.lcssa4657.i.i.i.i, %bb.d ], [ %.lcssa4657.i.i.i.i, %bb.h ], [ %.lcssa4657.i.i.i.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i ], [ %i.bd, %bb.i ] ; 2 uses
  %i.bi = phi i1 [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i ], [ false, %bb.i ]
  %.pn.i.i.i.i = phi i64 [ %.val3.i, %bb.d ], [ %.val3.i, %bb.h ], [ %.val3.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i ], [ %i.be, %bb.i ]
  %.sroa.4.1.i.i.i.i.i.i = sub nuw i64 %.pn.i.i.i.i, %.lcssa4657.i.i.i.i
end_hunk_0
