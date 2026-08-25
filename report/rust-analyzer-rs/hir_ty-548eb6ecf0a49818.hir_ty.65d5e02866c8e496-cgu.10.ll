Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.10?download=true
inline.NumInlined: 7065
inline.NumDeleted: 2270
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyTINtNtBa_3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB36_16LayoutCalculatorRNtB38_16TargetDataLayoutE17univariant_biasedBX_NtBZ_19RustcEnumVariantIdxRRINtB38_10LayoutDataBX_B4U_EEs3_0E0EB11_:bb.a
  %.val.i.i.i = load i128, ptr %i.d, align 16, !alias.scope !8766, !noalias !8771, !noundef !9 ; 2 uses
  %.val6.i.i.i = load i128, ptr %i.c, align 16, !alias.scope !8769, !noalias !8772, !noundef !9 ; 2 uses
  %i.u = icmp eq i128 %.val.i.i.i, %.val6.i.i.i
  %i.v = icmp ult i128 %.val.i.i.i, %.val6.i.i.i
  %i.w = zext i1 %i.v to i8
  br i1 %i.u, label %bb.f, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !8773)
  call void @llvm.experimental.noalias.scope.decl(metadata !8776)
  %i.x = load i64, ptr %i.o, align 8, !alias.scope !8778, !noalias !8779, !noundef !9
  %i.y = load i64, ptr %i.p, align 8, !alias.scope !8780, !noalias !8781, !noundef !9
  %i.z = icmp ult i64 %i.x, %i.y
  %i.aa = zext i1 %i.z to i8
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i: ; preds = %bb.f, %bb.e, %.noexc20
  %.sroa.0.1.i.i.i = phi i8 [ %i.t, %.noexc20 ], [ %i.aa, %bb.f ], [ %i.w, %bb.e ] ; 2 uses
  %i.ab = trunc nuw i8 %.sroa.0.1.i.i.i to i1     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8763
  %..i18 = select i1 %i.ab, ptr %i.q, ptr %i.r
  %i.ac = load i32, ptr %..i18, align 4, !noalias !8763
  store i32 %i.ac, ptr %i.s, align 4, !noalias !8763
  %i.ad = xor i1 %i.ab, true
  %i.ae = zext i1 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ae ; 3 uses
  %i.ag = zext nneg i8 %.sroa.0.1.i.i.i to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ag ; 3 uses
  %i.ai = icmp eq ptr %i.af, %0
  %i.aj = icmp eq ptr %i.ah, %2
  %or.cond.i = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyTINtNtBb_3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3x_16LayoutCalculatorRNtB3z_16TargetDataLayoutE17univariant_biasedB1a_NtB1c_19RustcEnumVariantIdxRRINtB3z_10LayoutDataB1a_B5m_EEs3_0E0EB1e_.exit, label %bb.d

.lr.ph.i:                                         ; preds = %.critedge
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.g

bb.g:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i23, %.lr.ph.i
  %.sroa.13.3 = phi ptr [ %0, %.lr.ph.i ], [ %i.bd, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i23 ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %2, %.lr.ph.i ], [ %i.ba, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i23 ] ; 4 uses
  %.sroa.0.02.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.bc, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i23 ] ; 3 uses
  %.sroa.0.0.val.i = load i32, ptr %.sroa.0.02.i, align 4, !noalias !8782, !noundef !9
  %.val6.i = load i32, ptr %.sroa.0.2, align 4, !noalias !8782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8782
  invoke fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs3_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %.val, i32 %.sroa.0.0.val.i) #54
          to label %.noexc28 unwind label %.loopexit.split-lp

.noexc28:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8782
  invoke fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs3_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %.val, i32 %.val6.i) #54
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %.noexc28
  call void @llvm.experimental.noalias.scope.decl(metadata !8785)
  call void @llvm.experimental.noalias.scope.decl(metadata !8788)
  %i.ao = invoke noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implINtB2_7ReverseyEBO_NvMB2_NtB2_8Ordering5is_ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al)
          to label %.noexc30 unwind label %.loopexit.split-lp ; 2 uses

