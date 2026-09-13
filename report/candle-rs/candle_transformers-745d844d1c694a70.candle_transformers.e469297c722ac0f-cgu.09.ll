Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.09?download=true
inline.NumInlined: 3626
inline.NumDeleted: 526
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCINvBZ_23non_maximum_suppressionB1X_E0E0EB11_:bb.a
_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvB16_23non_maximum_suppressionB24_E0E0EB18_.exit: ; preds = %bb.r, %bb.s, %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7reverseBz_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7reverseBz_.exit ], [ %i.af, %bb.s ], [ %i.ac, %bb.r ] ; 2 uses
  %i.ap = lshr i64 %.sroa.023.0, 1
  %i.aq = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ar = sub nsw i64 %factor, %i.ap
  %i.as = add nuw nsw i64 %i.aq, %factor
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = mul i64 %i.as, %.sroa.0.0
  %i.av = xor i64 %i.au, %i.at
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false)
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  br label %bb.g

bb.u:                                             ; preds = %.lr.ph77, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvB19_23non_maximum_suppressionB27_E0E0EB1b_.exit
  %.sroa.02.176 = phi i64 [ %.sroa.02.0, %.lr.ph77 ], [ %i.ay, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvB19_23non_maximum_suppressionB27_E0E0EB1b_.exit ] ; 2 uses
  %.sroa.023.175 = phi i64 [ %.sroa.023.0, %.lr.ph77 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvB19_23non_maximum_suppressionB27_E0E0EB1b_.exit ] ; 4 uses
  %i.ay = add i64 %.sroa.02.176, -1               ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.ba, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvB19_23non_maximum_suppressionB27_E0E0EB1b_.exit, %bb.u, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.175, %bb.u ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvB19_23non_maximum_suppressionB27_E0E0EB1b_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.176, %bb.u ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvB19_23non_maximum_suppressionB27_E0E0EB1b_.exit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bc, align 1
  br i1 %i.l, label %bb.ag, label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  %i.be = load i64, ptr %i.bd, align 8, !noundef !5 ; 3 uses
  %i.bf = lshr i64 %i.be, 1                       ; 8 uses
  %i.bg = lshr i64 %.sroa.023.175, 1              ; 6 uses
  %i.bh = add nuw i64 %i.bf, %i.bg                ; 4 uses
  %i.bi = sub i64 %.sroa.09.0, %i.bh
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bi ; 6 uses
  %i.bk = icmp samesign ugt i64 %i.bh, %3
  %i.bl = trunc i64 %.sroa.023.175 to i1
  %i.bm = or i64 %i.be, %.sroa.023.175
  %i.bn = trunc i64 %i.bm to i1
  %or.cond3.i = or i1 %i.bk, %i.bn
  br i1 %or.cond3.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bo = trunc i64 %i.be to i1
  br i1 %i.bo, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bp = shl nuw nsw i64 %i.bh, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvB19_23non_maximum_suppressionB27_E0E0EB1b_.exit

bb.y:                                             ; preds = %bb.z, %bb.w
  br i1 %i.bl, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.bq = or i64 %i.bf, 1
  %i.br = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = xor i32 %i.bt, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvB18_23non_maximum_suppressionB26_E0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.bj, i64 noundef range(i64 0, 288230376151711744) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #25, !inline_history !5520
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.bf
  %i.bw = or i64 %i.bg, 1
  %i.bx = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvB18_23non_maximum_suppressionB26_E0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 288230376151711744) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #25, !inline_history !5520
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5540)
  %i.cb = icmp eq i64 %i.bf, 0
  %i.cc = icmp eq i64 %i.bg, 0
  %or.cond.i = or i1 %i.cc, %i.cb
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvB10_23non_maximum_suppressionB1Y_E0E0EB12_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cd = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.bf, i64 %i.bg) ; 2 uses
  %i.ce = icmp samesign ult i64 %3, %i.cd
  br i1 %i.ce, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvB10_23non_maximum_suppressionB1Y_E0E0EB12_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ac
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.bf ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bf, %i.bg  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cf, ptr %i.bj
  %i.cg = shl nuw nsw i64 %i.cd, 5                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cg, i1 false), !alias.scope !5541
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %i.cg ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i.i
  %.sroa.13.0.i = phi ptr [ %i.cp, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i.i ], [ %i.cf, %.critedge.i ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.cr, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i.i ], [ %i.ch, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.cm, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i.i ], [ %i.n, %.critedge.i ]
  %i.ci = getelementptr i8, ptr %.sroa.7.0.i, i64 -8
  %.val.i.i = load float, ptr %i.ci, align 8, !alias.scope !5540, !noalias !5542, !noundef !5 ; 2 uses
  %i.cj = getelementptr i8, ptr %.sroa.13.0.i, i64 -8
  %.val12.i.i = load float, ptr %i.cj, align 8, !alias.scope !5539, !noalias !5543, !noundef !5 ; 2 uses
  %brmerge.not.i.i.i = fcmp uno float %.val12.i.i, %.val.i.i
  br i1 %brmerge.not.i.i.i, label %bb.ad, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i.i, !prof !24

bb.ad:                                            ; preds = %.preheader.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #29
          to label %.noexc.i unwind label %bb.af, !noalias !5541

.noexc.i:                                         ; preds = %bb.ad
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i.i: ; preds = %.preheader.i
  %i.ck = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -32 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -32 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -32 ; 2 uses
  %.mux.i.i.i = fcmp olt float %.val12.i.i, %.val.i.i ; 3 uses
  %..i.i = select i1 %.mux.i.i.i, ptr %i.ck, ptr %i.cl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !5541, !noalias !5544
  %i.cn = xor i1 %.mux.i.i.i, true
  %i.co = zext i1 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.co ; 3 uses
  %i.cq = zext i1 %.mux.i.i.i to i64
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %i.cq ; 3 uses
  %i.cs = icmp eq ptr %i.cp, %i.bj
  %i.ct = icmp eq ptr %i.cr, %2
  %or.cond.i.i = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvB1d_23non_maximum_suppressionB2b_E0E0EB1f_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i20.i
  %.sroa.13.1.i = phi ptr [ %i.db, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i20.i ], [ %i.bj, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.cy, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i20.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.da, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i20.i ], [ %i.cf, %.critedge.i ] ; 3 uses
  %i.cu = getelementptr i8, ptr %.sroa.0.02.i.i, i64 24
  %.sroa.0.0.val.i.i = load float, ptr %i.cu, align 8, !alias.scope !5539, !noalias !5545, !noundef !5 ; 2 uses
  %i.cv = getelementptr i8, ptr %.sroa.0.0.i34, i64 24
  %.val.i18.i = load float, ptr %i.cv, align 8, !alias.scope !5540, !noalias !5546, !noundef !5 ; 2 uses
  %brmerge.not.i.i19.i = fcmp uno float %.val.i18.i, %.sroa.0.0.val.i.i
  br i1 %brmerge.not.i.i19.i, label %bb.ae, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i20.i, !prof !24

bb.ae:                                            ; preds = %.lr.ph.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #29
          to label %.noexc23.i unwind label %bb.af, !noalias !5541

