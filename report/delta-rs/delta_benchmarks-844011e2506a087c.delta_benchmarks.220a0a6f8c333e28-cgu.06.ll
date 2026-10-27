Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/delta_benchmarks-844011e2506a087c.delta_benchmarks.220a0a6f8c333e28-cgu.06?download=true
inline.NumInlined: 4054
inline.NumDeleted: 1735
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2S_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs2VbMhdeEr66_16delta_benchmarks:bb.a
bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.u, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_BQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB40_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.x, ptr %i.z, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEERINtNtB1y_3vec3VecTB1t_B1t_EEBQ_EINtB6_20TreeNodeRefContainerB22_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB22_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB53_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3I_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EERIBS_NtB1q_4SortEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5a_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !26, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, <4 x i64> <i64 176, i64 200, i64 224, i64 248>
  store <4 x ptr> %i.ai, ptr %i.b, align 8
  call void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5d_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtBW_3vec3VecB1q_EEINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4g_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !29, !noundef !26
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.a, %bb.m, %bb.h, %bb.e
  %.sink = phi i64 [ 88, %bb.a ], [ 64, %bb.m ], [ 8, %bb.e ], [ 32, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !26, !noundef !26
  tail call void @_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB26_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o, %bb.r, %bb.s, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.q, %bb.d, %bb.c
  ret void

bb.q:                                             ; preds = %bb.a, %bb.a
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.02.0, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.03.0, ptr %i.as, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3X_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.r:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtB6_17TreeNodeContainerB1q_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3N_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.p

bb.s:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3I_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCs8VI8w5SIoU4_15datafusion_expr4udafNtB6_12AggregateUDFNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !26, !noundef !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !26, !align !39, !noundef !26 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !48, !invariant.load !26
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !26, !nonnull !26
  tail call void %i.k(ptr noundef nonnull %i.i, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @138) #42
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCs6Po7BT7Nknu_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE4intoENtB6_8Iterator4folduNCINvNvB3L_8for_each4callB2W_NCINvMsj_NtB1R_3vecINtB4H_3VecB2W_E14extend_trustedBQ_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2062)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !alias.scope !2063 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2063 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2063
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2065)
  %i.b = load i64, ptr %0, align 8, !alias.scope !2066, !noundef !26 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2066, !noundef !26 ; 3 uses
  %i.e = icmp ule i64 %i.b, %i.d
  tail call void @llvm.assume(i1 %i.e)
  %.not6.i.i.i.i = icmp eq i64 %i.b, %i.d
  br i1 %.not6.i.i.i.i, label %_RINvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCs6Po7BT7Nknu_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE4intoENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB2W_NCINvMsj_NtB1R_3vecINtB54_3VecB2W_E14extend_trustedBQ_E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %0, align 8, !alias.scope !2066
  %.not.i.i.i.i = icmp eq i64 %i.d, 1
  %i.g = icmp eq i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !2067, !noalias !2068, !nonnull !26, !align !39, !noundef !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2069
  br i1 %.not.i.i.i.i, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.preheader4.i.i.i

.lr.ph.i.preheader4.i.i.i:                        ; preds = %.lr.ph.i.preheader.i.i.i
  invoke void @_RNvXs2_NtNtCs2pqxYH9ZEk8_3std3ffi6os_strNtB5_8OsStringINtNtCsbvkFyIu7lgC_4core7convert4FromRNtNtCs6Po7BT7Nknu_5alloc6string6StringE4fromCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %.lr.ph.i.peel.next.i.i.i unwind label %.split.loopexit.split-lp.i.i.i, !noalias !2070

.lr.ph.i.peel.next.i.i.i:                         ; preds = %.lr.ph.i.preheader4.i.i.i
  unreachable

.lr.ph.i.us.i.i.i:                                ; preds = %.lr.ph.i.preheader.i.i.i
  invoke void @_RNvXs2_NtNtCs2pqxYH9ZEk8_3std3ffi6os_strNtB5_8OsStringINtNtCsbvkFyIu7lgC_4core7convert4FromRNtNtCs6Po7BT7Nknu_5alloc6string6StringE4fromCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCs6Po7BT7Nknu_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMs0_B5R_B5O_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsj_NtB3D_3vecINtB8d_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6r_EE0E0E0E0B5O_E0B5O_ECs2VbMhdeEr66_16delta_benchmarks.exit.loopexit.split.us.i.i.i unwind label %.split.loopexit.split-lp.i.i.i, !noalias !2070