.noexc30:                                         ; preds = %.noexc29
  %.not.i.i.i22 = icmp eq i8 %i.ao, 2
  br i1 %.not.i.i.i22, label %bb.h, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i23

bb.h:                                             ; preds = %.noexc30
  %.val.i.i.i26 = load i128, ptr %i.b, align 16, !alias.scope !8785, !noalias !8790, !noundef !9 ; 2 uses
  %.val6.i.i.i27 = load i128, ptr %i.a, align 16, !alias.scope !8788, !noalias !8791, !noundef !9 ; 2 uses
  %i.ap = icmp eq i128 %.val.i.i.i26, %.val6.i.i.i27
  %i.aq = icmp ult i128 %.val.i.i.i26, %.val6.i.i.i27
  %i.ar = zext i1 %i.aq to i8
  br i1 %i.ap, label %bb.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i23

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !8792)
  call void @llvm.experimental.noalias.scope.decl(metadata !8795)
  %i.as = load i64, ptr %i.am, align 8, !alias.scope !8797, !noalias !8798, !noundef !9
  %i.at = load i64, ptr %i.an, align 8, !alias.scope !8799, !noalias !8800, !noundef !9
  %i.au = icmp ult i64 %i.as, %i.at
  %i.av = zext i1 %i.au to i8
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i23

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i23: ; preds = %bb.i, %bb.h, %.noexc30
  %.sroa.0.1.i.i.i24 = phi i8 [ %i.ao, %.noexc30 ], [ %i.av, %bb.i ], [ %i.ar, %bb.h ] ; 2 uses
  %i.aw = trunc nuw i8 %.sroa.0.1.i.i.i24 to i1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8782
  %i.ax = xor i1 %i.aw, true
  %.sroa.05.0.i = select i1 %i.aw, ptr %.sroa.0.02.i, ptr %.sroa.0.2
  %i.ay = load i32, ptr %.sroa.05.0.i, align 4, !noalias !8782
  store i32 %i.ay, ptr %.sroa.13.3, align 4, !noalias !8782
  %i.az = zext i1 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.2, i64 %i.az ; 3 uses
  %i.bb = zext nneg i8 %.sroa.0.1.i.i.i24 to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.02.i, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.13.3, i64 4 ; 2 uses
  %i.be = icmp ne ptr %i.ba, %i.l
  %i.bf = icmp ne ptr %i.bc, %i.j
  %or.cond.i25 = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond.i25, label %bb.g, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyTINtNtBb_3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3x_16LayoutCalculatorRNtB3z_16TargetDataLayoutE17univariant_biasedB1a_NtB1c_19RustcEnumVariantIdxRRINtB3z_10LayoutDataB1a_B5m_EEs3_0E0EB1e_.exit

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyTINtNtBb_3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3x_16LayoutCalculatorRNtB3z_16TargetDataLayoutE17univariant_biasedB1a_NtB1c_19RustcEnumVariantIdxRRINtB3z_10LayoutDataB1a_B5m_EEs3_0E0EB1e_.exit: ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i23, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i
  %.sroa.13.1 = phi ptr [ %i.af, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i ], [ %i.bd, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i23 ]
  %.sroa.7.1 = phi ptr [ %i.ah, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i ], [ %i.l, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i23 ]
  %.sroa.0.1 = phi ptr [ %2, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i ], [ %i.ba, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx11sort_by_keyTINtNtCshzWfHUSfYae_4core3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2l_16LayoutCalculatorRNtB2n_16TargetDataLayoutE17univariant_biasedBy_NtBA_19RustcEnumVariantIdxRRINtB2n_10LayoutDataBy_B49_EEs3_0E0BC_.exit.i23 ] ; 2 uses
  %i.bg = ptrtoint ptr %.sroa.7.1 to i64
  %i.bh = ptrtoint ptr %.sroa.0.1 to i64
  %i.bi = sub nuw i64 %i.bg, %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1, ptr align 4 %.sroa.0.1, i64 %i.bi, i1 false), !noalias !8801
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyTINtNtBb_3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3x_16LayoutCalculatorRNtB3z_16TargetDataLayoutE17univariant_biasedB1a_NtB1c_19RustcEnumVariantIdxRRINtB3z_10LayoutDataB1a_B5m_EEs3_0E0EB1e_.exit
  ret void