.noexc23.i:                                       ; preds = %bb.ae
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i20.i: ; preds = %.lr.ph.i.i
  %.mux.i.i21.i = fcmp olt float %.val.i18.i, %.sroa.0.0.val.i.i ; 3 uses
  %i.cw = xor i1 %.mux.i.i21.i, true
  %.sroa.05.0.i.i = select i1 %.mux.i.i21.i, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.0.i.i, i64 32, i1 false), !alias.scope !5541, !noalias !5547
  %i.cx = zext i1 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i34, i64 %i.cx ; 3 uses
  %i.cz = zext i1 %.mux.i.i21.i to i64
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 32 ; 2 uses
  %i.dc = icmp ne ptr %i.cy, %i.ch
  %i.dd = icmp ne ptr %i.da, %i.n
  %or.cond.i22.i = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond.i22.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvB1d_23non_maximum_suppressionB2b_E0E0EB1f_.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvB1d_23non_maximum_suppressionB2b_E0E0EB1f_.exit.i: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i20.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i.i
  %.sroa.13.4.i = phi ptr [ %i.cp, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i.i ], [ %i.db, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i20.i ]
  %.sroa.7.2.i = phi ptr [ %i.cr, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i.i ], [ %i.ch, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i.i ], [ %i.cy, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i20.i ] ; 2 uses
  %i.de = ptrtoint ptr %.sroa.7.2.i to i64
  %i.df = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dg = sub nuw i64 %i.de, %i.df
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.dg, i1 false), !alias.scope !5541, !noalias !5548
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvB10_23non_maximum_suppressionB1Y_E0E0EB12_.exit

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %bb.ad ], [ %.sroa.13.1.i, %bb.ae ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %bb.ad ], [ %i.ch, %bb.ae ]
  %.sroa.0.2.i = phi ptr [ %2, %bb.ad ], [ %.sroa.0.0.i34, %bb.ae ] ; 2 uses
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dj = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.dk, i1 false), !alias.scope !5541, !noalias !5549
  resume { ptr, i32 } %i.dh

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvB10_23non_maximum_suppressionB1Y_E0E0EB12_.exit: ; preds = %bb.ab, %bb.ac, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvB1d_23non_maximum_suppressionB2b_E0E0EB1f_.exit.i
  %i.dl = shl nuw nsw i64 %i.bh, 1
  %i.dm = or disjoint i64 %i.dl, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvB19_23non_maximum_suppressionB27_E0E0EB1b_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvB19_23non_maximum_suppressionB27_E0E0EB1b_.exit: ; preds = %bb.x, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvB10_23non_maximum_suppressionB1Y_E0E0EB12_.exit
  %.sroa.0.0.i = phi i64 [ %i.dm, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvB10_23non_maximum_suppressionB1Y_E0E0EB12_.exit ], [ %i.bp, %bb.x ] ; 2 uses
  %i.dn = icmp ugt i64 %i.ay, 1
  br i1 %i.dn, label %bb.u, label %._crit_edge

bb.ag:                                            ; preds = %._crit_edge
  %i.do = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dp = lshr i64 %.sroa.018.0, 1
  %i.dq = add nuw nsw i64 %i.dp, %.sroa.09.0
  br label %bb.f

bb.ah:                                            ; preds = %._crit_edge
  %i.dr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dr, 0
  br i1 %.not30, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ds = or i64 %1, 1
  %i.dt = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = xor i32 %i.dv, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvB18_23non_maximum_suppressionB26_E0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.dw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #25, !inline_history !5520
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.aj
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortjNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1K_15LogitsProcessor11sample_topp0E0EB1M_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not3.i203 = icmp ugt i64 %.sroa.01.0, 2
  %.not3.i208 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.am, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.am ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gq, %bb.am ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.go, %bb.am ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runjNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1R_15LogitsProcessor11sample_topp0E0EB1T_.exit
  %.sroa.021.0 = phi i8 [ %i.cr, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runjNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1R_15LogitsProcessor11sample_topp0E0EB1T_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runjNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1R_15LogitsProcessor11sample_topp0E0EB1T_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph120, label %._crit_edge

.lr.ph120:                                        ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.aa

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5579)
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1Q_15LogitsProcessor11sample_topp0E0EB1S_.exit.i.thread206, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1Q_15LogitsProcessor11sample_topp0E0EB1S_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1Q_15LogitsProcessor11sample_topp0E0EB1S_.exit.i, %bb.h
  br i1 %4, label %bb.y, label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj7reverseCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val9.i = load ptr, ptr %5, align 8, !alias.scope !5579, !noalias !5580, !nonnull !5, !align !22, !noundef !5
  %.val10.i = load i64, ptr %i.r, align 8, !alias.scope !5578, !noalias !5581, !noundef !5 ; 5 uses
  %.val11.i = load i64, ptr %i.p, align 8, !alias.scope !5578, !noalias !5581, !noundef !5 ; 3 uses
  %.val.i39 = load ptr, ptr %.val9.i, align 8, !noalias !5582, !nonnull !5, !align !22, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i39, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !5582, !nonnull !5, !noundef !5 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i39, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !5582, !noundef !5 ; 12 uses
  %i.w = icmp ult i64 %.val11.i, %i.v
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = icmp ult i64 %.val10.i, %i.v
  br i1 %i.x, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit40, label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val11.i, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #29, !noalias !5582
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val10.i, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #29, !noalias !5582
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit40: ; preds = %bb.l
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.val11.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.val10.i
  %i.aa = load i32, ptr %i.y, align 4, !noalias !5582, !noundef !5 ; 2 uses
  %i.ab = load i32, ptr %i.z, align 4, !noalias !5582, !noundef !5 ; 4 uses
  %i.ac = ashr i32 %i.aa, 31
  %i.ad = lshr i32 %i.ac, 1
  %i.ae = xor i32 %i.ad, %i.aa
  %i.af = ashr i32 %i.ab, 31
  %i.ag = lshr i32 %i.af, 1
  %i.ah = xor i32 %i.ag, %i.ab
  %i.ai = icmp slt i32 %i.ae, %i.ah               ; 2 uses
  %.not127 = icmp eq i64 %i.o, 2                  ; 2 uses
  br i1 %i.ai, label %.preheader50, label %.preheader51

.preheader51:                                     ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit40
  br i1 %.not127, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1Q_15LogitsProcessor11sample_topp0E0EB1S_.exit.i.thread, label %.lr.ph

.preheader50:                                     ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit40
  br i1 %.not127, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1Q_15LogitsProcessor11sample_topp0E0EB1S_.exit.i.thread206, label %.lr.ph115

.lr.ph:                                           ; preds = %.preheader51, %bb.r
  %i.aj = phi i32 [ %i.ao, %bb.r ], [ %i.ab, %.preheader51 ] ; 2 uses
  %.val8.i = phi i64 [ %.val7.i, %bb.r ], [ %.val10.i, %.preheader51 ] ; 2 uses
  %.sroa.01.0.i.i112 = phi i64 [ %i.aw, %bb.r ], [ 2, %.preheader51 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.01.0.i.i112
  %.val7.i = load i64, ptr %i.ak, align 8, !alias.scope !5578, !noalias !5581, !noundef !5 ; 4 uses
  %i.al = icmp ult i64 %.val8.i, %i.v
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.am = icmp ult i64 %.val7.i, %i.v
  br i1 %i.am, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit38, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val8.i, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #29, !noalias !5582
  unreachable

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val7.i, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #29, !noalias !5582
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit38: ; preds = %bb.o
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.val7.i
  %i.ao = load i32, ptr %i.an, align 4, !noalias !5582, !noundef !5 ; 3 uses
  %i.ap = ashr i32 %i.aj, 31
  %i.aq = lshr i32 %i.ap, 1
  %i.ar = xor i32 %i.aq, %i.aj
  %i.as = ashr i32 %i.ao, 31
  %i.at = lshr i32 %i.as, 1
  %i.au = xor i32 %i.at, %i.ao
  %i.av = icmp slt i32 %i.ar, %i.au
  br i1 %i.av, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1Q_15LogitsProcessor11sample_topp0E0EB1S_.exit.i, label %bb.r

bb.r:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit38
  %i.aw = add nuw i64 %.sroa.01.0.i.i112, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.o
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1Q_15LogitsProcessor11sample_topp0E0EB1S_.exit.i, label %.lr.ph

.lr.ph115:                                        ; preds = %.preheader50, %bb.v
  %i.ax = phi i32 [ %i.bc, %bb.v ], [ %i.ab, %.preheader50 ] ; 2 uses
  %.val5.i = phi i64 [ %.val4.i, %bb.v ], [ %.val10.i, %.preheader50 ] ; 2 uses
  %.sroa.01.1.i.i114 = phi i64 [ %i.bk, %bb.v ], [ 2, %.preheader50 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.01.1.i.i114
  %.val4.i = load i64, ptr %i.ay, align 8, !alias.scope !5578, !noalias !5581, !noundef !5 ; 4 uses
  %i.az = icmp ult i64 %.val5.i, %i.v
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph115
  %i.ba = icmp ult i64 %.val4.i, %i.v
  br i1 %i.ba, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit, label %bb.u

bb.t:                                             ; preds = %.lr.ph115
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val5.i, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #29, !noalias !5582
  unreachable

bb.u:                                             ; preds = %bb.s
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val4.i, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #29, !noalias !5582
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit: ; preds = %bb.s
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortjNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1K_15LogitsProcessor11sample_topp0E0EB1M_:bb.a
  %i.cz = lshr i64 %i.cy, 1                       ; 8 uses
  %i.da = lshr i64 %.sroa.023.1118, 1             ; 6 uses
  %i.db = add nuw i64 %i.cz, %i.da                ; 4 uses
  %i.dc = sub i64 %.sroa.09.0, %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dc ; 6 uses
  %i.de = icmp samesign ugt i64 %i.db, %3
  %i.df = trunc i64 %.sroa.023.1118 to i1
  %i.dg = or i64 %i.cy, %.sroa.023.1118
  %i.dh = trunc i64 %i.dg to i1
  %or.cond3.i = or i1 %i.de, %i.dh
  br i1 %or.cond3.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.di = trunc i64 %i.cy to i1
  br i1 %i.di, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.dj = shl nuw nsw i64 %i.db, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergejNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1U_15LogitsProcessor11sample_topp0E0EB1W_.exit

bb.ae:                                            ; preds = %bb.af, %bb.ac
  br i1 %i.df, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.dk = or i64 %i.cz, 1
  %i.dl = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dk, i1 true)
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 1
  %i.do = xor i32 %i.dn, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortjNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1T_15LogitsProcessor11sample_topp0E0EB1V_(ptr noalias nofree noundef nonnull align 8 %i.dd, i64 noundef range(i64 0, 1152921504606846976) %i.cz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #25, !inline_history !5562
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ae
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.cz
  %i.dq = or i64 %i.da, 1
  %i.dr = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dq, i1 true)
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, 1
  %i.du = xor i32 %i.dt, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortjNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1T_15LogitsProcessor11sample_topp0E0EB1V_(ptr noalias nofree noundef nonnull align 8 %i.dp, i64 noundef range(i64 0, 1152921504606846976) %i.da, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.du, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #25, !inline_history !5562
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.val = load ptr, ptr %5, align 8               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5590)
  %i.dv = icmp eq i64 %i.cz, 0
  %i.dw = icmp eq i64 %i.da, 0
  %or.cond.i = or i1 %i.dw, %i.dv
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergejNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1L_15LogitsProcessor11sample_topp0E0EB1N_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dx = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.cz, i64 %i.da) ; 2 uses
  %i.dy = icmp samesign ult i64 %3, %i.dx
  br i1 %i.dy, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergejNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1L_15LogitsProcessor11sample_topp0E0EB1N_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ai
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.cz ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.cz, %i.da  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.dz, ptr %i.dd
  %i.ea = shl nuw nsw i64 %i.dx, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ea, i1 false), !alias.scope !5591
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ea ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.val.i.i.i = load ptr, ptr %.val, align 8, !noalias !5591, !nonnull !5, !align !22, !noundef !5 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !5591, !nonnull !5, !noundef !5 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !5591, !noundef !5 ; 6 uses
  br i1 %.not.i33, label %.preheader, label %.lr.ph.i.i