_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCs6Po7BT7Nknu_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMs0_B5R_B5O_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsj_NtB3D_3vecINtB8d_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6r_EE0E0E0E0B5O_E0B5O_ECs2VbMhdeEr66_16delta_benchmarks.exit.loopexit.split.us.i.i.i: ; preds = %.lr.ph.i.us.i.i.i
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5.0.copyload.i.i, i64 %.sroa.4.0.copyload.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2071
  %i.j = add i64 %.sroa.4.0.copyload.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2069
  br label %_RINvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCs6Po7BT7Nknu_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE4intoENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB2W_NCINvMsj_NtB1R_3vecINtB54_3VecB2W_E14extend_trustedBQ_E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

.split.loopexit.split-lp.i.i.i:                   ; preds = %.lr.ph.i.us.i.i.i, %.lr.ph.i.preheader4.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !2070
  resume { ptr, i32 } %lpad.loopexit.split-lp.i.i.i

_RINvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCs6Po7BT7Nknu_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE4intoENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB2W_NCINvMsj_NtB1R_3vecINtB54_3VecB2W_E14extend_trustedBQ_E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCs6Po7BT7Nknu_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMs0_B5R_B5O_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsj_NtB3D_3vecINtB8d_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6r_EE0E0E0E0B5O_E0B5O_ECs2VbMhdeEr66_16delta_benchmarks.exit.loopexit.split.us.i.i.i
  %.val3.i.i.i.i = phi i64 [ %.sroa.4.0.copyload.i.i, %bb.a ], [ %i.j, %_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCs6Po7BT7Nknu_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMs0_B5R_B5O_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsj_NtB3D_3vecINtB8d_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6r_EE0E0E0E0B5O_E0B5O_ECs2VbMhdeEr66_16delta_benchmarks.exit.loopexit.split.us.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.val3.i.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !2070
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1i_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB27_8dfschemaNtB4G_8DFSchema4iter0ENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB27_5error15DataFusionErrorEEB86_8try_folduNCINvNvB86_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowBbm_ENcNtBc5_5Break0E0Bc5_E0IBc6_Bc5_EECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i.i = alloca [104 x i8], align 8 ; 5 uses
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [112 x i8], align 16              ; 9 uses
  %i.d = alloca [112 x i8], align 16              ; 9 uses
  %i.e = alloca [112 x i8], align 16              ; 7 uses
  %i.f = alloca [328 x i8], align 8               ; 5 uses
  %i.g = alloca [112 x i8], align 16              ; 9 uses
  %i.h = alloca [328 x i8], align 8               ; 6 uses
  %i.i = alloca [112 x i8], align 16              ; 9 uses
  %.sroa.4.i.i.i.i = alloca [40 x i8], align 8    ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2107, !noundef !26 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.j, align 8, !alias.scope !2107 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i.i, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1e_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB23_8dfschemaNtB4C_8DFSchema4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTIB1E_RB1Z_ERB3e_EINtNtBc_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtB23_5error15DataFusionErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB8c_B6V_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB98_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B91_EIB6A_NtNtBc_7convert10InfallibleB7E_EEB5d_8try_folduNCINvNvB5d_12try_for_each4callB6V_B8Q_NcNtB8Q_5Break0E0B8Q_E0E0B8b_ECs2VbMhdeEr66_16delta_benchmarks.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !2107, !nonnull !26, !noundef !26
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !2107, !nonnull !26, !noundef !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.i.sroa.7.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.6.i.sroa.8.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.616.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.619.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.89.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.67.0..sroa_idx8.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  %.sroa.4.48..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 40
  %i.y = load ptr, ptr %i.n, align 8, !alias.scope !2108, !noalias !2109, !nonnull !26, !align !39, !noundef !26
  %i.z = load ptr, ptr %i.s, align 8, !nonnull !26, !align !39
  %i.aa = load ptr, ptr %i.t, align 8, !nonnull !26, !align !33 ; 2 uses
  %i.ab = load ptr, ptr %i.u, align 8, !nonnull !26, !align !39
  %i.ac = load ptr, ptr %i.v, align 8, !nonnull !26, !align !39 ; 4 uses
  %i.ad = load ptr, ptr %i.s, align 8, !nonnull !26, !align !39
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 15
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.t, %.lr.ph.i.i
  %i.ah = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.t ] ; 3 uses
  %i.ai = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ai, ptr %i.j, align 8, !alias.scope !2107
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i.i.i, i64 %i.ah ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i.i.i, i64 %i.ah ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  call void @llvm.experimental.noalias.scope.decl(metadata !2111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2112
  %i.al = load i64, ptr %i.aj, align 8, !range !38, !alias.scope !2113, !noalias !2112, !noundef !26
  %.not.i.i.i.i = icmp eq i64 %i.al, 3
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr null, ptr %i.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !2114)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2115
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2108)
  call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2117
  %i.am = load ptr, ptr %i.ak, align 8, !alias.scope !2118, !noalias !2112, !nonnull !26, !noundef !26 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 3 uses
  call void @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6removeBO_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([328 x i8]) align 8 captures(none) dereferenceable(328) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an), !noalias !2117
  %i.ao = load i64, ptr %i.h, align 8, !range !45, !noalias !2117, !noundef !26
  %.not.i.i.i.i.i = icmp eq i64 %i.ao, 69
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.f, ptr noundef nonnull align 8 dereferenceable(328) %i.h, i64 328, i1 false), !noalias !2117
  %i.ap = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.aa)
          to label %bb.g unwind label %bb.q, !noalias !2117

