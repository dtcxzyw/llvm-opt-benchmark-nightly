Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 190
loop-unroll.NumUnrolled: 294
begin_hunk_0_@_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb15DataOverlayFileEB19_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18925)
  br i1 %.not3.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_file8CoverageE6map_orjNvMs3_BL_BJ_11encoded_lenEBR_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileE6map_orjNCNvXs1A_BL_NtBL_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0EBP_.exit.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18927)
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !18928, !nonnull !97, !noundef !97 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !18928, !noundef !97 ; 6 uses
  %i.r = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.r, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.d
  %xtraiter = and i64 %.val2.i.i.i.i.i.i.i.i, 1
  %i.s = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new:   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.val2.i.i.i.i.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ap, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ao, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.val1.i.i.i.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !18929, !noalias !18928, !noundef !97 ; 3 uses
  %i.v = or i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.w = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = xor i64 %i.w, 63
  %i.y = mul nuw nsw i64 %i.x, 9
  %i.z = add nuw nsw i64 %i.y, 73
  %i.aa = lshr i64 %i.z, 6
  %i.ab = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ad = add i64 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.val1.i.i.i.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i
  %i.af = getelementptr i8, ptr %i.ae, i64 40
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.af, align 8, !alias.scope !18929, !noalias !18928, !noundef !97 ; 3 uses
  %i.ag = or i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.1, 1
  %i.ah = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = xor i64 %i.ah, 63
  %i.aj = mul nuw nsw i64 %i.ai, 9
  %i.ak = add nuw nsw i64 %i.aj, 73
  %i.al = lshr i64 %i.ak, 6
  %i.am = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.1, -1
  tail call void @llvm.assume(i1 %i.am)
  %i.an = add i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.1, %i.ad
  %i.ao = add i64 %i.an, %i.al                    ; 3 uses
  %i.ap = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:  ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ap, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ao, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %.val2.i.i.i.i.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %.val1.i.i.i.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.epil.init
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.ar, align 8, !alias.scope !18929, !noalias !18928, !noundef !97 ; 3 uses
  %i.as = or i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %i.at = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.as, i1 true)
  %i.au = xor i64 %i.at, 63
  %i.av = mul nuw nsw i64 %i.au, 9
  %i.aw = add nuw nsw i64 %i.av, 73
  %i.ax = lshr i64 %i.aw, 6
  %i.ay = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.epil, -1
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.epil.init
  %i.ba = add i64 %i.az, %i.ax
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ao, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.ba, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.bb = add i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i ; 2 uses
  %i.bc = or i64 %i.bb, 1
  %i.bd = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bc, i1 true)
  br label %_RNvYNvMs3_NtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_fileNtB8_8Coverage11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceBe_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !18928, !noundef !97 ; 3 uses
  %i.bf = or i64 %.val.i.i.i.i.i.i.i.i, 1
  %i.bg = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.bf, i1 true)
  %i.bh = icmp sgt i64 %.val.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.bh)
  br label %_RNvYNvMs3_NtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_fileNtB8_8Coverage11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceBe_.exit.i.i.i.i.i.i

_RNvYNvMs3_NtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_fileNtB8_8Coverage11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceBe_.exit.i.i.i.i.i.i: ; preds = %bb.e, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.i.i.i.i
  %.val.sink.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i.i.i.i, %bb.e ], [ %i.bb, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.i.i.i.i ]
  %.sink3.in.in.in.in.i.i.i.i.i.i.i.i = phi i64 [ %i.bg, %bb.e ], [ %i.bd, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.i.i.i.i ]
  %.sink3.in.in.in.i.i.i.i.i.i.i.i = xor i64 %.sink3.in.in.in.in.i.i.i.i.i.i.i.i, 63
  %.sink3.in.in.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.sink3.in.in.in.i.i.i.i.i.i.i.i, 9
  %.sink3.in.i.i.i.i.i.i.i.i = add nuw nsw i64 %.sink3.in.in.i.i.i.i.i.i.i.i, 73
  %.sink3.i.i.i.i.i.i.i.i = lshr i64 %.sink3.in.i.i.i.i.i.i.i.i, 6
  %i.bi = add i64 %.val.sink.i.i.i.i.i.i.i.i, 1
  %i.bj = add i64 %i.bi, %.sink3.i.i.i.i.i.i.i.i
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_file8CoverageE6map_orjNvMs3_BL_BJ_11encoded_lenEBR_.exit.i.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_file8CoverageE6map_orjNvMs3_BL_BJ_11encoded_lenEBR_.exit.i.i.i.i.i: ; preds = %_RNvYNvMs3_NtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_fileNtB8_8Coverage11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceBe_.exit.i.i.i.i.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileE6map_orjNCNvXs1A_BL_NtBL_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0EBP_.exit.i.i.i.i.i
  %.sroa.02.0.i4.i.i.i.i.i = phi i64 [ %i.bj, %_RNvYNvMs3_NtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_fileNtB8_8Coverage11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceBe_.exit.i.i.i.i.i.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileE6map_orjNCNvXs1A_BL_NtBL_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0EBP_.exit.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !18924, !noundef !97 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table6format2pb15DataOverlayFilejjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB25_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB45_3Sum3sumINtB4_3MapIB4F_INtNtNtBa_5slice4iter4IterBV_EB1V_EB31_EE0E0E0B11_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_file8CoverageE6map_orjNvMs3_BL_BJ_11encoded_lenEBR_.exit.i.i.i.i.i
  %i.bn = or i64 %i.bl, 1
  %i.bo = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bn, i1 true)
  %i.bp = xor i64 %i.bo, 63
  %i.bq = mul nuw nsw i64 %i.bp, 9
  %i.br = add nuw nsw i64 %i.bq, 73
  %i.bs = lshr i64 %i.br, 6
  %i.bt = add nuw nsw i64 %i.bs, 1
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table6format2pb15DataOverlayFilejjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB25_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB45_3Sum3sumINtB4_3MapIB4F_INtNtNtBa_5slice4iter4IterBV_EB1V_EB31_EE0E0E0B11_.exit.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table6format2pb15DataOverlayFilejjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB25_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB45_3Sum3sumINtB4_3MapIB4F_INtNtNtBa_5slice4iter4IterBV_EB1V_EB31_EE0E0E0B11_.exit.i.i: ; preds = %bb.f, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_file8CoverageE6map_orjNvMs3_BL_BJ_11encoded_lenEBR_.exit.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.bt, %bb.f ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_file8CoverageE6map_orjNvMs3_BL_BJ_11encoded_lenEBR_.exit.i.i.i.i.i ]
  %i.bu = add i64 %.sroa.02.0.i4.i.i.i.i.i, %.sroa.02.0.i.i.i.i.i.i
  %i.bv = add i64 %i.bu, %.sroa.02.0.i.i.i.i.i    ; 2 uses
  %i.bw = or i64 %i.bv, 1
  %i.bx = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = xor i64 %i.bx, 63
  %i.bz = mul nuw nsw i64 %i.by, 9
  %i.ca = add nuw nsw i64 %i.bz, 73
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = add i64 %i.bv, %.sroa.02.0.i.i
  %i.cd = add i64 %i.cc, %i.cb                    ; 2 uses
  %i.ce = add nuw nsw i64 %.sroa.04.0.i.i, 1      ; 2 uses
  %i.cf = icmp eq i64 %i.ce, %1
  br i1 %i.cf, label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format2pb15DataOverlayFileENvYB1n_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2x_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3p_5accumjNtB5o_3Sum3sumIBO_BN_B4j_EE0E0EB1t_.exit, label %.preheader

_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format2pb15DataOverlayFileENvYB1n_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2x_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3p_5accumjNtB5o_3Sum3sumIBO_BN_B4j_EE0E0EB1t_.exit: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table6format2pb15DataOverlayFilejjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB25_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB45_3Sum3sumINtB4_3MapIB4F_INtNtNtBa_5slice4iter4IterBV_EB1V_EB31_EE0E0E0B11_.exit.i.i, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.cd, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table6format2pb15DataOverlayFilejjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB25_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB45_3Sum3sumINtB4_3MapIB4F_INtNtNtBa_5slice4iter4IterBV_EB1V_EB31_EE0E0E0B11_.exit.i.i ]
  %i.cg = add i64 %.sroa.0.0.i.i, %1
  ret i64 %i.cg
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShEBT_(i8 noundef range(i8 0, 6) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i32 noundef range(i32 99, 101) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !19055 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [40 x i8], align 16               ; 11 uses
  %i.c = alloca [40 x i8], align 16               ; 11 uses
  %i.d = alloca [40 x i8], align 8                ; 11 uses
  %i.e = alloca [56 x i8], align 16               ; 12 uses
  %i.f = alloca [16 x i8], align 16               ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %.not = icmp eq i8 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i8 %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  store i8 2, ptr %i.n, align 1
  store i64 -9223372036854775802, ptr %i.l, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = add nsw i32 %3, -1                       ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19057)
  %i.q = tail call fastcc { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !noalias !19056 ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = trunc nuw i64 %i.r to i1
  br i1 %i.u, label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !19057, !nonnull !97, !align !102, !noundef !97
  %i.v = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i = load i64, ptr %i.v, align 8, !noalias !19056, !noundef !97 ; 2 uses
  %i.w = icmp ult i64 %.val.i.i, %i.t
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = sub nuw i64 %.val.i.i, %i.t              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 27 uses
  %.sroa.5151.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6154.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.7157.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  %.sroa.545.sroa.6.0..sroa.545.0..sroa_idx46.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %.sroa.545.sroa.7.0..sroa.545.0..sroa_idx46.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.5140.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6143.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.7146.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.5.0..sroa_idx123.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !19058
  store i64 -9223372036854775801, ptr %i.k, align 8, !noalias !19058
  %i.ac = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k), !noalias !19056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !19058
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit

bb.g:                                             ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShE0BV_.exit.i, %bb.e
  %.val15.i = load ptr, ptr %2, align 8, !alias.scope !19057, !nonnull !97, !align !102, !noundef !97
  %i.ad = getelementptr i8, ptr %.val15.i, i64 8
  %.val.i17.i = load i64, ptr %i.ad, align 8, !noalias !19056, !noundef !97 ; 2 uses
  %i.ae = icmp ugt i64 %.val.i17.i, %i.x
  br i1 %i.ae, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq i64 %.val.i17.i, %i.x
  br i1 %.not.i, label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit, label %bb.ce

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19059)
  %i.af = tail call fastcc { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !noalias !19060 ; 2 uses
  %i.ag = extractvalue { i64, ptr } %i.af, 0
  %i.ah = extractvalue { i64, ptr } %i.af, 1      ; 4 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.aj = trunc nuw i64 %i.ag to i1
  br i1 %i.aj, label %.loopexit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp ugt ptr %i.ah, inttoptr (i64 4294967295 to ptr)
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = and i64 %i.ai, 7                        ; 3 uses
  %switch.i.i = icmp samesign ult i64 %i.al, 6
  br i1 %switch.i.i, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !19061
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.ai, ptr %i.am, align 8, !noalias !19061
  store i64 -9223372036854775804, ptr %i.i, align 8, !noalias !19061
  %i.an = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.i), !noalias !19060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !19061
  br label %.loopexit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !19061
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.al, ptr %i.ao, align 8, !noalias !19061
  store i64 -9223372036854775805, ptr %i.g, align 8, !noalias !19061
  %i.ap = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g), !noalias !19060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19061
  br label %.loopexit.i

bb.n:                                             ; preds = %bb.k
  %i.aq = trunc nuw i64 %i.ai to i32
  %i.ar = lshr i32 %i.aq, 3                       ; 3 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !19061
  store i64 -9223372036854775803, ptr %i.h, align 8, !noalias !19061
  %i.at = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.h), !noalias !19060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !19061
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.i, %bb.o, %bb.m, %bb.l
  %.sroa.11.0.ph.i.i = phi ptr [ %i.an, %bb.l ], [ %i.at, %bb.o ], [ %i.ap, %bb.m ], [ %i.ah, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph.i.i) ]
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit

bb.p:                                             ; preds = %bb.n
  %.sroa.11.8.extract.trunc.i.i = trunc nuw nsw i64 %i.al to i8 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19062)
  %switch.i.i.i = icmp ult ptr %i.ah, inttoptr (i64 48 to ptr)
  br i1 %switch.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = tail call fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10skip_fieldQRShECs9KQ7US1M400_11lance_table(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, i32 noundef %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.p), !noalias !19063
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShE0BV_.exit.i

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19064)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19065
  %i.av = load i64, ptr %1, align 8, !range !149, !alias.scope !19066, !noundef !97 ; 31 uses
  %.not66.i.i.i.i = icmp eq i64 %i.av, -3         ; 10 uses
  switch i32 %i.ar, label %default.unreachable.i.i.i [
    i32 1, label %4
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 4, label %bb.u
    i32 5, label %bb.v
  ], !prof !19067

default.unreachable.i.i.i:                        ; preds = %bb.r
  unreachable

4:                                                ; preds = %bb.r
  br i1 %.not66.i.i.i.i, label %bb.x, label %bb.w

bb.s:                                             ; preds = %bb.r
  br i1 %.not66.i.i.i.i, label %bb.ah, label %bb.ag

bb.t:                                             ; preds = %bb.r
  br i1 %.not66.i.i.i.i, label %bb.at, label %6

bb.u:                                             ; preds = %bb.r
  br i1 %.not66.i.i.i.i, label %bb.bg, label %9

bb.v:                                             ; preds = %bb.r
  br i1 %.not66.i.i.i.i, label %bb.bs, label %12

bb.w:                                             ; preds = %4
  %5 = icmp ne i64 %i.av, 4
  tail call void @llvm.assume(i1 %5)
  %i.aw = icmp eq i64 %i.av, 3
  br i1 %i.aw, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19068
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !19068
  %i.ax = call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment5RangeQRShEBV_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef align 8 dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.p), !noalias !19066 ; 2 uses
  %.not67.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not67.i.i.i.i, label %bb.z, label %bb.af

bb.y:                                             ; preds = %bb.w
  %i.ay = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment5RangeQRShEBV_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef align 8 dereferenceable(16) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.p)
  br label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.az = load <2 x i64>, ptr %i.f, align 16, !noalias !19068
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19070)
  br i1 %.not66.i.i.i.i, label %_RNCINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB8_7Segment5mergeQRShE0Be_.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19071)
  %i.ba = icmp ne i64 %i.av, 4
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add nsw i64 %i.av, -3
  %i.bc = icmp sgt i64 %i.av, 2
  %i.bd = select i1 %i.bc, i64 %i.bb, i64 1
  switch i64 %i.bd, label %bb.ab [
    i64 0, label %_RNCINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB8_7Segment5mergeQRShE0Be_.exit.i.i.i.i
    i64 1, label %bb.ac
    i64 2, label %bb.ad
    i64 3, label %bb.ae
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.be = load i64, ptr %i.y, align 8, !range !144, !alias.scope !19072, !noundef !97
  %i.bf = icmp eq i64 %i.be, -1
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !19073 ; 2 uses
  %i.bg = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %or.cond.i.i.i.i.i.i, label %_RNCINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB8_7Segment5mergeQRShE0Be_.exit.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.sink6.i.i.i.i.i.i.i = phi i64 [ 16, %bb.ad ], [ 16, %bb.ac ], [ 24, %bb.ae ], [ 24, %bb.ab ]
  %.val.i.i.i2.sink.i.i.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i.i.i, %bb.ad ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ac ], [ %.val.i.i.i2.i.i.i.i.i.i.i, %bb.ae ], [ %.val.i.i.i.i.i.i.i.i.i.i, %bb.ab ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %.sink6.i.i.i.i.i.i.i
  %.val5.i.i.i4.i.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !19074, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i4.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i2.sink.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !19074
  br label %_RNCINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB8_7Segment5mergeQRShE0Be_.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %switch.i.i.i.i.i.i = icmp ugt i64 %i.av, -3
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !19073 ; 2 uses
  %i.bi = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond5.i.i.i.i.i.i = select i1 %switch.i.i.i.i.i.i, i1 true, i1 %i.bi
  br i1 %or.cond5.i.i.i.i.i.i, label %_RNCINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB8_7Segment5mergeQRShE0Be_.exit.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.aa
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !19074 ; 2 uses
  %i.bj = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.bj, label %_RNCINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB8_7Segment5mergeQRShE0Be_.exit.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.bk = load i64, ptr %i.y, align 8, !range !144, !alias.scope !19075, !noundef !97
  %i.bl = icmp eq i64 %i.bk, -1
  %.val.i.i.i2.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !19073 ; 2 uses
  %i.bm = icmp eq i64 %.val.i.i.i2.i.i.i.i.i.i.i, 0
  %or.cond3.i.i.i.i.i.i = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %or.cond3.i.i.i.i.i.i, label %_RNCINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB8_7Segment5mergeQRShE0Be_.exit.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i.i

_RNCINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB8_7Segment5mergeQRShE0Be_.exit.i.i.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i.i, %bb.ab, %bb.aa, %bb.z
  store i64 3, ptr %1, align 8, !alias.scope !19076
  store <2 x i64> %i.az, ptr %i.y, align 8, !alias.scope !19076
  br label %bb.af

bb.af:                                            ; preds = %_RNCINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB8_7Segment5mergeQRShE0Be_.exit.i.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19068
  br label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.i.i.i

bb.ag:                                            ; preds = %bb.s
  %i.bn = icmp ne i64 %i.av, 4
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp slt i64 %i.av, 3
  br i1 %i.bo, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false), !noalias !19068
  store i64 -2, ptr %i.e, align 16, !noalias !19068
  %i.bp = invoke fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment14RangeWithHolesQRShEBV_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef align 8 dereferenceable(56) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.p)
          to label %bb.aj unwind label %bb.ar, !noalias !19066 ; 3 uses

bb.ai:                                            ; preds = %bb.ag
  %i.bq = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment14RangeWithHolesQRShEBV_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.p)
  br label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.br = load <2 x i64>, ptr %i.e, align 16, !noalias !19068 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16, !noalias !19068 ; 3 uses
  %.not62.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not62.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bs = extractelement <2 x i64> %i.br, i64 0
  %switch.i.i.i.i = icmp ugt i64 %i.bs, -3
  %i.bt = extractelement <2 x i64> %i.br, i64 1   ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  %or.cond212.i.i.i.i = select i1 %switch.i.i.i.i, i1 true, i1 %i.bu
  br i1 %or.cond212.i.i.i.i, label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i.i, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !19077
  br label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread.i.i.i

bb.al:                                            ; preds = %bb.aj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19078)
  br i1 %.not66.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19079)
  %i.bv = icmp ne i64 %i.av, 4
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = add nsw i64 %i.av, -3
  %i.bx = icmp sgt i64 %i.av, 2
  %i.by = select i1 %i.bx, i64 %i.bw, i64 1
  switch i64 %i.by, label %bb.an [
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit.i.i.i.i
    i64 1, label %bb.ao
    i64 2, label %bb.ap
    i64 3, label %bb.aq
  ]