.preheader:                                       ; preds = %.critedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i.i
  %.sroa.13.0.i = phi ptr [ %i.fb, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i.i ], [ %i.dz, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.fd, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i.i ], [ %i.eb, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.ei, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i.i ], [ %i.n, %.critedge.i ]
  %i.eg = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8 ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8 ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -8 ; 2 uses
  %.val12.i.i = load i64, ptr %i.eh, align 8, !alias.scope !5590, !noalias !5592, !noundef !5 ; 4 uses
  %.val13.i.i = load i64, ptr %i.eg, align 8, !alias.scope !5589, !noalias !5593, !noundef !5 ; 4 uses
  %i.ej = icmp ult i64 %.val13.i.i, %i.ef
  br i1 %i.ej, label %bb.aj, label %.invoke330

bb.aj:                                            ; preds = %.preheader
  %i.ek = icmp ult i64 %.val12.i.i, %i.ef
  br i1 %i.ek, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i.i, label %.invoke330

.invoke330:                                       ; preds = %bb.aj, %.preheader
  %i.el = phi i64 [ %.val13.i.i, %.preheader ], [ %.val12.i.i, %bb.aj ]
  %i.em = phi ptr [ @71, %.preheader ], [ @72, %bb.aj ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.el, i64 noundef %i.ef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.em) #29
          to label %.cont331 unwind label %bb.al, !noalias !5591

.cont331:                                         ; preds = %.invoke330
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i.i: ; preds = %bb.aj
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.val13.i.i
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.val12.i.i
  %i.ep = load i32, ptr %i.en, align 4, !noalias !5594, !noundef !5 ; 2 uses
  %i.eq = load i32, ptr %i.eo, align 4, !noalias !5594, !noundef !5 ; 2 uses
  %i.er = ashr i32 %i.ep, 31
  %i.es = lshr i32 %i.er, 1
  %i.et = xor i32 %i.es, %i.ep
  %i.eu = ashr i32 %i.eq, 31
  %i.ev = lshr i32 %i.eu, 1
  %i.ew = xor i32 %i.ev, %i.eq
  %i.ex = icmp slt i32 %i.et, %i.ew               ; 3 uses
  %i.ey = select i1 %i.ex, i64 %.val13.i.i, i64 %.val12.i.i
  store i64 %i.ey, ptr %i.ei, align 8, !alias.scope !5589, !noalias !5593
  %i.ez = xor i1 %i.ex, true
  %i.fa = zext i1 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.fa ; 3 uses
  %i.fc = zext i1 %i.ex to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.fc ; 3 uses
  %i.fe = icmp eq ptr %i.fb, %i.dd
  %i.ff = icmp eq ptr %i.fd, %2
  %or.cond.i.i = select i1 %i.fe, i1 true, i1 %i.ff
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStatejE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB2b_15LogitsProcessor11sample_topp0E0EB2d_.exit.i, label %.preheader

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i21.i
  %.sroa.13.1.i = phi ptr [ %i.gb, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i21.i ], [ %i.dd, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.fy, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i21.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.05.i.i = phi ptr [ %i.ga, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i21.i ], [ %i.dz, %.critedge.i ] ; 2 uses
  %.sroa.0.0.val.i.i = load i64, ptr %.sroa.0.05.i.i, align 8, !alias.scope !5589, !noalias !5595, !noundef !5 ; 4 uses
  %.val6.i.i = load i64, ptr %.sroa.0.0.i34, align 8, !alias.scope !5590, !noalias !5596, !noundef !5 ; 4 uses
  %i.fg = icmp ult i64 %.val6.i.i, %i.ef
  br i1 %i.fg, label %bb.ak, label %.invoke

bb.ak:                                            ; preds = %.lr.ph.i.i
  %i.fh = icmp ult i64 %.sroa.0.0.val.i.i, %i.ef
  br i1 %i.fh, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i21.i, label %.invoke

.invoke:                                          ; preds = %bb.ak, %.lr.ph.i.i
  %i.fi = phi i64 [ %.val6.i.i, %.lr.ph.i.i ], [ %.sroa.0.0.val.i.i, %bb.ak ]
  %i.fj = phi ptr [ @71, %.lr.ph.i.i ], [ @72, %bb.ak ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fi, i64 noundef %i.ef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fj) #29
          to label %.cont unwind label %bb.al, !noalias !5591

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i21.i: ; preds = %bb.ak
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.val6.i.i
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.sroa.0.0.val.i.i
  %i.fm = load i32, ptr %i.fk, align 4, !noalias !5597, !noundef !5 ; 2 uses
  %i.fn = load i32, ptr %i.fl, align 4, !noalias !5597, !noundef !5 ; 2 uses
  %i.fo = ashr i32 %i.fm, 31
  %i.fp = lshr i32 %i.fo, 1
  %i.fq = xor i32 %i.fp, %i.fm
  %i.fr = ashr i32 %i.fn, 31
  %i.fs = lshr i32 %i.fr, 1
  %i.ft = xor i32 %i.fs, %i.fn
  %i.fu = icmp slt i32 %i.fq, %i.ft               ; 3 uses
  %i.fv = xor i1 %i.fu, true
  %i.fw = select i1 %i.fu, i64 %.sroa.0.0.val.i.i, i64 %.val6.i.i
  store i64 %i.fw, ptr %.sroa.13.1.i, align 8, !alias.scope !5589, !noalias !5595
  %i.fx = zext i1 %i.fv to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i34, i64 %i.fx ; 3 uses
  %i.fz = zext i1 %i.fu to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.05.i.i, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.gc = icmp ne ptr %i.fy, %i.eb
  %i.gd = icmp ne ptr %i.ga, %i.n
  %or.cond.i22.i = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %or.cond.i22.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStatejE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB2b_15LogitsProcessor11sample_topp0E0EB2d_.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStatejE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB2b_15LogitsProcessor11sample_topp0E0EB2d_.exit.i: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i21.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i.i
  %.sroa.13.4.i = phi ptr [ %i.fb, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i.i ], [ %i.gb, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i21.i ]
  %.sroa.7.2.i = phi ptr [ %i.fd, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i.i ], [ %i.eb, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i.i ], [ %i.fy, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit.i21.i ] ; 2 uses
  %i.ge = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gf = ptrtoint ptr %.sroa.0.3.i to i64
  %i.gg = sub nuw i64 %i.ge, %i.gf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.gg, i1 false), !alias.scope !5591, !noalias !5598
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergejNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1L_15LogitsProcessor11sample_topp0E0EB1N_.exit