bb.d:                                             ; preds = %bb.b
  %i.aq = load i64, ptr %i.ac, align 8, !range !31, !noalias !2117, !noundef !26
  %.not21.i.i.i.i.i = icmp eq i64 %i.aq, -9223372036854775808
  br i1 %.not21.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2117
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac), !noalias !2117
  %i.ar = load i32, ptr %i.af, align 8, !range !85, !noalias !2117, !noundef !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !noalias !2117
  store i32 %i.ar, ptr %i.x, align 8, !noalias !2117
  call void @_RNvMs5_NtCsjHlmExTLNuX_14datafusion_sql7plannerNtB5_15IdentNormalizer9normalize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !noalias !2117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2117
  call void @_RINvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6Column3newNtNtCs6Po7BT7Nknu_5alloc6string6StringRB11_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %.sroa.67.0..sroa_idx8.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an), !noalias !2117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2117
  store i64 5, ptr %i.c, align 16, !noalias !2117
  br label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs4_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnINtNtCsbvkFyIu7lgC_4core7convert4FromTINtNtB12_6option6OptionRNtNtB7_15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE4from(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %.sroa.67.0..sroa_idx8.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) %..i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak), !noalias !2119
  store i64 5, ptr %i.c, align 16, !noalias !2117
  br label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %i.ap, align 8, !noalias !2117, !nonnull !26, !noundef !26
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE11sql_to_exprCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.at, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ab), !noalias !2115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2117
  %i.au = load i64, ptr %i.g, align 16, !range !86, !noalias !2115, !noundef !26 ; 4 uses
  %i.av = icmp eq i64 %i.au, 37
  %.sroa.6.i.sroa.7.0.copyload3.i.i.i.i = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx2.i.i.i.i, align 16, !noalias !2115 ; 3 uses
  %.sroa.6.i.sroa.8.0.copyload7.i.i.i.i = load i64, ptr %.sroa.6.i.sroa.8.0..sroa_idx6.i.i.i.i, align 8, !noalias !2115 ; 2 uses
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !2115
  %.sroa.6.i.sroa.7.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %.sroa.6.i.sroa.7.0.copyload3.i.i.i.i, ptr %.sroa.6.i.sroa.7.0..sroa_idx4.i.i.i.i, align 16, !noalias !2109
  %.sroa.6.i.sroa.8.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %.sroa.6.i.sroa.8.0.copyload7.i.i.i.i, ptr %.sroa.6.i.sroa.8.0..sroa_idx8.i.i.i.i, align 8, !noalias !2109
  br label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aw = icmp ne i64 %i.au, 35
  call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp eq i64 %i.au, 34
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.6.i.sroa.7.0.copyload3.i.i.i.i, null
  %or.cond.i.i.i.i = select i1 %i.ax, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ay = atomicrmw add ptr %i.am, i64 1 monotonic, align 8, !noalias !2117
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.6.0.i.i.i.i = phi ptr [ %.sroa.6.i.sroa.7.0.copyload3.i.i.i.i, %bb.i ], [ %i.am, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2117
  store i64 %i.au, ptr %i.d, align 16, !noalias !2117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !2115
  store ptr %.sroa.6.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16, !noalias !2117
  store i64 %.sroa.6.i.sroa.8.0.copyload7.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !2117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.616.0..sroa_idx.i.i.i.i.i, i64 64, i1 false), !noalias !2115
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.aa)
          to label %bb.l unwind label %bb.o, !noalias !2117

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  call void @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr11expr_schemaNtNtB4_4expr4ExprNtB2_13ExprSchemable7cast_to(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.e, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb, ptr noundef nonnull %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @153), !noalias !2115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2117
  %i.bc = load i64, ptr %i.e, align 16, !range !86, !noalias !2115, !noundef !26 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 37
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !2115
  br label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.89.0..sroa_idx10.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.619.0..sroa_idx.i.i.i.i.i, i64 64, i1 false), !noalias !2115
  store i64 %i.bc, ptr %i.c, align 16, !noalias !2117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67.0..sroa_idx8.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !2115
  br label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i