bb.an:                                            ; preds = %bb.am
  %i.bz = load i64, ptr %i.y, align 8, !range !144, !alias.scope !19080, !noundef !97
  %i.ca = icmp eq i64 %i.bz, -1
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !19081 ; 2 uses
  %i.cb = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %or.cond.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.sink6.i.i.i.i.i.i = phi i64 [ 16, %bb.ap ], [ 16, %bb.ao ], [ 24, %bb.aq ], [ 24, %bb.an ]
  %.val.i.i.i2.sink.i.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i.i, %bb.ap ], [ %.val.i.i.i.i.i.i.i.i.i.i.i, %bb.ao ], [ %.val.i.i.i2.i.i.i.i.i.i, %bb.aq ], [ %.val.i.i.i.i.i.i.i.i.i, %bb.an ]
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %.sink6.i.i.i.i.i.i
  %.val5.i.i.i4.i.i.i.i.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !19082, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i4.i.i.i.i.i.i, i64 noundef %.val.i.i.i2.sink.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !19082
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %switch.i.i.i.i.i = icmp ugt i64 %i.av, -3
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !19081 ; 2 uses
  %i.cd = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond5.i.i.i.i.i = select i1 %switch.i.i.i.i.i, i1 true, i1 %i.cd
  br i1 %or.cond5.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.am
  %.val.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !19082 ; 2 uses
  %i.ce = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ce, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.am
  %i.cf = load i64, ptr %i.y, align 8, !range !144, !alias.scope !19083, !noundef !97
  %i.cg = icmp eq i64 %i.cf, -1
  %.val.i.i.i2.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !19081 ; 2 uses
  %i.ch = icmp eq i64 %.val.i.i.i2.i.i.i.i.i.i, 0
  %or.cond3.i.i.i.i.i = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond3.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit.i.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.ao, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i, %bb.an, %bb.am, %bb.al
  store <2 x i64> %i.br, ptr %1, align 8, !alias.scope !19066
  store ptr %.sroa.6.0.copyload.i.i.i.i, ptr %i.z, align 8, !alias.scope !19066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.545.sroa.6.0..sroa.545.0..sroa_idx46.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !19084
  br label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread9.i.i.i

common.resume.i.i.i:                              ; preds = %bb.cd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i119.i.i.i.i, %bb.cc, %bb.cb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i.i.i.i, %bb.br, %bb.bq, %bb.bf, %bb.be, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i.i.i.i.i.i, %bb.as, %bb.ar
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ew, %bb.cd ], [ %i.es, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i119.i.i.i.i ], [ %i.dx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i.i.i.i ], [ %i.es, %bb.cc ], [ %i.ci, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.es, %bb.cb ], [ %i.db, %bb.bf ], [ %i.dx, %bb.br ], [ %i.dx, %bb.bq ], [ %i.ci, %bb.ar ], [ %i.ci, %bb.as ], [ %i.db, %bb.be ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.ar:                                            ; preds = %bb.ah
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cj = load i64, ptr %i.e, align 16, !range !181, !noalias !19068, !noundef !97
  %switch13.i.i.i = icmp ugt i64 %i.cj, -3
  br i1 %switch13.i.i.i, label %common.resume.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val.i.i.i.i.i74.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx123.i.i.i.i, align 8, !noalias !19068 ; 2 uses
  %i.ck = icmp eq i64 %.val.i.i.i.i.i74.i.i.i.i, 0
  br i1 %i.ck, label %common.resume.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i.i.i.i.i.i: ; preds = %bb.as
  %.val5.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16, !noalias !19068, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i74.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !19085
  br label %common.resume.i.i.i

6:                                                ; preds = %bb.t
  %7 = icmp ne i64 %i.av, 4
  tail call void @llvm.assume(i1 %7)
  %8 = icmp eq i64 %i.av, 5
  br i1 %8, label %bb.au, label %bb.at

bb.at:                                            ; preds = %6, %bb.t
  store i64 0, ptr %i.d, align 8, !noalias !19068
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false), !noalias !19068
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !19068
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !19068
  %i.cl = invoke fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment15RangeWithBitmapQRShEBV_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef align 8 dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.p)
          to label %bb.av unwind label %bb.be, !noalias !19066 ; 3 uses

bb.au:                                            ; preds = %6
  %i.cm = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment15RangeWithBitmapQRShEBV_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef align 8 dereferenceable(40) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.p)
  br label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.i.i.i

bb.av:                                            ; preds = %bb.at
  %.sroa.0130.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !19068 ; 3 uses
  %.sroa.5132.0.copyload.i.i.i.i = load ptr, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !19068 ; 3 uses
  %.not58.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not58.i.i.i.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cn = icmp eq i64 %.sroa.0130.0.copyload.i.i.i.i, 0
  br i1 %i.cn, label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5132.0.copyload.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5132.0.copyload.i.i.i.i, i64 noundef %.sroa.0130.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !19066
  br label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread.i.i.i

bb.ay:                                            ; preds = %bb.av
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19086)
  br i1 %.not66.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit87.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19087)
  %i.co = icmp ne i64 %i.av, 4
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = add nsw i64 %i.av, -3
  %i.cq = icmp sgt i64 %i.av, 2
  %i.cr = select i1 %i.cq, i64 %i.cp, i64 1
  switch i64 %i.cr, label %bb.ba [
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit87.i.i.i.i
    i64 1, label %bb.bb
    i64 2, label %bb.bc
    i64 3, label %bb.bd
  ]

bb.ba:                                            ; preds = %bb.az
  %i.cs = load i64, ptr %i.y, align 8, !range !144, !alias.scope !19088, !noundef !97
  %i.ct = icmp eq i64 %i.cs, -1
  %.val.i.i.i.i.i85.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !19089 ; 2 uses
  %i.cu = icmp eq i64 %.val.i.i.i.i.i85.i.i.i.i, 0
  %or.cond.i86.i.i.i.i = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %or.cond.i86.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit87.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i77.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i77.i.i.i.i: ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.sink6.i.i78.i.i.i.i = phi i64 [ 16, %bb.bc ], [ 16, %bb.bb ], [ 24, %bb.bd ], [ 24, %bb.ba ]
  %.val.i.i.i2.sink.i.i79.i.i.i.i = phi i64 [ %.val.i.i81.i.i.i.i, %bb.bc ], [ %.val.i.i.i.i.i.i.i83.i.i.i.i, %bb.bb ], [ %.val.i.i.i2.i.i75.i.i.i.i, %bb.bd ], [ %.val.i.i.i.i.i85.i.i.i.i, %bb.ba ]
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %.sink6.i.i78.i.i.i.i
  %.val5.i.i.i4.i.i80.i.i.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !19090, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i4.i.i80.i.i.i.i, i64 noundef %.val.i.i.i2.sink.i.i79.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !19090
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit87.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %switch.i82.i.i.i.i = icmp ugt i64 %i.av, -3
  %.val.i.i.i.i.i.i.i83.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !19089 ; 2 uses
  %i.cw = icmp eq i64 %.val.i.i.i.i.i.i.i83.i.i.i.i, 0
  %or.cond5.i84.i.i.i.i = select i1 %switch.i82.i.i.i.i, i1 true, i1 %i.cw
  br i1 %or.cond5.i84.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit87.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i77.i.i.i.i

bb.bc:                                            ; preds = %bb.az
  %.val.i.i81.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !19090 ; 2 uses
  %i.cx = icmp eq i64 %.val.i.i81.i.i.i.i, 0
  br i1 %i.cx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit87.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i77.i.i.i.i

bb.bd:                                            ; preds = %bb.az
  %i.cy = load i64, ptr %i.y, align 8, !range !144, !alias.scope !19091, !noundef !97
  %i.cz = icmp eq i64 %i.cy, -1
  %.val.i.i.i2.i.i75.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !19089 ; 2 uses
  %i.da = icmp eq i64 %.val.i.i.i2.i.i75.i.i.i.i, 0
  %or.cond3.i76.i.i.i.i = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %or.cond3.i76.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit87.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i77.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit87.i.i.i.i: ; preds = %bb.bd, %bb.bc, %bb.bb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i77.i.i.i.i, %bb.ba, %bb.az, %bb.ay
  store i64 5, ptr %1, align 8, !alias.scope !19066
  store i64 %.sroa.0130.0.copyload.i.i.i.i, ptr %i.y, align 8, !alias.scope !19066
  store ptr %.sroa.5132.0.copyload.i.i.i.i, ptr %i.z, align 8, !alias.scope !19066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.545.sroa.6.0..sroa.545.0..sroa_idx46.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !19084
  br label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread9.i.i.i

bb.be:                                            ; preds = %bb.at
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !19068 ; 2 uses
  %i.dc = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.dc, label %common.resume.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val68.i.i.i.i = load ptr, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !19068, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val68.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !19066
  br label %common.resume.i.i.i

9:                                                ; preds = %bb.u
  %10 = icmp ne i64 %i.av, 4
  tail call void @llvm.assume(i1 %10)
  %11 = icmp eq i64 %i.av, 6
  br i1 %11, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %9, %bb.u
  store i64 -1, ptr %i.c, align 16, !noalias !19068
  %i.dd = invoke fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayQRShEBT_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef align 8 dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.p)
          to label %bb.bi unwind label %bb.bq, !noalias !19066 ; 3 uses

bb.bh:                                            ; preds = %9
  %i.de = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayQRShEBT_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef align 8 dereferenceable(40) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.p)
  br label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.df = load <2 x i64>, ptr %i.c, align 16, !noalias !19068 ; 3 uses
  %.sroa.6143.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6143.0..sroa_idx.i.i.i.i, align 16, !noalias !19068 ; 3 uses
  %.not54.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not54.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dg = extractelement <2 x i64> %i.df, i64 0
  %i.dh = icmp eq i64 %i.dg, -1
  %i.di = extractelement <2 x i64> %i.df, i64 1   ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  %or.cond.i.i.i.i = select i1 %i.dh, i1 true, i1 %i.dj
  br i1 %or.cond.i.i.i.i, label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6143.0.copyload.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6143.0.copyload.i.i.i.i, i64 noundef %i.di, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !19092
  br label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread.i.i.i

bb.bk:                                            ; preds = %bb.bi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19093)
  br i1 %.not66.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit100.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19094)
  %i.dk = icmp ne i64 %i.av, 4
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = add nsw i64 %i.av, -3
  %i.dm = icmp sgt i64 %i.av, 2
  %i.dn = select i1 %i.dm, i64 %i.dl, i64 1
  switch i64 %i.dn, label %bb.bm [
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit100.i.i.i.i
    i64 1, label %bb.bn
    i64 2, label %bb.bo
    i64 3, label %bb.bp
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.do = load i64, ptr %i.y, align 8, !range !144, !alias.scope !19095, !noundef !97
  %i.dp = icmp eq i64 %i.do, -1
  %.val.i.i.i.i.i98.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !19096 ; 2 uses
  %i.dq = icmp eq i64 %.val.i.i.i.i.i98.i.i.i.i, 0
  %or.cond.i99.i.i.i.i = select i1 %i.dp, i1 true, i1 %i.dq
  br i1 %or.cond.i99.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit100.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i90.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i90.i.i.i.i: ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %.sink6.i.i91.i.i.i.i = phi i64 [ 16, %bb.bo ], [ 16, %bb.bn ], [ 24, %bb.bp ], [ 24, %bb.bm ]
  %.val.i.i.i2.sink.i.i92.i.i.i.i = phi i64 [ %.val.i.i94.i.i.i.i, %bb.bo ], [ %.val.i.i.i.i.i.i.i96.i.i.i.i, %bb.bn ], [ %.val.i.i.i2.i.i88.i.i.i.i, %bb.bp ], [ %.val.i.i.i.i.i98.i.i.i.i, %bb.bm ]
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %.sink6.i.i91.i.i.i.i
  %.val5.i.i.i4.i.i93.i.i.i.i = load ptr, ptr %i.dr, align 8, !alias.scope !19097, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i4.i.i93.i.i.i.i, i64 noundef %.val.i.i.i2.sink.i.i92.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !19097
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit100.i.i.i.i

bb.bn:                                            ; preds = %bb.bl
  %switch.i95.i.i.i.i = icmp ugt i64 %i.av, -3
  %.val.i.i.i.i.i.i.i96.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !19096 ; 2 uses
  %i.ds = icmp eq i64 %.val.i.i.i.i.i.i.i96.i.i.i.i, 0
  %or.cond5.i97.i.i.i.i = select i1 %switch.i95.i.i.i.i, i1 true, i1 %i.ds
  br i1 %or.cond5.i97.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit100.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i90.i.i.i.i

bb.bo:                                            ; preds = %bb.bl
  %.val.i.i94.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !19097 ; 2 uses
  %i.dt = icmp eq i64 %.val.i.i94.i.i.i.i, 0
  br i1 %i.dt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit100.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i90.i.i.i.i

bb.bp:                                            ; preds = %bb.bl
  %i.du = load i64, ptr %i.y, align 8, !range !144, !alias.scope !19098, !noundef !97
  %i.dv = icmp eq i64 %i.du, -1
  %.val.i.i.i2.i.i88.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !19096 ; 2 uses
  %i.dw = icmp eq i64 %.val.i.i.i2.i.i88.i.i.i.i, 0
  %or.cond3.i89.i.i.i.i = select i1 %i.dv, i1 true, i1 %i.dw
  br i1 %or.cond3.i89.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit100.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i90.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit100.i.i.i.i: ; preds = %bb.bp, %bb.bo, %bb.bn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i90.i.i.i.i, %bb.bm, %bb.bl, %bb.bk
  store i64 6, ptr %1, align 8, !alias.scope !19066
  store <2 x i64> %i.df, ptr %i.y, align 8, !alias.scope !19066
  store ptr %.sroa.6143.0.copyload.i.i.i.i, ptr %.sroa.545.sroa.6.0..sroa.545.0..sroa_idx46.sroa_idx.i.i.i.i, align 8, !alias.scope !19066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.545.sroa.7.0..sroa.545.0..sroa_idx46.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7146.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !19084
  br label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread9.i.i.i

bb.bq:                                            ; preds = %bb.bg
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dy = load i64, ptr %i.c, align 16, !range !144, !noalias !19068, !noundef !97
  %i.dz = icmp eq i64 %i.dy, -1
  br i1 %i.dz, label %common.resume.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.val.i.i.i101.i.i.i.i = load i64, ptr %.sroa.5140.0..sroa_idx.i.i.i.i, align 8, !noalias !19068 ; 2 uses
  %i.ea = icmp eq i64 %.val.i.i.i101.i.i.i.i, 0
  br i1 %i.ea, label %common.resume.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i.i.i.i: ; preds = %bb.br
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6143.0..sroa_idx.i.i.i.i, align 16, !noalias !19068, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i101.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !19099
  br label %common.resume.i.i.i

12:                                               ; preds = %bb.v
  %13 = icmp ne i64 %i.av, 4
  tail call void @llvm.assume(i1 %13)
  %14 = icmp eq i64 %i.av, 7
  br i1 %14, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %12, %bb.v
  store i64 -1, ptr %i.b, align 16, !noalias !19068
  %i.eb = invoke fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayQRShEBT_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef align 8 dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.p)
          to label %bb.bu unwind label %bb.cb, !noalias !19066 ; 3 uses

bb.bt:                                            ; preds = %12
  %i.ec = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayQRShEBT_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef align 8 dereferenceable(40) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.p)
  br label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.ed = load <2 x i64>, ptr %i.b, align 16, !noalias !19068 ; 3 uses
  %.sroa.6154.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6154.0..sroa_idx.i.i.i.i, align 16, !noalias !19068 ; 3 uses
  %.not51.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not51.i.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ee = extractelement <2 x i64> %i.ed, i64 0
  %i.ef = icmp eq i64 %i.ee, -1
  %i.eg = extractelement <2 x i64> %i.ed, i64 1   ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  %or.cond211.i.i.i.i = select i1 %i.ef, i1 true, i1 %i.eh
  br i1 %or.cond211.i.i.i.i, label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i103.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i103.i.i.i.i: ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6154.0.copyload.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6154.0.copyload.i.i.i.i, i64 noundef %i.eg, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !19100
  br label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread.i.i.i

bb.bw:                                            ; preds = %bb.bu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19101)
  br i1 %.not66.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit117.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19102)
  %i.ei = icmp ne i64 %i.av, 4
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = add nsw i64 %i.av, -3
  %i.ek = icmp sgt i64 %i.av, 2
  %i.el = select i1 %i.ek, i64 %i.ej, i64 1
  switch i64 %i.el, label %default.unreachable.i.i.i.i [
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit117.i.i.i.i
    i64 1, label %bb.by
    i64 2, label %bb.bz
    i64 3, label %bb.ca
  ]

default.unreachable.i.i.i.i:                      ; preds = %bb.bx
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i107.i.i.i.i: ; preds = %bb.ca, %bb.bz, %bb.by
  %.sink6.i.i108.i.i.i.i = phi i64 [ 16, %bb.bz ], [ 16, %bb.by ], [ 24, %bb.ca ]
  %.val.i.i.i2.sink.i.i109.i.i.i.i = phi i64 [ %.val.i.i111.i.i.i.i, %bb.bz ], [ %.val.i.i.i.i.i.i.i113.i.i.i.i, %bb.by ], [ %.val.i.i.i2.i.i105.i.i.i.i, %bb.ca ]
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 %.sink6.i.i108.i.i.i.i
  %.val5.i.i.i4.i.i110.i.i.i.i = load ptr, ptr %i.em, align 8, !alias.scope !19103, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i4.i.i110.i.i.i.i, i64 noundef %.val.i.i.i2.sink.i.i109.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !19103
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit117.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  %switch.i112.i.i.i.i = icmp ugt i64 %i.av, -3
  %.val.i.i.i.i.i.i.i113.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !19104 ; 2 uses
  %i.en = icmp eq i64 %.val.i.i.i.i.i.i.i113.i.i.i.i, 0
  %or.cond5.i114.i.i.i.i = select i1 %switch.i112.i.i.i.i, i1 true, i1 %i.en
  br i1 %or.cond5.i114.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit117.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i107.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %.val.i.i111.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !19103 ; 2 uses
  %i.eo = icmp eq i64 %.val.i.i111.i.i.i.i, 0
  br i1 %i.eo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit117.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i107.i.i.i.i

bb.ca:                                            ; preds = %bb.bx
  %i.ep = load i64, ptr %i.y, align 8, !range !144, !alias.scope !19105, !noundef !97
  %i.eq = icmp eq i64 %i.ep, -1
  %.val.i.i.i2.i.i105.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !19104 ; 2 uses
  %i.er = icmp eq i64 %.val.i.i.i2.i.i105.i.i.i.i, 0
  %or.cond3.i106.i.i.i.i = select i1 %i.eq, i1 true, i1 %i.er
  br i1 %or.cond3.i106.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit117.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i107.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit117.i.i.i.i: ; preds = %bb.ca, %bb.bz, %bb.by, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i107.i.i.i.i, %bb.bx, %bb.bw
  store i64 7, ptr %1, align 8, !alias.scope !19066
  store <2 x i64> %i.ed, ptr %i.y, align 8, !alias.scope !19066
  store ptr %.sroa.6154.0.copyload.i.i.i.i, ptr %.sroa.545.sroa.6.0..sroa.545.0..sroa_idx46.sroa_idx.i.i.i.i, align 8, !alias.scope !19066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.545.sroa.7.0..sroa.545.0..sroa_idx46.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7157.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !19084
  br label %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread9.i.i.i