bb.al:                                            ; preds = %.invoke330, %.invoke
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.invoke330 ], [ %.sroa.13.1.i, %.invoke ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.invoke330 ], [ %i.eb, %.invoke ]
  %.sroa.0.2.i = phi ptr [ %2, %.invoke330 ], [ %.sroa.0.0.i34, %.invoke ] ; 2 uses
  %i.gh = landingpad { ptr, i32 }
          cleanup
  %i.gi = ptrtoint ptr %.sroa.7.1.i to i64
  %i.gj = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gk = sub nuw i64 %i.gi, %i.gj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.gk, i1 false), !alias.scope !5591, !noalias !5599
  resume { ptr, i32 } %i.gh

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergejNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1L_15LogitsProcessor11sample_topp0E0EB1N_.exit: ; preds = %bb.ah, %bb.ai, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStatejE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB2b_15LogitsProcessor11sample_topp0E0EB2d_.exit.i
  %i.gl = shl nuw nsw i64 %i.db, 1
  %i.gm = or disjoint i64 %i.gl, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergejNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1U_15LogitsProcessor11sample_topp0E0EB1W_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergejNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1U_15LogitsProcessor11sample_topp0E0EB1W_.exit: ; preds = %bb.ad, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergejNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1L_15LogitsProcessor11sample_topp0E0EB1N_.exit
  %.sroa.0.0.i = phi i64 [ %i.gm, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergejNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1L_15LogitsProcessor11sample_topp0E0EB1N_.exit ], [ %i.dj, %bb.ad ] ; 2 uses
  %i.gn = icmp ugt i64 %i.cs, 1
  br i1 %i.gn, label %bb.aa, label %._crit_edge

bb.am:                                            ; preds = %._crit_edge
  %i.go = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gp = lshr i64 %.sroa.018.0, 1
  %i.gq = add nuw nsw i64 %i.gp, %.sroa.09.0
  br label %bb.f

bb.an:                                            ; preds = %._crit_edge
  %i.gr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.gr, 0
  br i1 %.not30, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gs = or i64 %1, 1
  %i.gt = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.gs, i1 true)
  %i.gu = trunc nuw nsw i64 %i.gt to i32
  %i.gv = shl nuw nsw i32 %i.gu, 1
  %i.gw = xor i32 %i.gv, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortjNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1T_15LogitsProcessor11sample_topp0E0EB1V_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #25, !inline_history !5562
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %bb.ap
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1N_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1R_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not3.i232 = icmp ugt i64 %.sroa.01.0, 2
  %.not3.i237 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.am, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.am ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ha, %bb.am ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gy, %bb.am ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1U_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1Y_.exit
  %.sroa.021.0 = phi i8 [ %i.cx, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1U_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1Y_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1U_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1Y_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph125, label %._crit_edge

.lr.ph125:                                        ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.aa

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5629)
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1T_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1X_.exit.i.thread235, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1T_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1X_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1T_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1X_.exit.i, %bb.h
  br i1 %4, label %bb.y, label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm7reverseCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val9.i = load ptr, ptr %5, align 8, !alias.scope !5629, !noalias !5630, !nonnull !5, !align !22, !noundef !5
  %.val11.i = load i32, ptr %i.p, align 4, !alias.scope !5628, !noalias !5631, !noundef !5
  %.val.i39 = load ptr, ptr %.val9.i, align 8, !noalias !5632, !nonnull !5, !align !22, !noundef !5 ; 2 uses
  %i.r = zext i32 %.val11.i to i64                ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i39, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !5632, !nonnull !5, !noundef !5 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i39, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !5632, !noundef !5 ; 12 uses
  %i.w = icmp ugt i64 %i.v, %i.r
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.val10.i = load i32, ptr %i.x, align 4, !alias.scope !5628, !noalias !5631 ; 3 uses
  %i.y = zext i32 %.val10.i to i64                ; 3 uses
  %i.z = icmp ugt i64 %i.v, %i.y
  br i1 %i.z, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit40, label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29, !noalias !5632
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #29, !noalias !5632
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit40: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.y
  %i.ac = load i32, ptr %i.aa, align 4, !noalias !5632, !noundef !5 ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !noalias !5632, !noundef !5 ; 4 uses
  %i.ae = ashr i32 %i.ac, 31
  %i.af = lshr i32 %i.ae, 1
  %i.ag = xor i32 %i.af, %i.ac
  %i.ah = ashr i32 %i.ad, 31
  %i.ai = lshr i32 %i.ah, 1
  %i.aj = xor i32 %i.ai, %i.ad
  %i.ak = icmp slt i32 %i.ag, %i.aj               ; 2 uses
  %.not132 = icmp eq i64 %i.o, 2                  ; 2 uses
  br i1 %i.ak, label %.preheader50, label %.preheader51

.preheader51:                                     ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit40
  br i1 %.not132, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1T_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1X_.exit.i.thread, label %.lr.ph

.preheader50:                                     ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit40
  br i1 %.not132, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1T_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1X_.exit.i.thread235, label %.lr.ph120

.lr.ph:                                           ; preds = %.preheader51, %bb.r
  %i.al = phi i32 [ %i.as, %bb.r ], [ %i.ad, %.preheader51 ] ; 2 uses
  %.val8.i = phi i32 [ %.val7.i, %bb.r ], [ %.val10.i, %.preheader51 ]
  %.sroa.01.0.i.i117 = phi i64 [ %i.ba, %bb.r ], [ 2, %.preheader51 ] ; 3 uses
  %i.am = zext i32 %.val8.i to i64                ; 2 uses
  %i.an = icmp ugt i64 %i.v, %i.am
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.sroa.01.0.i.i117
  %.val7.i = load i32, ptr %i.ao, align 4, !alias.scope !5628, !noalias !5631 ; 2 uses
  %i.ap = zext i32 %.val7.i to i64                ; 3 uses
  %i.aq = icmp ugt i64 %i.v, %i.ap
  br i1 %i.aq, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit38, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29, !noalias !5632
  unreachable

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #29, !noalias !5632
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit38: ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ap
  %i.as = load i32, ptr %i.ar, align 4, !noalias !5632, !noundef !5 ; 3 uses
  %i.at = ashr i32 %i.al, 31
  %i.au = lshr i32 %i.at, 1
  %i.av = xor i32 %i.au, %i.al
  %i.aw = ashr i32 %i.as, 31
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = xor i32 %i.ax, %i.as
  %i.az = icmp slt i32 %i.av, %i.ay
  br i1 %i.az, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1T_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1X_.exit.i, label %bb.r

bb.r:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit38
  %i.ba = add nuw i64 %.sroa.01.0.i.i117, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %i.o
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1T_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1X_.exit.i, label %.lr.ph

.lr.ph120:                                        ; preds = %.preheader50, %bb.v
  %i.bb = phi i32 [ %i.bi, %bb.v ], [ %i.ad, %.preheader50 ] ; 2 uses
  %.val5.i = phi i32 [ %.val4.i, %bb.v ], [ %.val10.i, %.preheader50 ]
  %.sroa.01.1.i.i119 = phi i64 [ %i.bq, %bb.v ], [ 2, %.preheader50 ] ; 3 uses
  %i.bc = zext i32 %.val5.i to i64                ; 2 uses
  %i.bd = icmp ugt i64 %i.v, %i.bc
  br i1 %i.bd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph120
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.sroa.01.1.i.i119
  %.val4.i = load i32, ptr %i.be, align 4, !alias.scope !5628, !noalias !5631 ; 2 uses
  %i.bf = zext i32 %.val4.i to i64                ; 3 uses
  %i.bg = icmp ugt i64 %i.v, %i.bf
  br i1 %i.bg, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit, label %bb.u