.loopexit:                                        ; preds = %.noexc19, %.noexc, %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %.noexc29, %.noexc28, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %.loopexit ], [ %.sroa.13.3, %.loopexit.split-lp ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.2, %.loopexit ], [ %i.l, %.loopexit.split-lp ]
  %.sroa.0.0 = phi ptr [ %2, %.loopexit ], [ %.sroa.0.2, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bj = ptrtoint ptr %.sroa.7.0 to i64
  %i.bk = ptrtoint ptr %.sroa.0.0 to i64
  %i.bl = sub nuw i64 %i.bj, %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.13.0, ptr nonnull align 4 %.sroa.0.0, i64 %i.bl, i1 false), !noalias !8806
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2K_16LayoutCalculatorRNtB2M_16TargetDataLayoutE17univariant_biasedBX_NtBZ_19RustcEnumVariantIdxRRINtB2M_10LayoutDataBX_B4y_EEs4_0E0EB11_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = icmp eq i64 %4, 0
  %i.f = icmp uge i64 %4, %1
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw nsw i64 %1, %4                   ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %4) ; 2 uses
  %i.h = icmp samesign ult i64 %3, %..i
  br i1 %i.h, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4 ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.g          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.i, ptr %0
  %i.k = shl nuw nsw i64 %..i, 2                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.k ; 4 uses
  %.val = load ptr, ptr %5, align 8, !nonnull !9, !noundef !9 ; 4 uses
  br i1 %.not, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.noexc19, %bb.c
  %.sroa.13.2 = phi ptr [ %i.i, %bb.c ], [ %i.x, %.noexc19 ] ; 2 uses
  %.sroa.7.2 = phi ptr [ %i.l, %bb.c ], [ %i.z, %.noexc19 ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.j, %bb.c ], [ %i.q, %.noexc19 ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -4 ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -4 ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %.val12.i = load i32, ptr %i.p, align 4, !noalias !8811, !noundef !9
  %.val13.i = load i32, ptr %i.o, align 4, !noalias !8811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8811
  invoke fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.val, i32 %.val12.i) #54
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8811
  invoke fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.val, i32 %.val13.i) #54
          to label %.noexc19 unwind label %.loopexit

.noexc19:                                         ; preds = %.noexc
  %.val2.i.i = load i64, ptr %i.d, align 16, !noalias !8811, !noundef !9 ; 2 uses
  %.val3.i.i = load i128, ptr %i.m, align 16, !noalias !8811
  %.val4.i.i = load i64, ptr %i.c, align 16, !noalias !8811, !noundef !9 ; 2 uses
  %.val5.i.i = load i128, ptr %i.n, align 16, !noalias !8811
  %i.r = icmp eq i64 %.val2.i.i, %.val4.i.i
  %i.s = icmp ult i64 %.val2.i.i, %.val4.i.i
  %i.t = icmp ult i128 %.val3.i.i, %.val5.i.i
  %.sroa.0.0.i.i.i = select i1 %i.r, i1 %i.t, i1 %i.s ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8811
  %.val34 = load i32, ptr %i.o, align 4
  %i.u = load i32, ptr %i.p, align 4
  %6 = select i1 %.sroa.0.0.i.i.i, i32 %.val34, i32 %i.u
  store i32 %6, ptr %i.q, align 4, !noalias !8811
  %i.v = xor i1 %.sroa.0.0.i.i.i, true
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.w ; 3 uses
  %i.y = zext i1 %.sroa.0.0.i.i.i to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.y ; 3 uses
  %i.aa = icmp eq ptr %i.x, %0
  %i.ab = icmp eq ptr %i.z, %2
  %or.cond.i = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3b_16LayoutCalculatorRNtB3d_16TargetDataLayoutE17univariant_biasedB1a_NtB1c_19RustcEnumVariantIdxRRINtB3d_10LayoutDataB1a_B50_EEs4_0E0EB1e_.exit, label %bb.d