bb.cb:                                            ; preds = %bb.bs
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.et = load i64, ptr %i.b, align 16, !range !144, !noalias !19068, !noundef !97
  %i.eu = icmp eq i64 %i.et, -1
  br i1 %i.eu, label %common.resume.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.val.i.i.i118.i.i.i.i = load i64, ptr %.sroa.5151.0..sroa_idx.i.i.i.i, align 8, !noalias !19068 ; 2 uses
  %i.ev = icmp eq i64 %.val.i.i.i118.i.i.i.i, 0
  br i1 %i.ev, label %common.resume.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i119.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i119.i.i.i.i: ; preds = %bb.cc
  %.val5.i.i.i120.i.i.i.i = load ptr, ptr %.sroa.6154.0..sroa_idx.i.i.i.i, align 16, !noalias !19068, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i120.i.i.i.i, i64 noundef %.val.i.i.i118.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !19106
  br label %common.resume.i.i.i

_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i103.i.i.i.i, %bb.bv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i.i.i.i.i, %bb.bj, %bb.ax, %bb.aw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.ak
  %.sroa.0.0.i.ph.i.i.i = phi ptr [ %i.eb, %bb.bv ], [ %i.eb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i103.i.i.i.i ], [ %i.dd, %bb.bj ], [ %i.dd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i.i.i.i.i ], [ %i.cl, %bb.aw ], [ %i.cl, %bb.ax ], [ %i.bp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayEBJ_.exit.sink.split.i.i.i.i.i.i.i.i.i.i ], [ %i.bp, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19065
  br label %.loopexit21.i

_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread9.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit117.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit100.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit87.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment7SegmentEEB15_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19065
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShE0BV_.exit.i

_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.i.i.i: ; preds = %bb.bt, %bb.bh, %bb.au, %bb.ai, %bb.af, %bb.y
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ay, %bb.y ], [ %i.ax, %bb.af ], [ %i.bq, %bb.ai ], [ %i.de, %bb.bh ], [ %i.cm, %bb.au ], [ %i.ec, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19065
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShE0BV_.exit.i, label %.loopexit21.i

.loopexit21.i:                                    ; preds = %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.i.i.i, %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread.i.i.i
  %.sroa.0.0.i6.i.i.i = phi ptr [ %.sroa.0.0.i.ph.i.i.i, %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19065
  store ptr %.sroa.0.0.i6.i.i.i, ptr %i.a, align 8, !noalias !19107
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @384, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @385, i64 noundef 7)
          to label %_RNCINvXs3A_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB9_10U64SegmentNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0Bd_.exit.i.i.i unwind label %bb.cd, !noalias !19063

bb.cd:                                            ; preds = %.loopexit21.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %.val.i3.i.i.i = load ptr, ptr %i.a, align 8, !noalias !19107, !nonnull !97, !noundef !97
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECs9KQ7US1M400_11lance_table(ptr nonnull %.val.i3.i.i.i) #81, !noalias !19063
  br label %common.resume.i.i.i

_RNCINvXs3A_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB9_10U64SegmentNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0Bd_.exit.i.i.i: ; preds = %.loopexit21.i
  %i.ex = load ptr, ptr %i.a, align 8, !noalias !19107, !nonnull !97, !align !102, !noundef !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19065
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShE0BV_.exit.i: ; preds = %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.i.i.i, %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread9.i.i.i, %bb.q
  %.sroa.0.0.i.i = phi ptr [ null, %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.i.i.i ], [ %i.au, %bb.q ], [ null, %_RINvMsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB6_7Segment5mergeQRShEBc_.exit.thread9.i.i.i ] ; 2 uses
  %.not14.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not14.i, label %bb.g, label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit

bb.ce:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !19058
  store i64 -9223372036854775800, ptr %i.j, align 8, !noalias !19058
  %i.ey = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.j), !noalias !19056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !19058
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit

_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit: ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShE0BV_.exit.i, %bb.ce, %_RNCINvXs3A_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB9_10U64SegmentNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0Bd_.exit.i.i.i, %.loopexit.i, %bb.h, %bb.f, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.o, %bb.b ], [ %i.s, %bb.c ], [ %i.ac, %bb.f ], [ null, %bb.h ], [ %i.ey, %bb.ce ], [ %.sroa.11.0.ph.i.i, %.loopexit.i ], [ %i.ex, %_RNCINvXs3A_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB9_10U64SegmentNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0Bd_.exit.i.i.i ], [ %.sroa.0.0.i.i, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShE0BV_.exit.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12ExternalFileQRShEBT_(i8 noundef range(i8 0, 6) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !19132 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %.not = icmp eq i8 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  store i8 2, ptr %i.m, align 1
  store i64 -9223372036854775802, ptr %i.k, align 8
  %i.n = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCs9KQ7US1M400_11lance_table6format2pb12ExternalFileNCINvNtB2_7message5mergeBJ_QRShE0B25_EBP_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19134)
  %i.o = tail call fastcc { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !noalias !19133 ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = trunc nuw i64 %i.p to i1
  br i1 %i.s, label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCs9KQ7US1M400_11lance_table6format2pb12ExternalFileNCINvNtB2_7message5mergeBJ_QRShE0B25_EBP_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !19134, !nonnull !97, !align !102, !noundef !97
  %i.t = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i = load i64, ptr %i.t, align 8, !noalias !19133, !noundef !97 ; 2 uses
  %i.u = icmp ult i64 %.val.i.i, %i.r
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = sub nuw i64 %.val.i.i, %i.r              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !19135
  store i64 -9223372036854775801, ptr %i.j, align 8, !noalias !19135
  %i.y = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.j), !noalias !19133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !19135
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCs9KQ7US1M400_11lance_table6format2pb12ExternalFileNCINvNtB2_7message5mergeBJ_QRShE0B25_EBP_.exit

bb.g:                                             ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12ExternalFileQRShE0BV_.exit.i, %bb.e
  %.val15.i = load ptr, ptr %2, align 8, !alias.scope !19134, !nonnull !97, !align !102, !noundef !97
  %i.z = getelementptr i8, ptr %.val15.i, i64 8
  %.val.i17.i = load i64, ptr %i.z, align 8, !noalias !19133, !noundef !97 ; 2 uses
  %i.aa = icmp ugt i64 %.val.i17.i, %i.v
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq i64 %.val.i17.i, %i.v
  br i1 %.not.i, label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCs9KQ7US1M400_11lance_table6format2pb12ExternalFileNCINvNtB2_7message5mergeBJ_QRShE0B25_EBP_.exit, label %bb.aa

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19136)
  %i.ab = tail call fastcc { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !noalias !19137 ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = extractvalue { i64, ptr } %i.ab, 1      ; 3 uses
  %i.ae = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.af = trunc nuw i64 %i.ac to i1
  br i1 %i.af, label %.loopexit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp ugt ptr %i.ad, inttoptr (i64 4294967295 to ptr)
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = and i64 %i.ae, 7                        ; 5 uses
  %switch.i.i = icmp samesign ult i64 %i.ah, 6
  br i1 %switch.i.i, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !19138
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ae, ptr %i.ai, align 8, !noalias !19138
  store i64 -9223372036854775804, ptr %i.h, align 8, !noalias !19138
  %i.aj = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.h), !noalias !19137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !19138
  br label %.loopexit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19138
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ah, ptr %i.ak, align 8, !noalias !19138
  store i64 -9223372036854775805, ptr %i.f, align 8, !noalias !19138
  %i.al = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f), !noalias !19137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19138
  br label %.loopexit.i

bb.n:                                             ; preds = %bb.k
  %i.am = trunc nuw i64 %i.ae to i32
  %i.an = lshr i32 %i.am, 3                       ; 3 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !19138
  store i64 -9223372036854775803, ptr %i.g, align 8, !noalias !19138
  %i.ap = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g), !noalias !19137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19138
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.i, %bb.o, %bb.m, %bb.l
  %.sroa.11.0.ph.i.i = phi ptr [ %i.aj, %bb.l ], [ %i.ap, %bb.o ], [ %i.al, %bb.m ], [ %i.ad, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph.i.i) ]
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCs9KQ7US1M400_11lance_table6format2pb12ExternalFileNCINvNtB2_7message5mergeBJ_QRShE0B25_EBP_.exit

bb.p:                                             ; preds = %bb.n
  %.sroa.11.8.extract.trunc.i.i = trunc nuw nsw i64 %i.ah to i8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19139)
  switch i32 %i.an, label %bb.q [
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.aq = tail call fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10skip_fieldQRShECs9KQ7US1M400_11lance_table(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, i32 noundef %i.an, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 98), !noalias !19140
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12ExternalFileQRShE0BV_.exit.i

bb.r:                                             ; preds = %bb.p
end_hunk_0
begin_hunk_1_@_RNCNvMNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB4_29ExternalManifestCommitHandler17finalize_manifest0Ba_:bb.a
  %.sroa.5327.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %.sroa.5327.0.copyload.i.i.i = load ptr, ptr %.sroa.5327.0..sroa_idx.i.i.i, align 8, !noalias !37020 ; 3 uses
  %.sroa.6328.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10307.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6328.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !37020
  %i.aiw = getelementptr inbounds nuw i8, ptr %1, i64 920
  %i.aix = load i64, ptr %i.aiw, align 8, !range !138, !noalias !37020, !noundef !97
  %.not10.i.i.i = icmp eq i64 %i.aix, -1
  br i1 %.not10.i.i.i, label %bb.gm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECs9KQ7US1M400_11lance_table.exit174.i.i.i

bb.gm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs3PfUT229lOd_12object_store5ErrorEECs9KQ7US1M400_11lance_table.exit222.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !37079)
  %i.aiy = getelementptr inbounds nuw i8, ptr %1, i64 928
  call void @llvm.experimental.noalias.scope.decl(metadata !37080)
  %.val4.i.i223.i.i.i = load i64, ptr %i.aiy, align 8, !range !99, !alias.scope !37081, !noalias !37020, !noundef !97 ; 2 uses
  %i.aiz = icmp sgt i64 %.val4.i.i223.i.i.i, 0
  br i1 %i.aiz, label %bb.gn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i.i224.i.i.i

bb.gn:                                            ; preds = %bb.gm
  %i.aja = getelementptr inbounds nuw i8, ptr %1, i64 936
  %.val5.i.i227.i.i.i = load ptr, ptr %i.aja, align 8, !alias.scope !37081, !noalias !37020, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i227.i.i.i, i64 noundef %.val4.i.i223.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !37082
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i.i224.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i.i224.i.i.i: ; preds = %bb.gn, %bb.gm
  %i.ajb = getelementptr inbounds nuw i8, ptr %1, i64 952
  %.val.i.i225.i.i.i = load i64, ptr %i.ajb, align 8, !range !99, !alias.scope !37081, !noalias !37020, !noundef !97 ; 2 uses
  %i.ajc = icmp sgt i64 %.val.i.i225.i.i.i, 0
  br i1 %i.ajc, label %bb.go, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECs9KQ7US1M400_11lance_table.exit174.i.i.i

bb.go:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i.i224.i.i.i
  %i.ajd = getelementptr inbounds nuw i8, ptr %1, i64 960
  %.val1.i.i226.i.i.i = load ptr, ptr %i.ajd, align 8, !alias.scope !37081, !noalias !37020, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i226.i.i.i, i64 noundef %.val.i.i225.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !37083
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECs9KQ7US1M400_11lance_table.exit174.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit237.i.i.i: ; preds = %bb.gt, %bb.gs, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECs9KQ7US1M400_11lance_table.exit174.i.i.i
  store i8 0, ptr %i.aah, align 8, !noalias !37020
  %i.aje = getelementptr inbounds nuw i8, ptr %1, i64 560
  %.val57.i.i.i = load ptr, ptr %i.aje, align 8, !noalias !37020 ; 5 uses
  %i.ajf = getelementptr i8, ptr %1, i64 568
  %.val58.i.i.i = load ptr, ptr %i.ajf, align 8, !noalias !37020, !nonnull !97, !align !102, !noundef !97 ; 5 uses
  %i.ajg = load ptr, ptr %.val58.i.i.i, align 8, !invariant.load !97, !noalias !37021 ; 2 uses
  %.not.i230.i.i.i = icmp eq ptr %i.ajg, null
  br i1 %.not.i230.i.i.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit237.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val57.i.i.i) ]
  invoke void %i.ajg(ptr noundef nonnull %.val57.i.i.i)
          to label %bb.gq unwind label %bb.gr, !noalias !37021

bb.gq:                                            ; preds = %bb.gp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit237.i.i.i
  %i.ajh = getelementptr inbounds nuw i8, ptr %.val58.i.i.i, i64 8
  %i.aji = load i64, ptr %i.ajh, align 8, !range !101, !invariant.load !97, !noalias !37021 ; 2 uses
  %i.ajj = icmp eq i64 %i.aji, 0
  br i1 %i.ajj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs3PfUT229lOd_12object_store6upload15MultipartUploadEL_EECs9KQ7US1M400_11lance_table.exit236.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i233.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i233.i.i.i: ; preds = %bb.gq
  %i.ajk = getelementptr inbounds nuw i8, ptr %.val58.i.i.i, i64 16
  %i.ajl = load i64, ptr %i.ajk, align 8, !range !123, !invariant.load !97, !noalias !37021
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val57.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57.i.i.i, i64 noundef %i.aji, i64 noundef range(i64 1, -9223372036854775807) %i.ajl) #76, !noalias !37021
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs3PfUT229lOd_12object_store6upload15MultipartUploadEL_EECs9KQ7US1M400_11lance_table.exit236.i.i.i

bb.gr:                                            ; preds = %bb.gp
  %i.ajm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %.val58.i.i.i, i64 8
  %i.ajo = load i64, ptr %i.ajn, align 8, !range !101, !invariant.load !97, !noalias !37021 ; 2 uses
  %i.ajp = icmp eq i64 %i.ajo, 0
  br i1 %i.ajp, label %.body203.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i231.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i231.i.i.i: ; preds = %bb.gr
  %i.ajq = getelementptr inbounds nuw i8, ptr %.val58.i.i.i, i64 16
  %i.ajr = load i64, ptr %i.ajq, align 8, !range !123, !invariant.load !97, !noalias !37021
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57.i.i.i, i64 noundef %i.ajo, i64 noundef range(i64 1, -9223372036854775807) %i.ajr) #76, !noalias !37021
  br label %.body203.i.i.i

bb.gs:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECs9KQ7US1M400_11lance_table.exit174.i.i.i
  %i.ajs = getelementptr inbounds nuw i8, ptr %1, i64 600
  %.val29.i.i.i = load i64, ptr %i.ajs, align 8, !noalias !37020 ; 2 uses
  %i.ajt = icmp eq i64 %.val29.i.i.i, 0
  br i1 %i.ajt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit237.i.i.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.aju = getelementptr i8, ptr %1, i64 608
  %.val30.i.i.i = load ptr, ptr %i.aju, align 8, !noalias !37020, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val30.i.i.i, i64 noundef %.val29.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !37021
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit237.i.i.i

bb.gu:                                            ; preds = %.body218.i.i.i
  %i.ajv = getelementptr inbounds nuw i8, ptr %1, i64 920 ; 2 uses
  %i.ajw = load i64, ptr %i.ajv, align 8, !range !138, !noalias !37020, !noundef !97
  %.not9.i.i.i = icmp eq i64 %i.ajw, -1
  br i1 %.not9.i.i.i, label %bb.gv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECs9KQ7US1M400_11lance_table.exit161.i.i.i

bb.gv:                                            ; preds = %bb.gu
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs3PfUT229lOd_12object_store9PutResultNtBZ_5ErrorEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(72) %i.ajv) #81
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECs9KQ7US1M400_11lance_table.exit161.i.i.i unwind label %bb.bh, !noalias !37021

bb.gw:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECs9KQ7US1M400_11lance_table.exit161.i.i.i
  %i.ajx = getelementptr inbounds nuw i8, ptr %1, i64 600
  %.val.i12.i.i = load i64, ptr %i.ajx, align 8, !noalias !37020 ; 2 uses
  %i.ajy = icmp eq i64 %.val.i12.i.i, 0
  br i1 %i.ajy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit238.i.i.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.ajz = getelementptr i8, ptr %1, i64 608
  %.val28.i.i.i = load ptr, ptr %i.ajz, align 8, !noalias !37020, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28.i.i.i, i64 noundef %.val.i12.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !37021
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit238.i.i.i

.thread58.i.i:                                    ; preds = %bb.gf, %bb.fj, %bb.fa, %bb.eq, %bb.eh, %bb.dd, %bb.cv, %bb.cj, %bb.bx, %bb.bd
  %i.aka = phi ptr [ %i.iy, %bb.bd ], [ %i.mt, %bb.bx ], [ %i.pp, %bb.cj ], [ %i.sf, %bb.cv ], [ %i.tj, %bb.dd ], [ %i.yk, %bb.eh ], [ %i.aau, %bb.eq ], [ %i.acr, %bb.fa ], [ %i.aea, %bb.fj ], [ %i.aho, %bb.gf ]
  %i.akb = phi ptr [ %i.ja, %bb.bd ], [ %i.mv, %bb.bx ], [ %i.pr, %bb.cj ], [ %i.sh, %bb.cv ], [ %i.tl, %bb.dd ], [ %i.ym, %bb.eh ], [ %i.aaw, %bb.eq ], [ %i.act, %bb.fa ], [ %i.aec, %bb.fj ], [ %i.ahq, %bb.gf ]
  %i.akc = phi ptr [ %i.jc, %bb.bd ], [ %i.mx, %bb.bx ], [ %i.pt, %bb.cj ], [ %i.sj, %bb.cv ], [ %i.tn, %bb.dd ], [ %i.yo, %bb.eh ], [ %i.aay, %bb.eq ], [ %i.acv, %bb.fa ], [ %i.aee, %bb.fj ], [ %i.ahs, %bb.gf ]
  %.sink.i.ph.i.i = phi i8 [ 3, %bb.bd ], [ 4, %bb.bx ], [ 7, %bb.cj ], [ 5, %bb.cv ], [ 6, %bb.dd ], [ 8, %bb.eh ], [ 9, %bb.eq ], [ 10, %bb.fa ], [ 11, %bb.fj ], [ 12, %bb.gf ]
  store i8 %.sink.i.ph.i.i, ptr %i.akc, align 1, !noalias !37020
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10307.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7274.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !37013
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5249.i.i.i)
  br label %bb.gz

.thread64.i.i:                                    ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i208.i.i.i, %bb.gb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.19.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10307.i.i.i, i64 48, i1 false), !noalias !37084
  store i8 1, ptr %i.aee, align 1, !noalias !37020
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10307.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7274.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !37013
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5249.i.i.i)
  br label %bb.ha