bb.t:                                             ; preds = %.lr.ph120
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29, !noalias !5632
  unreachable
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1N_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1R_:bb.a
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.di ; 6 uses
  %i.dk = icmp samesign ugt i64 %i.dh, %3
  %i.dl = trunc i64 %.sroa.023.1123 to i1
  %i.dm = or i64 %i.de, %.sroa.023.1123
  %i.dn = trunc i64 %i.dm to i1
  %or.cond3.i = or i1 %i.dk, %i.dn
  br i1 %or.cond3.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.do = trunc i64 %i.de to i1
  br i1 %i.do, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.dp = shl nuw nsw i64 %i.dh, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1X_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB21_.exit

bb.ae:                                            ; preds = %bb.af, %bb.ac
  br i1 %i.dl, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.dq = or i64 %i.df, 1
  %i.dr = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.dq, i1 true)
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, 1
  %i.du = xor i32 %i.dt, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1W_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB20_(ptr noalias nofree noundef nonnull align 4 %i.dj, i64 noundef range(i64 0, 2305843009213693952) %i.df, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.du, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #25, !inline_history !5612
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ae
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.df
  %i.dw = or i64 %i.dg, 1
  %i.dx = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.dw, i1 true)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 1
  %i.ea = xor i32 %i.dz, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1W_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB20_(ptr noalias nofree noundef nonnull align 4 %i.dv, i64 noundef range(i64 0, 2305843009213693952) %i.dg, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.ea, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #25, !inline_history !5612
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.val = load ptr, ptr %5, align 8               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5640)
  %i.eb = icmp eq i64 %i.df, 0
  %i.ec = icmp eq i64 %i.dg, 0
  %or.cond.i = or i1 %i.ec, %i.eb
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1O_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1S_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ed = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.df, i64 %i.dg) ; 2 uses
  %i.ee = icmp samesign ult i64 %3, %i.ed
  br i1 %i.ee, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1O_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1S_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ai
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.df ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.df, %i.dg  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.ef, ptr %i.dj
  %i.eg = shl nuw nsw i64 %i.ed, 2                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.eg, i1 false), !alias.scope !5641
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 %i.eg ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.val.i.i.i = load ptr, ptr %.val, align 8, !noalias !5641, !nonnull !5, !align !22, !noundef !5 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !5641, !nonnull !5, !noundef !5 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !noalias !5641, !noundef !5 ; 6 uses
  br i1 %.not.i33, label %.preheader, label %.lr.ph.i.i

.preheader:                                       ; preds = %.critedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i
  %.sroa.13.0.i = phi ptr [ %i.fj, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i ], [ %i.ef, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.fl, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i ], [ %i.eh, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.eo, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i ], [ %i.n, %.critedge.i ]
  %i.em = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -4 ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -4 ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -4 ; 2 uses
  %.val13.i.i = load i32, ptr %i.em, align 4, !alias.scope !5639, !noalias !5642, !noundef !5 ; 2 uses
  %i.ep = zext i32 %.val13.i.i to i64             ; 3 uses
  %i.eq = icmp ugt i64 %i.el, %i.ep
  br i1 %i.eq, label %bb.aj, label %.invoke369

bb.aj:                                            ; preds = %.preheader
  %.val12.i.i = load i32, ptr %i.en, align 4, !alias.scope !5640, !noalias !5643 ; 2 uses
  %i.er = zext i32 %.val12.i.i to i64             ; 3 uses
  %i.es = icmp ugt i64 %i.el, %i.er
  br i1 %i.es, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i, label %.invoke369

.invoke369:                                       ; preds = %bb.aj, %.preheader
  %i.et = phi i64 [ %i.ep, %.preheader ], [ %i.er, %bb.aj ]
  %i.eu = phi ptr [ @80, %.preheader ], [ @81, %bb.aj ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.et, i64 noundef %i.el, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eu) #29
          to label %.cont370 unwind label %bb.al, !noalias !5641

.cont370:                                         ; preds = %.invoke369
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i: ; preds = %bb.aj
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ep
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.er
  %i.ex = load i32, ptr %i.ev, align 4, !noalias !5644, !noundef !5 ; 2 uses
  %i.ey = load i32, ptr %i.ew, align 4, !noalias !5644, !noundef !5 ; 2 uses
  %i.ez = ashr i32 %i.ex, 31
  %i.fa = lshr i32 %i.ez, 1
  %i.fb = xor i32 %i.fa, %i.ex
  %i.fc = ashr i32 %i.ey, 31
  %i.fd = lshr i32 %i.fc, 1
  %i.fe = xor i32 %i.fd, %i.ey
  %i.ff = icmp slt i32 %i.fb, %i.fe               ; 3 uses
  %i.fg = select i1 %i.ff, i32 %.val13.i.i, i32 %.val12.i.i
  store i32 %i.fg, ptr %i.eo, align 4, !alias.scope !5639, !noalias !5642
  %i.fh = xor i1 %i.ff, true
  %i.fi = zext i1 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fi ; 3 uses
  %i.fk = zext i1 %i.ff to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.fk ; 3 uses
  %i.fm = icmp eq ptr %i.fj, %i.dj
  %i.fn = icmp eq ptr %i.fl, %2
  %or.cond.i.i = select i1 %i.fm, i1 true, i1 %i.fn
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStatemE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB2e_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB2i_.exit.i, label %.preheader

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i
  %.sroa.13.1.i = phi ptr [ %i.gl, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i ], [ %i.dj, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.gi, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.gk, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i ], [ %i.ef, %.critedge.i ] ; 2 uses
  %.val6.i.i = load i32, ptr %.sroa.0.0.i34, align 4, !alias.scope !5640, !noalias !5645, !noundef !5 ; 2 uses
  %i.fo = zext i32 %.val6.i.i to i64              ; 3 uses
  %i.fp = icmp ugt i64 %i.el, %i.fo
  br i1 %i.fp, label %bb.ak, label %.invoke

bb.ak:                                            ; preds = %.lr.ph.i.i
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.06.i.i, align 4, !alias.scope !5639, !noalias !5646 ; 2 uses
  %i.fq = zext i32 %.sroa.0.0.val.i.i to i64      ; 3 uses
  %i.fr = icmp ugt i64 %i.el, %i.fq
  br i1 %i.fr, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i, label %.invoke

.invoke:                                          ; preds = %bb.ak, %.lr.ph.i.i
  %i.fs = phi i64 [ %i.fo, %.lr.ph.i.i ], [ %i.fq, %bb.ak ]
  %i.ft = phi ptr [ @80, %.lr.ph.i.i ], [ @81, %bb.ak ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fs, i64 noundef %i.el, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ft) #29
          to label %.cont unwind label %bb.al, !noalias !5641

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i: ; preds = %bb.ak
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fo
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fq
  %i.fw = load i32, ptr %i.fu, align 4, !noalias !5647, !noundef !5 ; 2 uses
  %i.fx = load i32, ptr %i.fv, align 4, !noalias !5647, !noundef !5 ; 2 uses
  %i.fy = ashr i32 %i.fw, 31
  %i.fz = lshr i32 %i.fy, 1
  %i.ga = xor i32 %i.fz, %i.fw
  %i.gb = ashr i32 %i.fx, 31
  %i.gc = lshr i32 %i.gb, 1
  %i.gd = xor i32 %i.gc, %i.fx
  %i.ge = icmp slt i32 %i.ga, %i.gd               ; 3 uses
  %i.gf = xor i1 %i.ge, true
  %i.gg = select i1 %i.ge, i32 %.sroa.0.0.val.i.i, i32 %.val6.i.i
  store i32 %i.gg, ptr %.sroa.13.1.i, align 4, !alias.scope !5639, !noalias !5646
  %i.gh = zext i1 %i.gf to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i34, i64 %i.gh ; 3 uses
  %i.gj = zext i1 %i.ge to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.06.i.i, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 4 ; 2 uses
  %i.gm = icmp ne ptr %i.gi, %i.eh
  %i.gn = icmp ne ptr %i.gk, %i.n
  %or.cond.i22.i = select i1 %i.gm, i1 %i.gn, i1 false
  br i1 %or.cond.i22.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStatemE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB2e_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB2i_.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStatemE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB2e_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB2i_.exit.i: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i
  %.sroa.13.4.i = phi ptr [ %i.fj, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i ], [ %i.gl, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i ]
  %.sroa.7.2.i = phi ptr [ %i.fl, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i ], [ %i.eh, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i ], [ %i.gi, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i ] ; 2 uses
  %i.go = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gp = ptrtoint ptr %.sroa.0.3.i to i64
  %i.gq = sub nuw i64 %i.go, %i.gp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.4.i, ptr align 4 %.sroa.0.3.i, i64 %i.gq, i1 false), !alias.scope !5641, !noalias !5648
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1O_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1S_.exit