.lr.ph.i:                                         ; preds = %.critedge
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.noexc28, %.lr.ph.i
  %.sroa.13.3 = phi ptr [ %0, %.lr.ph.i ], [ %i.an, %.noexc28 ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %2, %.lr.ph.i ], [ %i.ak, %.noexc28 ] ; 4 uses
  %.sroa.0.02.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.am, %.noexc28 ] ; 3 uses
  %.sroa.0.0.val.i = load i32, ptr %.sroa.0.02.i, align 4, !noalias !8814, !noundef !9
  %.val6.i = load i32, ptr %.sroa.0.2, align 4, !noalias !8814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8814
  invoke fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.val, i32 %.sroa.0.0.val.i) #54
          to label %.noexc27 unwind label %.loopexit.split-lp

.noexc27:                                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8814
  invoke fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.val, i32 %.val6.i) #54
          to label %.noexc28 unwind label %.loopexit.split-lp

.noexc28:                                         ; preds = %.noexc27
  %.val2.i.i21 = load i64, ptr %i.b, align 16, !noalias !8814, !noundef !9 ; 2 uses
  %.val3.i.i22 = load i128, ptr %i.ac, align 16, !noalias !8814
  %.val4.i.i23 = load i64, ptr %i.a, align 16, !noalias !8814, !noundef !9 ; 2 uses
  %.val5.i.i24 = load i128, ptr %i.ad, align 16, !noalias !8814
  %i.ae = icmp eq i64 %.val2.i.i21, %.val4.i.i23
  %i.af = icmp ult i64 %.val2.i.i21, %.val4.i.i23
  %i.ag = icmp ult i128 %.val3.i.i22, %.val5.i.i24
  %.sroa.0.0.i.i.i25 = select i1 %i.ae, i1 %i.ag, i1 %i.af ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8814
  %i.ah = xor i1 %.sroa.0.0.i.i.i25, true
  %.sroa.0.02.i.val = load i32, ptr %.sroa.0.02.i, align 4
  %i.ai = load i32, ptr %.sroa.0.2, align 4
  %7 = select i1 %.sroa.0.0.i.i.i25, i32 %.sroa.0.02.i.val, i32 %i.ai
  store i32 %7, ptr %.sroa.13.3, align 4, !noalias !8814
  %i.aj = zext i1 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.2, i64 %i.aj ; 3 uses
  %i.al = zext i1 %.sroa.0.0.i.i.i25 to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.02.i, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.13.3, i64 4 ; 2 uses
  %i.ao = icmp ne ptr %i.ak, %i.l
  %i.ap = icmp ne ptr %i.am, %i.j
  %or.cond.i26 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond.i26, label %bb.e, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3b_16LayoutCalculatorRNtB3d_16TargetDataLayoutE17univariant_biasedB1a_NtB1c_19RustcEnumVariantIdxRRINtB3d_10LayoutDataB1a_B50_EEs4_0E0EB1e_.exit

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3b_16LayoutCalculatorRNtB3d_16TargetDataLayoutE17univariant_biasedB1a_NtB1c_19RustcEnumVariantIdxRRINtB3d_10LayoutDataB1a_B50_EEs4_0E0EB1e_.exit: ; preds = %.noexc28, %.noexc19
  %.sroa.13.1 = phi ptr [ %i.x, %.noexc19 ], [ %i.an, %.noexc28 ]
  %.sroa.7.1 = phi ptr [ %i.z, %.noexc19 ], [ %i.l, %.noexc28 ]
  %.sroa.0.1 = phi ptr [ %2, %.noexc19 ], [ %i.ak, %.noexc28 ] ; 2 uses
  %i.aq = ptrtoint ptr %.sroa.7.1 to i64
  %i.ar = ptrtoint ptr %.sroa.0.1 to i64
  %i.as = sub nuw i64 %i.aq, %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1, ptr align 4 %.sroa.0.1, i64 %i.as, i1 false), !noalias !8817
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3b_16LayoutCalculatorRNtB3d_16TargetDataLayoutE17univariant_biasedB1a_NtB1c_19RustcEnumVariantIdxRRINtB3d_10LayoutDataB1a_B50_EEs4_0E0EB1e_.exit
  ret void