bb.gy:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i15.i.i, %bb.cf, %bb.bg
  %i.akd = phi ptr [ %i.iy, %bb.bg ], [ %i.om, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i15.i.i ], [ %i.om, %bb.cf ] ; 2 uses
  %i.ake = phi ptr [ %i.iz, %bb.bg ], [ %i.on, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i15.i.i ], [ %i.on, %bb.cf ]
  %i.akf = phi ptr [ %i.ja, %bb.bg ], [ %i.oo, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i15.i.i ], [ %i.oo, %bb.cf ] ; 2 uses
  %i.akg = phi ptr [ %i.jb, %bb.bg ], [ %i.op, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i15.i.i ], [ %i.op, %bb.cf ]
  %i.akh = phi ptr [ %i.jc, %bb.bg ], [ %i.oq, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i15.i.i ], [ %i.oq, %bb.cf ]
  %i.aki = phi ptr [ %i.jd, %bb.bg ], [ %i.or, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i15.i.i ], [ %i.or, %bb.cf ]
  %.sroa.9296.2.i.i.i = phi ptr [ %.sroa.3.sroa.5.0.copyload.i.i.i, %bb.bg ], [ %.sroa.9296.0.i.i.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i15.i.i ], [ %.sroa.9296.0.i.i.i, %bb.cf ]
  %.sroa.8285.2.i.i.i = phi ptr [ %.sroa.3.sroa.3.0.copyload.i.i.i, %bb.bg ], [ %.sroa.8285.0.i.i.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i15.i.i ], [ %.sroa.8285.0.i.i.i, %bb.cf ]
  %.sroa.0279.2.i.i.i = phi i64 [ %.sroa.3.sroa.0.0.copyload.i.i.i, %bb.bg ], [ %.sroa.0279.0.i.i.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i15.i.i ], [ %.sroa.0279.0.i.i.i, %bb.cf ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.19.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10307.i.i.i, i64 48, i1 false), !noalias !37084
  store i8 1, ptr %i.akh, align 1, !noalias !37020
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10307.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7274.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !37013
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5249.i.i.i)
  %i.akj = icmp eq i64 %.sroa.0279.2.i.i.i, -2
  br i1 %i.akj, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy, %.thread58.i.i
  %i.akk = phi ptr [ %i.akd, %bb.gy ], [ %i.aka, %.thread58.i.i ]
  %i.akl = phi ptr [ %i.akf, %bb.gy ], [ %i.akb, %.thread58.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i.i)
  br label %bb.hc

bb.ha:                                            ; preds = %bb.gy, %.thread64.i.i
  %i.akm = phi ptr [ %i.aea, %.thread64.i.i ], [ %i.akd, %bb.gy ] ; 2 uses
  %i.akn = phi ptr [ %i.aeb, %.thread64.i.i ], [ %i.ake, %bb.gy ] ; 2 uses
  %i.ako = phi ptr [ %i.aec, %.thread64.i.i ], [ %i.akf, %bb.gy ] ; 2 uses
  %i.akp = phi ptr [ %i.aed, %.thread64.i.i ], [ %i.akg, %bb.gy ] ; 2 uses
  %i.akq = phi ptr [ %i.aef, %.thread64.i.i ], [ %i.aki, %bb.gy ]
  %.sroa.0279.2.i70.i.i = phi i64 [ -1, %.thread64.i.i ], [ %.sroa.0279.2.i.i.i, %bb.gy ]
  %.sroa.8285.2.i69.i.i = phi ptr [ undef, %.thread64.i.i ], [ %.sroa.8285.2.i.i.i, %bb.gy ]
  %.sroa.9296.2.i68.i.i = phi ptr [ undef, %.thread64.i.i ], [ %.sroa.9296.2.i.i.i, %bb.gy ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.553.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.19.i.i, i64 48, i1 false), !noalias !37013
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i.i)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest21copy_via_read_rewrite0EBL_(ptr noundef nonnull align 8 %i.akq)
          to label %bb.hd unwind label %bb.hb, !noalias !37014

bb.hb:                                            ; preds = %bb.ha
  %i.akr = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i.i

bb.hc:                                            ; preds = %bb.gz, %bb.ad
  %i.aks = phi ptr [ %i.ff, %bb.ad ], [ %i.akk, %bb.gz ]
  %i.akt = phi ptr [ %i.fh, %bb.ad ], [ %i.akl, %bb.gz ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.ad ], [ 4, %bb.gz ]
  store i8 %.sink.i.ph.i, ptr %i.akt, align 8, !noalias !37013
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.553.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  br label %.thread

.body79.i:                                        ; preds = %bb.jx
  %i.aku = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.hd:                                            ; preds = %bb.ha, %bb.ae
  %i.akv = phi ptr [ %i.ff, %bb.ae ], [ %i.akm, %bb.ha ] ; 6 uses
  %i.akw = phi ptr [ %i.fg, %bb.ae ], [ %i.akn, %bb.ha ] ; 8 uses
  %i.akx = phi ptr [ %i.fh, %bb.ae ], [ %i.ako, %bb.ha ] ; 3 uses
  %i.aky = phi ptr [ %i.fi, %bb.ae ], [ %i.akp, %bb.ha ] ; 2 uses
  %.sroa.450.0.i.i = phi ptr [ %.sroa.450.0.copyload.i.i, %bb.ae ], [ %.sroa.9296.2.i68.i.i, %bb.ha ]
  %.sroa.3.0.i.i = phi ptr [ %.sroa.3.0.copyload.i.i, %bb.ae ], [ %.sroa.8285.2.i69.i.i, %bb.ha ]
  %.sroa.046.0.i.i = phi i64 [ %i.fp, %bb.ae ], [ %.sroa.0279.2.i70.i.i, %bb.ha ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.553.i.i, i64 48, i1 false), !noalias !37085
  store i8 1, ptr %i.akx, align 8, !noalias !37013
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.553.i.i)
  %.sroa.6191.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6191.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.i, i64 48, i1 false), !noalias !37011
  %i.akz = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  store i8 1, ptr %i.akz, align 8, !noalias !37011
  %i.ala = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  store i64 %.sroa.046.0.i.i, ptr %i.ala, align 8, !noalias !37011
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 360
  store ptr %.sroa.3.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !37011
  %.sroa.5190.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr %.sroa.450.0.i.i, ptr %.sroa.5190.0..sroa_idx.i, align 8, !noalias !37011
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  %.not.i61 = icmp eq i64 %.sroa.046.0.i.i, -1
  br i1 %.not.i61, label %.noexc.i, label %3

3:                                                ; preds = %bb.hd
  %4 = icmp ne i64 %.sroa.046.0.i.i, -9223372036854775800
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %.sroa.046.0.i.i, -9223372036854775801
  br i1 %5, label %bb.ho, label %bb.hn

.noexc.i:                                         ; preds = %bb.hd
  %i.alb = load atomic i64, ptr @_RNvNtCs9ipI1vyGjpZ_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !37011
  %.off.i = add i64 %i.alb, -3
  %switch.i = icmp ult i64 %.off.i, 3
  br i1 %switch.i, label %bb.hm, label %bb.he

bb.he:                                            ; preds = %.noexc.i
  %i.alc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29copy_or_verify_final_manifest010___CALLSITE, i64 16) monotonic, align 8, !noalias !37011 ; 2 uses
  %i.ald = icmp ult i8 %i.alc, 3
  br i1 %i.ald, label %bb.hg, label %bb.hf, !prof !211

bb.hf:                                            ; preds = %bb.he
  %i.ale = invoke noundef i8 @_RNvMNtCs9ipI1vyGjpZ_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29copy_or_verify_final_manifest010___CALLSITE)
          to label %bb.hg unwind label %bb.hh, !noalias !37012

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %.sroa.0.0.i83.i = phi i8 [ %i.alc, %bb.he ], [ %i.ale, %bb.hf ] ; 2 uses
  %i.alf = icmp eq i8 %.sroa.0.0.i83.i, 0
  br i1 %i.alf, label %bb.hm, label %bb.hi

bb.hh:                                            ; preds = %bb.hi, %bb.hf
  %i.alg = landingpad { ptr, i32 }
          cleanup
  br label %.body125.i

bb.hi:                                            ; preds = %bb.hg
  %i.alh = load ptr, ptr @_RNvNCNvNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29copy_or_verify_final_manifest010___CALLSITE, align 8, !noalias !37011, !nonnull !97, !align !102, !noundef !97
  %i.ali = invoke noundef zeroext i1 @_RNvNtCshTahG2RyGLb_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.alh, i8 noundef %.sroa.0.0.i83.i)
          to label %bb.hj unwind label %bb.hh, !noalias !37012

bb.hj:                                            ; preds = %bb.hi
  br i1 %i.ali, label %bb.hk, label %bb.hm

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !37011
  %i.alj = load ptr, ptr @_RNvNCNvNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29copy_or_verify_final_manifest010___CALLSITE, align 8, !noalias !37011, !nonnull !97, !align !102, !noundef !97 ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !37011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !37011
  %i.all = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.alm = load ptr, ptr %i.all, align 8, !noalias !37011, !nonnull !97, !align !102, !noundef !97 ; 2 uses
  %i.aln = getelementptr i8, ptr %i.alm, i64 8
  %.val71.i = load ptr, ptr %i.aln, align 8, !noalias !37012, !nonnull !97, !noundef !97
  %i.alo = getelementptr i8, ptr %i.alm, i64 16
  %.val72.i = load i64, ptr %i.alo, align 8, !noalias !37012, !noundef !97
  store ptr %.val71.i, ptr %i.at, align 8, !noalias !37011
  %i.alp = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %.val72.i, ptr %i.alp, align 8, !noalias !37011
  store ptr @777, ptr %i.au, align 8, !noalias !37011
  %i.alq = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @604, ptr %i.alq, align 8, !noalias !37011
  %i.alr = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr @606, ptr %i.alr, align 8, !noalias !37011
  %i.als = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr @604, ptr %i.als, align 8, !noalias !37011
  %i.alt = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store ptr %i.at, ptr %i.alt, align 8, !noalias !37011
  %i.alu = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store ptr @604, ptr %i.alu, align 8, !noalias !37011
  store i64 1, ptr %i.av, align 8, !noalias !37011
  %.sroa.6195.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.au, ptr %.sroa.6195.0..sroa_idx.i, align 8, !noalias !37011
  %.sroa.7196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 3, ptr %.sroa.7196.0..sroa_idx.i, align 8, !noalias !37011
  %.sroa.8197.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.alk, ptr %.sroa.8197.0..sroa_idx.i, align 8, !noalias !37011
  invoke void @_RNvMNtCs9ipI1vyGjpZ_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.alj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av)
          to label %_RNCNCNvNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29copy_or_verify_final_manifest00Bb_.exit.i unwind label %bb.hl, !noalias !37012

bb.hl:                                            ; preds = %bb.hk
  %i.alv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !37011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !37011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !37011
  br label %.body125.i

_RNCNCNvNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29copy_or_verify_final_manifest00Bb_.exit.i: ; preds = %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !37011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !37011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !37011
  br label %bb.hm

bb.hm:                                            ; preds = %_RNCNCNvNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29copy_or_verify_final_manifest00Bb_.exit.i, %bb.hj, %bb.hg, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !37011
  %i.alw = load ptr, ptr %i.akw, align 8, !noalias !37011, !nonnull !97, !noundef !97
  %i.alx = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.aly = load ptr, ptr %i.alx, align 8, !noalias !37011, !nonnull !97, !align !102, !noundef !97
  %i.alz = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ama = load ptr, ptr %i.alz, align 8, !noalias !37011, !nonnull !97, !align !102, !noundef !97
  store ptr %i.alw, ptr %i.aky, align 8, !noalias !37011
  %.sroa.8211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 456
  store ptr %i.aly, ptr %.sroa.8211.0..sroa_idx.i, align 8, !noalias !37011
  %.sroa.9212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 464
  store ptr %i.ama, ptr %.sroa.9212.0..sroa_idx.i, align 8, !noalias !37011
  store i8 0, ptr %i.akx, align 8, !noalias !37011
  br label %bb.hs

.body125.i:                                       ; preds = %bb.jv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit177.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i122.i, %bb.jc, %bb.iu, %.body90.i, %bb.hp, %bb.hl, %bb.hh
  %i.amb = phi ptr [ %i.akv, %bb.hh ], [ %i.akv, %bb.hp ], [ %i.amr, %.body90.i ], [ %i.akv, %bb.hl ], [ %i.aou, %bb.jv ], [ %i.aou, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i122.i ], [ %i.aou, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit177.i ], [ %i.aou, %bb.jc ], [ %i.aou, %bb.iu ] ; 3 uses
  %i.amc = phi ptr [ %i.akw, %bb.hh ], [ %i.akw, %bb.hp ], [ %i.ams, %.body90.i ], [ %i.akw, %bb.hl ], [ %i.aov, %bb.jv ], [ %i.aov, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i122.i ], [ %i.aov, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit177.i ], [ %i.aov, %bb.jc ], [ %i.aov, %bb.iu ] ; 3 uses
  %.pn54.pn.i = phi { ptr, i32 } [ %i.alg, %bb.hh ], [ %i.amk, %bb.hp ], [ %.pn37.pn.i, %.body90.i ], [ %i.alv, %bb.hl ], [ %i.aqp, %bb.jv ], [ %i.apj, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i122.i ], [ %.pn47.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit177.i ], [ %i.apj, %bb.jc ], [ %i.aot, %bb.iu ] ; 3 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.ame = load i64, ptr %i.amd, align 8, !range !138, !noalias !37011, !noundef !97
  %.not57.i = icmp eq i64 %i.ame, -1
  br i1 %.not57.i, label %bb.h, label %bb.jy

bb.hn:                                            ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !37011
  store i8 0, ptr %i.akz, align 8, !noalias !37011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, ptr noundef nonnull align 8 dereferenceable(72) %i.ala, i64 72, i1 false), !noalias !37011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !37011
  invoke void @_RNvXs9_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtCs3PfUT229lOd_12object_store5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @820)
          to label %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtCs3PfUT229lOd_12object_store5ErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCs9KQ7US1M400_11lance_table.exit.i unwind label %bb.hp, !noalias !37012

bb.ho:                                            ; preds = %3
  %i.amf = load ptr, ptr %i.akw, align 8, !noalias !37011, !nonnull !97, !noundef !97
  %i.amg = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.amh = load ptr, ptr %i.amg, align 8, !noalias !37011, !nonnull !97, !align !102, !noundef !97
  %i.ami = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.amj = load ptr, ptr %i.ami, align 8, !noalias !37011, !nonnull !97, !align !102, !noundef !97
  store ptr %i.amf, ptr %i.aky, align 8, !noalias !37011
  %.sroa.7245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 456
  store ptr %i.amh, ptr %.sroa.7245.0..sroa_idx.i, align 8, !noalias !37011
  %.sroa.8246.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 464
  store ptr %i.amj, ptr %.sroa.8246.0..sroa_idx.i, align 8, !noalias !37011
  store i8 0, ptr %i.akx, align 8, !noalias !37011
  br label %bb.iv

bb.hp:                                            ; preds = %bb.hn
  %i.amk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !37011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !37011
  br label %.body125.i

_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtCs3PfUT229lOd_12object_store5ErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.hn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %i.af, i64 56, i1 false), !noalias !37011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !37011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !37011
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit183.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit183.i: ; preds = %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtCs3PfUT229lOd_12object_store5ErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCs9KQ7US1M400_11lance_table.exit129.i, %bb.ju, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit134.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store10ObjectMetaECs9KQ7US1M400_11lance_table.exit174.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit98.i, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtCs3PfUT229lOd_12object_store5ErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCs9KQ7US1M400_11lance_table.exit.i
  %i.aml = phi ptr [ %i.aou, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtCs3PfUT229lOd_12object_store5ErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCs9KQ7US1M400_11lance_table.exit129.i ], [ %i.aou, %bb.ju ], [ %i.aou, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit134.i ], [ %i.aou, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store10ObjectMetaECs9KQ7US1M400_11lance_table.exit174.i ], [ %i.amr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit98.i ], [ %i.akv, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtCs3PfUT229lOd_12object_store5ErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCs9KQ7US1M400_11lance_table.exit.i ] ; 4 uses
  %i.amm = phi ptr [ %i.aov, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtCs3PfUT229lOd_12object_store5ErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCs9KQ7US1M400_11lance_table.exit129.i ], [ %i.aov, %bb.ju ], [ %i.aov, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit134.i ], [ %i.aov, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store10ObjectMetaECs9KQ7US1M400_11lance_table.exit174.i ], [ %i.ams, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit98.i ], [ %i.akw, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtCs3PfUT229lOd_12object_store5ErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCs9KQ7US1M400_11lance_table.exit.i ] ; 4 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.amo = load i64, ptr %i.amn, align 8, !range !138, !noalias !37011, !noundef !97
  %.not58.i = icmp eq i64 %i.amo, -1
  br i1 %.not58.i, label %bb.ka, label %bb.jw

bb.hq:                                            ; preds = %bb.jz, %bb.iu, %bb.hr, %.body.i
  %i.amp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !37012
  unreachable

bb.hr:                                            ; preds = %bb.hs
  %i.amq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !37011
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeDNtBG_11ObjectStoreEL_NtBG_14ObjectStoreExt4head0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.amt) #81
          to label %.body90.i unwind label %bb.hq, !noalias !37012

bb.hs:                                            ; preds = %bb.hm, %bb.g
  %i.amr = phi ptr [ %i.akv, %bb.hm ], [ %i.cn, %bb.g ] ; 4 uses
  %i.ams = phi ptr [ %i.akw, %bb.hm ], [ %i.cm, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !37011
  %i.amt = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  invoke fastcc void @_RNCNvXCs3PfUT229lOd_12object_storeDNtB4_11ObjectStoreEL_NtB4_14ObjectStoreExt4head0Cs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.ar, ptr noundef nonnull align 8 %i.amt, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ht unwind label %bb.hr, !noalias !37012

bb.ht:                                            ; preds = %bb.hs
  %i.amu = load i64, ptr %i.ar, align 8, !range !116, !noalias !37011, !noundef !97 ; 5 uses
  %i.amv = icmp eq i64 %i.amu, -2
  br i1 %i.amv, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !37011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !37011
  br label %.thread

bb.hv:                                            ; preds = %bb.ht
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx.i, i64 72, i1 false), !noalias !37011
  %.sroa.5217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5217.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5217.0..sroa_idx.i, i64 16, i1 false), !noalias !37011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !37011
  %i.amw = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.amx = load i8, ptr %i.amw, align 8, !range !125, !noalias !37011, !noundef !97
  %cond.i.i = icmp eq i8 %i.amx, 3
  br i1 %cond.i.i, label %bb.hw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeDNtBG_11ObjectStoreEL_NtBG_14ObjectStoreExt4head0ECs9KQ7US1M400_11lance_table.exit.i