bb.al:                                            ; preds = %.invoke369, %.invoke
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.invoke369 ], [ %.sroa.13.1.i, %.invoke ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.invoke369 ], [ %i.eh, %.invoke ]
  %.sroa.0.2.i = phi ptr [ %2, %.invoke369 ], [ %.sroa.0.0.i34, %.invoke ] ; 2 uses
  %i.gr = landingpad { ptr, i32 }
          cleanup
  %i.gs = ptrtoint ptr %.sroa.7.1.i to i64
  %i.gt = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gu = sub nuw i64 %i.gs, %i.gt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.3.i, ptr nonnull align 4 %.sroa.0.2.i, i64 %i.gu, i1 false), !alias.scope !5641, !noalias !5649
  resume { ptr, i32 } %i.gr

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1O_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1S_.exit: ; preds = %bb.ah, %bb.ai, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStatemE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB2e_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB2i_.exit.i
  %i.gv = shl nuw nsw i64 %i.dh, 1
  %i.gw = or disjoint i64 %i.gv, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1X_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB21_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1X_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB21_.exit: ; preds = %bb.ad, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1O_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1S_.exit
  %.sroa.0.0.i = phi i64 [ %i.gw, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1O_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1S_.exit ], [ %i.dp, %bb.ad ] ; 2 uses
  %i.gx = icmp ugt i64 %i.cy, 1
  br i1 %i.gx, label %bb.aa, label %._crit_edge

bb.am:                                            ; preds = %._crit_edge
  %i.gy = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gz = lshr i64 %.sroa.018.0, 1
  %i.ha = add nuw nsw i64 %i.gz, %.sroa.09.0
  br label %bb.f

bb.an:                                            ; preds = %._crit_edge
  %i.hb = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.hb, 0
  br i1 %.not30, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hc = or i64 %1, 1
  %i.hd = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.hc, i1 true)
  %i.he = trunc nuw nsw i64 %i.hd to i32
  %i.hf = shl nuw nsw i32 %i.he, 1
  %i.hg = xor i32 %i.hf, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB1W_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB20_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.hg, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #25, !inline_history !5612
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %bb.ap
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1N_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1R_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not3.i232 = icmp ugt i64 %.sroa.01.0, 2
  %.not3.i237 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.am, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.am ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ha, %bb.am ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gy, %bb.am ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1U_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1Y_.exit
  %.sroa.021.0 = phi i8 [ %i.cx, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1U_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1Y_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1U_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1Y_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph125, label %._crit_edge

.lr.ph125:                                        ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.aa

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5679)
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1T_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1X_.exit.i.thread235, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1T_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1X_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1T_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1X_.exit.i, %bb.h
  br i1 %4, label %bb.y, label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm7reverseCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val9.i = load ptr, ptr %5, align 8, !alias.scope !5679, !noalias !5680, !nonnull !5, !align !22, !noundef !5
  %.val11.i = load i32, ptr %i.p, align 4, !alias.scope !5678, !noalias !5681, !noundef !5
  %.val.i39 = load ptr, ptr %.val9.i, align 8, !noalias !5682, !nonnull !5, !align !22, !noundef !5 ; 2 uses
  %i.r = zext i32 %.val11.i to i64                ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i39, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !5682, !nonnull !5, !noundef !5 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i39, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !5682, !noundef !5 ; 12 uses
  %i.w = icmp ugt i64 %i.v, %i.r
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.val10.i = load i32, ptr %i.x, align 4, !alias.scope !5678, !noalias !5681 ; 3 uses
  %i.y = zext i32 %.val10.i to i64                ; 3 uses
  %i.z = icmp ugt i64 %i.v, %i.y
  br i1 %i.z, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit40, label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #29, !noalias !5682
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #29, !noalias !5682
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit40: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.y
  %i.ac = load i32, ptr %i.aa, align 4, !noalias !5682, !noundef !5 ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !noalias !5682, !noundef !5 ; 4 uses
  %i.ae = ashr i32 %i.ac, 31
  %i.af = lshr i32 %i.ae, 1
  %i.ag = xor i32 %i.af, %i.ac
  %i.ah = ashr i32 %i.ad, 31
  %i.ai = lshr i32 %i.ah, 1
  %i.aj = xor i32 %i.ai, %i.ad
  %i.ak = icmp slt i32 %i.ag, %i.aj               ; 2 uses
  %.not132 = icmp eq i64 %i.o, 2                  ; 2 uses
  br i1 %i.ak, label %.preheader50, label %.preheader51

.preheader51:                                     ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit40
  br i1 %.not132, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1T_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1X_.exit.i.thread, label %.lr.ph

.preheader50:                                     ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit40
  br i1 %.not132, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1T_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1X_.exit.i.thread235, label %.lr.ph120

.lr.ph:                                           ; preds = %.preheader51, %bb.r
  %i.al = phi i32 [ %i.as, %bb.r ], [ %i.ad, %.preheader51 ] ; 2 uses
  %.val8.i = phi i32 [ %.val7.i, %bb.r ], [ %.val10.i, %.preheader51 ]
  %.sroa.01.0.i.i117 = phi i64 [ %i.ba, %bb.r ], [ 2, %.preheader51 ] ; 3 uses
  %i.am = zext i32 %.val8.i to i64                ; 2 uses
  %i.an = icmp ugt i64 %i.v, %i.am
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.sroa.01.0.i.i117
  %.val7.i = load i32, ptr %i.ao, align 4, !alias.scope !5678, !noalias !5681 ; 2 uses
  %i.ap = zext i32 %.val7.i to i64                ; 3 uses
  %i.aq = icmp ugt i64 %i.v, %i.ap
  br i1 %i.aq, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit38, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #29, !noalias !5682
  unreachable

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #29, !noalias !5682
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit38: ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ap
  %i.as = load i32, ptr %i.ar, align 4, !noalias !5682, !noundef !5 ; 3 uses
  %i.at = ashr i32 %i.al, 31
  %i.au = lshr i32 %i.at, 1
  %i.av = xor i32 %i.au, %i.al
  %i.aw = ashr i32 %i.as, 31
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = xor i32 %i.ax, %i.as
  %i.az = icmp slt i32 %i.av, %i.ay
  br i1 %i.az, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1T_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1X_.exit.i, label %bb.r

bb.r:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit38
  %i.ba = add nuw i64 %.sroa.01.0.i.i117, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %i.o
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1T_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1X_.exit.i, label %.lr.ph

.lr.ph120:                                        ; preds = %.preheader50, %bb.v
  %i.bb = phi i32 [ %i.bi, %bb.v ], [ %i.ad, %.preheader50 ] ; 2 uses
  %.val5.i = phi i32 [ %.val4.i, %bb.v ], [ %.val10.i, %.preheader50 ]
  %.sroa.01.1.i.i119 = phi i64 [ %i.bq, %bb.v ], [ 2, %.preheader50 ] ; 3 uses
  %i.bc = zext i32 %.val5.i to i64                ; 2 uses
  %i.bd = icmp ugt i64 %i.v, %i.bc
  br i1 %i.bd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph120
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.sroa.01.1.i.i119
  %.val4.i = load i32, ptr %i.be, align 4, !alias.scope !5678, !noalias !5681 ; 2 uses
  %i.bf = zext i32 %.val4.i to i64                ; 3 uses
  %i.bg = icmp ugt i64 %i.v, %i.bf
  br i1 %i.bg, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit, label %bb.u

bb.t:                                             ; preds = %.lr.ph120
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #29, !noalias !5682
  unreachable
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1N_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1R_:bb.a
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.di ; 6 uses
  %i.dk = icmp samesign ugt i64 %i.dh, %3
  %i.dl = trunc i64 %.sroa.023.1123 to i1
  %i.dm = or i64 %i.de, %.sroa.023.1123
  %i.dn = trunc i64 %i.dm to i1
  %or.cond3.i = or i1 %i.dk, %i.dn
  br i1 %or.cond3.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.do = trunc i64 %i.de to i1
  br i1 %i.do, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.dp = shl nuw nsw i64 %i.dh, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1X_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB21_.exit