_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i: ; preds = %bb.m, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i.i.i.i, i64 40, i1 false), !noalias !2109
  br label %.loopexit.i.i

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.d) #38
          to label %common.resume.i.i.i.i unwind label %bb.p, !noalias !2117

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !2117
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.s, %bb.q, %bb.o
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.bk, %bb.s ], [ %i.bg, %bb.q ], [ %i.be, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.q:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(328) %i.f) #38
          to label %common.resume.i.i.i.i unwind label %bb.p, !noalias !2117

_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.n, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2117
  call void @_RINvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4Expr5aliasRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.i, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an), !noalias !2120
  %.sroa.0.0.copyload.pre.i.i.i.i = load i64, ptr %i.i, align 16, !noalias !2109 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i.i.i.i, i64 40, i1 false), !noalias !2109
  %i.bh = icmp eq i64 %.sroa.0.0.copyload.pre.i.i.i.i, 37
  br i1 %i.bh, label %.loopexit.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i

.loopexit.i.i:                                    ; preds = %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i
  %i.bi = load i64, ptr %3, align 8, !range !28, !alias.scope !2121, !noalias !2122, !noundef !26
  %i.bj = icmp eq i64 %i.bi, 20
  br i1 %i.bj, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i, label %bb.r

bb.r:                                             ; preds = %.loopexit.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %3)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i unwind label %bb.s, !noalias !2123

bb.s:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i.i.i, i64 40, i1 false), !noalias !2124
  br label %common.resume.i.i.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i: ; preds = %bb.r, %.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i.i.i, i64 40, i1 false), !noalias !2124
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2112
  br label %.loopexit14.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i.i.i.i, i64 40, i1 false), !noalias !2112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.48..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.r, i64 64, i1 false), !noalias !2112
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2112
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.pre.i.i.i.i, 38
  br i1 %.not.i.i.i, label %bb.t, label %.loopexit14.i.i