bb.hw:                                            ; preds = %bb.hv
  %i.amy = getelementptr inbounds nuw i8, ptr %1, i64 472
  %.val.i.i = load ptr, ptr %i.amy, align 8, !noalias !37011 ; 5 uses
  %i.amz = getelementptr i8, ptr %1, i64 480
  %.val3.i.i = load ptr, ptr %i.amz, align 8, !noalias !37011, !nonnull !97, !align !102, !noundef !97 ; 5 uses
  %i.ana = load ptr, ptr %.val3.i.i, align 8, !invariant.load !97, !noalias !37012 ; 2 uses
  %.not.i.i.i87.i = icmp eq ptr %i.ana, null
  br i1 %.not.i.i.i87.i, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.ana(ptr noundef nonnull %.val.i.i)
          to label %bb.hy unwind label %bb.hz, !noalias !37012

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %i.anb = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8
  %i.anc = load i64, ptr %i.anb, align 8, !range !101, !invariant.load !97, !noalias !37012 ; 2 uses
  %i.and = icmp eq i64 %i.anc, 0
  br i1 %i.and, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeDNtBG_11ObjectStoreEL_NtBG_14ObjectStoreExt4head0ECs9KQ7US1M400_11lance_table.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i89.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i89.i: ; preds = %bb.hy
  %i.ane = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16
  %i.anf = load i64, ptr %i.ane, align 8, !range !123, !invariant.load !97, !noalias !37012
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.anc, i64 noundef range(i64 1, -9223372036854775807) %i.anf) #76, !noalias !37012
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeDNtBG_11ObjectStoreEL_NtBG_14ObjectStoreExt4head0ECs9KQ7US1M400_11lance_table.exit.i

bb.hz:                                            ; preds = %bb.hx
  %i.ang = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8
  %i.ani = load i64, ptr %i.anh, align 8, !range !101, !invariant.load !97, !noalias !37012 ; 2 uses
  %i.anj = icmp eq i64 %i.ani, 0
  br i1 %i.anj, label %.body90.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i88.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i88.i: ; preds = %bb.hz
  %i.ank = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16
  %i.anl = load i64, ptr %i.ank, align 8, !range !123, !invariant.load !97, !noalias !37012
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ani, i64 noundef range(i64 1, -9223372036854775807) %i.anl) #76, !noalias !37012
  br label %.body90.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeDNtBG_11ObjectStoreEL_NtBG_14ObjectStoreExt4head0ECs9KQ7US1M400_11lance_table.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i89.i, %bb.hy, %bb.hv
  %i.anm = icmp eq i64 %i.amu, -1
  br i1 %i.anm, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeDNtBG_11ObjectStoreEL_NtBG_14ObjectStoreExt4head0ECs9KQ7US1M400_11lance_table.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !37086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.i, i64 72, i1 false), !noalias !37011
  invoke void @_RNvXs9_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtCs3PfUT229lOd_12object_store5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823)
          to label %bb.it unwind label %bb.is, !noalias !37012

bb.ib:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeDNtBG_11ObjectStoreEL_NtBG_14ObjectStoreExt4head0ECs9KQ7US1M400_11lance_table.exit.i
  %.sroa.5220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5220.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5217.i, i64 16, i1 false), !noalias !37011
  %.sroa.4219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4219.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.i, i64 72, i1 false), !noalias !37011
  store i64 %i.amu, ptr %i.as, align 8, !noalias !37011
  %i.ann = getelementptr inbounds nuw i8, ptr %i.as, i64 72 ; 2 uses
  %i.ano = load i64, ptr %i.ann, align 8, !noalias !37011, !noundef !97
  %i.anp = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.anq = load i64, ptr %i.anp, align 8, !noalias !37011, !noundef !97
  %.not26.i = icmp eq i64 %i.ano, %i.anq
  br i1 %.not26.i, label %bb.ic, label %bb.ie

bb.ic:                                            ; preds = %bb.ib
  %i.anr = getelementptr inbounds nuw i8, ptr %.sroa.3.i, i64 16
  %i.ans = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ans, ptr noundef nonnull align 8 dereferenceable(24) %i.anr, i64 24, i1 false), !noalias !37011
  store i8 -1, ptr %i.ae, align 8, !noalias !37011
  call void @llvm.experimental.noalias.scope.decl(metadata !37087)
  call void @llvm.experimental.noalias.scope.decl(metadata !37088)
  %i.ant = icmp eq i64 %i.amu, 0
  br i1 %i.ant, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %.val1.i.i94.i = load ptr, ptr %.sroa.4219.0..sroa_idx.i, align 8, !alias.scope !37089, !noalias !37011, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i94.i, i64 noundef %i.amu, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !37090
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i

bb.ie:                                            ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !37011
  %i.anu = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.anv = load ptr, ptr %i.anu, align 8, !noalias !37011, !nonnull !97, !align !102, !noundef !97
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.anv)
          to label %bb.ih unwind label %bb.ig, !noalias !37012

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.id, %bb.ic
  %i.anw = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.val66.i = load i64, ptr %i.anw, align 8, !range !99, !noalias !37011, !noundef !97 ; 2 uses
  %i.anx = icmp sgt i64 %.val66.i, 0
  br i1 %i.anx, label %bb.if, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit98.i

bb.if:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i
  %i.any = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %.val67.i = load ptr, ptr %i.any, align 8, !noalias !37011, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val67.i, i64 noundef %.val66.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !37091
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit98.i

.body90.i:                                        ; preds = %bb.hr, %bb.hz, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i88.i, %bb.is, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit117.i
  %.pn37.pn.i = phi { ptr, i32 } [ %.pn34.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit117.i ], [ %i.aos, %bb.is ], [ %i.ang, %bb.hz ], [ %i.amq, %bb.hr ], [ %i.ang, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i88.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !37011
  br label %.body125.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit98.i: ; preds = %bb.if, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !37011
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit183.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit117.i: ; preds = %bb.ir, %bb.im, %.body.thread.i.i, %bb.ii, %bb.ig
  %.pn34.pn.i = phi { ptr, i32 } [ %i.aoh, %.body.thread.i.i ], [ %i.anz, %bb.ig ], [ %i.aod, %bb.ir ], [ %i.aoh, %bb.im ], [ %i.aod, %bb.ii ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !37011
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store10ObjectMetaECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(96) %i.as) #81, !noalias !37012
  br label %.body90.i

bb.ig:                                            ; preds = %bb.ie
  %i.anz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit117.i

bb.ih:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !37011
  %i.aoa = getelementptr inbounds nuw i8, ptr %1, i64 336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !37011
  store ptr %i.aoa, ptr %i.ao, align 8, !noalias !37011
  %.sroa.5233.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
end_hunk_1
begin_hunk_2_@_RNCNvMNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB4_29ExternalManifestCommitHandler17finalize_manifest0Ba_:bb.a
  %i.awz = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24
  %i.axa = load ptr, ptr %i.awz, align 8, !invariant.load !97, !noalias !37145, !nonnull !97
  invoke void %i.axa(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noundef nonnull %.val.i32.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs1_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4nextINtB5_4NextINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB1c_6result6ResultNtNtCs3PfUT229lOd_12object_store4path4PathNtB3u_5ErrorENtNtB1c_6marker4SendEL_EEENtNtNtB1c_6future6future6Future4pollCs9KQ7US1M400_11lance_table.exit.i unwind label %bb.mh, !noalias !37132, !inline_history !35

_RNvXs1_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4nextINtB5_4NextINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB1c_6result6ResultNtNtCs3PfUT229lOd_12object_store4path4PathNtB3u_5ErrorENtNtB1c_6marker4SendEL_EEENtNtNtB1c_6future6future6Future4pollCs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.mi
  %i.axb = load i64, ptr %i.c, align 8, !range !188, !noalias !37131, !noundef !97
  %i.axc = icmp eq i64 %i.axb, -3
  br i1 %i.axc, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %_RNvXs1_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4nextINtB5_4NextINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB1c_6result6ResultNtNtCs3PfUT229lOd_12object_store4path4PathNtB3u_5ErrorENtNtB1c_6marker4SendEL_EEENtNtNtB1c_6future6future6Future4pollCs9KQ7US1M400_11lance_table.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !37131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !37131
  br label %bb.nd

bb.mk:                                            ; preds = %_RNvXs1_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4nextINtB5_4NextINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB1c_6result6ResultNtNtCs3PfUT229lOd_12object_store4path4PathNtB3u_5ErrorENtNtB1c_6marker4SendEL_EEENtNtNtB1c_6future6future6Future4pollCs9KQ7US1M400_11lance_table.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !37131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37131
  %.val23.i = load i64, ptr %i.d, align 8, !range !136, !noalias !37131, !noundef !97 ; 2 uses
  %.not.i75 = icmp eq i64 %.val23.i, -2
  br i1 %.not.i75, label %bb.mq, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  call void @llvm.experimental.noalias.scope.decl(metadata !37146)
  call void @llvm.experimental.noalias.scope.decl(metadata !37147)
  %i.axd = icmp eq i64 %.val23.i, -1
  br i1 %i.axd, label %bb.mm, label %bb.mo

bb.mm:                                            ; preds = %bb.ml
  %i.axe = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !37148)
  call void @llvm.experimental.noalias.scope.decl(metadata !37149)
  %.val.i.i.i.i35.i = load i64, ptr %i.axe, align 8, !alias.scope !37150, !noalias !37131 ; 2 uses
  %i.axf = icmp eq i64 %.val.i.i.i.i35.i, 0
  br i1 %i.axf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs3PfUT229lOd_12object_store4path4PathNtB1n_5ErrorEEECs9KQ7US1M400_11lance_table.exit38.i, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.axg = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val1.i.i.i.i36.i = load ptr, ptr %i.axg, align 8, !alias.scope !37150, !noalias !37131, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i36.i, i64 noundef %.val.i.i.i.i35.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !37151
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs3PfUT229lOd_12object_store4path4PathNtB1n_5ErrorEEECs9KQ7US1M400_11lance_table.exit38.i

bb.mo:                                            ; preds = %bb.ml
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs3PfUT229lOd_12object_store4path4PathNtB1n_5ErrorEEECs9KQ7US1M400_11lance_table.exit38.i unwind label %bb.mp, !noalias !37132

bb.mp:                                            ; preds = %bb.mo
  %i.axh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ma

bb.mq:                                            ; preds = %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !37131
  br label %bb.mr

bb.mr:                                            ; preds = %bb.mx, %bb.mq
  %.sroa.0118.2.i = phi i64 [ -9223372036854775802, %bb.mx ], [ -1, %bb.mq ] ; 2 uses
  %.sroa.11121.2.i = phi ptr [ %i.axn, %bb.mx ], [ undef, %bb.mq ] ; 2 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.experimental.noalias.scope.decl(metadata !37152)
  call void @llvm.experimental.noalias.scope.decl(metadata !37153)
  %.val.i.i.i76 = load i64, ptr %i.axi, align 8, !alias.scope !37154, !noalias !37131 ; 2 uses
  %i.axj = icmp eq i64 %.val.i.i.i76, 0
  br i1 %i.axj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i77, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.axk = getelementptr inbounds nuw i8, ptr %1, i64 336
  %.val1.i.i.i = load ptr, ptr %i.axk, align 8, !alias.scope !37154, !noalias !37131, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i76, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !37155
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i77

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs3PfUT229lOd_12object_store4path4PathNtB1n_5ErrorEEECs9KQ7US1M400_11lance_table.exit38.i: ; preds = %bb.mo, %bb.mn, %bb.mm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !37131
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !37156
  %i.axl = call noundef dereferenceable_or_null(92) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 92, i64 noundef range(i64 1, 9) 1) #76, !noalias !37156 ; 4 uses
  %i.axm = icmp eq ptr %i.axl, null
  br i1 %i.axm, label %bb.mt, label %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i.i.i

bb.mt:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs3PfUT229lOd_12object_store4path4PathNtB1n_5ErrorEEECs9KQ7US1M400_11lance_table.exit38.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 92) #80
          to label %.noexc41.i unwind label %bb.mw, !noalias !37132

.noexc41.i:                                       ; preds = %bb.mt
  unreachable

_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs3PfUT229lOd_12object_store4path4PathNtB1n_5ErrorEEECs9KQ7US1M400_11lance_table.exit38.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(92) %i.axl, ptr noundef nonnull align 1 dereferenceable(92) @835, i64 92, i1 false), !noalias !37157
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !37158
  %i.axn = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !37158 ; 5 uses
  %i.axo = icmp eq ptr %i.axn, null
  br i1 %i.axo, label %bb.mu, label %bb.mx, !prof !104

bb.mu:                                            ; preds = %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #80
          to label %.noexc.i.i40.i unwind label %bb.mv, !noalias !37132

.noexc.i.i40.i:                                   ; preds = %bb.mu
  unreachable

bb.mv:                                            ; preds = %bb.mu
  %i.axp = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.axl, i64 noundef 92, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !37159
  br label %.body42.i

bb.mw:                                            ; preds = %bb.mt
  %i.axq = landingpad { ptr, i32 }
          cleanup
  br label %.body42.i

bb.mx:                                            ; preds = %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i.i.i
  store i64 92, ptr %i.axn, align 8, !noalias !37132
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.axn, i64 8
  store ptr %i.axl, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !noalias !37132
  %.sroa.7.0..sroa_idx.i.i39.i = getelementptr inbounds nuw i8, ptr %i.axn, i64 16
  store i64 92, ptr %.sroa.7.0..sroa_idx.i.i39.i, align 8, !noalias !37132
  br label %bb.mr

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i77: ; preds = %bb.ms, %bb.mr
  %i.axr = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.val.i = load ptr, ptr %i.axr, align 8, !noalias !37131 ; 5 uses
  %i.axs = getelementptr i8, ptr %1, i64 312
  %.val16.i = load ptr, ptr %i.axs, align 8, !noalias !37131, !nonnull !97, !align !102, !noundef !97 ; 5 uses
  %i.axt = load ptr, ptr %.val16.i, align 8, !invariant.load !97, !noalias !37132 ; 2 uses
  %.not.i.i44.i = icmp eq ptr %i.axt, null
  br i1 %.not.i.i44.i, label %bb.mz, label %bb.my

bb.my:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i77
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.axt(ptr noundef nonnull %.val.i)
          to label %bb.mz unwind label %bb.na, !noalias !37132

bb.mz:                                            ; preds = %bb.my, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i77
  %i.axu = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8
  %i.axv = load i64, ptr %i.axu, align 8, !range !101, !invariant.load !97, !noalias !37132 ; 2 uses
  %i.axw = icmp eq i64 %i.axv, 0
  br i1 %i.axw, label %bb.ne, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i47.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i47.i: ; preds = %bb.mz
  %i.axx = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.axy = load i64, ptr %i.axx, align 8, !range !123, !invariant.load !97, !noalias !37132
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.axv, i64 noundef range(i64 1, -9223372036854775807) %i.axy) #76, !noalias !37132
  br label %bb.ne

bb.na:                                            ; preds = %bb.my
  %i.axz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8
  %i.ayb = load i64, ptr %i.aya, align 8, !range !101, !invariant.load !97, !noalias !37132 ; 2 uses
  %i.ayc = icmp eq i64 %i.ayb, 0
  br i1 %i.ayc, label %.body30.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i45.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i45.i: ; preds = %bb.na
  %i.ayd = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.aye = load i64, ptr %i.ayd, align 8, !range !123, !invariant.load !97, !noalias !37132
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ayb, i64 noundef range(i64 1, -9223372036854775807) %i.aye) #76, !noalias !37132
  br label %.body30.i

.body42.i:                                        ; preds = %bb.mw, %bb.mv, %bb.ma
  %.pn8.i = phi { ptr, i32 } [ %.pn6.i, %bb.ma ], [ %i.axq, %bb.mw ], [ %i.axp, %bb.mv ] ; 2 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.experimental.noalias.scope.decl(metadata !37160)
  call void @llvm.experimental.noalias.scope.decl(metadata !37161)
  %.val.i.i51.i = load i64, ptr %i.ayf, align 8, !alias.scope !37162, !noalias !37131 ; 2 uses
  %i.ayg = icmp eq i64 %.val.i.i51.i, 0
  br i1 %i.ayg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit53.i, label %bb.nb

bb.nb:                                            ; preds = %.body42.i
  %i.ayh = getelementptr inbounds nuw i8, ptr %1, i64 336
  %.val1.i.i52.i = load ptr, ptr %i.ayh, align 8, !alias.scope !37162, !noalias !37131, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i52.i, i64 noundef %.val.i.i51.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !37163
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit53.i

bb.nc:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit53.i
  %i.ayi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !37132
  unreachable

bb.nd:                                            ; preds = %bb.lr, %bb.mj
  %i.ayj = phi ptr [ %i.avm, %bb.lr ], [ %i.aww, %bb.mj ]
  %.sink.i79.ph = phi i8 [ 3, %bb.lr ], [ 4, %bb.mj ]
  store i8 %.sink.i79.ph, ptr %i.ayj, align 8, !noalias !37131
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17122.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13182)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %common.ret

.body97:                                          ; preds = %bb.nf
  %i.ayk = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

bb.ne:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i47.i, %bb.mz, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.me
  %i.ayl = phi ptr [ %i.aww, %bb.mz ], [ %i.aww, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i47.i ], [ %i.avm, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i ], [ %i.avm, %bb.me ]
  %.sroa.0.2397 = phi i64 [ %.sroa.0.2398, %bb.mz ], [ %.sroa.0.2398, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i47.i ], [ %.sroa.0.2399, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i ], [ %.sroa.0.2399, %bb.me ] ; 4 uses
  %.sroa.13.2389 = phi ptr [ %.sroa.13.2390, %bb.mz ], [ %.sroa.13.2390, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i47.i ], [ %.sroa.13.2391, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i ], [ %.sroa.13.2391, %bb.me ] ; 4 uses
  %.sroa.0118.1.i = phi i64 [ %.sroa.0118.2.i, %bb.mz ], [ %.sroa.0118.2.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i47.i ], [ %.sroa.0118.0.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i ], [ %.sroa.0118.0.i, %bb.me ] ; 4 uses
  %.sroa.5119.1.i = phi i64 [ ptrtoint (ptr @551 to i64), %bb.mz ], [ ptrtoint (ptr @551 to i64), %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i47.i ], [ %.sroa.5119.0.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i ], [ %.sroa.5119.0.i, %bb.me ]
  %.sroa.8120.1.i = phi i64 [ 3, %bb.mz ], [ 3, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i47.i ], [ %.sroa.8120.0.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i ], [ %.sroa.8120.0.i, %bb.me ]
  %.sroa.11121.1.i = phi ptr [ %.sroa.11121.2.i, %bb.mz ], [ %.sroa.11121.2.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i47.i ], [ %.sroa.11121.0.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i ], [ %.sroa.11121.0.i, %bb.me ]
  %.sroa.14.1.i = phi ptr [ @26, %bb.mz ], [ @26, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i47.i ], [ %.sroa.14.0.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i ], [ %.sroa.14.0.i, %bb.me ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !37131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13182, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17122.i, i64 32, i1 false), !noalias !37164
  store i8 1, ptr %i.ayl, align 8, !noalias !37131
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17122.i)
  %.sroa.8188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8188.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13182, i64 32, i1 false)
  store i64 %.sroa.0118.1.i, ptr %i.bc, align 8
  %.sroa.4184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %.sroa.5119.1.i, ptr %.sroa.4184.0..sroa_idx, align 8
  %.sroa.5185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 %.sroa.8120.1.i, ptr %.sroa.5185.0..sroa_idx, align 8
  %.sroa.6186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %.sroa.11121.1.i, ptr %.sroa.6186.0..sroa_idx, align 8
  %.sroa.7187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr %.sroa.14.1.i, ptr %.sroa.7187.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13182)
  %.not5 = icmp eq i64 %.sroa.0118.1.i, -1
  br i1 %.not5, label %.noexc, label %6