bb.ae:                                            ; preds = %bb.af, %bb.ac
  br i1 %i.dl, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.dq = or i64 %i.df, 1
  %i.dr = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.dq, i1 true)
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, 1
  %i.du = xor i32 %i.dt, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1W_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB20_(ptr noalias nofree noundef nonnull align 4 %i.dj, i64 noundef range(i64 0, 2305843009213693952) %i.df, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.du, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #25, !inline_history !5662
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ae
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.df
  %i.dw = or i64 %i.dg, 1
  %i.dx = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.dw, i1 true)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 1
  %i.ea = xor i32 %i.dz, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1W_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB20_(ptr noalias nofree noundef nonnull align 4 %i.dv, i64 noundef range(i64 0, 2305843009213693952) %i.dg, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.ea, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #25, !inline_history !5662
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.val = load ptr, ptr %5, align 8               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5690)
  %i.eb = icmp eq i64 %i.df, 0
  %i.ec = icmp eq i64 %i.dg, 0
  %or.cond.i = or i1 %i.ec, %i.eb
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1O_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1S_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ed = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.df, i64 %i.dg) ; 2 uses
  %i.ee = icmp samesign ult i64 %3, %i.ed
  br i1 %i.ee, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1O_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1S_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ai
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.df ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.df, %i.dg  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.ef, ptr %i.dj
  %i.eg = shl nuw nsw i64 %i.ed, 2                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.eg, i1 false), !alias.scope !5691
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 %i.eg ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.val.i.i.i = load ptr, ptr %.val, align 8, !noalias !5691, !nonnull !5, !align !22, !noundef !5 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !5691, !nonnull !5, !noundef !5 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !noalias !5691, !noundef !5 ; 6 uses
  br i1 %.not.i33, label %.preheader, label %.lr.ph.i.i

.preheader:                                       ; preds = %.critedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i
  %.sroa.13.0.i = phi ptr [ %i.fj, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i ], [ %i.ef, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.fl, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i ], [ %i.eh, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.eo, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i ], [ %i.n, %.critedge.i ]
  %i.em = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -4 ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -4 ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -4 ; 2 uses
  %.val13.i.i = load i32, ptr %i.em, align 4, !alias.scope !5689, !noalias !5692, !noundef !5 ; 2 uses
  %i.ep = zext i32 %.val13.i.i to i64             ; 3 uses
  %i.eq = icmp ugt i64 %i.el, %i.ep
  br i1 %i.eq, label %bb.aj, label %.invoke369

bb.aj:                                            ; preds = %.preheader
  %.val12.i.i = load i32, ptr %i.en, align 4, !alias.scope !5690, !noalias !5693 ; 2 uses
  %i.er = zext i32 %.val12.i.i to i64             ; 3 uses
  %i.es = icmp ugt i64 %i.el, %i.er
  br i1 %i.es, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i, label %.invoke369

.invoke369:                                       ; preds = %bb.aj, %.preheader
  %i.et = phi i64 [ %i.ep, %.preheader ], [ %i.er, %bb.aj ]
  %i.eu = phi ptr [ @83, %.preheader ], [ @84, %bb.aj ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.et, i64 noundef %i.el, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eu) #29
          to label %.cont370 unwind label %bb.al, !noalias !5691

.cont370:                                         ; preds = %.invoke369
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i: ; preds = %bb.aj
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ep
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.er
  %i.ex = load i32, ptr %i.ev, align 4, !noalias !5694, !noundef !5 ; 2 uses
  %i.ey = load i32, ptr %i.ew, align 4, !noalias !5694, !noundef !5 ; 2 uses
  %i.ez = ashr i32 %i.ex, 31
  %i.fa = lshr i32 %i.ez, 1
  %i.fb = xor i32 %i.fa, %i.ex
  %i.fc = ashr i32 %i.ey, 31
  %i.fd = lshr i32 %i.fc, 1
  %i.fe = xor i32 %i.fd, %i.ey
  %i.ff = icmp slt i32 %i.fb, %i.fe               ; 3 uses
  %i.fg = select i1 %i.ff, i32 %.val13.i.i, i32 %.val12.i.i
  store i32 %i.fg, ptr %i.eo, align 4, !alias.scope !5689, !noalias !5692
  %i.fh = xor i1 %i.ff, true
  %i.fi = zext i1 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fi ; 3 uses
  %i.fk = zext i1 %i.ff to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.fk ; 3 uses
  %i.fm = icmp eq ptr %i.fj, %i.dj
  %i.fn = icmp eq ptr %i.fl, %2
  %or.cond.i.i = select i1 %i.fm, i1 true, i1 %i.fn
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStatemE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB2e_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB2i_.exit.i, label %.preheader

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i
  %.sroa.13.1.i = phi ptr [ %i.gl, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i ], [ %i.dj, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.gi, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.gk, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i ], [ %i.ef, %.critedge.i ] ; 2 uses
  %.val6.i.i = load i32, ptr %.sroa.0.0.i34, align 4, !alias.scope !5690, !noalias !5695, !noundef !5 ; 2 uses
  %i.fo = zext i32 %.val6.i.i to i64              ; 3 uses
  %i.fp = icmp ugt i64 %i.el, %i.fo
  br i1 %i.fp, label %bb.ak, label %.invoke

bb.ak:                                            ; preds = %.lr.ph.i.i
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.06.i.i, align 4, !alias.scope !5689, !noalias !5696 ; 2 uses
  %i.fq = zext i32 %.sroa.0.0.val.i.i to i64      ; 3 uses
  %i.fr = icmp ugt i64 %i.el, %i.fq
  br i1 %i.fr, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i, label %.invoke

.invoke:                                          ; preds = %bb.ak, %.lr.ph.i.i
  %i.fs = phi i64 [ %i.fo, %.lr.ph.i.i ], [ %i.fq, %bb.ak ]
  %i.ft = phi ptr [ @83, %.lr.ph.i.i ], [ @84, %bb.ak ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fs, i64 noundef %i.el, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ft) #29
          to label %.cont unwind label %bb.al, !noalias !5691

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i: ; preds = %bb.ak
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fo
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fq
  %i.fw = load i32, ptr %i.fu, align 4, !noalias !5697, !noundef !5 ; 2 uses
  %i.fx = load i32, ptr %i.fv, align 4, !noalias !5697, !noundef !5 ; 2 uses
  %i.fy = ashr i32 %i.fw, 31
  %i.fz = lshr i32 %i.fy, 1
  %i.ga = xor i32 %i.fz, %i.fw
  %i.gb = ashr i32 %i.fx, 31
  %i.gc = lshr i32 %i.gb, 1
  %i.gd = xor i32 %i.gc, %i.fx
  %i.ge = icmp slt i32 %i.ga, %i.gd               ; 3 uses
  %i.gf = xor i1 %i.ge, true
  %i.gg = select i1 %i.ge, i32 %.sroa.0.0.val.i.i, i32 %.val6.i.i
  store i32 %i.gg, ptr %.sroa.13.1.i, align 4, !alias.scope !5689, !noalias !5696
  %i.gh = zext i1 %i.gf to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i34, i64 %i.gh ; 3 uses
  %i.gj = zext i1 %i.ge to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.06.i.i, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 4 ; 2 uses
  %i.gm = icmp ne ptr %i.gi, %i.eh
  %i.gn = icmp ne ptr %i.gk, %i.n
  %or.cond.i22.i = select i1 %i.gm, i1 %i.gn, i1 false
  br i1 %or.cond.i22.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStatemE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB2e_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB2i_.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStatemE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB2e_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB2i_.exit.i: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i
  %.sroa.13.4.i = phi ptr [ %i.fj, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i ], [ %i.gl, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i ]
  %.sroa.7.2.i = phi ptr [ %i.fl, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i ], [ %i.eh, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i.i ], [ %i.gi, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit.i21.i ] ; 2 uses
  %i.go = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gp = ptrtoint ptr %.sroa.0.3.i to i64
  %i.gq = sub nuw i64 %i.go, %i.gp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.4.i, ptr align 4 %.sroa.0.3.i, i64 %i.gq, i1 false), !alias.scope !5691, !noalias !5698
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1O_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1S_.exit