.loopexit14.i.i:                                  ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i
  %.sroa.03.011.i.i = phi i64 [ 37, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i ], [ %.sroa.0.0.copyload.pre.i.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.i.i.i.i.i, i64 104, i1 false), !noalias !2125
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1e_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB23_8dfschemaNtB4C_8DFSchema4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTIB1E_RB1Z_ERB3e_EINtNtBc_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtB23_5error15DataFusionErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB8c_B6V_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB98_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B91_EIB6A_NtNtBc_7convert10InfallibleB7E_EEB5d_8try_folduNCINvNvB5d_12try_for_each4callB6V_B8Q_NcNtB8Q_5Break0E0B8Q_E0E0B8b_ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.t:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTRINtNtBa_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEETIB12_RB1n_EB2w_EuINtNtNtBa_3ops12control_flow11ControlFlowIB48_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtB1r_8dfschemaNtB5H_8DFSchema4iter0NCIB2_B3P_INtNtBa_6result6ResultB4R_NtNtB1r_5error15DataFusionErrorEuB47_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIBaK_INtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EIBbf_B2x_EEB5C_EB7s_EIB6s_NtNtBa_7convert10InfallibleB6R_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcG_12try_for_each4callB4R_B4M_NcNtB4M_5Break0E0B4M_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %exitcond.not.i.i = icmp eq i64 %i.ai, %i.l
  br i1 %exitcond.not.i.i, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1e_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB23_8dfschemaNtB4C_8DFSchema4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTIB1E_RB1Z_ERB3e_EINtNtBc_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtB23_5error15DataFusionErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB8c_B6V_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB98_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B91_EIB6A_NtNtBc_7convert10InfallibleB7E_EEB5d_8try_folduNCINvNvB5d_12try_for_each4callB6V_B8Q_NcNtB8Q_5Break0E0B8Q_E0E0B8b_ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1e_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB23_8dfschemaNtB4C_8DFSchema4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTIB1E_RB1Z_ERB3e_EINtNtBc_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtB23_5error15DataFusionErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB8c_B6V_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB98_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B91_EIB6A_NtNtBc_7convert10InfallibleB7E_EEB5d_8try_folduNCINvNvB5d_12try_for_each4callB6V_B8Q_NcNtB8Q_5Break0E0B8Q_E0E0B8b_ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.t, %bb.a, %.loopexit14.i.i
  %storemerge.i.i = phi i64 [ %.sroa.03.011.i.i, %.loopexit14.i.i ], [ 38, %bb.a ], [ 38, %bb.t ]
  store i64 %storemerge.i.i, ptr %0, align 16, !alias.scope !2126
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB2S_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins_0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5J_7HashSetRNtNtB1w_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB6s_E6extendBX_E0ENtNtB7I_8iterator8Iterator4folduNCINvNvB8r_8for_each4callTB6s_uENCINvXs1i_NtB5L_3mapINtB9D_7HashMapB6s_uB6P_EIB7E_B9m_E6extendBN_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB2O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRNtNtB1s_6string6StringTB6r_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB75_7HashSetB6r_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5A_7collect6ExtendB6r_E6extendBN_E0NCINvNvB5w_8for_each4callB6O_NCINvXs1i_NtB77_3mapINtB9Y_7HashMapB6r_uB7S_EIB8H_B6O_E6extendIBO_BN_B6W_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.i
  %.val10.i.i = load ptr, ptr %i.f, align 8, !noalias !2131, !nonnull !26, !noundef !26
  %i.g = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 16
  %i.h = tail call noundef zeroext i1 @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapRNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) ; 0 uses
  %i.i = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.e
  br i1 %i.j, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB2O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRNtNtB1s_6string6StringTB6r_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB75_7HashSetB6r_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5A_7collect6ExtendB6r_E6extendBN_E0NCINvNvB5w_8for_each4callB6O_NCINvXs1i_NtB77_3mapINtB9Y_7HashMapB6r_uB7S_EIB8H_B6O_E6extendIBO_BN_B6W_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.c

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB2O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRNtNtB1s_6string6StringTB6r_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB75_7HashSetB6r_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5A_7collect6ExtendB6r_E6extendBN_E0NCINvNvB5w_8for_each4callB6O_NCINvXs1i_NtB77_3mapINtB9Y_7HashMapB6r_uB7S_EIB8H_B6O_E6extendIBO_BN_B6W_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0ENCINvNtB1v_5utils19find_exprs_in_exprsNCINvB53_20find_aggregate_exprsBX_E0BX_E0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB1t_4ExprENCINvNvMsg_NtB8_7flattenINtB7N_13FlattenCompatppE9iter_fold7flattenB6T_B6T_NCINvNvXsi_B7N_B80_B6g_4fold7flattenINtNtB6W_9into_iter8IntoIterB7q_EB6T_NCB50_s_0E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !26, !noundef !26 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !26, !noundef !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2158
  %i.j = icmp eq ptr %i.e, %i.g
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !2159
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 7
  %.sroa.6.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !2160
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2e_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB1p_4ExprENCINvB6_8map_foldRB64_B5x_B5x_NCINvNtB1r_5utils19find_exprs_in_exprsNCINvB6P_20find_aggregate_exprsBN_E0BN_E0NCINvNvMsg_NtB8_7flattenINtB8c_13FlattenCompatppE9iter_fold7flattenB5x_B5x_NCINvNvXsi_B8c_B8p_B4U_4fold7flattenINtNtB5A_9into_iter8IntoIterB64_EB5x_NCB6M_s_0E0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.d:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortRNtBX_4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1F_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0NCIB2_B1E_B1P_B1P_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB5A_20find_aggregate_exprsINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0B6B_E0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE9iter_fold7flattenB1P_B1P_NCINvNvXsi_B7D_B7Q_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1S_9into_iter8IntoIterB1F_EB1P_NCB5x_s_0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortRNtBX_4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1F_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0NCIB2_B1E_B1P_B1P_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB5A_20find_aggregate_exprsINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0B6B_E0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE9iter_fold7flattenB1P_B1P_NCINvNvXsi_B7D_B7Q_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1S_9into_iter8IntoIterB1F_EB1P_NCB5x_s_0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [128 x i8], ptr %i.e, i64 %.sroa.01.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2161
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr5utils18find_exprs_in_exprNCINvB2_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1C_5slice4iter4IterNtNtB4_4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB37_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortRNtBX_4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1F_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0NCIB2_B1E_B1P_B1P_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB5A_20find_aggregate_exprsINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0B6B_E0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE9iter_fold7flattenB1P_B1P_NCINvNvXsi_B7D_B7Q_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1S_9into_iter8IntoIterB1F_EB1P_NCB5x_s_0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.e, !noalias !2163

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #38
          to label %.body.i.i.i unwind label %bb.f, !noalias !2163

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !2163
  unreachable