6:                                                ; preds = %bb.ne
  %7 = icmp ne i64 %.sroa.0118.1.i, -9223372036854775800
  call void @llvm.assume(i1 %7)
  %8 = icmp eq i64 %.sroa.0118.1.i, -9223372036854775801
  br i1 %8, label %bb.nf, label %bb.nq

bb.nf:                                            ; preds = %6
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(72) %i.bc)
          to label %.noexc unwind label %.body97

.noexc:                                           ; preds = %bb.ne, %bb.nf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.aym = load atomic i64, ptr @_RNvNtCs9ipI1vyGjpZ_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off = add i64 %i.aym, -3
  %switch = icmp ult i64 %.off, 3
  br i1 %switch, label %.critedge, label %bb.ng

bb.ng:                                            ; preds = %.noexc
  %i.ayn = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB6_29ExternalManifestCommitHandler17finalize_manifest010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.ayo = icmp ult i8 %i.ayn, 3
  br i1 %i.ayo, label %bb.ni, label %bb.nh, !prof !211

bb.nh:                                            ; preds = %bb.ng
  %i.ayp = invoke noundef i8 @_RNvMNtCs9ipI1vyGjpZ_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB6_29ExternalManifestCommitHandler17finalize_manifest010___CALLSITE)
          to label %bb.ni unwind label %bb.nj

bb.ni:                                            ; preds = %bb.nh, %bb.ng
  %.sroa.0.0.i100 = phi i8 [ %i.ayn, %bb.ng ], [ %i.ayp, %bb.nh ] ; 2 uses
  %i.ayq = icmp eq i8 %.sroa.0.0.i100, 0
  br i1 %i.ayq, label %.critedge, label %bb.nk

bb.nj:                                            ; preds = %bb.nh, %bb.nk
  %i.ayr = landingpad { ptr, i32 }
          cleanup
  br label %.body66

bb.nk:                                            ; preds = %bb.ni
  %i.ays = load ptr, ptr @_RNvNCNvMNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB6_29ExternalManifestCommitHandler17finalize_manifest010___CALLSITE, align 8, !nonnull !97, !align !102, !noundef !97
  %i.ayt = invoke noundef zeroext i1 @_RNvNtCshTahG2RyGLb_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ays, i8 noundef %.sroa.0.0.i100)
          to label %bb.nl unwind label %bb.nj

bb.nl:                                            ; preds = %bb.nk
  br i1 %i.ayt, label %bb.nm, label %.critedge

.critedge:                                        ; preds = %.noexc, %bb.ni, %_RNCNCNvMNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB6_29ExternalManifestCommitHandler17finalize_manifest00Bc_.exit, %bb.nl
  %i.ayu = getelementptr inbounds nuw i8, ptr %1, i64 274
  %i.ayv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0253.0.copyload = load i64, ptr %i.ayv, align 8
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4254.0.copyload = load i8, ptr %.sroa.4254.0..sroa_idx, align 8
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6212, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5255.0..sroa_idx, i64 7, i1 false)
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6256.0.copyload = load i64, ptr %.sroa.6256.0..sroa_idx, align 8
  %.sroa.7257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.7257.0.copyload = load ptr, ptr %.sroa.7257.0..sroa_idx, align 8
  %.sroa.8258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.8258.0.copyload = load i64, ptr %.sroa.8258.0..sroa_idx, align 8
  %.sroa.9259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10237, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9259.0..sroa_idx, i64 24, i1 false)
  %.sroa.10260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11241, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10260.0..sroa_idx, i64 16, i1 false)
  store i8 0, ptr %i.ayu, align 2
  %i.ayw = getelementptr inbounds nuw i8, ptr %1, i64 275
  store i8 0, ptr %i.ayw, align 1
  %i.ayx = getelementptr inbounds nuw i8, ptr %1, i64 273
  store i8 0, ptr %i.ayx, align 1
  br label %bb.no

bb.nm:                                            ; preds = %bb.nl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.ayy = load ptr, ptr @_RNvNCNvMNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB6_29ExternalManifestCommitHandler17finalize_manifest010___CALLSITE, align 8, !nonnull !97, !align !102, !noundef !97 ; 2 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.aza = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.azb = load ptr, ptr %i.aza, align 8, !nonnull !97, !align !102, !noundef !97 ; 2 uses
  %i.azc = getelementptr i8, ptr %i.azb, i64 8
  %.val47 = load ptr, ptr %i.azc, align 8, !nonnull !97, !noundef !97
  %i.azd = getelementptr i8, ptr %i.azb, i64 16
  %.val48 = load i64, ptr %i.azd, align 8, !noundef !97
  store ptr %.val47, ptr %i.aw, align 8
  %i.aze = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %.val48, ptr %i.aze, align 8
  store ptr @603, ptr %i.ax, align 8
  %i.azf = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr @604, ptr %i.azf, align 8
  %i.azg = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr @606, ptr %i.azg, align 8
  %i.azh = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr @604, ptr %i.azh, align 8
  %i.azi = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.aw, ptr %i.azi, align 8
  %i.azj = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store ptr @604, ptr %i.azj, align 8
  store i64 1, ptr %i.ay, align 8
  %.sroa.6198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ax, ptr %.sroa.6198.0..sroa_idx, align 8
  %.sroa.7199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 3, ptr %.sroa.7199.0..sroa_idx, align 8
  %.sroa.8200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.ayz, ptr %.sroa.8200.0..sroa_idx, align 8
  invoke void @_RNvMNtCs9ipI1vyGjpZ_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ayy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ay)
          to label %_RNCNCNvMNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB6_29ExternalManifestCommitHandler17finalize_manifest00Bc_.exit unwind label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.azk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %.body66

_RNCNCNvMNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB6_29ExternalManifestCommitHandler17finalize_manifest00Bc_.exit: ; preds = %bb.nm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %.critedge

bb.no:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit, %.critedge
  %.sroa.0201.2 = phi i64 [ %.sroa.0253.0.copyload, %.critedge ], [ %.sroa.0201.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit ]
  %.sroa.5205.2 = phi i8 [ %.sroa.4254.0.copyload, %.critedge ], [ %.sroa.5205.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit ]
  %.sroa.7216.2 = phi i64 [ %.sroa.6256.0.copyload, %.critedge ], [ %.sroa.7216.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit ]
  %.sroa.8223.2 = phi ptr [ %.sroa.7257.0.copyload, %.critedge ], [ %.sroa.8223.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit ]
  %.sroa.9230.2 = phi i64 [ %.sroa.8258.0.copyload, %.critedge ], [ %.sroa.9230.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit ]
  store i64 %.sroa.0201.2, ptr %0, align 8
  %.sroa.5205.0..sroa_idx208 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5205.2, ptr %.sroa.5205.0..sroa_idx208, align 8
  %.sroa.6212.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6212.0..sroa_idx214, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6212, i64 7, i1 false)
  %.sroa.7216.0..sroa_idx219 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7216.2, ptr %.sroa.7216.0..sroa_idx219, align 8
  %.sroa.8223.0..sroa_idx226 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.8223.2, ptr %.sroa.8223.0..sroa_idx226, align 8
  %.sroa.9230.0..sroa_idx233 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9230.2, ptr %.sroa.9230.0..sroa_idx233, align 8
  %.sroa.10237.0..sroa_idx239 = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10237.0..sroa_idx239, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10237, i64 24, i1 false)
  %.sroa.11241.0..sroa_idx243 = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11241.0..sroa_idx243, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11241, i64 16, i1 false)
  br label %common.ret

bb.np:                                            ; preds = %bb.nq, %bb.nt
  %i.azl = getelementptr inbounds nuw i8, ptr %1, i64 274
  store i8 0, ptr %i.azl, align 2
  %i.azm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0245.0.copyload = load i64, ptr %i.azm, align 8
  %.sroa.4246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4246.0.copyload = load i8, ptr %.sroa.4246.0..sroa_idx, align 8
  %.sroa.5247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6212, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5247.0..sroa_idx, i64 7, i1 false)
  %.sroa.6248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6248.0.copyload = load i64, ptr %.sroa.6248.0..sroa_idx, align 8
  %.sroa.7249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.7249.0.copyload = load ptr, ptr %.sroa.7249.0..sroa_idx, align 8
  %.sroa.8250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.8250.0.copyload = load i64, ptr %.sroa.8250.0..sroa_idx, align 8
  %.sroa.9251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10237, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9251.0..sroa_idx, i64 24, i1 false)
  %.sroa.10252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11241, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10252.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(72) %i.bb)
          to label %bb.nw unwind label %bb.nv

bb.nq:                                            ; preds = %6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bb, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 72, i1 false)
  %i.azn = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.azo = icmp ult i64 %i.azn, 6
  call void @llvm.assume(i1 %i.azo)
  %i.azp = icmp samesign ugt i64 %i.azn, 1
  br i1 %i.azp, label %bb.ns, label %bb.np

bb.nr:                                            ; preds = %bb.ns
  %i.azq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(72) %i.bb) #81
          to label %bb.nu unwind label %bb.kk

bb.ns:                                            ; preds = %bb.nq
  %i.azr = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store ptr %i.azr, ptr %i.ba, align 8
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs3PfUT229lOd_12object_store4path4PathNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.5192.0..sroa_idx, align 8
  %i.azs = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bb, ptr %i.azs, align 8
  %.sroa.5194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr @_RNvXs1f_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.5194.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store ptr @600, ptr %i.az, align 8
  %i.azt = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 42, ptr %i.azt, align 8
  %i.azu = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr @600, ptr %i.azu, align 8
  %i.azv = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 42, ptr %i.azv, align 8
  %i.azw = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store ptr @608, ptr %i.azw, align 8
  invoke fastcc void @_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECs9KQ7US1M400_11lance_table(ptr noundef nonnull @607, ptr noundef nonnull %i.ba, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.az)
          to label %bb.nt unwind label %bb.nr

bb.nt:                                            ; preds = %bb.ns
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.np

bb.nu:                                            ; preds = %bb.nr, %bb.nv
  %.pn11 = phi { ptr, i32 } [ %i.azx, %bb.nv ], [ %i.azq, %bb.nr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.lb

bb.nv:                                            ; preds = %bb.np
  %i.azx = landingpad { ptr, i32 }
          cleanup
  br label %bb.nu

bb.nw:                                            ; preds = %bb.np
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.la

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.ny, %bb.nx, %bb.kj
  store i8 0, ptr %i.asp, align 1
  br label %bb.no

bb.nx:                                            ; preds = %bb.kj
  %i.azy = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.experimental.noalias.scope.decl(metadata !37165)
  call void @llvm.experimental.noalias.scope.decl(metadata !37166)
  %.val.i.i107 = load i64, ptr %i.azy, align 8, !alias.scope !37167 ; 2 uses
  %i.azz = icmp eq i64 %.val.i.i107, 0
  br i1 %i.azz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.baa = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val1.i.i108 = load ptr, ptr %i.baa, align 8, !alias.scope !37167, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i108, i64 noundef %.val.i.i107, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !37167
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit

bb.nz:                                            ; preds = %bb.b
  %i.bab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit112

bb.oa:                                            ; preds = %bb.ob, %.body66
  store i8 0, ptr %i.aue, align 2
  %i.bac = getelementptr inbounds nuw i8, ptr %1, i64 275
  %i.bad = load i8, ptr %i.bac, align 1, !range !106, !noundef !97
  %i.bae = trunc nuw i8 %i.bad to i1
  %.0.val.off.i = add i64 %.sroa.0.1, -1
  %switch.i109 = icmp ult i64 %.0.val.off.i, -2
  %or.cond = select i1 %i.bae, i1 %switch.i109, i1 false
  br i1 %or.cond, label %bb.oc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit

bb.ob:                                            ; preds = %.body66
  %i.baf = getelementptr inbounds nuw i8, ptr %1, i64 16
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.baf) #81
  br label %bb.oa

bb.oc:                                            ; preds = %bb.oa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.1) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.1, i64 noundef %.sroa.0.1, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !37168
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit

bb.od:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit
  %i.bag = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.experimental.noalias.scope.decl(metadata !37169)
  call void @llvm.experimental.noalias.scope.decl(metadata !37170)
  %.val.i.i110 = load i64, ptr %i.bag, align 8, !alias.scope !37171 ; 2 uses
  %i.bah = icmp eq i64 %.val.i.i110, 0
  br i1 %i.bah, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit112, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.bai = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val1.i.i111 = load ptr, ptr %i.bai, align 8, !alias.scope !37171, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i111, i64 noundef %.val.i.i110, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !37171
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit112
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB4_29ExternalManifestCommitHandler34verify_finalized_manifest_location0Ba_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !37222 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.12 = alloca [7 x i8], align 1            ; 2 uses
  %i.c = alloca [80 x i8], align 8                ; 16 uses
  %i.d = alloca [48 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [96 x i8], align 8                ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !155, !noundef !97
  switch i8 %i.k, label %default.unreachable210 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.f
    i8 4, label %bb.am
  ]

default.unreachable210:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 314
  store i8 0, ptr %i.l, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 313
  store i8 0, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 315
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !97, !align !102, !noundef !97
  store ptr %i.q, ptr %i.o, align 8
  store i8 1, ptr %i.n, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !97, !noundef !97 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !97, !align !102, !noundef !97 ; 2 uses
  store ptr %i.u, ptr %i.s, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 208
  store ptr %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %i.u, ptr %i.z, align 8
  %.sroa.10.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %1, i64 328
  store ptr %i.w, ptr %.sroa.10.0..sroa_idx125, align 8
  %.sroa.11.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %1, i64 336
  store ptr %i.y, ptr %.sroa.11.0..sroa_idx126, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 8
  br label %bb.f

.body:                                            ; preds = %bb.ba, %bb.bd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit112.thread, %bb.n, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.m, %bb.be, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit112, %bb.bb, %bb.e
  %.pn45 = phi { ptr, i32 } [ %.pn41.pn, %bb.bd ], [ %i.bc, %bb.n ], [ %i.aw, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.aw, %bb.m ], [ %.pn41.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit112 ], [ %.pn41.pn, %bb.be ], [ %.pn41.pn, %bb.bb ], [ %.pn41.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit112.thread ], [ %i.af, %bb.e ], [ %.pn41.pn, %bb.ba ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 313
  store i8 0, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 314
  store i8 0, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 315 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !range !106, !noundef !97
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.bg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit121

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @609) #80
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @609) #80
  unreachable

bb.e:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeDNtBG_11ObjectStoreEL_NtBG_14ObjectStoreExt4head0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.ag) #81
          to label %.body unwind label %bb.ae
end_hunk_2
begin_hunk_3_@_RNCNvXs0_NtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB7_29ExternalManifestCommitHandlerNtB9_13CommitHandler6commit0Bd_:bb.a
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ia, ptr %i.ib, align 8
  %.sroa.5235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs3_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.5235.0..sroa_idx, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.hz, ptr %i.ic, align 8
  %.sroa.5237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXs1B_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.5237.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @600, ptr %i.a, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 42, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @600, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 42, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @860, ptr %i.ig, align 8
  invoke fastcc void @_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECs9KQ7US1M400_11lance_table(ptr noundef nonnull @859, ptr noundef nonnull %i.b, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
          to label %bb.br unwind label %bb.bp

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load i64, ptr %i.gp, align 8, !range !126, !alias.scope !43936
  br label %bb.bj

.body129:                                         ; preds = %bb.bs, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i126, %bb.bh, %bb.bb, %bb.bw
  %.pn39 = phi { ptr, i32 } [ %i.gi, %bb.bb ], [ %.pn35.pn.pn, %bb.bw ], [ %i.ii, %bb.bs ], [ %i.gw, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i126 ], [ %i.gw, %bb.bh ]
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 656
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ih) #81
          to label %.body118 unwind label %bb.af

bb.bs:                                            ; preds = %bb.da, %bb.bn, %bb.aq
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body129

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB13_.exit: ; preds = %bb.bm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i.i, %bb.bn
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 656
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ij)
          to label %bb.az unwind label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB13_.exit159, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB13_.exit
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body118

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit122: ; preds = %bb.ba, %bb.az
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 496
  call void @llvm.experimental.noalias.scope.decl(metadata !43943)
  call void @llvm.experimental.noalias.scope.decl(metadata !43944)
  %.val.i.i139 = load i64, ptr %i.il, align 8, !alias.scope !43945 ; 2 uses
  %i.im = icmp eq i64 %.val.i.i139, 0
  br i1 %i.im, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit141, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit122
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 504
  %.val1.i.i140 = load ptr, ptr %i.in, align 8, !alias.scope !43945, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i140, i64 noundef %.val.i.i139, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !43945
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit141

bb.bv:                                            ; preds = %bb.b
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit105

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit141: ; preds = %bb.bu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit122
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 795
  store i8 0, ptr %i.ip, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 796
  store i8 0, ptr %i.iq, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format11transaction11TransactionEEB13_.exit173

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format11transaction11TransactionEEB13_.exit173: ; preds = %bb.du, %bb.dt, %bb.dp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit168, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit141
  %.sroa.6.3 = phi i8 [ %.sroa.6.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit141 ], [ %.sroa.6.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit168 ], [ %.sroa.6.0, %bb.dp ], [ %.sroa.6.0, %bb.dt ], [ %.sroa.6.0, %bb.du ]
  %.sroa.0.3 = phi i64 [ %.sroa.0.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit141 ], [ -1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit168 ], [ -1, %bb.dp ], [ -1, %bb.dt ], [ -1, %bb.du ]
  store i64 %.sroa.0.3, ptr %0, align 8
  %.sroa.6.0..sroa_idx175 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.6.3, ptr %.sroa.6.0..sroa_idx175, align 8
  %.sroa.10.0..sroa_idx178 = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.10.0..sroa_idx178, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.10, i64 71, i1 false)
  br label %common.ret

bb.bw:                                            ; preds = %bb.bp, %.body142
  %.pn35.pn.pn = phi { ptr, i32 } [ %i.hv, %bb.bp ], [ %.pn35, %.body142 ]
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 712
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB13_(ptr noalias noundef align 8 dereferenceable(80) %i.ir) #81
          to label %.body129 unwind label %bb.af

_RNvYNtNtCs3PfUT229lOd_12object_store4path4PathNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs9KQ7US1M400_11lance_table.exit.thread: ; preds = %bb.bi, %_RNvYNtNtCs3PfUT229lOd_12object_store4path4PathNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs9KQ7US1M400_11lance_table.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.it = load ptr, ptr %i.is, align 8, !nonnull !97, !align !102, !noundef !97
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 48
  store ptr %i.iu, ptr %i.gj, align 8
  store ptr %i.he, ptr %i.gk, align 8
  %.sroa.9216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 832
  store i8 0, ptr %.sroa.9216.0..sroa_idx, align 8
  br label %bb.by

