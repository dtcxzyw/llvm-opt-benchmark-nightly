Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_select-0ff45bf5da4bce36.lance_select.83dc7e5d3aa2c1eb-cgu.0?download=true
inline.NumInlined: 2541
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsbjTsVCnQnhv_12lance_select:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1t_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eqB1d_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTTRmRB1N_EB3P_ENCNvXs1t_BU_INtBU_8BTreeMapmB1N_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1R_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !noundef !4   ; 4 uses
  %.not.not = icmp eq ptr %i.f, null
  %i.g = load ptr, ptr %1, align 8, !alias.scope !4902, !noalias !4903, !noundef !4 ; 2 uses
  %.not.i.i = icmp ne ptr %i.g, null              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4904, !noalias !4905
  %.sroa.10.0.i = select i1 %.not.i.i, i64 %i.i, i64 undef
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = icmp eq i64 %i.b, 0
  %i.l = or i1 %.not.not, %i.k
  br i1 %i.l, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTTRmRB1N_EB3P_ENCNvXs1t_BU_INtBU_8BTreeMapmB1N_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1R_.exit, label %bb.c

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTTRmRB1N_EB3P_ENCNvXs1t_BU_INtBU_8BTreeMapmB1N_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1R_.exit: ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkTTRmRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEB1c_ENCNvXs1t_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2o_8BTreeMapmB1g_ENtNtBe_3cmp9PartialEq2eq0E0B1k_.exit.i, %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB18_.exit, %.loopexit, %bb.q, %bb.s, %_RNvYNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.lr.ph.i ], [ true, %bb.b ], [ false, %_RNvYNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i.i ], [ true, %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB18_.exit ], [ false, %bb.q ], [ false, %.loopexit ], [ true, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkTTRmRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEB1c_ENCNvXs1t_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2o_8BTreeMapmB1g_ENtNtBe_3cmp9PartialEq2eq0E0B1k_.exit.i ], [ false, %bb.s ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 5 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i64, label %.lr.ph.i.i89.preheader

.lr.ph.i.i89.preheader:                           ; preds = %bb.c
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i89.prol.loopexit, label %.lr.ph.i.i89.prol

.lr.ph.i.i89.prol:                                ; preds = %.lr.ph.i.i89.preheader, %.lr.ph.i.i89.prol
  %.sroa.013.017.i.i90.prol = phi ptr [ %.sroa.013.0.i.i92.prol, %.lr.ph.i.i89.prol ], [ %i.f, %.lr.ph.i.i89.preheader ]
  %.sroa.011.016.i.i91.prol = phi i64 [ %i.q, %.lr.ph.i.i89.prol ], [ %i.n, %.lr.ph.i.i89.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i89.prol ], [ 0, %.lr.ph.i.i89.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i90.prol, i64 320
  %i.q = add i64 %.sroa.011.016.i.i91.prol, -1    ; 2 uses
  %.sroa.013.0.i.i92.prol = load ptr, ptr %i.p, align 8, !noalias !4906, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i89.prol.loopexit, label %.lr.ph.i.i89.prol, !llvm.loop !4837

.lr.ph.i.i89.prol.loopexit:                       ; preds = %.lr.ph.i.i89.prol, %.lr.ph.i.i89.preheader
  %.sroa.013.0.i.i92.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i89.preheader ], [ %.sroa.013.0.i.i92.prol, %.lr.ph.i.i89.prol ]
  %.sroa.013.017.i.i90.unr = phi ptr [ %i.f, %.lr.ph.i.i89.preheader ], [ %.sroa.013.0.i.i92.prol, %.lr.ph.i.i89.prol ]
  %.sroa.011.016.i.i91.unr = phi i64 [ %i.n, %.lr.ph.i.i89.preheader ], [ %i.q, %.lr.ph.i.i89.prol ]
  %i.r = icmp ult i64 %i.n, 8
  br i1 %i.r, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i64, label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %.lr.ph.i.i89.prol.loopexit, %.lr.ph.i.i89
  %.sroa.013.017.i.i90 = phi ptr [ %.sroa.013.0.i.i92.7, %.lr.ph.i.i89 ], [ %.sroa.013.017.i.i90.unr, %.lr.ph.i.i89.prol.loopexit ]
  %.sroa.011.016.i.i91 = phi i64 [ %i.aa, %.lr.ph.i.i89 ], [ %.sroa.011.016.i.i91.unr, %.lr.ph.i.i89.prol.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i90, i64 320
  %.sroa.013.0.i.i92 = load ptr, ptr %i.s, align 8, !noalias !4906, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i92, i64 320
  %.sroa.013.0.i.i92.1 = load ptr, ptr %i.t, align 8, !noalias !4906, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i92.1, i64 320
  %.sroa.013.0.i.i92.2 = load ptr, ptr %i.u, align 8, !noalias !4906, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i92.2, i64 320
  %.sroa.013.0.i.i92.3 = load ptr, ptr %i.v, align 8, !noalias !4906, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i92.3, i64 320
  %.sroa.013.0.i.i92.4 = load ptr, ptr %i.w, align 8, !noalias !4906, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i92.4, i64 320
  %.sroa.013.0.i.i92.5 = load ptr, ptr %i.x, align 8, !noalias !4906, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i92.5, i64 320
  %.sroa.013.0.i.i92.6 = load ptr, ptr %i.y, align 8, !noalias !4906, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i92.6, i64 320
  %i.aa = add i64 %.sroa.011.016.i.i91, -8        ; 2 uses
  %.sroa.013.0.i.i92.7 = load ptr, ptr %i.z, align 8, !noalias !4906, !nonnull !4, !noundef !4 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i64, label %.lr.ph.i.i89

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i64: ; preds = %.lr.ph.i.i89.prol.loopexit, %.lr.ph.i.i89, %bb.c
  %.sroa.013.0.lcssa.i.i94 = phi ptr [ %i.f, %bb.c ], [ %.sroa.013.0.i.i92.lcssa.unr, %.lr.ph.i.i89.prol.loopexit ], [ %.sroa.013.0.i.i92.7, %.lr.ph.i.i89 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa.i.i94, i64 318
  %i.ad = load i16, ptr %i.ac, align 2, !noalias !4907, !noundef !4
  %.not = icmp eq i16 %i.ad, 0
  br i1 %.not, label %.lr.ph.i.i.i.i70, label %.thread

.lr.ph.i.i.i.i70:                                 ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i64, %bb.d
  %.sroa.0.022.i.i.i.i71 = phi ptr [ %i.ae, %bb.d ], [ %.sroa.013.0.lcssa.i.i94, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i64 ] ; 2 uses
  %.sroa.5.021.i.i.i.i72 = phi i64 [ %i.af, %bb.d ], [ 0, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i64 ] ; 2 uses
  %i.ae = load ptr, ptr %.sroa.0.022.i.i.i.i71, align 8, !noalias !4908, !noundef !4 ; 7 uses
  %.not.i.i.i.i.i73 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i73, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i70
  %i.af = add i64 %.sroa.5.021.i.i.i.i72, 1       ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i71, i64 316
  %i.ah = load i16, ptr %i.ag, align 4, !noalias !4908 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 318
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !4907, !noundef !4
  %i.ak = icmp ult i16 %i.ah, %i.aj
  br i1 %i.ak, label %bb.f, label %.lr.ph.i.i.i.i70

bb.e:                                             ; preds = %.lr.ph.i.i.i.i70
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #37
          to label %.noexc.i.i87 unwind label %bb.h, !noalias !4909

.noexc.i.i87:                                     ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.al = zext i16 %i.ah to i64                   ; 4 uses
  %i.am = icmp eq i64 %i.af, 0
  br i1 %i.am, label %.thread, label %bb.g

.thread:                                          ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i64, %bb.f
  %.sroa.06.0.ph.i.i.i77119 = phi ptr [ %i.ae, %bb.f ], [ %.sroa.013.0.lcssa.i.i94, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i64 ] ; 2 uses
  %.sroa.10.0.ph.i.i.i75117 = phi i64 [ %i.al, %bb.f ], [ 0, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i64 ] ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.10.0.ph.i.i.i75117, 1
  br label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %i.ao = icmp ult i16 %i.ah, 11
  tail call void @llvm.assume(i1 %i.ao), !noalias !4910
  %i.ap = getelementptr i8, ptr %i.ae, i64 328
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %i.al ; 2 uses
  %xtraiter237 = and i64 %i.af, 7                 ; 2 uses
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  br i1 %lcmp.mod238.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i78.prol = phi ptr [ %i.ar, %.prol.preheader ], [ %i.aq, %bb.g ]
  %.sroa.019.0.in.i.i.i.i79.prol = phi i64 [ %.sroa.019.0.i.i.i.i80.prol, %.prol.preheader ], [ %i.af, %bb.g ]
  %prol.iter239 = phi i64 [ %prol.iter239.next, %.prol.preheader ], [ 0, %bb.g ]
  %.sroa.019.0.i.i.i.i80.prol = add i64 %.sroa.019.0.in.i.i.i.i79.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i81.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i78.prol, align 8, !noalias !4911, !nonnull !4, !noundef !4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i81.prol, i64 320 ; 2 uses
  %prol.iter239.next = add i64 %prol.iter239, 1   ; 2 uses
  %prol.iter239.cmp.not = icmp eq i64 %prol.iter239.next, %xtraiter237
  br i1 %prol.iter239.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !4851

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.sroa.017.0.i.i.i.i81.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.sroa.017.0.i.i.i.i81.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i78.unr = phi ptr [ %i.aq, %bb.g ], [ %i.ar, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i79.unr = phi i64 [ %i.af, %bb.g ], [ %.sroa.019.0.i.i.i.i80.prol, %.prol.preheader ]
  %i.as = icmp ult i64 %.sroa.5.021.i.i.i.i72, 7
  br i1 %i.as, label %.lr.ph.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i78 = phi ptr [ %i.bb, %.new ], [ %.sroa.017.0.in.i.i.i.i78.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i79 = phi i64 [ %.sroa.019.0.i.i.i.i80.7, %.new ], [ %.sroa.019.0.in.i.i.i.i79.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i81 = load ptr, ptr %.sroa.017.0.in.i.i.i.i78, align 8, !noalias !4911, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i81, i64 320
  %.sroa.017.0.i.i.i.i81.1 = load ptr, ptr %i.at, align 8, !noalias !4911, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i81.1, i64 320
  %.sroa.017.0.i.i.i.i81.2 = load ptr, ptr %i.au, align 8, !noalias !4911, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i81.2, i64 320
  %.sroa.017.0.i.i.i.i81.3 = load ptr, ptr %i.av, align 8, !noalias !4911, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i81.3, i64 320
  %.sroa.017.0.i.i.i.i81.4 = load ptr, ptr %i.aw, align 8, !noalias !4911, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i81.4, i64 320
  %.sroa.017.0.i.i.i.i81.5 = load ptr, ptr %i.ax, align 8, !noalias !4911, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i81.5, i64 320
  %.sroa.017.0.i.i.i.i81.6 = load ptr, ptr %i.ay, align 8, !noalias !4911, !nonnull !4, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i81.6, i64 320
  %.sroa.019.0.i.i.i.i80.7 = add i64 %.sroa.019.0.in.i.i.i.i79, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i81.7 = load ptr, ptr %i.az, align 8, !noalias !4911, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = icmp eq i64 %.sroa.019.0.i.i.i.i80.7, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i81.7, i64 320
  br i1 %i.ba, label %.lr.ph.i, label %.new

bb.h:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !4910
  unreachable

.lr.ph.i:                                         ; preds = %.prol.loopexit, %.new, %.thread
  %.sroa.06.0.ph.i.i.i77118 = phi ptr [ %.sroa.06.0.ph.i.i.i77119, %.thread ], [ %i.ae, %.new ], [ %i.ae, %.prol.loopexit ] ; 2 uses
  %.sroa.10.0.ph.i.i.i75116 = phi i64 [ %.sroa.10.0.ph.i.i.i75117, %.thread ], [ %i.al, %.new ], [ %i.al, %.prol.loopexit ] ; 3 uses
  %.sroa.78.0.i.i.i83 = phi i64 [ %i.an, %.thread ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i84 = phi ptr [ %.sroa.06.0.ph.i.i.i77119, %.thread ], [ %.sroa.017.0.i.i.i.i81.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i81.7, %.new ]
  %i.bd = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i75116, 11
  tail call void @llvm.assume(i1 %i.bd), !noalias !4910
  %i.be = icmp ne i64 %i.b, 0
  %.not215 = and i1 %i.be, %.not.i.i
  br i1 %.not215, label %.lr.ph.preheader, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTTRmRB1N_EB3P_ENCNvXs1t_BU_INtBU_8BTreeMapmB1N_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1R_.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i77118, i64 8
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.sroa.10.0.ph.i.i.i75116
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i77118, i64 272
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.sroa.10.0.ph.i.i.i75116
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB18_.exit
  %.sroa.2799.0174.in = phi i64 [ %.sroa.2799.0174, %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB18_.exit ], [ %i.b, %.lr.ph.preheader ]
  %i.bj = phi ptr [ %i.fn, %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB18_.exit ], [ %i.bi, %.lr.ph.preheader ]
  %.pn152173 = phi ptr [ %i.fp, %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB18_.exit ], [ %i.bg, %.lr.ph.preheader ] ; 3 uses
  %.sroa.7.0172 = phi ptr [ %.sroa.07.0.i.i.i, %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB18_.exit ], [ %.sroa.07.0.i.i.i84, %.lr.ph.preheader ] ; 4 uses
  %.sroa.31.0171 = phi i1 [ true, %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB18_.exit ], [ %.not.i.i, %.lr.ph.preheader ]
  %.sroa.34.0170 = phi ptr [ %.sroa.07.0.i.i.i46, %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB18_.exit ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.sroa.43.0169 = phi i64 [ %.sroa.78.0.i.i.i45, %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB18_.exit ], [ %.sroa.10.0.i, %.lr.ph.preheader ] ; 6 uses
  %.sroa.51.0168 = phi i64 [ %i.bk, %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB18_.exit ], [ %i.b, %.lr.ph.preheader ]
  %.sroa.38.0167 = phi i64 [ 0, %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB18_.exit ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %.sroa.21.0166 = phi i64 [ %.sroa.78.0.i.i.i, %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB18_.exit ], [ %.sroa.78.0.i.i.i83, %.lr.ph.preheader ] ; 2 uses
  %.sroa.2799.0174 = add i64 %.sroa.2799.0174.in, -1 ; 2 uses
  %i.bk = add i64 %.sroa.51.0168, -1              ; 2 uses
  br i1 %.sroa.31.0171, label %bb.i, label %.critedge.i20

bb.i:                                             ; preds = %.lr.ph
  %.not.i.i21 = icmp eq ptr %.sroa.34.0170, null
  br i1 %.not.i.i21, label %bb.j, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i26

bb.j:                                             ; preds = %bb.i
  %i.bl = inttoptr i64 %.sroa.38.0167 to ptr      ; 3 uses
  %i.bm = icmp eq i64 %.sroa.43.0169, 0
  br i1 %i.bm, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i26, label %.lr.ph.i.i51.preheader

.lr.ph.i.i51.preheader:                           ; preds = %bb.j
  %xtraiter240 = and i64 %.sroa.43.0169, 7        ; 2 uses
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %.lr.ph.i.i51.prol.loopexit, label %.lr.ph.i.i51.prol

.lr.ph.i.i51.prol:                                ; preds = %.lr.ph.i.i51.preheader, %.lr.ph.i.i51.prol
  %.sroa.013.017.i.i52.prol = phi ptr [ %.sroa.013.0.i.i54.prol, %.lr.ph.i.i51.prol ], [ %i.bl, %.lr.ph.i.i51.preheader ]
  %.sroa.011.016.i.i53.prol = phi i64 [ %i.bo, %.lr.ph.i.i51.prol ], [ %.sroa.43.0169, %.lr.ph.i.i51.preheader ]
  %prol.iter242 = phi i64 [ %prol.iter242.next, %.lr.ph.i.i51.prol ], [ 0, %.lr.ph.i.i51.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i52.prol, i64 320
  %i.bo = add i64 %.sroa.011.016.i.i53.prol, -1   ; 2 uses
  %.sroa.013.0.i.i54.prol = load ptr, ptr %i.bn, align 8, !noalias !4912, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter242.next = add i64 %prol.iter242, 1   ; 2 uses
  %prol.iter242.cmp.not = icmp eq i64 %prol.iter242.next, %xtraiter240
  br i1 %prol.iter242.cmp.not, label %.lr.ph.i.i51.prol.loopexit, label %.lr.ph.i.i51.prol, !llvm.loop !4856

.lr.ph.i.i51.prol.loopexit:                       ; preds = %.lr.ph.i.i51.prol, %.lr.ph.i.i51.preheader
  %.sroa.013.0.i.i54.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i51.preheader ], [ %.sroa.013.0.i.i54.prol, %.lr.ph.i.i51.prol ]
  %.sroa.013.017.i.i52.unr = phi ptr [ %i.bl, %.lr.ph.i.i51.preheader ], [ %.sroa.013.0.i.i54.prol, %.lr.ph.i.i51.prol ]
  %.sroa.011.016.i.i53.unr = phi i64 [ %.sroa.43.0169, %.lr.ph.i.i51.preheader ], [ %i.bo, %.lr.ph.i.i51.prol ]
  %i.bp = icmp ult i64 %.sroa.43.0169, 8
  br i1 %i.bp, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i26, label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %.lr.ph.i.i51.prol.loopexit, %.lr.ph.i.i51
  %.sroa.013.017.i.i52 = phi ptr [ %.sroa.013.0.i.i54.7, %.lr.ph.i.i51 ], [ %.sroa.013.017.i.i52.unr, %.lr.ph.i.i51.prol.loopexit ]
  %.sroa.011.016.i.i53 = phi i64 [ %i.by, %.lr.ph.i.i51 ], [ %.sroa.011.016.i.i53.unr, %.lr.ph.i.i51.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i52, i64 320
  %.sroa.013.0.i.i54 = load ptr, ptr %i.bq, align 8, !noalias !4912, !nonnull !4, !noundef !4
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i54, i64 320
  %.sroa.013.0.i.i54.1 = load ptr, ptr %i.br, align 8, !noalias !4912, !nonnull !4, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i54.1, i64 320
  %.sroa.013.0.i.i54.2 = load ptr, ptr %i.bs, align 8, !noalias !4912, !nonnull !4, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i54.2, i64 320
  %.sroa.013.0.i.i54.3 = load ptr, ptr %i.bt, align 8, !noalias !4912, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i54.3, i64 320
  %.sroa.013.0.i.i54.4 = load ptr, ptr %i.bu, align 8, !noalias !4912, !nonnull !4, !noundef !4
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i54.4, i64 320
  %.sroa.013.0.i.i54.5 = load ptr, ptr %i.bv, align 8, !noalias !4912, !nonnull !4, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i54.5, i64 320
  %.sroa.013.0.i.i54.6 = load ptr, ptr %i.bw, align 8, !noalias !4912, !nonnull !4, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i54.6, i64 320
  %i.by = add i64 %.sroa.011.016.i.i53, -8        ; 2 uses
  %.sroa.013.0.i.i54.7 = load ptr, ptr %i.bx, align 8, !noalias !4912, !nonnull !4, !noundef !4 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i26, label %.lr.ph.i.i51

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i26: ; preds = %.lr.ph.i.i51.prol.loopexit, %.lr.ph.i.i51, %bb.j, %bb.i
  %.sroa.59.0.copyload.i.i27 = phi i64 [ %.sroa.43.0169, %bb.i ], [ 0, %bb.j ], [ 0, %.lr.ph.i.i51 ], [ 0, %.lr.ph.i.i51.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i28 = phi i64 [ %.sroa.38.0167, %bb.i ], [ 0, %bb.j ], [ 0, %.lr.ph.i.i51 ], [ 0, %.lr.ph.i.i51.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i29 = phi ptr [ %.sroa.34.0170, %bb.i ], [ %i.bl, %bb.j ], [ %.sroa.013.0.i.i54.lcssa.unr, %.lr.ph.i.i51.prol.loopexit ], [ %.sroa.013.0.i.i54.7, %.lr.ph.i.i51 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i29, i64 318
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !4913, !noundef !4
  %i.cc = zext i16 %i.cb to i64
  %i.cd = icmp ult i64 %.sroa.59.0.copyload.i.i27, %i.cc
  br i1 %i.cd, label %bb.m, label %.lr.ph.i.i.i.i32

.lr.ph.i.i.i.i32:                                 ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i26, %bb.k
  %.sroa.0.022.i.i.i.i33 = phi ptr [ %i.ce, %bb.k ], [ %.sroa.07.0.copyload.i.i29, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i26 ] ; 2 uses
  %.sroa.5.021.i.i.i.i34 = phi i64 [ %i.cg, %bb.k ], [ %.sroa.48.0.copyload.i.i28, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i26 ]
  %i.ce = load ptr, ptr %.sroa.0.022.i.i.i.i33, align 8, !noalias !4914, !noundef !4 ; 4 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i35, label %bb.l, label %bb.k

._crit_edge.loopexit.i.i.i.i36:                   ; preds = %bb.k
  %i.cf = zext i16 %i.ci to i64
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i32
  %i.cg = add i64 %.sroa.5.021.i.i.i.i34, 1       ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i33, i64 316
  %i.ci = load i16, ptr %i.ch, align 4, !noalias !4914 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 318
  %i.ck = load i16, ptr %i.cj, align 2, !noalias !4913, !noundef !4
  %i.cl = icmp ult i16 %i.ci, %i.ck
  br i1 %i.cl, label %._crit_edge.loopexit.i.i.i.i36, label %.lr.ph.i.i.i.i32

bb.l:                                             ; preds = %.lr.ph.i.i.i.i32
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #37
          to label %.noexc.i.i49 unwind label %bb.p, !noalias !4915

.noexc.i.i49:                                     ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %._crit_edge.loopexit.i.i.i.i36, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i26
  %.sroa.10.0.ph.i.i.i37 = phi i64 [ %i.cf, %._crit_edge.loopexit.i.i.i.i36 ], [ %.sroa.59.0.copyload.i.i27, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i26 ] ; 6 uses
  %.sroa.7.0.ph.i.i.i38 = phi i64 [ %i.cg, %._crit_edge.loopexit.i.i.i.i36 ], [ %.sroa.48.0.copyload.i.i28, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i26 ] ; 5 uses
  %.sroa.06.0.ph.i.i.i39 = phi ptr [ %i.ce, %._crit_edge.loopexit.i.i.i.i36 ], [ %.sroa.07.0.copyload.i.i29, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i26 ] ; 4 uses
  %i.cm = icmp eq i64 %.sroa.7.0.ph.i.i.i38, 0
  br i1 %i.cm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cn = add nuw nsw i64 %.sroa.10.0.ph.i.i.i37, 1
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.co = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i37, 11
  tail call void @llvm.assume(i1 %i.co), !noalias !4910
  %i.cp = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i39, i64 328
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %.sroa.10.0.ph.i.i.i37 ; 2 uses
  %xtraiter246 = and i64 %.sroa.7.0.ph.i.i.i38, 7 ; 2 uses
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod247.not, label %.prol.loopexit244, label %.prol.preheader243

.prol.preheader243:                               ; preds = %bb.o, %.prol.preheader243
  %.sroa.017.0.in.i.i.i.i40.prol = phi ptr [ %i.cr, %.prol.preheader243 ], [ %i.cq, %bb.o ]
  %.sroa.019.0.in.i.i.i.i41.prol = phi i64 [ %.sroa.019.0.i.i.i.i42.prol, %.prol.preheader243 ], [ %.sroa.7.0.ph.i.i.i38, %bb.o ]
  %prol.iter248 = phi i64 [ %prol.iter248.next, %.prol.preheader243 ], [ 0, %bb.o ]
  %.sroa.019.0.i.i.i.i42.prol = add i64 %.sroa.019.0.in.i.i.i.i41.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i43.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i40.prol, align 8, !noalias !4916, !nonnull !4, !noundef !4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i43.prol, i64 320 ; 2 uses
  %prol.iter248.next = add i64 %prol.iter248, 1   ; 2 uses
  %prol.iter248.cmp.not = icmp eq i64 %prol.iter248.next, %xtraiter246
  br i1 %prol.iter248.cmp.not, label %.prol.loopexit244, label %.prol.preheader243, !llvm.loop !4870

.prol.loopexit244:                                ; preds = %.prol.preheader243, %bb.o
  %.sroa.017.0.i.i.i.i43.lcssa.unr = phi ptr [ poison, %bb.o ], [ %.sroa.017.0.i.i.i.i43.prol, %.prol.preheader243 ]
  %.sroa.017.0.in.i.i.i.i40.unr = phi ptr [ %i.cq, %bb.o ], [ %i.cr, %.prol.preheader243 ]
  %.sroa.019.0.in.i.i.i.i41.unr = phi i64 [ %.sroa.7.0.ph.i.i.i38, %bb.o ], [ %.sroa.019.0.i.i.i.i42.prol, %.prol.preheader243 ]
  %i.cs = icmp ult i64 %.sroa.7.0.ph.i.i.i38, 8
  br i1 %i.cs, label %.loopexit, label %.new245

.new245:                                          ; preds = %.prol.loopexit244, %.new245
  %.sroa.017.0.in.i.i.i.i40 = phi ptr [ %i.db, %.new245 ], [ %.sroa.017.0.in.i.i.i.i40.unr, %.prol.loopexit244 ]
  %.sroa.019.0.in.i.i.i.i41 = phi i64 [ %.sroa.019.0.i.i.i.i42.7, %.new245 ], [ %.sroa.019.0.in.i.i.i.i41.unr, %.prol.loopexit244 ]
  %.sroa.017.0.i.i.i.i43 = load ptr, ptr %.sroa.017.0.in.i.i.i.i40, align 8, !noalias !4916, !nonnull !4, !noundef !4
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i43, i64 320
  %.sroa.017.0.i.i.i.i43.1 = load ptr, ptr %i.ct, align 8, !noalias !4916, !nonnull !4, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i43.1, i64 320
  %.sroa.017.0.i.i.i.i43.2 = load ptr, ptr %i.cu, align 8, !noalias !4916, !nonnull !4, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i43.2, i64 320
  %.sroa.017.0.i.i.i.i43.3 = load ptr, ptr %i.cv, align 8, !noalias !4916, !nonnull !4, !noundef !4
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i43.3, i64 320
  %.sroa.017.0.i.i.i.i43.4 = load ptr, ptr %i.cw, align 8, !noalias !4916, !nonnull !4, !noundef !4
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i43.4, i64 320
  %.sroa.017.0.i.i.i.i43.5 = load ptr, ptr %i.cx, align 8, !noalias !4916, !nonnull !4, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i43.5, i64 320
  %.sroa.017.0.i.i.i.i43.6 = load ptr, ptr %i.cy, align 8, !noalias !4916, !nonnull !4, !noundef !4
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i43.6, i64 320
  %.sroa.019.0.i.i.i.i42.7 = add i64 %.sroa.019.0.in.i.i.i.i41, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i43.7 = load ptr, ptr %i.cz, align 8, !noalias !4916, !nonnull !4, !noundef !4 ; 2 uses
  %i.da = icmp eq i64 %.sroa.019.0.i.i.i.i42.7, 0
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i43.7, i64 320
  br i1 %i.da, label %.loopexit, label %.new245

bb.p:                                             ; preds = %bb.l
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !4910
  unreachable

.critedge.i20:                                    ; preds = %.lr.ph
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #37, !noalias !4917
  unreachable

.loopexit:                                        ; preds = %.prol.loopexit244, %.new245, %bb.n
  %.sroa.78.0.i.i.i45 = phi i64 [ %i.cn, %bb.n ], [ 0, %.new245 ], [ 0, %.prol.loopexit244 ]
  %.sroa.07.0.i.i.i46 = phi ptr [ %.sroa.06.0.ph.i.i.i39, %bb.n ], [ %.sroa.017.0.i.i.i.i43.lcssa.unr, %.prol.loopexit244 ], [ %.sroa.017.0.i.i.i.i43.7, %.new245 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i39, i64 272
  %i.de = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i37, 11
  tail call void @llvm.assume(i1 %i.de), !noalias !4910
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.sroa.10.0.ph.i.i.i37
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i39, i64 8
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %.sroa.10.0.ph.i.i.i37 ; 3 uses
  %.val.i.i.i = load i32, ptr %i.bj, align 4, !noalias !4918, !noundef !4
  %.val1.i.i.i = load i32, ptr %i.df, align 4, !noalias !4918, !noundef !4
  %i.di = icmp eq i32 %.val.i.i.i, %.val1.i.i.i
  br i1 %i.di, label %bb.q, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTTRmRB1N_EB3P_ENCNvXs1t_BU_INtBU_8BTreeMapmB1N_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1R_.exit

bb.q:                                             ; preds = %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4920)
  %i.dj = load i64, ptr %.pn152173, align 8, !range !9, !alias.scope !4919, !noalias !4921, !noundef !4
  %i.dk = icmp ne i64 %i.dj, -1                   ; 2 uses
  %i.dl = load i64, ptr %i.dh, align 8, !range !9, !alias.scope !4920, !noalias !4922, !noundef !4
  %i.dm = icmp ne i64 %i.dl, -1                   ; 2 uses
  %i.dn = xor i1 %i.dk, %i.dm
  br i1 %i.dn, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTTRmRB1N_EB3P_ENCNvXs1t_BU_INtBU_8BTreeMapmB1N_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1R_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %or.cond.i.i.i.i = and i1 %i.dk, %i.dm
  br i1 %or.cond.i.i.i.i, label %bb.s, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkTTRmRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEB1c_ENCNvXs1t_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2o_8BTreeMapmB1g_ENtNtBe_3cmp9PartialEq2eq0E0B1k_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.do = getelementptr inbounds nuw i8, ptr %.pn152173, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !4919, !noalias !4921, !noundef !4 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !4920, !noalias !4922, !noundef !4
  %i.ds = icmp eq i64 %i.dp, %i.dr
  br i1 %i.ds, label %bb.t, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTTRmRB1N_EB3P_ENCNvXs1t_BU_INtBU_8BTreeMapmB1N_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1R_.exit

bb.t:                                             ; preds = %bb.s
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !4920, !noalias !4922, !nonnull !4, !noundef !4
  %i.dv = getelementptr inbounds nuw i8, ptr %.pn152173, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !4919, !noalias !4921, !nonnull !4, !noundef !4
  %i.dx = icmp eq i64 %i.dp, 0
  br i1 %i.dx, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkTTRmRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEB1c_ENCNvXs1t_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2o_8BTreeMapmB1g_ENtNtBe_3cmp9PartialEq2eq0E0B1k_.exit.i, label %.lr.ph.i.i.i.i.i

bb.u:                                             ; preds = %_RNvYNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i
  %i.dy = add nuw i64 %.sroa.01.06.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dy, %i.dp
  br i1 %exitcond.not.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkTTRmRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEB1c_ENCNvXs1t_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2o_8BTreeMapmB1g_ENtNtBe_3cmp9PartialEq2eq0E0B1k_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.t, %bb.u
  %.sroa.01.06.i.i.i.i.i = phi i64 [ %i.dy, %bb.u ], [ 0, %bb.t ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [40 x i8], ptr %i.dw, i64 %.sroa.01.06.i.i.i.i.i ; 2 uses
  %i.ea = getelementptr inbounds nuw [40 x i8], ptr %i.du, i64 %.sroa.01.06.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4926)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.ec = load i16, ptr %i.eb, align 8, !alias.scope !4927, !noalias !4928, !noundef !4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ee = load i16, ptr %i.ed, align 8, !alias.scope !4929, !noalias !4930, !noundef !4
  %i.ef = icmp eq i16 %i.ec, %i.ee
  br i1 %i.ef, label %_RNvYNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTTRmRB1N_EB3P_ENCNvXs1t_BU_INtBU_8BTreeMapmB1N_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1R_.exit

_RNvYNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.eg = tail call noundef zeroext i1 @_RNvXsd_NtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB5_5StoreNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ea), !noalias !4931
  br i1 %i.eg, label %bb.u, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTTRmRB1N_EB3P_ENCNvXs1t_BU_INtBU_8BTreeMapmB1N_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1R_.exit

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkTTRmRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEB1c_ENCNvXs1t_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2o_8BTreeMapmB1g_ENtNtBe_3cmp9PartialEq2eq0E0B1k_.exit.i: ; preds = %bb.u, %bb.t, %bb.r
  %i.eh = icmp eq i64 %.sroa.2799.0174, 0
  br i1 %i.eh, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTTRmRB1N_EB3P_ENCNvXs1t_BU_INtBU_8BTreeMapmB1N_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1R_.exit, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i: ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkTTRmRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEB1c_ENCNvXs1t_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2o_8BTreeMapmB1g_ENtNtBe_3cmp9PartialEq2eq0E0B1k_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0172) ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.7.0172, i64 318
  %i.ej = load i16, ptr %i.ei, align 2, !noalias !4932, !noundef !4
  %i.ek = zext i16 %i.ej to i64
  %i.el = icmp ult i64 %.sroa.21.0166, %i.ek
  br i1 %i.el, label %.thread144, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i, %bb.v
  %.sroa.0.022.i.i.i.i = phi ptr [ %i.em, %bb.v ], [ %.sroa.7.0172, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i = phi i64 [ %i.en, %bb.v ], [ 0, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i ] ; 2 uses
  %i.em = load ptr, ptr %.sroa.0.022.i.i.i.i, align 8, !noalias !4933, !noundef !4 ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.en = add i64 %.sroa.5.021.i.i.i.i, 1         ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 316
  %i.ep = load i16, ptr %i.eo, align 4, !noalias !4933 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 318
  %i.er = load i16, ptr %i.eq, align 2, !noalias !4932, !noundef !4
  %i.es = icmp ult i16 %i.ep, %i.er
  br i1 %i.es, label %bb.x, label %.lr.ph.i.i.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #37
          to label %.noexc.i.i unwind label %bb.z, !noalias !4934

.noexc.i.i:                                       ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.et = zext i16 %i.ep to i64                   ; 4 uses
  %i.eu = icmp eq i64 %i.en, 0
  br i1 %i.eu, label %.thread144, label %bb.y

.thread144:                                       ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i, %bb.x
  %.sroa.06.0.ph.i.i.i151 = phi ptr [ %i.em, %bb.x ], [ %.sroa.7.0172, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i ] ; 2 uses
  %.sroa.10.0.ph.i.i.i149 = phi i64 [ %i.et, %bb.x ], [ %.sroa.21.0166, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i ] ; 2 uses
  %i.ev = add nuw nsw i64 %.sroa.10.0.ph.i.i.i149, 1
  br label %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB18_.exit

bb.y:                                             ; preds = %bb.x
  %i.ew = icmp ult i16 %i.ep, 11
  tail call void @llvm.assume(i1 %i.ew), !noalias !4910
  %i.ex = getelementptr i8, ptr %i.em, i64 328
  %i.ey = getelementptr [8 x i8], ptr %i.ex, i64 %i.et ; 2 uses
  %xtraiter253 = and i64 %i.en, 7                 ; 2 uses
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  br i1 %lcmp.mod254.not, label %.prol.loopexit250, label %.prol.preheader249

.prol.preheader249:                               ; preds = %bb.y, %.prol.preheader249
  %.sroa.017.0.in.i.i.i.i.prol = phi ptr [ %i.ez, %.prol.preheader249 ], [ %i.ey, %bb.y ]
  %.sroa.019.0.in.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader249 ], [ %i.en, %bb.y ]
  %prol.iter255 = phi i64 [ %prol.iter255.next, %.prol.preheader249 ], [ 0, %bb.y ]
  %.sroa.019.0.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.prol, align 8, !noalias !4935, !nonnull !4, !noundef !4 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.prol, i64 320 ; 2 uses
  %prol.iter255.next = add i64 %prol.iter255, 1   ; 2 uses
  %prol.iter255.cmp.not = icmp eq i64 %prol.iter255.next, %xtraiter253
  br i1 %prol.iter255.cmp.not, label %.prol.loopexit250, label %.prol.preheader249, !llvm.loop !4901

.prol.loopexit250:                                ; preds = %.prol.preheader249, %bb.y
  %.sroa.017.0.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.y ], [ %.sroa.017.0.i.i.i.i.prol, %.prol.preheader249 ]
  %.sroa.017.0.in.i.i.i.i.unr = phi ptr [ %i.ey, %bb.y ], [ %i.ez, %.prol.preheader249 ]
  %.sroa.019.0.in.i.i.i.i.unr = phi i64 [ %i.en, %bb.y ], [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader249 ]
  %i.fa = icmp ult i64 %.sroa.5.021.i.i.i.i, 7
  br i1 %i.fa, label %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB18_.exit, label %.new251

.new251:                                          ; preds = %.prol.loopexit250, %.new251
  %.sroa.017.0.in.i.i.i.i = phi ptr [ %i.fj, %.new251 ], [ %.sroa.017.0.in.i.i.i.i.unr, %.prol.loopexit250 ]
  %.sroa.019.0.in.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.7, %.new251 ], [ %.sroa.019.0.in.i.i.i.i.unr, %.prol.loopexit250 ]
  %.sroa.017.0.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i, align 8, !noalias !4935, !nonnull !4, !noundef !4
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i, i64 320
  %.sroa.017.0.i.i.i.i.1 = load ptr, ptr %i.fb, align 8, !noalias !4935, !nonnull !4, !noundef !4
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.1, i64 320
  %.sroa.017.0.i.i.i.i.2 = load ptr, ptr %i.fc, align 8, !noalias !4935, !nonnull !4, !noundef !4
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.2, i64 320
  %.sroa.017.0.i.i.i.i.3 = load ptr, ptr %i.fd, align 8, !noalias !4935, !nonnull !4, !noundef !4
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.3, i64 320
  %.sroa.017.0.i.i.i.i.4 = load ptr, ptr %i.fe, align 8, !noalias !4935, !nonnull !4, !noundef !4
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.4, i64 320
  %.sroa.017.0.i.i.i.i.5 = load ptr, ptr %i.ff, align 8, !noalias !4935, !nonnull !4, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.5, i64 320
  %.sroa.017.0.i.i.i.i.6 = load ptr, ptr %i.fg, align 8, !noalias !4935, !nonnull !4, !noundef !4
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.6, i64 320
  %.sroa.019.0.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.7 = load ptr, ptr %i.fh, align 8, !noalias !4935, !nonnull !4, !noundef !4 ; 2 uses
  %i.fi = icmp eq i64 %.sroa.019.0.i.i.i.i.7, 0
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.7, i64 320
  br i1 %i.fi, label %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB18_.exit, label %.new251

bb.z:                                             ; preds = %bb.w
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !4910
  unreachable

_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB18_.exit: ; preds = %.prol.loopexit250, %.new251, %.thread144
  %.sroa.06.0.ph.i.i.i150 = phi ptr [ %.sroa.06.0.ph.i.i.i151, %.thread144 ], [ %i.em, %.new251 ], [ %i.em, %.prol.loopexit250 ] ; 2 uses
  %.sroa.10.0.ph.i.i.i148 = phi i64 [ %.sroa.10.0.ph.i.i.i149, %.thread144 ], [ %i.et, %.new251 ], [ %i.et, %.prol.loopexit250 ] ; 3 uses
  %.sroa.78.0.i.i.i = phi i64 [ %i.ev, %.thread144 ], [ 0, %.new251 ], [ 0, %.prol.loopexit250 ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i151, %.thread144 ], [ %.sroa.017.0.i.i.i.i.lcssa.unr, %.prol.loopexit250 ], [ %.sroa.017.0.i.i.i.i.7, %.new251 ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i150, i64 272
  %i.fm = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i148, 11
  tail call void @llvm.assume(i1 %i.fm), !noalias !4910
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %.sroa.10.0.ph.i.i.i148
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i150, i64 8
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %.sroa.10.0.ph.i.i.i148
  %i.fq = icmp eq i64 %i.bk, 0
  br i1 %i.fq, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4ItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTTRmRB1N_EB3P_ENCNvXs1t_BU_INtBU_8BTreeMapmB1N_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1R_.exit, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i8, ptr %1, align 8, !range !22, !noundef !4
  switch i8 %i.d, label %default.unreachable23 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
    i8 28, label %bb.ad
    i8 29, label %bb.ae
    i8 30, label %bb.af
    i8 31, label %bb.ag
    i8 32, label %bb.ah
    i8 33, label %bb.ai
    i8 34, label %bb.aj
    i8 35, label %bb.ao
    i8 36, label %bb.ap
    i8 37, label %bb.aq
    i8 38, label %bb.ar
    i8 39, label %bb.as
    i8 40, label %bb.at
  ]

default.unreachable23:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8
  br label %bb.au

bb.d:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 8
  br label %bb.au

bb.e:                                             ; preds = %bb.a
  store i8 3, ptr %0, align 8
  br label %bb.au

bb.f:                                             ; preds = %bb.a
  store i8 4, ptr %0, align 8
  br label %bb.au

bb.g:                                             ; preds = %bb.a
  store i8 5, ptr %0, align 8
  br label %bb.au

bb.h:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  br label %bb.au

bb.i:                                             ; preds = %bb.a
  store i8 7, ptr %0, align 8
  br label %bb.au

bb.j:                                             ; preds = %bb.a
  store i8 8, ptr %0, align 8
  br label %bb.au
end_hunk_0