.body.i.i.i:                                      ; preds = %bb.e
  resume { ptr, i32 } %i.q

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortRNtBX_4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1F_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0NCIB2_B1E_B1P_B1P_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB5A_20find_aggregate_exprsINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0B6B_E0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE9iter_fold7flattenB1P_B1P_NCINvNvXsi_B7D_B7Q_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1S_9into_iter8IntoIterB1F_EB1P_NCB5x_s_0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2162
  %.sroa.4.24.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !2161
  %.sroa.6.24.copyload.i.i.i.i = load ptr, ptr %.sroa.6.24..sroa_idx.i.i.i.i, align 8, !noalias !2161, !nonnull !26, !noundef !26 ; 3 uses
  %.sroa.7.24.copyload.i.i.i.i = load i64, ptr %.sroa.7.24..sroa_idx.i.i.i.i, align 8, !noalias !2161 ; 2 uses
  %i.s = icmp ult i64 %.sroa.7.24.copyload.i.i.i.i, 82351536043346213
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %.sroa.6.24.copyload.i.i.i.i, i64 %.sroa.7.24.copyload.i.i.i.i
  store ptr %.sroa.6.24.copyload.i.i.i.i, ptr %i.o, align 8, !noalias !2164
  store ptr %.sroa.6.24.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2164
  store i64 %.sroa.4.24.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2164
  store ptr %i.t, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2164
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBX_EQNCINvNtB11_5utils19find_exprs_in_exprsNCINvB31_20find_aggregate_exprsINtNtNtB1N_8adapters3map3MapINtNtNtB1P_5slice4iter4IterNtBZ_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5e_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0B43_Es_0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull %3), !noalias !2160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2161
  %i.u = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.n
  br i1 %i.v, label %bb.g, label %bb.d

bb.g:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortRNtBX_4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1F_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0NCIB2_B1E_B1P_B1P_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB5A_20find_aggregate_exprsINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0B6B_E0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE9iter_fold7flattenB1P_B1P_NCINvNvXsi_B7D_B7Q_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1S_9into_iter8IntoIterB1F_EB1P_NCB5x_s_0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2165
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2e_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB1p_4ExprENCINvB6_8map_foldRB64_B5x_B5x_NCINvNtB1r_5utils19find_exprs_in_exprsNCINvB6P_20find_aggregate_exprsBN_E0BN_E0NCINvNvMsg_NtB8_7flattenINtB8c_13FlattenCompatppE9iter_fold7flattenB5x_B5x_NCINvNvXsi_B8c_B8p_B4U_4fold7flattenINtNtB5A_9into_iter8IntoIterB64_EB5x_NCB6M_s_0E0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2e_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB1p_4ExprENCINvB6_8map_foldRB64_B5x_B5x_NCINvNtB1r_5utils19find_exprs_in_exprsNCINvB6P_20find_aggregate_exprsBN_E0BN_E0NCINvNvMsg_NtB8_7flattenINtB8c_13FlattenCompatppE9iter_fold7flattenB5x_B5x_NCINvNvXsi_B8c_B8p_B4U_4fold7flattenINtNtB5A_9into_iter8IntoIterB64_EB5x_NCB6M_s_0E0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2158
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEIBO_IBY_IB1e_IB1E_NtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1e_INtNtB23_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2Z_8dfschemaNtB5i_8DFSchema4iter0EENCINvMs8_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB63_13SubqueryAlias7try_newB2V_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7v_8for_each4callNtNtB67_4expr4ExprNCINvMsj_NtB23_3vecINtB8Z_3VecB8y_E14extend_trustedBN_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = alloca [56 x i8], align 8                ; 10 uses
  %i.f = alloca [56 x i8], align 8                ; 8 uses
  %i.g = alloca [112 x i8], align 16              ; 4 uses
  %.sroa.0.i.i.i.i = alloca [80 x i8], align 8    ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 5 uses
  %i.i = alloca [112 x i8], align 16              ; 10 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 2 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE11insert_fullCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.cn = sub nsw i64 %.sroa.0.0.i.i.i, %i.cf     ; 2 uses
  %i.co = icmp ugt i64 %i.cn, 1
  br i1 %i.co, label %bb.t, label %._crit_edge.i.i14

._crit_edge.i.i14:                                ; preds = %.noexc4.i, %bb.s
  %i.cp = phi i64 [ %i.cf, %bb.s ], [ %.pre9.i, %.noexc4.i ]
  invoke void @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.cp, i64 noundef 1, i64 noundef 8, i64 noundef 112)
          to label %._RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCs2VbMhdeEr66_16delta_benchmarks.exit_crit_edge.i unwind label %bb.x, !noalias !5599

._RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCs2VbMhdeEr66_16delta_benchmarks.exit_crit_edge.i: ; preds = %._crit_edge.i.i14
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !5600
  br label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cq = invoke { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.cf, i64 noundef %i.cn, i64 noundef 8, i64 noundef 112)
          to label %.noexc4.i unwind label %bb.x, !noalias !5599

.noexc4.i:                                        ; preds = %bb.t
  %i.cr = extractvalue { i64, i64 } %i.cq, 0
  %i.cs = icmp eq i64 %i.cr, -9223372036854775807
  %.pre9.i = load i64, ptr %i.e, align 8, !alias.scope !5597 ; 2 uses
  br i1 %i.cs, label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCs2VbMhdeEr66_16delta_benchmarks.exit.i, label %._crit_edge.i.i14

_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.noexc4.i, %._RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCs2VbMhdeEr66_16delta_benchmarks.exit_crit_edge.i, %bb.r
  %i.ct = phi i64 [ %.pre.i, %._RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCs2VbMhdeEr66_16delta_benchmarks.exit_crit_edge.i ], [ %.pre9.i, %.noexc4.i ], [ %i.cf, %bb.r ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !5597
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %1, ptr %i.cu, align 8, !noalias !5601
  %i.cv = load i64, ptr %0, align 8, !range !47, !alias.scope !5600, !noundef !26
  %i.cw = icmp eq i64 %i.ct, %i.cv
  br i1 %i.cw, label %bb.u, label %bb.z

bb.u:                                             ; preds = %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCs2VbMhdeEr66_16delta_benchmarks.exit.i
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE8grow_oneCs8ojAJGM8ADl_16datafusion_proto(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.z unwind label %bb.v, !noalias !5602

bb.v:                                             ; preds = %bb.u
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %.body unwind label %bb.w, !noalias !5599

bb.w:                                             ; preds = %bb.v
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !5599
  unreachable

bb.x:                                             ; preds = %bb.t, %._crit_edge.i.i14
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b) #38
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.z:                                             ; preds = %bb.u, %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.db = load ptr, ptr %i.c, align 8, !alias.scope !5600, !nonnull !26, !noundef !26
  %i.dc = getelementptr inbounds nuw [112 x i8], ptr %i.db, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dc, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !5599
  %i.dd = add i64 %i.ct, 1
  store i64 %i.dd, ptr %i.e, align 8, !alias.scope !5600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

.body:                                            ; preds = %bb.x, %bb.v, %bb.aa
  %eh.lpad-body17 = phi { ptr, i32 } [ %i.de, %bb.aa ], [ %i.cz, %bb.x ], [ %i.cx, %bb.v ]
  resume { ptr, i32 } %eh.lpad-body17

bb.aa:                                            ; preds = %bb.o, %bb.b, %bb.h
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(104) %2) #38
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE7reserveCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5607, !noundef !26
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECs2VbMhdeEr66_16delta_benchmarks.exit, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.a, align 8, !noundef !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !26, !noundef !26
  %i.i = tail call { i64, i64 } @_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECs8ojAJGM8ADl_16datafusion_proto(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef %i.f, i1 noundef zeroext true) ; 0 uses
  br label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  %i.j = load i64, ptr %0, align 8, !range !47, !noundef !26
  %i.k = load i64, ptr %i.a, align 8, !noundef !26 ; 5 uses
  %i.l = icmp ult i64 %i.k, 82351536043346213
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nsw i64 %i.j, %i.k
  %i.n = icmp ugt i64 %1, %i.m
  br i1 %i.n, label %bb.c, label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !5608, !noundef !26
  %i.q = load i64, ptr %i.b, align 8, !alias.scope !5608, !noundef !26
  %i.r = add i64 %i.q, %i.p
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 82351536043346212)
  %i.s = sub nsw i64 %.sroa.0.0.i.i, %i.k         ; 2 uses
  %i.t = icmp ugt i64 %i.s, %1
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %bb.c
  %i.u = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.k, %bb.c ]
  tail call void @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.u, i64 noundef range(i64 1, 0) %1, i64 noundef 8, i64 noundef 112)
  br label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.c
  %i.v = tail call { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k, i64 noundef %i.s, i64 noundef 8, i64 noundef 112)
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = icmp eq i64 %i.w, -9223372036854775807
  br i1 %i.x, label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCs2VbMhdeEr66_16delta_benchmarks.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !5608
  br label %bb.d