.body142:                                         ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.cg, %bb.ck, %bb.co, %bb.cu, %bb.bx
  %.pn35 = phi { ptr, i32 } [ %i.jm, %bb.cg ], [ %.pn33, %bb.cu ], [ %i.kl, %bb.co ], [ %i.iv, %bb.bx ], [ %i.jy, %bb.ck ], [ %i.jm, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bw

bb.bx:                                            ; preds = %bb.by
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.iw) #81
          to label %.body142 unwind label %bb.af

bb.by:                                            ; preds = %bb.g, %_RNvYNtNtCs3PfUT229lOd_12object_store4path4PathNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs9KQ7US1M400_11lance_table.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 2 uses
  invoke fastcc void @_RNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB4_11ObjectStoreEL_ENtB4_14ObjectStoreExt6delete0Cs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.i, ptr noundef nonnull align 8 %i.iw, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.bz unwind label %bb.bx

bb.bz:                                            ; preds = %bb.by
  %i.ix = load i64, ptr %i.i, align 8, !range !136, !noundef !97
  %i.iy = icmp eq i64 %i.ix, -2
  br i1 %i.iy, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %common.ret

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.ja = load i8, ptr %i.iz, align 8, !range !155, !noundef !97
  switch i8 %i.ja, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECs9KQ7US1M400_11lance_table.exit [
    i8 4, label %bb.cc
    i8 3, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 840
  call void @llvm.experimental.noalias.scope.decl(metadata !43946)
  call void @llvm.experimental.noalias.scope.decl(metadata !43947)
  %.val.i.i.i = load i64, ptr %i.jb, align 8, !alias.scope !43948 ; 2 uses
  %i.jc = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.jc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 848
  %.val1.i.i.i = load ptr, ptr %i.jd, align 8, !alias.scope !43948, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !43948
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 816
  %.val.i = load ptr, ptr %i.je, align 8          ; 5 uses
  %i.jf = getelementptr i8, ptr %1, i64 824
  %.val2.i = load ptr, ptr %i.jf, align 8, !nonnull !97, !align !102, !noundef !97 ; 5 uses
  %i.jg = load ptr, ptr %.val2.i, align 8, !invariant.load !97 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.jg(ptr noundef nonnull %.val.i)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %bb.ce, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i
  %i.jh = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !range !101, !invariant.load !97 ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 0
  br i1 %i.jj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECs9KQ7US1M400_11lance_table.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.cf
  %i.jk = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.jl = load i64, ptr %i.jk, align 8, !range !123, !invariant.load !97
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ji, i64 noundef range(i64 1, -9223372036854775807) %i.jl) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECs9KQ7US1M400_11lance_table.exit

bb.cg:                                            ; preds = %bb.ce
  %i.jm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.jo = load i64, ptr %i.jn, align 8, !range !101, !invariant.load !97 ; 2 uses
  %i.jp = icmp eq i64 %i.jo, 0
  br i1 %i.jp, label %.body142, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.cg
  %i.jq = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.jr = load i64, ptr %i.jq, align 8, !range !123, !invariant.load !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.jo, i64 noundef range(i64 1, -9223372036854775807) %i.jr) #76
  br label %.body142

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECs9KQ7US1M400_11lance_table.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.cf, %bb.cb
  %i.js = load i64, ptr %i.j, align 8, !range !138, !noundef !97 ; 3 uses
  %.not23 = icmp eq i64 %i.js, -1
  br i1 %.not23, label %.noexc, label %3

3:                                                ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECs9KQ7US1M400_11lance_table.exit
  %4 = icmp ne i64 %i.js, -9223372036854775800
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.js, -9223372036854775801
  br i1 %5, label %.critedge58, label %bb.cq

.noexc:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECs9KQ7US1M400_11lance_table.exit
  %i.jt = load atomic i64, ptr @_RNvNtCs9ipI1vyGjpZ_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off = add i64 %i.jt, -3
  %switch = icmp ult i64 %.off, 3
  br i1 %switch, label %.critedge58.thread, label %bb.ch

bb.ch:                                            ; preds = %.noexc
  %i.ju = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXs0_NtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB9_29ExternalManifestCommitHandlerNtBb_13CommitHandler6commit010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.jv = icmp ult i8 %i.ju, 3
  br i1 %i.jv, label %bb.cj, label %bb.ci, !prof !211

bb.ci:                                            ; preds = %bb.ch
  %i.jw = invoke noundef i8 @_RNvMNtCs9ipI1vyGjpZ_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvXs0_NtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB9_29ExternalManifestCommitHandlerNtBb_13CommitHandler6commit010___CALLSITE)
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.sroa.0.0.i145 = phi i8 [ %i.ju, %bb.ch ], [ %i.jw, %bb.ci ] ; 2 uses
  %i.jx = icmp eq i8 %.sroa.0.0.i145, 0
  br i1 %i.jx, label %.critedge58.thread, label %bb.cl

bb.ck:                                            ; preds = %.critedge58, %bb.ci, %bb.cl
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %.body142

bb.cl:                                            ; preds = %bb.cj
  %i.jz = load ptr, ptr @_RNvNCNvXs0_NtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB9_29ExternalManifestCommitHandlerNtBb_13CommitHandler6commit010___CALLSITE, align 8, !nonnull !97, !align !102, !noundef !97
  %i.ka = invoke noundef zeroext i1 @_RNvNtCshTahG2RyGLb_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jz, i8 noundef %.sroa.0.0.i145)
          to label %bb.cm unwind label %bb.ck

bb.cm:                                            ; preds = %bb.cl
  br i1 %i.ka, label %bb.cn, label %.critedge58.thread

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.kb = load ptr, ptr @_RNvNCNvXs0_NtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB9_29ExternalManifestCommitHandlerNtBb_13CommitHandler6commit010___CALLSITE, align 8, !nonnull !97, !align !102, !noundef !97 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.kd = getelementptr i8, ptr %1, i64 528
  %.val82 = load ptr, ptr %i.kd, align 8, !nonnull !97, !noundef !97
  %i.ke = getelementptr i8, ptr %1, i64 536
  %.val83 = load i64, ptr %i.ke, align 8, !noundef !97
  store ptr %.val82, ptr %i.f, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.val83, ptr %i.kf, align 8
  store ptr @603, ptr %i.g, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @604, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr @606, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @604, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.f, ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @604, ptr %i.kk, align 8
  store i64 1, ptr %i.h, align 8
  %.sroa.6221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %.sroa.6221.0..sroa_idx, align 8
  %.sroa.7222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 3, ptr %.sroa.7222.0..sroa_idx, align 8
  %.sroa.8223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.kc, ptr %.sroa.8223.0..sroa_idx, align 8
  invoke void @_RNvMNtCs9ipI1vyGjpZ_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %_RNCNCNvXs0_NtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB9_29ExternalManifestCommitHandlerNtBb_13CommitHandler6commit00Bf_.exit unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.body142

_RNCNCNvXs0_NtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB9_29ExternalManifestCommitHandlerNtBb_13CommitHandler6commit00Bf_.exit: ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.critedge58.thread

bb.cp:                                            ; preds = %bb.cq, %bb.ct
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.cw unwind label %bb.cv

bb.cq:                                            ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  %i.km = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.kn = icmp ult i64 %i.km, 6
  call void @llvm.assume(i1 %i.kn)
  %i.ko = icmp samesign ugt i64 %i.km, 1
  br i1 %i.ko, label %bb.cs, label %bb.cp

bb.cr:                                            ; preds = %bb.cs
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(72) %i.e) #81
          to label %bb.cu unwind label %bb.af

bb.cs:                                            ; preds = %bb.cq
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.kq, ptr %i.d, align 8
  %.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.5227.0..sroa_idx, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.kr, align 8
  %.sroa.5229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1f_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.5229.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @600, ptr %i.c, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 42, ptr %i.ks, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @600, ptr %i.kt, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 42, ptr %i.ku, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @862, ptr %i.kv, align 8
  invoke fastcc void @_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECs9KQ7US1M400_11lance_table(ptr noundef nonnull @861, ptr noundef nonnull %i.d, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
          to label %bb.ct unwind label %bb.cr

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.cp

bb.cu:                                            ; preds = %bb.cr, %bb.cv
  %.pn33 = phi { ptr, i32 } [ %i.kw, %bb.cv ], [ %i.kp, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.body142

bb.cv:                                            ; preds = %bb.cp
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cw:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.critedge58.thread

.critedge58.thread:                               ; preds = %.noexc, %bb.cw, %_RNCNCNvXs0_NtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB9_29ExternalManifestCommitHandlerNtBb_13CommitHandler6commit00Bf_.exit, %bb.cm, %bb.cj, %.critedge58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 712
  call void @llvm.experimental.noalias.scope.decl(metadata !43949)
  %i.ky = load i64, ptr %i.kx, align 8, !range !126, !alias.scope !43949, !noundef !97
  %.not.i152 = icmp eq i64 %i.ky, -1
  br i1 %.not.i152, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %.critedge58.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !43950)
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 728
  call void @llvm.experimental.noalias.scope.decl(metadata !43951)
  call void @llvm.experimental.noalias.scope.decl(metadata !43952)
  %.val.i.i.i.i153 = load i64, ptr %i.kz, align 8, !alias.scope !43953 ; 2 uses
  %i.la = icmp eq i64 %.val.i.i.i.i153, 0
  br i1 %i.la, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i.i155, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 736
  %.val1.i.i.i.i154 = load ptr, ptr %i.lb, align 8, !alias.scope !43953, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i154, i64 noundef %.val.i.i.i.i153, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !43953
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i.i155

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i.i155: ; preds = %bb.cy, %bb.cx
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 752
  %.val.i.i156 = load i64, ptr %i.lc, align 8, !range !99, !alias.scope !43954, !noundef !97 ; 2 uses
  %i.ld = icmp sgt i64 %.val.i.i156, 0
  br i1 %i.ld, label %bb.cz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB13_.exit159

bb.cz:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i.i155
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 760
  %.val1.i.i157 = load ptr, ptr %i.le, align 8, !alias.scope !43954, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i157, i64 noundef %.val.i.i156, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !43955
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB13_.exit159

bb.da:                                            ; preds = %.critedge58.thread
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 720
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.lf)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB13_.exit159 unwind label %bb.bs

.critedge58:                                      ; preds = %3
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(72) %i.j)
          to label %.critedge58.thread unwind label %bb.ck

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB13_.exit159: ; preds = %bb.cz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i.i155, %bb.da
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 656
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.lg)
          to label %bb.ad unwind label %bb.bt

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit110
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 795 ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1, !range !106, !noundef !97
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %bb.db, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format11transaction11TransactionEEB13_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format11transaction11TransactionEEB13_.exit: ; preds = %bb.dg, %bb.df, %bb.db, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit
  store i8 0, ptr %i.lh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 796 ; 2 uses
  %i.ll = load i8, ptr %i.lk, align 4, !range !106, !noundef !97
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.di, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit

bb.db:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !43956)
  %i.ln = load i64, ptr %i.r, align 8, !range !99, !alias.scope !43956, !noundef !97 ; 3 uses
  %i.lo = icmp eq i64 %i.ln, -1
  br i1 %i.lo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format11transaction11TransactionEEB13_.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.experimental.noalias.scope.decl(metadata !43957)
  call void @llvm.experimental.noalias.scope.decl(metadata !43958)
  call void @llvm.experimental.noalias.scope.decl(metadata !43959)
  %i.lp = icmp eq i64 %i.ln, 0
  br i1 %i.lp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.lq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val1.i.i.i.i160 = load ptr, ptr %i.lq, align 8, !alias.scope !43960, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i160, i64 noundef %i.ln, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !43960
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %bb.dd, %bb.dc
  %i.lr = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !43961)
  %.val.i7.i.i.i = load i64, ptr %i.lr, align 8, !alias.scope !43962 ; 2 uses
  %i.ls = icmp eq i64 %.val.i7.i.i.i, 0
  br i1 %i.ls, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.val1.i8.i.i.i = load ptr, ptr %i.lt, align 8, !alias.scope !43962, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i8.i.i.i, i64 noundef %.val.i7.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !43962
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.r, i64 368
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.lu)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.lw = load i64, ptr %i.lv, align 8, !range !133, !alias.scope !43963, !noundef !97
  %i.lx = icmp eq i64 %i.lw, -1
  br i1 %i.lx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format11transaction11TransactionEEB13_.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction9OperationEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.lv)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format11transaction11TransactionEEB13_.exit

bb.dh:                                            ; preds = %bb.dy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit105
  store i8 0, ptr %i.bh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 796 ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 4, !range !106, !noundef !97
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %bb.dz, label %bb.dl

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit: ; preds = %bb.dk, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i, %bb.di, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format11transaction11TransactionEEB13_.exit
  store i8 0, ptr %i.lk, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 798
  %i.mc = load i8, ptr %i.mb, align 2, !range !106, !noundef !97
  %i.md = trunc nuw i8 %i.mc to i1
  br i1 %i.md, label %bb.dm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit168

bb.di:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format11transaction11TransactionEEB13_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !43964)
  %i.me = load i64, ptr %i.s, align 8, !range !99, !alias.scope !43964, !noundef !97 ; 3 uses
  %i.mf = icmp eq i64 %i.me, -1
  br i1 %i.mf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.experimental.noalias.scope.decl(metadata !43965)
  %i.mg = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i.i161 = load ptr, ptr %i.mg, align 8, !alias.scope !43966, !nonnull !97, !noundef !97 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val1.i.i162 = load i64, ptr %i.mh, align 8, !alias.scope !43966, !noundef !97 ; 2 uses
  %i.mi = icmp eq i64 %.val1.i.i162, 0
  br i1 %i.mi, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dj, %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.mk, %.lr.ph.i.i.i.i ], [ 0, %bb.dj ] ; 2 uses
  %i.mj = getelementptr inbounds nuw [176 x i8], ptr %.val.i.i161, i64 %.sroa.0.07.i.i.i.i
  %i.mk = add nuw nsw i64 %.sroa.0.07.i.i.i.i, 1  ; 2 uses
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEBH_(ptr noalias noundef readonly align 8 dereferenceable(176) %i.mj), !noalias !43966
  %i.ml = icmp eq i64 %i.mk, %.val1.i.i162
  br i1 %i.ml, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.dj
  %i.mm = icmp eq i64 %i.me, 0
  br i1 %i.mm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit, label %bb.dk

bb.dk:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i
  %i.mn = mul nuw i64 %i.me, 176
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i161, i64 noundef %i.mn, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !43966
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit

bb.dl:                                            ; preds = %bb.dz, %bb.dh
  store i8 0, ptr %i.ly, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 798
  %i.mp = load i8, ptr %i.mo, align 2, !range !106, !noundef !97
  %i.mq = trunc nuw i8 %i.mp to i1
  br i1 %i.mq, label %bb.eb, label %bb.ea

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit168: ; preds = %bb.do, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i167, %bb.dm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 797
  %i.ms = load i8, ptr %i.mr, align 1, !range !106, !noundef !97
  %i.mt = trunc nuw i8 %i.ms to i1
  br i1 %i.mt, label %bb.dp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format11transaction11TransactionEEB13_.exit173

bb.dm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !43967)
  %i.mu = load i64, ptr %1, align 8, !range !99, !alias.scope !43967, !noundef !97 ; 3 uses
  %i.mv = icmp eq i64 %i.mu, -1
  br i1 %i.mv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit168, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.experimental.noalias.scope.decl(metadata !43968)
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i163 = load ptr, ptr %i.mw, align 8, !alias.scope !43969, !nonnull !97, !noundef !97 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i164 = load i64, ptr %i.mx, align 8, !alias.scope !43969, !noundef !97 ; 2 uses
  %i.my = icmp eq i64 %.val1.i.i164, 0
  br i1 %i.my, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i167, label %.lr.ph.i.i.i.i165

.lr.ph.i.i.i.i165:                                ; preds = %bb.dn, %.lr.ph.i.i.i.i165
  %.sroa.0.07.i.i.i.i166 = phi i64 [ %i.na, %.lr.ph.i.i.i.i165 ], [ 0, %bb.dn ] ; 2 uses
  %i.mz = getelementptr inbounds nuw [176 x i8], ptr %.val.i.i163, i64 %.sroa.0.07.i.i.i.i166
  %i.na = add nuw nsw i64 %.sroa.0.07.i.i.i.i166, 1 ; 2 uses
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEBH_(ptr noalias noundef readonly align 8 dereferenceable(176) %i.mz), !noalias !43969
  %i.nb = icmp eq i64 %i.na, %.val1.i.i164
  br i1 %i.nb, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i167, label %.lr.ph.i.i.i.i165

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i167: ; preds = %.lr.ph.i.i.i.i165, %bb.dn
  %i.nc = icmp eq i64 %i.mu, 0
  br i1 %i.nc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit168, label %bb.do

bb.do:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i167
  %i.nd = mul nuw i64 %i.mu, 176
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i163, i64 noundef %i.nd, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !43969
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit168

bb.dp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit168
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !43970)
  %i.nf = load i64, ptr %i.ne, align 8, !range !99, !alias.scope !43970, !noundef !97 ; 3 uses
  %i.ng = icmp eq i64 %i.nf, -1
  br i1 %i.ng, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format11transaction11TransactionEEB13_.exit173, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.experimental.noalias.scope.decl(metadata !43971)
  call void @llvm.experimental.noalias.scope.decl(metadata !43972)
  call void @llvm.experimental.noalias.scope.decl(metadata !43973)
  %i.nh = icmp eq i64 %i.nf, 0
  br i1 %i.nh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i170, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i.i.i169 = load ptr, ptr %i.ni, align 8, !alias.scope !43974, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i169, i64 noundef %i.nf, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !43974
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i170

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i170: ; preds = %bb.dr, %bb.dq
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !43975)
  %.val.i7.i.i.i171 = load i64, ptr %i.nj, align 8, !alias.scope !43976 ; 2 uses
  %i.nk = icmp eq i64 %.val.i7.i.i.i171, 0
  br i1 %i.nk, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i170
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val1.i8.i.i.i172 = load ptr, ptr %i.nl, align 8, !alias.scope !43976, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i8.i.i.i172, i64 noundef %.val.i7.i.i.i171, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !43976
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i170
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 392
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.nm)
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.no = load i64, ptr %i.nn, align 8, !range !133, !alias.scope !43977, !noundef !97
  %i.np = icmp eq i64 %i.no, -1
  br i1 %i.np, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format11transaction11TransactionEEB13_.exit173, label %bb.du
end_hunk_3
begin_hunk_4_@_RNCNvXsm_NtNtCs9KQ7US1M400_11lance_table2io6commitNtB7_19RenameCommitHandlerNtB7_13CommitHandler6commit0Bb_:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.val1.i.i51 = load ptr, ptr %i.cp, align 8, !alias.scope !44998, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i51, i64 noundef %.val.i.i50, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !44998
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit52