bb.al:                                            ; preds = %.invoke369, %.invoke
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.invoke369 ], [ %.sroa.13.1.i, %.invoke ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.invoke369 ], [ %i.eh, %.invoke ]
  %.sroa.0.2.i = phi ptr [ %2, %.invoke369 ], [ %.sroa.0.0.i34, %.invoke ] ; 2 uses
  %i.gr = landingpad { ptr, i32 }
          cleanup
  %i.gs = ptrtoint ptr %.sroa.7.1.i to i64
  %i.gt = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gu = sub nuw i64 %i.gs, %i.gt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.3.i, ptr nonnull align 4 %.sroa.0.2.i, i64 %i.gu, i1 false), !alias.scope !5691, !noalias !5699
  resume { ptr, i32 } %i.gr

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1O_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1S_.exit: ; preds = %bb.ah, %bb.ai, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStatemE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB2e_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB2i_.exit.i
  %i.gv = shl nuw nsw i64 %i.dh, 1
  %i.gw = or disjoint i64 %i.gv, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1X_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB21_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1X_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB21_.exit: ; preds = %bb.ad, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1O_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1S_.exit
  %.sroa.0.0.i = phi i64 [ %i.gw, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1O_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB1S_.exit ], [ %i.dp, %bb.ad ] ; 2 uses
  %i.gx = icmp ugt i64 %i.cy, 1
  br i1 %i.gx, label %bb.aa, label %._crit_edge

bb.am:                                            ; preds = %._crit_edge
  %i.gy = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gz = lshr i64 %.sroa.018.0, 1
  %i.ha = add nuw nsw i64 %i.gz, %.sroa.09.0
  br label %bb.f

bb.an:                                            ; preds = %._crit_edge
  %i.hb = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.hb, 0
  br i1 %.not30, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hc = or i64 %1, 1
  %i.hd = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.hc, i1 true)
  %i.he = trunc nuw nsw i64 %i.hd to i32
  %i.hf = shl nuw nsw i32 %i.he, 1
  %i.hg = xor i32 %i.hf, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB1W_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB20_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.hg, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #25, !inline_history !5662
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %bb.ap
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvB18_23non_maximum_suppressionB26_E0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(32) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph120 = phi ptr [ %i.cj, %.outer ], [ %0, %bb.a ] ; 20 uses
  %.sroa.16.0.ph119 = phi i64 [ %i.bu, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph118 = phi i32 [ %i.h, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph117 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph120, i64 24
  %i.d = ptrtoint ptr %.sroa.0.0.ph120 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph117, null
  %i.e = getelementptr i8, ptr %.sroa.028.0.ph117, i64 24
  %i.f = icmp eq i32 %.sroa.025.0.ph118, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph308

bb.b:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutBz_.exit
  %i.g = icmp eq i32 %i.h, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph308

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutBz_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa111 = phi ptr [ %i.bv, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph120, %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutBz_.exit ], [ %i.cj, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutBz_.exit ], [ %i.bu, %.outer ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCINvB1v_23non_maximum_suppressionB2t_E0E0EB1x_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa111, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0113.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph119, %.lr.ph ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCINvBZ_23non_maximum_suppressionB1X_E0E0EB11_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph120, i64 noundef %.sroa.16.0113.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.i

.lr.ph308:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0112307 = phi i32 [ %i.h, %bb.b ], [ %.sroa.025.0.ph118, %.lr.ph ]
  %.sroa.16.0113306 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph119, %.lr.ph ] ; 21 uses
  %i.h = add i32 %.sroa.025.0112307, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5719)
  %i.i = lshr i64 %.sroa.16.0113306, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.i, 7
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.i, 224
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %.idx2.i ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.16.0113306, 64
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph308
  %i.m = call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB14_7sort_byNCINvB17_23non_maximum_suppressionB25_E0E0EB19_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph120, ptr noundef readonly %i.j, ptr noundef readonly %i.k, i64 noundef %i.i)
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph308
  %.val6.i = load float, ptr %i.c, align 8, !alias.scope !5719, !noundef !5 ; 4 uses
  %i.n = getelementptr i8, ptr %i.j, i64 24
  %.val7.i = load float, ptr %i.n, align 8, !alias.scope !5719, !noundef !5 ; 4 uses
  %brmerge.not.i.i = fcmp uno float %.val7.i, %.val6.i
  br i1 %brmerge.not.i.i, label %bb.e, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i, !prof !24

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #29, !noalias !5719
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i: ; preds = %bb.d
  %.mux.i.i = fcmp olt float %.val7.i, %.val6.i   ; 2 uses
  %i.o = getelementptr i8, ptr %i.k, i64 24
  %.val5.i = load float, ptr %i.o, align 8, !alias.scope !5719, !noundef !5 ; 4 uses
  %brmerge.not.i8.i = fcmp uno float %.val5.i, %.val6.i
  br i1 %brmerge.not.i8.i, label %bb.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit10.i, !prof !24

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #29, !noalias !5719
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit10.i: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i
  %.mux.i9.i = fcmp olt float %.val5.i, %.val6.i
  %i.p = xor i1 %.mux.i.i, %.mux.i9.i
  br i1 %i.p, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit10.i
  %brmerge.not.i11.i = fcmp uno float %.val5.i, %.val7.i
  br i1 %brmerge.not.i11.i, label %bb.h, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit13.i, !prof !24

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #29, !noalias !5719
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit13.i: ; preds = %bb.g
  %.mux.i12.i = fcmp olt float %.val5.i, %.val7.i
  %i.q = xor i1 %.mux.i.i, %.mux.i12.i
  %..i.i = select i1 %i.q, ptr %i.k, ptr %i.j
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.j:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit13.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit10.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.m, %bb.c ], [ %.sroa.0.0.ph120, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit10.i ], [ %..i.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit13.i ]
  %i.r = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.s = sub nuw i64 %i.r, %i.d                   ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.s, 5           ; 3 uses
  %i.t = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0113306
  call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %i.s ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.028.0.val = load float, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %.val = load float, ptr %i.v, align 8, !noundef !5 ; 2 uses
  %brmerge.not.i = fcmp uno float %.val, %.sroa.028.0.val
  br i1 %brmerge.not.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit, !prof !24

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #29
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit: ; preds = %bb.k
  %.mux.i = fcmp olt float %.val, %.sroa.028.0.val
  br i1 %.mux.i, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.j, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !5720)
  call void @llvm.experimental.noalias.scope.decl(metadata !5721)
  %.not66 = icmp samesign ult i64 %3, %.sroa.16.0113306
  br i1 %.not66, label %bb.o, label %bb.n, !prof !23

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr [32 x i8], ptr %2, i64 %.sroa.16.0113306 ; 4 uses
  %i.x = getelementptr i8, ptr %i.u, i64 24
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.r, %bb.n
  %.sroa.19.0.i = phi ptr [ %i.w, %bb.n ], [ %i.ai, %bb.r ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.n ], [ %.sroa.11.1.lcssa.i, %bb.r ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph120, %bb.n ], [ %i.ak, %bb.r ] ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.n ], [ %.sroa.16.0113306, %bb.r ] ; 2 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.0.0.i37 ; 2 uses
  %i.z = icmp ult ptr %.sroa.5.0.i, %i.y
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i39, %bb.p
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.p ], [ %i.ac, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i39 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.p ], [ %i.af, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i39 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.p ], [ %i.ag, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i39 ] ; 2 uses
  %i.aa = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0113306
  br i1 %i.aa, label %bb.s, label %bb.r

.lr.ph.i:                                         ; preds = %bb.p, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i39
  %.sroa.5.114.i = phi ptr [ %i.ag, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i39 ], [ %.sroa.5.0.i, %bb.p ] ; 3 uses
  %.sroa.11.113.i = phi i64 [ %i.af, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i39 ], [ %.sroa.11.0.i, %bb.p ] ; 2 uses
  %.sroa.19.112.i = phi ptr [ %i.ac, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i39 ], [ %.sroa.19.0.i, %bb.p ]
  %i.ab = getelementptr i8, ptr %.sroa.5.114.i, i64 24
  %.val.i = load float, ptr %i.ab, align 8, !alias.scope !5720, !noalias !5721, !noundef !5 ; 2 uses
  %.val12.i = load float, ptr %i.x, align 8, !alias.scope !5720, !noalias !5721, !noundef !5 ; 2 uses
  %brmerge.not.i.i38 = fcmp uno float %.val12.i, %.val.i
  br i1 %brmerge.not.i.i38, label %bb.q, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i39, !prof !24

bb.q:                                             ; preds = %.lr.ph.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #29, !noalias !5722
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit.i39: ; preds = %.lr.ph.i
  %.mux.i.i40 = fcmp olt float %.val12.i, %.val.i ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.sroa.19.112.i, i64 -32 ; 3 uses
  %.sroa.01.0.i.i = select i1 %.mux.i.i40, ptr %2, ptr %i.ac
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.113.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.114.i, i64 32, i1 false), !alias.scope !5722, !noalias !5723
end_hunk_3