_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.e, %bb.d, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECs2VbMhdeEr66_16delta_benchmarks.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMsi_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8BTreeMapjINtNtBb_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE6insertCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.b, align 8, !noalias !5617
  %i.g = load ptr, ptr %0, align 8, !alias.scope !5616, !noundef !26 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5617
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !5616, !noundef !26
  invoke void @_RINvMs_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutjINtNtBb_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB1i_14LeafOrInternalE11search_treejECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.g, i64 noundef %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8, !range !56, !noalias !5617, !noundef !26
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.1310.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %.sroa.11.16.copyload = load ptr, ptr %i.l, align 8, !noalias !5616
  %.sroa.13.16.copyload = load i64, ptr %.sroa.13.16..sroa_idx, align 8, !noalias !5616
  %.sroa.1310.16.copyload = load ptr, ptr %.sroa.1310.16..sroa_idx, align 8, !noalias !5616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5617
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %.sroa.7.8.copyload5 = load i64, ptr %i.l, align 8, !noalias !5616
  %.sroa.11.8.copyload7 = load ptr, ptr %.sroa.13.16..sroa_idx, align 8, !noalias !5616
  %.sroa.13.8.copyload9 = load i64, ptr %.sroa.1310.16..sroa_idx, align 8, !noalias !5616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.7.8.copyload5, ptr %i.e, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.11.8.copyload7, ptr %.sroa.11.8..sroa_idx, align 8
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.13.8.copyload9, ptr %.sroa.13.8..sroa_idx, align 8
  %.sroa.1310.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %0, ptr %.sroa.1310.8..sroa_idx, align 8
  %i.m = call noundef nonnull ptr @_RNvMs7_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryjINtNtBd_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE6insertCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.1310.0.ph = phi ptr [ undef, %bb.a ], [ %.sroa.1310.16.copyload, %bb.c ]
  %.sroa.13.0.ph = phi i64 [ undef, %bb.a ], [ %.sroa.13.16.copyload, %bb.c ]
  %.sroa.11.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.11.16.copyload, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.13.0.ph, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.1310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.1310.0.ph, ptr %.sroa.1310.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs6_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_11VacantEntryjINtNtBd_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE12insert_entryCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d, ptr noundef nonnull %2)
  %i.n = call noundef nonnull align 8 ptr @_RNvMs7_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryjINtNtBd_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE8into_mutCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.d ], [ null, %bb.e ]
  ret ptr %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.g:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.o = atomicrmw add ptr %2, i64 -1 release, align 8, !noalias !5618
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10dying_nextCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !26 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10take_frontCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  %i.h = load ptr, ptr %i.c, align 8, !noalias !5630, !noundef !26
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, -1
  store i64 %i.i, ptr %i.e, align 8
  %i.j = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10init_frontCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !5631 ; 3 uses
  %.not.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i1, label %bb.h, label %bb.e, !prof !27

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5632
  invoke void @_RINvMsj_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i.i unwind label %bb.g, !noalias !5633

.noexc.i.i:                                       ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !noalias !5632, !noundef !26
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, !prof !27

bb.f:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #41
          to label %.noexc1.i.i unwind label %bb.g, !noalias !5634

.noexc1.i.i:                                      ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #37, !noalias !5631
  unreachable

_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8IntoIterReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxE10dying_nextCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !26 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxE10take_frontCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  %i.h = load ptr, ptr %i.c, align 8, !noalias !5646, !noundef !26
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxE16deallocating_endNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxE16deallocating_endNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxE16deallocating_endNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, -1
  store i64 %i.i, ptr %i.e, align 8
  %i.j = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxE10init_frontCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !5647 ; 3 uses
  %.not.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i1, label %bb.h, label %bb.e, !prof !27

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5648
  invoke void @_RINvMsj_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i.i unwind label %bb.g, !noalias !5649

.noexc.i.i:                                       ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !noalias !5648, !noundef !26
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, !prof !27

bb.f:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #41
          to label %.noexc1.i.i unwind label %bb.g, !noalias !5650

.noexc1.i.i:                                      ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #37, !noalias !5647
  unreachable

_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxE16deallocating_endNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8IntoIterjINtNtBb_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE10dying_nextCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !26 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjINtNtBb_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE10take_frontCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  %i.h = load ptr, ptr %i.c, align 8, !noalias !5662, !noundef !26
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjINtNtBc_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE16deallocating_endNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingjINtNtBc_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjINtNtBc_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE16deallocating_endNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit
end_hunk_1