bb.ab:                                            ; preds = %bb.aj, %bb.ai
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body53

.body53:                                          ; preds = %.body.i, %bb.ab
  %i.cr = phi ptr [ %i.cs, %bb.ab ], [ %i.dk, %.body.i ]
  %eh.lpad-body54 = phi { ptr, i32 } [ %i.cq, %bb.ab ], [ %.pn.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt20rename_if_not_exists0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.cr) #81
          to label %bb.v unwind label %bb.z

bb.ac:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.phi.trans.insert201 = getelementptr inbounds nuw i8, ptr %1, i64 696
  %.pre = load i8, ptr %.phi.trans.insert201, align 8, !range !125, !noalias !44999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45000)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  switch i8 %.pre, label %default.unreachable221 [
    i8 0, label %bb.ad
    i8 1, label %bb.ai
    i8 2, label %bb.aj
    i8 3, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %bb.ac
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 680
  %.val5.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !44999
  %.phi.trans.insert10.i = getelementptr i8, ptr %1, i64 688
  %.val6.pre.i = load ptr, ptr %.phi.trans.insert10.i, align 8, !noalias !44999
  br label %bb.al

bb.ad:                                            ; preds = %.thread, %bb.ac
  %i.cu = phi ptr [ %i.ce, %.thread ], [ %i.ct, %bb.ac ] ; 2 uses
  %i.cv = phi ptr [ %i.cd, %.thread ], [ %i.cs, %bb.ac ] ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !44999, !nonnull !97, !align !102, !noundef !97
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !45001
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.cw, ptr %i.cy, align 8, !noalias !45001
  store ptr null, ptr %i.d, align 8, !noalias !45001
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 1, ptr %i.cz, align 8, !noalias !45001
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.db = load <2 x ptr>, ptr %i.cx, align 8, !noalias !44999
  store <2 x ptr> %i.db, ptr %i.da, align 8, !noalias !45001
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i8 0, ptr %i.dc, align 8, !noalias !45001
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !45002
  %i.dd = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !45002 ; 4 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.ae, label %bb.ah, !prof !104

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #80
          to label %.noexc.i.i unwind label %bb.af, !noalias !44999

.noexc.i.i:                                       ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBJ_11ObjectStoreEL_EB1K_11rename_opts0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 dereferenceable(64) %i.d) #81
          to label %.body.i unwind label %bb.ag, !noalias !44999

bb.ag:                                            ; preds = %bb.af
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !44999
  unreachable

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dd, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !44999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !45001
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 680
  store ptr %i.dd, ptr %i.dh, align 8, !noalias !44999
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 688
  store ptr @2048, ptr %i.di, align 8, !noalias !44999
  br label %bb.al

.body.i:                                          ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.ap, %bb.ak, %bb.af
  %i.dj = phi ptr [ %i.dm, %bb.ak ], [ %i.cu, %bb.af ], [ %i.dm, %bb.ap ], [ %i.dm, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ]
  %i.dk = phi ptr [ %i.dn, %bb.ak ], [ %i.cv, %bb.af ], [ %i.dn, %bb.ap ], [ %i.dn, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ]
  %.pn.i = phi { ptr, i32 } [ %i.dl, %bb.ak ], [ %i.df, %bb.af ], [ %i.ea, %bb.ap ], [ %i.ea, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ]
  store i8 2, ptr %i.dj, align 8, !noalias !44999
  br label %.body53

bb.ai:                                            ; preds = %bb.ac
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @836) #80
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ac
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @836) #80
          to label %.noexc55 unwind label %bb.ab

.noexc55:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.al
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %.val3.i = load ptr, ptr %i.do, align 8, !noalias !44999
  %.val4.i = load ptr, ptr %i.dp, align 8, !noalias !44999, !nonnull !97, !align !102, !noundef !97
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9KQ7US1M400_11lance_table(ptr %.val3.i, ptr nonnull %.val4.i) #81
          to label %.body.i unwind label %bb.aq, !noalias !45000

bb.al:                                            ; preds = %bb.ah, %._crit_edge.i
  %i.dm = phi ptr [ %i.ct, %._crit_edge.i ], [ %i.cu, %bb.ah ] ; 5 uses
  %i.dn = phi ptr [ %i.cs, %._crit_edge.i ], [ %i.cv, %bb.ah ] ; 5 uses
  %.val6.i = phi ptr [ %.val6.pre.i, %._crit_edge.i ], [ @2048, %bb.ah ]
  %.val5.i = phi ptr [ %.val5.pre.i, %._crit_edge.i ], [ %i.dd, %bb.ah ]
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  %i.dp = getelementptr i8, ptr %1, i64 688       ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !invariant.load !97, !noalias !45003, !nonnull !97
  invoke void %i.dr(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noundef nonnull %.val5.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9KQ7US1M400_11lance_table.exit.i unwind label %bb.ak, !inline_history !28

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.al
  %i.ds = load i64, ptr %i.h, align 8, !range !136, !alias.scope !45000, !noundef !97
  %i.dt = icmp eq i64 %i.ds, -2
  br i1 %i.dt, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9KQ7US1M400_11lance_table.exit.i
  %.val.i = load ptr, ptr %i.do, align 8, !noalias !44999 ; 5 uses
  %.val2.i = load ptr, ptr %i.dp, align 8, !noalias !44999, !nonnull !97, !align !102, !noundef !97 ; 5 uses
  %i.du = load ptr, ptr %.val2.i, align 8, !invariant.load !97, !noalias !45000 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.du(ptr noundef nonnull %.val.i)
          to label %bb.ao unwind label %bb.ap, !noalias !45000

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dv = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !range !101, !invariant.load !97, !noalias !45000 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.as, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.ao
  %i.dy = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !range !123, !invariant.load !97, !noalias !45000
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.dw, i64 noundef range(i64 1, -9223372036854775807) %i.dz) #76, !noalias !45000
  br label %bb.as

bb.ap:                                            ; preds = %bb.an
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !range !101, !invariant.load !97, !noalias !45000 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.body.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.ap
  %i.ee = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !range !123, !invariant.load !97, !noalias !45000
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) %i.ef) #76, !noalias !45000
  br label %.body.i

bb.aq:                                            ; preds = %bb.ak
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !45000
  unreachable

bb.ar:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9KQ7US1M400_11lance_table.exit.i
  store i8 3, ptr %i.dm, align 8, !noalias !44999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %common.ret

.body60:                                          ; preds = %bb.ci
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.as:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.ao
  store i8 1, ptr %i.dm, align 8, !noalias !44999
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ei, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 643 ; 2 uses
  store i8 1, ptr %i.ej, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ek = load i64, ptr %i.ei, align 8, !range !138, !noundef !97 ; 3 uses
  %.not9 = icmp eq i64 %i.ek, -1
  br i1 %.not9, label %bb.at, label %3

3:                                                ; preds = %bb.as
  %4 = icmp ne i64 %i.ek, -9223372036854775800
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.ek, -9223372036854775797
  br i1 %5, label %.thread222, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !97, !align !102, !noundef !97
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.eo = load ptr, ptr %i.en, align 8, !nonnull !97, !align !102, !noundef !97
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.eq = load ptr, ptr %i.ep, align 8, !nonnull !97, !align !208, !noundef !97
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 504
  %i.es = load i64, ptr %i.er, align 8, !noundef !97
  store ptr %i.em, ptr %i.dn, align 8
  %.sroa.7158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 664
  store ptr %i.eo, ptr %.sroa.7158.0..sroa_idx, align 8
  %.sroa.8159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 672
  store i64 %i.es, ptr %.sroa.8159.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 976
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.ba

bb.au:                                            ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 0, ptr %i.ej, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.ei, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXs9_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtCs3PfUT229lOd_12object_store5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @893)
          to label %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtCs3PfUT229lOd_12object_store5ErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCs9KQ7US1M400_11lance_table.exit unwind label %bb.aw

.thread222:                                       ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.eu = load ptr, ptr %i.et, align 8, !nonnull !97, !align !102, !noundef !97
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 512
  store ptr %i.eu, ptr %i.dn, align 8
  %.sroa.7168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 664
  store ptr %i.ev, ptr %.sroa.7168.0..sroa_idx, align 8
  %.sroa.9170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 744
  store i8 0, ptr %.sroa.9170.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8174)
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 744
  br label %bb.bk

bb.av:                                            ; preds = %bb.cc, %.body73
  %.pn14 = phi { ptr, i32 } [ %i.hn, %bb.cc ], [ %eh.lpad-body74, %.body73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ay

_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtCs3PfUT229lOd_12object_store5ErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.au
  %.sroa.0178.0.copyload = load i64, ptr %i.e, align 8 ; 2 uses
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5179.0..sroa_idx, i64 24, i1 false)
  %.sroa.6180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6180.0.copyload = load i64, ptr %.sroa.6180.0..sroa_idx, align 8
  %.sroa.7181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7181.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.6.sroa.0.0.extract.trunc110 = trunc i64 %.sroa.0178.0.copyload to i8
  %.sroa.6.sroa.6.0.extract.shift113 = lshr i64 %.sroa.0178.0.copyload, 8
  %.sroa.6.sroa.6.0.extract.trunc114 = trunc nuw i64 %.sroa.6.sroa.6.0.extract.shift113 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECs9KQ7US1M400_11lance_table.exit, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtCs3PfUT229lOd_12object_store5ErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCs9KQ7US1M400_11lance_table.exit
  %.sroa.6.sroa.6.sroa.0.2 = phi i56 [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECs9KQ7US1M400_11lance_table.exit ], [ %.sroa.6.sroa.6.0.extract.trunc114, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtCs3PfUT229lOd_12object_store5ErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.6.sroa.0.2 = phi i8 [ -1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECs9KQ7US1M400_11lance_table.exit ], [ %.sroa.6.sroa.0.0.extract.trunc110, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtCs3PfUT229lOd_12object_store5ErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.12.2 = phi i64 [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECs9KQ7US1M400_11lance_table.exit ], [ %.sroa.6180.0.copyload, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtCs3PfUT229lOd_12object_store5ErrorINtB5_4IntoNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE4intoCs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !range !138, !noundef !97
  %.not18 = icmp eq i64 %i.fa, -1
  br i1 %.not18, label %bb.cg, label %bb.cf

bb.ay:                                            ; preds = %bb.az, %bb.be, %bb.aw, %bb.av
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %bb.av ], [ %i.ey, %bb.aw ], [ %i.fg, %bb.be ], [ %i.fd, %bb.az ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !range !138, !noundef !97
  %.not17 = icmp eq i64 %i.fc, -1
  br i1 %.not17, label %bb.v, label %bb.df

bb.az:                                            ; preds = %bb.ba
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit18write_version_hint0EBJ_(ptr noundef nonnull align 8 %i.fe) #81
          to label %bb.ay unwind label %bb.z

bb.ba:                                            ; preds = %bb.d, %bb.at
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 3 uses
  %i.ff = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit18write_version_hint0B7_(ptr noundef nonnull align 8 %i.fe, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.bb unwind label %bb.az

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.ff, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %common.ret

bb.bd:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit18write_version_hint0EBJ_(ptr noundef nonnull align 8 %i.fe)
          to label %bb.bf unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.bf:                                            ; preds = %bb.bd
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.fi = load ptr, ptr %i.fh, align 8, !nonnull !97, !align !208, !noundef !97
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 504
  %i.fk = load i64, ptr %i.fj, align 8, !noundef !97
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  store i8 0, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %i.fm, i64 24, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.fp = load i64, ptr %i.fo, align 8, !noundef !97 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 642
  %i.fr = load i8, ptr %i.fq, align 2, !range !106, !noundef !97
  %.sroa.6.sroa.0.0.extract.trunc = trunc i64 %i.fp to i8
  %.sroa.6.sroa.6.0.extract.shift = lshr i64 %i.fp, 8
  %.sroa.6.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.sroa.6.0.extract.shift to i56
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 643
  store i8 0, ptr %i.fs, align 1
  %.val40 = load i64, ptr %i.fn, align 8, !range !99, !noundef !97 ; 2 uses
  %i.ft = icmp sgt i64 %.val40, 0
  br i1 %i.ft, label %bb.bg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io13object_writer11WriteResultECs9KQ7US1M400_11lance_table.exit65

bb.bg:                                            ; preds = %bb.bf
  %i.fu = getelementptr i8, ptr %1, i64 544
  %.val41 = load ptr, ptr %i.fu, align 8, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val41, i64 noundef %.val40, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !45004
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io13object_writer11WriteResultECs9KQ7US1M400_11lance_table.exit65

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io13object_writer11WriteResultECs9KQ7US1M400_11lance_table.exit65: ; preds = %bb.bg, %bb.bf
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 512
  call void @llvm.experimental.noalias.scope.decl(metadata !45005)
  call void @llvm.experimental.noalias.scope.decl(metadata !45006)
  %.val.i.i66 = load i64, ptr %i.fv, align 8, !alias.scope !45007 ; 2 uses
  %i.fw = icmp eq i64 %.val.i.i66, 0
  br i1 %i.fw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit68, label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io13object_writer11WriteResultECs9KQ7US1M400_11lance_table.exit65
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.val1.i.i67 = load ptr, ptr %i.fx, align 8, !alias.scope !45007, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67, i64 noundef %.val.i.i66, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !45007
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit68

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit68: ; preds = %bb.bh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io13object_writer11WriteResultECs9KQ7US1M400_11lance_table.exit65
  store i8 0, ptr %i.fl, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 644
  store i8 0, ptr %i.fy, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 645
  store i8 0, ptr %i.fz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format11transaction11TransactionEEB13_.exit94

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format11transaction11TransactionEEB13_.exit94: ; preds = %bb.dd, %bb.dc, %bb.cy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit89, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit68
  %.sroa.6.sroa.6.sroa.0.3 = phi i56 [ %.sroa.6.sroa.6.0.extract.trunc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit68 ], [ %.sroa.6.sroa.6.sroa.0.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit89 ], [ %.sroa.6.sroa.6.sroa.0.0, %bb.cy ], [ %.sroa.6.sroa.6.sroa.0.0, %bb.dc ], [ %.sroa.6.sroa.6.sroa.0.0, %bb.dd ]
  %.sroa.6.sroa.0.3 = phi i8 [ %.sroa.6.sroa.0.0.extract.trunc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit68 ], [ %.sroa.6.sroa.0.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit89 ], [ %.sroa.6.sroa.0.0, %bb.cy ], [ %.sroa.6.sroa.0.0, %bb.dc ], [ %.sroa.6.sroa.0.0, %bb.dd ]
  %.sroa.14.0 = phi i8 [ %i.fr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit68 ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit89 ], [ undef, %bb.cy ], [ undef, %bb.dc ], [ undef, %bb.dd ]
  %.sroa.13109.0 = phi i64 [ %i.fk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit68 ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit89 ], [ undef, %bb.cy ], [ undef, %bb.dc ], [ undef, %bb.dd ]
  %.sroa.12.3 = phi i64 [ -1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit68 ], [ %.sroa.12.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit89 ], [ %.sroa.12.0, %bb.cy ], [ %.sroa.12.0, %bb.dc ], [ %.sroa.12.0, %bb.dd ]
  %.sroa.0.3 = phi i64 [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit68 ], [ -1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB1A_.exit89 ], [ -1, %bb.cy ], [ -1, %bb.dc ], [ -1, %bb.dd ]
  store i64 %.sroa.0.3, ptr %0, align 8
  %.sroa.6.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.sroa.6.0.insert.ext = zext i56 %.sroa.6.sroa.6.sroa.0.3 to i64
  %.sroa.6.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.sroa.6.0.insert.ext, 8
  %.sroa.6.sroa.0.0.insert.ext = zext i8 %.sroa.6.sroa.0.3 to i64
  %.sroa.6.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.sroa.6.0.insert.shift, %.sroa.6.sroa.0.0.insert.ext
  store i64 %.sroa.6.sroa.0.0.insert.insert, ptr %.sroa.6.0..sroa_idx98, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, i64 24, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.12.3, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, i64 16, i1 false)
  %.sroa.13109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.13109.0, ptr %.sroa.13109.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  br label %common.ret

bb.bi:                                            ; preds = %bb.bm, %bb.bl
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body73

.body73:                                          ; preds = %.body.i69, %bb.bi
  %i.gb = phi ptr [ %i.gc, %bb.bi ], [ %i.gn, %.body.i69 ]
  %eh.lpad-body74 = phi { ptr, i32 } [ %i.ga, %bb.bi ], [ %.pn2.i, %.body.i69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8174)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore6delete0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.gb) #81
          to label %bb.av unwind label %bb.z

bb.bj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.phi.trans.insert202 = getelementptr inbounds nuw i8, ptr %1, i64 744
  %.pre203 = load i8, ptr %.phi.trans.insert202, align 8, !range !125, !noalias !45008
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8174)
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 2 uses
  switch i8 %.pre203, label %default.unreachable221 [
    i8 0, label %bb.bk
    i8 1, label %bb.bl
    i8 2, label %bb.bm
    i8 3, label %bb.bo
  ]

bb.bk:                                            ; preds = %.thread222, %bb.bj
  %i.ge = phi ptr [ %i.ex, %.thread222 ], [ %i.gd, %bb.bj ]
  %i.gf = phi ptr [ %i.ew, %.thread222 ], [ %i.gc, %bb.bj ] ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !45008, !nonnull !97, !align !102, !noundef !97
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !45008, !nonnull !97, !align !102, !noundef !97
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 672
  store ptr %i.gj, ptr %i.gk, align 8, !noalias !45008
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 680
  store ptr %i.gi, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !45008
  %.sroa.109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 704
  store i8 0, ptr %.sroa.109.0..sroa_idx.i, align 8, !noalias !45008
  br label %bb.bo

.body.i69:                                        ; preds = %bb.bx, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.bv, %bb.bn
  %.pn2.i = phi { ptr, i32 } [ %i.hk, %bb.bx ], [ %i.he, %bb.bv ], [ %i.gl, %bb.bn ], [ %i.he, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ]
  store i8 2, ptr %i.gm, align 8, !noalias !45008
  br label %.body73

bb.bl:                                            ; preds = %bb.bj
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @713) #80
          to label %.noexc75 unwind label %bb.bi

.noexc75:                                         ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bj
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @713) #80
          to label %.noexc76 unwind label %bb.bi

.noexc76:                                         ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bo
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45008
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt6delete0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.go) #81
          to label %.body.i69 unwind label %bb.by, !noalias !45009

bb.bo:                                            ; preds = %bb.bj, %bb.bk
  %i.gm = phi ptr [ %i.gd, %bb.bj ], [ %i.ge, %bb.bk ] ; 4 uses
  %i.gn = phi ptr [ %i.gc, %bb.bj ], [ %i.gf, %bb.bk ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45008
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 2 uses
  invoke fastcc void @_RNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB4_11ObjectStoreEL_ENtB4_14ObjectStoreExt6delete0Cs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c, ptr noundef nonnull align 8 %i.go, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bp unwind label %bb.bn, !noalias !45009

bb.bp:                                            ; preds = %bb.bo
end_hunk_4