.loopexit:                                        ; preds = %.noexc, %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc27, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %.loopexit ], [ %.sroa.13.3, %.loopexit.split-lp ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.2, %.loopexit ], [ %i.l, %.loopexit.split-lp ]
  %.sroa.0.0 = phi ptr [ %2, %.loopexit ], [ %.sroa.0.2, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.at = ptrtoint ptr %.sroa.7.0 to i64
  %i.au = ptrtoint ptr %.sroa.0.0 to i64
  %i.av = sub nuw i64 %i.at, %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.13.0, ptr nonnull align 4 %.sroa.0.0, i64 %i.av, i1 false), !noalias !8822
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtB11_5PatIdNCNvMNtB13_10usefulnessINtB4A_19BranchPatUsefulnessB27_E12is_redundant0E0EB2f_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = shl nuw nsw i64 %..i, 3                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.x, %.preheader ], [ %i.h, %.critedge ]
  %i.j = phi ptr [ %i.v, %.preheader ], [ %i.e, %.critedge ]
  %.sroa.0.0.i = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -8 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 2 uses
  %.val.i = load ptr, ptr %i.l, align 8, !noalias !8827, !nonnull !9, !align !7150, !noundef !9 ; 2 uses
  %.val12.i = load ptr, ptr %i.k, align 8, !noalias !8827, !nonnull !9, !align !7150, !noundef !9 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 120
  %i.o = load i32, ptr %i.n, align 8, !noalias !8827, !noundef !9
  %i.p = getelementptr inbounds nuw i8, ptr %.val12.i, i64 120
  %i.q = load i32, ptr %i.p, align 8, !noalias !8827, !noundef !9
  %i.r = icmp ult i32 %i.o, %i.q                  ; 3 uses
  %.v.i = select i1 %i.r, ptr %.val12.i, ptr %.val.i
  %i.s = ptrtoint ptr %.v.i to i64
  store i64 %i.s, ptr %i.m, align 8, !noalias !8827
  %i.t = xor i1 %i.r, true
  %i.u = zext i1 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.u ; 3 uses
  %i.w = zext i1 %i.r to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.w ; 3 uses
  %i.y = icmp eq ptr %i.v, %0
  %i.z = icmp eq ptr %i.x, %2
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtB1e_5PatIdNCNvMNtB1g_10usefulnessINtB51_19BranchPatUsefulnessB2k_E12is_redundant0E0EB2s_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.aa = phi ptr [ %i.an, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.04.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.e, %.critedge ] ; 2 uses
  %i.ab = phi ptr [ %i.ak, %.lr.ph.i ], [ %2, %.critedge ] ; 2 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.04.i, align 8, !noalias !8830, !nonnull !9, !align !7150, !noundef !9 ; 2 uses
  %.val.i18 = load ptr, ptr %i.ab, align 8, !noalias !8830, !nonnull !9, !align !7150, !noundef !9 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 120
  %i.ad = load i32, ptr %i.ac, align 8, !noalias !8830, !noundef !9
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i18, i64 120
  %i.af = load i32, ptr %i.ae, align 8, !noalias !8830, !noundef !9
  %i.ag = icmp ult i32 %i.ad, %i.af               ; 3 uses
  %i.ah = xor i1 %i.ag, true
  %.v.i19 = select i1 %i.ag, ptr %.sroa.0.0.val.i, ptr %.val.i18
  %i.ai = ptrtoint ptr %.v.i19 to i64
  store i64 %i.ai, ptr %i.aa, align 8, !noalias !8830
  %i.aj = zext i1 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aj ; 3 uses
  %i.al = zext i1 %i.ag to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.04.i, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ao = icmp ne ptr %i.ak, %i.h
  %i.ap = icmp ne ptr %i.am, %i.f
  %or.cond.i20 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond.i20, label %.lr.ph.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtB1e_5PatIdNCNvMNtB1g_10usefulnessINtB51_19BranchPatUsefulnessB2k_E12is_redundant0E0EB2s_.exit

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtB1e_5PatIdNCNvMNtB1g_10usefulnessINtB51_19BranchPatUsefulnessB2k_E12is_redundant0E0EB2s_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.v, %.preheader ], [ %i.an, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.x, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %i.aq = ptrtoint ptr %.sroa.7.0 to i64
  %i.ar = ptrtoint ptr %.sroa.0.0 to i64
  %i.as = sub nuw i64 %i.aq, %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.as, i1 false), !noalias !8833
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtB1e_5PatIdNCNvMNtB1g_10usefulnessINtB51_19BranchPatUsefulnessB2k_E12is_redundant0E0EB2s_.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeTooENvYBX_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 288230376151711744) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = shl nuw nsw i64 %..i, 5                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 16 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.w, %.preheader ], [ %i.h, %.critedge ] ; 2 uses
  %i.j = phi ptr [ %i.u, %.preheader ], [ %i.e, %.critedge ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -32 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -32 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -32 ; 2 uses
  %.val.i = load i128, ptr %i.l, align 16, !noalias !8838, !noundef !9 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -16
  %.val12.i = load i128, ptr %i.n, align 16, !noalias !8838
  %.val13.i = load i128, ptr %i.k, align 16, !noalias !8838, !noundef !9 ; 2 uses
  %i.o = getelementptr i8, ptr %i.j, i64 -16
  %.val14.i = load i128, ptr %i.o, align 16, !noalias !8838
  %i.p = icmp eq i128 %.val.i, %.val13.i
  %i.q = icmp ult i128 %.val.i, %.val13.i
  %i.r = icmp ult i128 %.val12.i, %.val14.i
  %.sroa.0.0.i.i.i = select i1 %i.p, i1 %i.r, i1 %i.q ; 3 uses
  %..i17 = select i1 %.sroa.0.0.i.i.i, ptr %i.k, ptr %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.m, ptr noundef nonnull align 16 dereferenceable(32) %..i17, i64 32, i1 false), !noalias !8838
  %i.s = xor i1 %.sroa.0.0.i.i.i, true
  %i.t = zext i1 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.t ; 3 uses
  %i.v = zext i1 %.sroa.0.0.i.i.i to i64
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.v ; 3 uses
  %i.x = icmp eq ptr %i.u, %0
  %i.y = icmp eq ptr %i.w, %2
  %or.cond.i = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateTooEE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.z = phi ptr [ %i.al, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.e, %.critedge ] ; 4 uses
  %i.aa = phi ptr [ %i.ai, %.lr.ph.i ], [ %2, %.critedge ] ; 4 uses
  %.sroa.0.0.val.i = load i128, ptr %.sroa.0.02.i, align 16, !noalias !8841, !noundef !9 ; 2 uses
  %i.ab = getelementptr i8, ptr %.sroa.0.02.i, i64 16
  %.sroa.0.0.val6.i = load i128, ptr %i.ab, align 16, !noalias !8841
  %.val.i19 = load i128, ptr %i.aa, align 16, !noalias !8841, !noundef !9 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val7.i = load i128, ptr %i.ac, align 16, !noalias !8841
  %i.ad = icmp eq i128 %.sroa.0.0.val.i, %.val.i19
  %i.ae = icmp ult i128 %.sroa.0.0.val.i, %.val.i19
end_hunk_0
