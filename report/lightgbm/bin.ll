Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/bin?download=true
inline.NumInlined: 9528
inline.NumDeleted: 2666
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 525
loop-unroll.NumUnrolled: 528
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS3_SN_E0_EEEvSE_SE_SI_T1_:bb.a
  %i.oy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31.i, i64 8
  %i.oz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30.i, i64 8 ; 2 uses
  %i.pa = add nsw i64 %.012.i.i.i.i.i.i29.i, -1
  %i.pb = icmp samesign ugt i64 %.012.i.i.i.i.i.i29.i, 1
  br i1 %i.pb, label %.lr.ph.i.i.i.i.i.i28.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i21.i, !llvm.loop !1645

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i21.i: ; preds = %.lr.ph.i.i.i.i.i.i28.i, %middle.block315, %.critedge.i17.i
  %.08.lcssa.i.i.i.i.i.i22.i = phi ptr [ %.0.lcssa.i20.i, %.critedge.i17.i ], [ %i.op, %middle.block315 ], [ %i.oz, %.lr.ph.i.i.i.i.i.i28.i ] ; 7 uses
  %i.pc = ptrtoint ptr %.sroa.015.0.lcssa.i18.i to i64
  %i.pd = sub i64 %i.a, %i.pc                     ; 2 uses
  %i.pe = ashr exact i64 %i.pd, 3                 ; 7 uses
  %i.pf = icmp sgt i64 %i.pe, 0
  br i1 %i.pf, label %.lr.ph.i.i.i.i.i10.i24.i.preheader, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS3_SN_E0_EEEvSE_SE_SI_T1_T2_.exit

.lr.ph.i.i.i.i.i10.i24.i.preheader:               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i21.i
  %min.iters.check267 = icmp ult i64 %i.pe, 4
  br i1 %min.iters.check267, label %.lr.ph.i.i.i.i.i10.i24.i.preheader385, label %vector.memcheck260

vector.memcheck260:                               ; preds = %.lr.ph.i.i.i.i.i10.i24.i.preheader
  %scevgep261 = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i22.i, i64 %i.pd
  %bound0263 = icmp ult ptr %.08.lcssa.i.i.i.i.i.i22.i, %1
  %bound1264 = icmp ult ptr %.sroa.015.0.lcssa.i18.i, %scevgep261
  %found.conflict265 = and i1 %bound0263, %bound1264
  br i1 %found.conflict265, label %.lr.ph.i.i.i.i.i10.i24.i.preheader385, label %vector.ph268

vector.ph268:                                     ; preds = %vector.memcheck260
  %n.vec269 = and i64 %i.pe, 9223372036854775804  ; 3 uses
  %i.pg = and i64 %i.pe, 3
  %i.ph = shl i64 %n.vec269, 3                    ; 2 uses
  %i.pi = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i22.i, i64 %i.ph
  %i.pj = getelementptr i8, ptr %.sroa.015.0.lcssa.i18.i, i64 %i.ph
  br label %vector.body270

vector.body270:                                   ; preds = %vector.body270, %vector.ph268
  %index271 = phi i64 [ 0, %vector.ph268 ], [ %index.next284, %vector.body270 ] ; 2 uses
  %i.pk = shl i64 %index271, 3                    ; 3 uses
  %i.pl = or disjoint i64 %i.pk, 16               ; 2 uses
  %next.gep272 = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i22.i, i64 %i.pk
  %next.gep273 = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i22.i, i64 %i.pl
  %next.gep274 = getelementptr i8, ptr %.sroa.015.0.lcssa.i18.i, i64 %i.pk
  %next.gep275 = getelementptr i8, ptr %.sroa.015.0.lcssa.i18.i, i64 %i.pl
  %wide.vec276 = load <4 x i32>, ptr %next.gep274, align 4, !tbaa !58, !alias.scope !1680
  %wide.vec279 = load <4 x i32>, ptr %next.gep275, align 4, !tbaa !58, !alias.scope !1680
  store <4 x i32> %wide.vec276, ptr %next.gep272, align 4, !tbaa !58, !alias.scope !1681, !noalias !1680
  store <4 x i32> %wide.vec279, ptr %next.gep273, align 4, !tbaa !58, !alias.scope !1681, !noalias !1680
  %index.next284 = add nuw i64 %index271, 4       ; 2 uses
  %i.pm = icmp eq i64 %index.next284, %n.vec269
  br i1 %i.pm, label %middle.block285, label %vector.body270, !llvm.loop !1649

middle.block285:                                  ; preds = %vector.body270
  %cmp.n286 = icmp eq i64 %i.pe, %n.vec269
  br i1 %cmp.n286, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS3_SN_E0_EEEvSE_SE_SI_T1_T2_.exit, label %.lr.ph.i.i.i.i.i10.i24.i.preheader385

.lr.ph.i.i.i.i.i10.i24.i.preheader385:            ; preds = %vector.memcheck260, %.lr.ph.i.i.i.i.i10.i24.i.preheader, %middle.block285
  %.012.i.i.i.i.i11.i25.i.ph = phi i64 [ %i.pe, %vector.memcheck260 ], [ %i.pe, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.pg, %middle.block285 ]
  %.0811.i.i.i.i.i12.i26.i.ph = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i, %vector.memcheck260 ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.pi, %middle.block285 ]
  %.0910.i.i.i.i.i13.i27.i.ph = phi ptr [ %.sroa.015.0.lcssa.i18.i, %vector.memcheck260 ], [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.pj, %middle.block285 ]
  br label %.lr.ph.i.i.i.i.i10.i24.i

.lr.ph.i.i.i.i.i10.i24.i:                         ; preds = %.lr.ph.i.i.i.i.i10.i24.i.preheader385, %.lr.ph.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i11.i25.i = phi i64 [ %i.pt, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.012.i.i.i.i.i11.i25.i.ph, %.lr.ph.i.i.i.i.i10.i24.i.preheader385 ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i = phi ptr [ %i.ps, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0811.i.i.i.i.i12.i26.i.ph, %.lr.ph.i.i.i.i.i10.i24.i.preheader385 ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i = phi ptr [ %i.pr, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0910.i.i.i.i.i13.i27.i.ph, %.lr.ph.i.i.i.i.i10.i24.i.preheader385 ] ; 3 uses
  %i.pn = load i32, ptr %.0910.i.i.i.i.i13.i27.i, align 4, !tbaa !58
  store i32 %i.pn, ptr %.0811.i.i.i.i.i12.i26.i, align 4, !tbaa !259
  %i.po = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 4
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !58
  %i.pq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 4
  store i32 %i.pp, ptr %i.pq, align 4, !tbaa !260
  %i.pr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 8
  %i.ps = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 8
  %i.pt = add nsw i64 %.012.i.i.i.i.i11.i25.i, -1
  %i.pu = icmp samesign ugt i64 %.012.i.i.i.i.i11.i25.i, 1
  br i1 %i.pu, label %.lr.ph.i.i.i.i.i10.i24.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS3_SN_E0_EEEvSE_SE_SI_T1_T2_.exit, !llvm.loop !1650

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS3_SN_E0_EEEvSE_SE_SI_T1_T2_.exit: ; preds = %.lr.ph.i.i.i.i.i10.i24.i, %middle.block285, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i21.i
  %i.pv = shl nsw i64 %.066, 2                    ; 4 uses
  %.not66.i = icmp slt i64 %i.d, %i.pv
  br i1 %.not66.i, label %._crit_edge.i35, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS3_SN_E0_EEEvSE_SE_SI_T1_T2_.exit
  %.idx.i28 = shl nsw i64 %.066, 4                ; 2 uses
  %.idx57.i = shl nsw i64 %.066, 5                ; 2 uses
  %.not58.i = icmp eq i64 %.idx.i28, %.idx57.i
  br label %bb.x

bb.x:                                             ; preds = %_ZSt12__move_mergeIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEESI_SE_SE_SE_SE_SI_T1_.exit.i, %.lr.ph.i27
  %.sroa.022.068.i = phi ptr [ %0, %.lr.ph.i27 ], [ %i.sb, %_ZSt12__move_mergeIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEESI_SE_SE_SE_SE_SI_T1_.exit.i ] ; 2 uses
  %.067.i = phi ptr [ %2, %.lr.ph.i27 ], [ %i.px, %_ZSt12__move_mergeIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEESI_SE_SE_SE_SE_SI_T1_.exit.i ] ; 4 uses
  %i.pw = getelementptr inbounds i8, ptr %.067.i, i64 %.idx.i28 ; 5 uses
  %i.px = getelementptr inbounds i8, ptr %.067.i, i64 %.idx57.i ; 5 uses
  br i1 %.not58.i, label %._crit_edge.i.i, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %bb.x, %bb.aa
  %.029.i.i = phi ptr [ %.1.i.i, %bb.aa ], [ %.067.i, %bb.x ] ; 4 uses
  %.01628.i.i = phi ptr [ %.117.i.i, %bb.aa ], [ %i.pw, %bb.x ] ; 4 uses
  %.sroa.0.027.i.i = phi ptr [ %i.qc, %bb.aa ], [ %.sroa.022.068.i, %bb.x ] ; 3 uses
  %.016.val.i.i = load i32, ptr %.01628.i.i, align 4, !tbaa !259 ; 2 uses
  %.0.val.i.i = load i32, ptr %.029.i.i, align 4, !tbaa !259 ; 2 uses
  %i.py = icmp sgt i32 %.016.val.i.i, %.0.val.i.i
  br i1 %i.py, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i29
  %i.pz = getelementptr inbounds nuw i8, ptr %.01628.i.i, i64 8
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i29
  %i.qa = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.val.i.sink.i = phi i32 [ %.016.val.i.i, %bb.y ], [ %.0.val.i.i, %bb.z ]
  %.01628.pn.i.i = phi ptr [ %.01628.i.i, %bb.y ], [ %.029.i.i, %bb.z ]
  %.117.i.i = phi ptr [ %i.pz, %bb.y ], [ %.01628.i.i, %bb.z ] ; 3 uses
  %.1.i.i = phi ptr [ %.029.i.i, %bb.y ], [ %i.qa, %bb.z ] ; 3 uses
  store i32 %.0.val.i.sink.i, ptr %.sroa.0.027.i.i, align 4, !tbaa !259
  %.sink.in.i.i30 = getelementptr inbounds nuw i8, ptr %.01628.pn.i.i, i64 4
  %.sink.i.i31 = load i32, ptr %.sink.in.i.i30, align 4, !tbaa !58
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 4
  store i32 %.sink.i.i31, ptr %i.qb, align 4, !tbaa !260
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 8 ; 2 uses
  %i.qd = icmp ne ptr %.1.i.i, %i.pw
  %i.qe = icmp ne ptr %.117.i.i, %i.px
  %i.qf = select i1 %i.qd, i1 %i.qe, i1 false
  br i1 %i.qf, label %.lr.ph.i.i29, label %._crit_edge.i.i, !llvm.loop !1651

._crit_edge.i.i:                                  ; preds = %bb.aa, %bb.x
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.022.068.i, %bb.x ], [ %i.qc, %bb.aa ] ; 11 uses
  %.016.lcssa.i.i = phi ptr [ %i.pw, %bb.x ], [ %.117.i.i, %bb.aa ] ; 7 uses
  %.0.lcssa.i.i32 = phi ptr [ %.067.i, %bb.x ], [ %.1.i.i, %bb.aa ] ; 7 uses
  %i.qg = ptrtoint ptr %i.pw to i64
  %i.qh = ptrtoint ptr %.0.lcssa.i.i32 to i64
  %i.qi = sub i64 %i.qg, %i.qh                    ; 2 uses
  %i.qj = ashr exact i64 %i.qi, 3                 ; 7 uses
  %i.qk = icmp sgt i64 %i.qj, 0
  br i1 %i.qk, label %.lr.ph.i.i.i.i.i.i.i38.preheader, label %_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i

.lr.ph.i.i.i.i.i.i.i38.preheader:                 ; preds = %._crit_edge.i.i
  %min.iters.check237 = icmp ult i64 %i.qj, 4
  br i1 %min.iters.check237, label %.lr.ph.i.i.i.i.i.i.i38.preheader381, label %vector.memcheck230

vector.memcheck230:                               ; preds = %.lr.ph.i.i.i.i.i.i.i38.preheader
  %scevgep231 = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.qi
  %bound0233 = icmp ult ptr %.sroa.0.0.lcssa.i.i, %i.pw
  %bound1234 = icmp ult ptr %.0.lcssa.i.i32, %scevgep231
  %found.conflict235 = and i1 %bound0233, %bound1234
  br i1 %found.conflict235, label %.lr.ph.i.i.i.i.i.i.i38.preheader381, label %vector.ph238

vector.ph238:                                     ; preds = %vector.memcheck230
  %n.vec239 = and i64 %i.qj, 9223372036854775804  ; 3 uses
  %i.ql = and i64 %i.qj, 3
  %i.qm = shl i64 %n.vec239, 3                    ; 2 uses
  %i.qn = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.qm ; 2 uses
  %i.qo = getelementptr i8, ptr %.0.lcssa.i.i32, i64 %i.qm
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph238
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next254, %vector.body240 ] ; 2 uses
  %i.qp = shl i64 %index241, 3                    ; 3 uses
  %i.qq = or disjoint i64 %i.qp, 16               ; 2 uses
  %next.gep242 = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.qp
  %next.gep243 = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.qq
  %next.gep244 = getelementptr i8, ptr %.0.lcssa.i.i32, i64 %i.qp
  %next.gep245 = getelementptr i8, ptr %.0.lcssa.i.i32, i64 %i.qq
  %wide.vec246 = load <4 x i32>, ptr %next.gep244, align 4, !tbaa !58, !alias.scope !1682
  %wide.vec249 = load <4 x i32>, ptr %next.gep245, align 4, !tbaa !58, !alias.scope !1682
  store <4 x i32> %wide.vec246, ptr %next.gep242, align 4, !tbaa !58, !alias.scope !1683, !noalias !1682
  store <4 x i32> %wide.vec249, ptr %next.gep243, align 4, !tbaa !58, !alias.scope !1683, !noalias !1682
  %index.next254 = add nuw i64 %index241, 4       ; 2 uses
  %i.qr = icmp eq i64 %index.next254, %n.vec239
  br i1 %i.qr, label %middle.block255, label %vector.body240, !llvm.loop !1655

middle.block255:                                  ; preds = %vector.body240
  %cmp.n256 = icmp eq i64 %i.qj, %n.vec239
  br i1 %cmp.n256, label %_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i38.preheader381

.lr.ph.i.i.i.i.i.i.i38.preheader381:              ; preds = %vector.memcheck230, %.lr.ph.i.i.i.i.i.i.i38.preheader, %middle.block255
  %.012.i.i.i.i.i.i.i39.ph = phi i64 [ %i.qj, %vector.memcheck230 ], [ %i.qj, %.lr.ph.i.i.i.i.i.i.i38.preheader ], [ %i.ql, %middle.block255 ]
  %.0811.i.i.i.i.i.i.i40.ph = phi ptr [ %.sroa.0.0.lcssa.i.i, %vector.memcheck230 ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i38.preheader ], [ %i.qn, %middle.block255 ]
  %.0910.i.i.i.i.i.i.i41.ph = phi ptr [ %.0.lcssa.i.i32, %vector.memcheck230 ], [ %.0.lcssa.i.i32, %.lr.ph.i.i.i.i.i.i.i38.preheader ], [ %i.qo, %middle.block255 ]
  br label %.lr.ph.i.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i.i38:                           ; preds = %.lr.ph.i.i.i.i.i.i.i38.preheader381, %.lr.ph.i.i.i.i.i.i.i38
  %.012.i.i.i.i.i.i.i39 = phi i64 [ %i.qy, %.lr.ph.i.i.i.i.i.i.i38 ], [ %.012.i.i.i.i.i.i.i39.ph, %.lr.ph.i.i.i.i.i.i.i38.preheader381 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i40 = phi ptr [ %i.qx, %.lr.ph.i.i.i.i.i.i.i38 ], [ %.0811.i.i.i.i.i.i.i40.ph, %.lr.ph.i.i.i.i.i.i.i38.preheader381 ] ; 3 uses
  %.0910.i.i.i.i.i.i.i41 = phi ptr [ %i.qw, %.lr.ph.i.i.i.i.i.i.i38 ], [ %.0910.i.i.i.i.i.i.i41.ph, %.lr.ph.i.i.i.i.i.i.i38.preheader381 ] ; 3 uses
  %i.qs = load i32, ptr %.0910.i.i.i.i.i.i.i41, align 4, !tbaa !58
  store i32 %i.qs, ptr %.0811.i.i.i.i.i.i.i40, align 4, !tbaa !259
  %i.qt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i41, i64 4
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !58
  %i.qv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i40, i64 4
  store i32 %i.qu, ptr %i.qv, align 4, !tbaa !260
  %i.qw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i41, i64 8
  %i.qx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i40, i64 8 ; 2 uses
  %i.qy = add nsw i64 %.012.i.i.i.i.i.i.i39, -1
  %i.qz = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i39, 1
  br i1 %i.qz, label %.lr.ph.i.i.i.i.i.i.i38, label %_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i, !llvm.loop !1656

_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i38, %middle.block255, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i33 = phi ptr [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.qn, %middle.block255 ], [ %i.qx, %.lr.ph.i.i.i.i.i.i.i38 ] ; 2 uses
  %i.ra = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i33 to i64 ; 3 uses
  %i.rb = ptrtoint ptr %.sroa.0.0.lcssa.i.i to i64 ; 2 uses
  %i.rc = sub i64 %i.ra, %i.rb
  %i.rd = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.rc ; 7 uses
  %i.re = ptrtoint ptr %i.px to i64               ; 2 uses
  %i.rf = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.rg = sub i64 %i.re, %i.rf                    ; 2 uses
  %i.rh = ashr exact i64 %i.rg, 3                 ; 7 uses
  %i.ri = icmp sgt i64 %i.rh, 0
  br i1 %i.ri, label %.lr.ph.i.i.i.i.i19.i.i.preheader, label %_ZSt12__move_mergeIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEESI_SE_SE_SE_SE_SI_T1_.exit.i

.lr.ph.i.i.i.i.i19.i.i.preheader:                 ; preds = %_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i
  %min.iters.check207 = icmp ult i64 %i.rh, 4
  br i1 %min.iters.check207, label %.lr.ph.i.i.i.i.i19.i.i.preheader380, label %vector.memcheck200

vector.memcheck200:                               ; preds = %.lr.ph.i.i.i.i.i19.i.i.preheader
  %i.rj = add i64 %i.rg, %i.ra
  %i.rk = sub i64 %i.rj, %i.rb
  %scevgep201 = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.rk
  %bound0203 = icmp ult ptr %.08.lcssa.i.i.i.i.i.i.i33, %i.px
  %bound1204 = icmp ult ptr %.016.lcssa.i.i, %scevgep201
  %found.conflict205 = and i1 %bound0203, %bound1204
  br i1 %found.conflict205, label %.lr.ph.i.i.i.i.i19.i.i.preheader380, label %vector.ph208

vector.ph208:                                     ; preds = %vector.memcheck200
  %n.vec209 = and i64 %i.rh, 9223372036854775804  ; 3 uses
  %i.rl = and i64 %i.rh, 3
  %i.rm = shl i64 %n.vec209, 3                    ; 2 uses
  %i.rn = getelementptr i8, ptr %i.rd, i64 %i.rm  ; 2 uses
  %i.ro = getelementptr i8, ptr %.016.lcssa.i.i, i64 %i.rm
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next224, %vector.body210 ] ; 2 uses
  %i.rp = shl i64 %index211, 3                    ; 3 uses
  %i.rq = or disjoint i64 %i.rp, 16               ; 2 uses
  %next.gep212 = getelementptr i8, ptr %i.rd, i64 %i.rp
  %next.gep213 = getelementptr i8, ptr %i.rd, i64 %i.rq
  %next.gep214 = getelementptr i8, ptr %.016.lcssa.i.i, i64 %i.rp
  %next.gep215 = getelementptr i8, ptr %.016.lcssa.i.i, i64 %i.rq
  %wide.vec216 = load <4 x i32>, ptr %next.gep214, align 4, !tbaa !58, !alias.scope !1684
  %wide.vec219 = load <4 x i32>, ptr %next.gep215, align 4, !tbaa !58, !alias.scope !1684
  store <4 x i32> %wide.vec216, ptr %next.gep212, align 4, !tbaa !58, !alias.scope !1685, !noalias !1684
  store <4 x i32> %wide.vec219, ptr %next.gep213, align 4, !tbaa !58, !alias.scope !1685, !noalias !1684
  %index.next224 = add nuw i64 %index211, 4       ; 2 uses
  %i.rr = icmp eq i64 %index.next224, %n.vec209
  br i1 %i.rr, label %middle.block225, label %vector.body210, !llvm.loop !1660

middle.block225:                                  ; preds = %vector.body210
  %cmp.n226 = icmp eq i64 %i.rh, %n.vec209
  br i1 %cmp.n226, label %_ZSt12__move_mergeIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEESI_SE_SE_SE_SE_SI_T1_.exit.i, label %.lr.ph.i.i.i.i.i19.i.i.preheader380

.lr.ph.i.i.i.i.i19.i.i.preheader380:              ; preds = %vector.memcheck200, %.lr.ph.i.i.i.i.i19.i.i.preheader, %middle.block225
  %.012.i.i.i.i.i20.i.i.ph = phi i64 [ %i.rh, %vector.memcheck200 ], [ %i.rh, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.rl, %middle.block225 ]
  %.0811.i.i.i.i.i21.i.i.ph = phi ptr [ %i.rd, %vector.memcheck200 ], [ %i.rd, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.rn, %middle.block225 ]
  %.0910.i.i.i.i.i22.i.i.ph = phi ptr [ %.016.lcssa.i.i, %vector.memcheck200 ], [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.ro, %middle.block225 ]
  br label %.lr.ph.i.i.i.i.i19.i.i

.lr.ph.i.i.i.i.i19.i.i:                           ; preds = %.lr.ph.i.i.i.i.i19.i.i.preheader380, %.lr.ph.i.i.i.i.i19.i.i
  %.012.i.i.i.i.i20.i.i = phi i64 [ %i.ry, %.lr.ph.i.i.i.i.i19.i.i ], [ %.012.i.i.i.i.i20.i.i.ph, %.lr.ph.i.i.i.i.i19.i.i.preheader380 ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i = phi ptr [ %i.rx, %.lr.ph.i.i.i.i.i19.i.i ], [ %.0811.i.i.i.i.i21.i.i.ph, %.lr.ph.i.i.i.i.i19.i.i.preheader380 ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i = phi ptr [ %i.rw, %.lr.ph.i.i.i.i.i19.i.i ], [ %.0910.i.i.i.i.i22.i.i.ph, %.lr.ph.i.i.i.i.i19.i.i.preheader380 ] ; 3 uses
  %i.rs = load i32, ptr %.0910.i.i.i.i.i22.i.i, align 4, !tbaa !58
  store i32 %i.rs, ptr %.0811.i.i.i.i.i21.i.i, align 4, !tbaa !259
  %i.rt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 4
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !58
  %i.rv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 4
  store i32 %i.ru, ptr %i.rv, align 4, !tbaa !260
  %i.rw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 8
  %i.rx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 8 ; 2 uses
  %i.ry = add nsw i64 %.012.i.i.i.i.i20.i.i, -1
  %i.rz = icmp samesign ugt i64 %.012.i.i.i.i.i20.i.i, 1
  br i1 %i.rz, label %.lr.ph.i.i.i.i.i19.i.i, label %_ZSt12__move_mergeIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEESI_SE_SE_SE_SE_SI_T1_.exit.i, !llvm.loop !1661

_ZSt12__move_mergeIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEESI_SE_SE_SE_SE_SI_T1_.exit.i: ; preds = %.lr.ph.i.i.i.i.i19.i.i, %middle.block225, %_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi ptr [ %i.rd, %_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i ], [ %i.rn, %middle.block225 ], [ %i.rx, %.lr.ph.i.i.i.i.i19.i.i ]
  %3 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i.i to i64
  %i.sa = sub i64 %3, %i.ra
  %i.sb = getelementptr inbounds i8, ptr %i.rd, i64 %i.sa ; 2 uses
  %i.sc = sub i64 %i.lx, %i.re
  %i.sd = ashr exact i64 %i.sc, 3                 ; 2 uses
  %.not.i34 = icmp slt i64 %i.sd, %i.pv
  br i1 %.not.i34, label %._crit_edge.i35, label %bb.x, !llvm.loop !1662

._crit_edge.i35:                                  ; preds = %_ZSt12__move_mergeIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEESI_SE_SE_SE_SE_SI_T1_.exit.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS3_SN_E0_EEEvSE_SE_SI_T1_T2_.exit
  %.0.lcssa.i36 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS3_SN_E0_EEEvSE_SE_SI_T1_T2_.exit ], [ %i.px, %_ZSt12__move_mergeIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEESI_SE_SE_SE_SE_SI_T1_.exit.i ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS3_SN_E0_EEEvSE_SE_SI_T1_T2_.exit ], [ %i.sb, %_ZSt12__move_mergeIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEESI_SE_SE_SE_SE_SI_T1_.exit.i ] ; 2 uses
  %.lcssa64.i = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS3_SN_E0_EEEvSE_SE_SI_T1_T2_.exit ], [ %i.sd, %_ZSt12__move_mergeIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEESI_SE_SE_SE_SE_SI_T1_.exit.i ]
  %.sroa.speculated.i37 = tail call i64 @llvm.smin.i64(i64 %i.ly, i64 %.lcssa64.i) ; 2 uses
  %.idx59.i = shl nsw i64 %.sroa.speculated.i37, 3
  %i.se = getelementptr inbounds i8, ptr %.0.lcssa.i36, i64 %.idx59.i ; 6 uses
  %i.sf = icmp ne i64 %.sroa.speculated.i37, 0
  %i.sg = icmp ne ptr %i.se, %i.e
  %i.sh = and i1 %i.sf, %i.sg
  br i1 %i.sh, label %.lr.ph.i41.i, label %._crit_edge.i25.i

.lr.ph.i41.i:                                     ; preds = %._crit_edge.i35, %bb.ad
  %.029.i42.i = phi ptr [ %.1.i49.i, %bb.ad ], [ %.0.lcssa.i36, %._crit_edge.i35 ] ; 4 uses
  %.01628.i43.i = phi ptr [ %.117.i48.i, %bb.ad ], [ %i.se, %._crit_edge.i35 ] ; 4 uses
  %.sroa.0.027.i44.i = phi ptr [ %i.sm, %bb.ad ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i35 ] ; 3 uses
  %.016.val.i45.i = load i32, ptr %.01628.i43.i, align 4, !tbaa !259 ; 2 uses
  %.0.val.i46.i = load i32, ptr %.029.i42.i, align 4, !tbaa !259 ; 2 uses
  %i.si = icmp sgt i32 %.016.val.i45.i, %.0.val.i46.i
  br i1 %i.si, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i41.i
  %i.sj = getelementptr inbounds nuw i8, ptr %.01628.i43.i, i64 8
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i41.i
  %i.sk = getelementptr inbounds nuw i8, ptr %.029.i42.i, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0.val.i46.sink.i = phi i32 [ %.016.val.i45.i, %bb.ab ], [ %.0.val.i46.i, %bb.ac ]
  %.01628.pn.i47.i = phi ptr [ %.01628.i43.i, %bb.ab ], [ %.029.i42.i, %bb.ac ]
  %.117.i48.i = phi ptr [ %i.sj, %bb.ab ], [ %.01628.i43.i, %bb.ac ] ; 3 uses
  %.1.i49.i = phi ptr [ %.029.i42.i, %bb.ab ], [ %i.sk, %bb.ac ] ; 3 uses
  store i32 %.0.val.i46.sink.i, ptr %.sroa.0.027.i44.i, align 4, !tbaa !259
  %.sink.in.i50.i = getelementptr inbounds nuw i8, ptr %.01628.pn.i47.i, i64 4
  %.sink.i51.i = load i32, ptr %.sink.in.i50.i, align 4, !tbaa !58
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 4
  store i32 %.sink.i51.i, ptr %i.sl, align 4, !tbaa !260
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 8 ; 2 uses
  %i.sn = icmp ne ptr %.1.i49.i, %i.se
  %i.so = icmp ne ptr %.117.i48.i, %i.e
  %i.sp = select i1 %i.sn, i1 %i.so, i1 false
  br i1 %i.sp, label %.lr.ph.i41.i, label %._crit_edge.i25.i, !llvm.loop !1651

._crit_edge.i25.i:                                ; preds = %bb.ad, %._crit_edge.i35
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i35 ], [ %i.sm, %bb.ad ] ; 11 uses
  %.016.lcssa.i27.i = phi ptr [ %i.se, %._crit_edge.i35 ], [ %.117.i48.i, %bb.ad ] ; 7 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i36, %._crit_edge.i35 ], [ %.1.i49.i, %bb.ad ] ; 7 uses
  %i.sq = ptrtoint ptr %i.se to i64
  %i.sr = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.ss = sub i64 %i.sq, %i.sr                    ; 2 uses
  %i.st = ashr exact i64 %i.ss, 3                 ; 7 uses
  %i.su = icmp sgt i64 %i.st, 0
  br i1 %i.su, label %.lr.ph.i.i.i.i.i.i37.i.preheader, label %_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i

.lr.ph.i.i.i.i.i.i37.i.preheader:                 ; preds = %._crit_edge.i25.i
  %min.iters.check177 = icmp ult i64 %i.st, 4
  br i1 %min.iters.check177, label %.lr.ph.i.i.i.i.i.i37.i.preheader384, label %vector.memcheck170

vector.memcheck170:                               ; preds = %.lr.ph.i.i.i.i.i.i37.i.preheader
  %scevgep171 = getelementptr i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.ss
  %bound0173 = icmp ult ptr %.sroa.0.0.lcssa.i26.i, %i.se
  %bound1174 = icmp ult ptr %.0.lcssa.i28.i, %scevgep171
  %found.conflict175 = and i1 %bound0173, %bound1174
  br i1 %found.conflict175, label %.lr.ph.i.i.i.i.i.i37.i.preheader384, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck170
  %n.vec179 = and i64 %i.st, 9223372036854775804  ; 3 uses
  %i.sv = and i64 %i.st, 3
  %i.sw = shl i64 %n.vec179, 3                    ; 2 uses
  %i.sx = getelementptr i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.sw ; 2 uses
  %i.sy = getelementptr i8, ptr %.0.lcssa.i28.i, i64 %i.sw
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next194, %vector.body180 ] ; 2 uses
  %i.sz = shl i64 %index181, 3                    ; 3 uses
  %i.ta = or disjoint i64 %i.sz, 16               ; 2 uses
  %next.gep182 = getelementptr i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.sz
  %next.gep183 = getelementptr i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.ta
  %next.gep184 = getelementptr i8, ptr %.0.lcssa.i28.i, i64 %i.sz
  %next.gep185 = getelementptr i8, ptr %.0.lcssa.i28.i, i64 %i.ta
  %wide.vec186 = load <4 x i32>, ptr %next.gep184, align 4, !tbaa !58, !alias.scope !1686
  %wide.vec189 = load <4 x i32>, ptr %next.gep185, align 4, !tbaa !58, !alias.scope !1686
  store <4 x i32> %wide.vec186, ptr %next.gep182, align 4, !tbaa !58, !alias.scope !1687, !noalias !1686
  store <4 x i32> %wide.vec189, ptr %next.gep183, align 4, !tbaa !58, !alias.scope !1687, !noalias !1686
  %index.next194 = add nuw i64 %index181, 4       ; 2 uses
  %i.tb = icmp eq i64 %index.next194, %n.vec179
  br i1 %i.tb, label %middle.block195, label %vector.body180, !llvm.loop !1666

middle.block195:                                  ; preds = %vector.body180
  %cmp.n196 = icmp eq i64 %i.st, %n.vec179
  br i1 %cmp.n196, label %_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i, label %.lr.ph.i.i.i.i.i.i37.i.preheader384

.lr.ph.i.i.i.i.i.i37.i.preheader384:              ; preds = %vector.memcheck170, %.lr.ph.i.i.i.i.i.i37.i.preheader, %middle.block195
  %.012.i.i.i.i.i.i38.i.ph = phi i64 [ %i.st, %vector.memcheck170 ], [ %i.st, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.sv, %middle.block195 ]
  %.0811.i.i.i.i.i.i39.i.ph = phi ptr [ %.sroa.0.0.lcssa.i26.i, %vector.memcheck170 ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.sx, %middle.block195 ]
  %.0910.i.i.i.i.i.i40.i.ph = phi ptr [ %.0.lcssa.i28.i, %vector.memcheck170 ], [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.sy, %middle.block195 ]
  br label %.lr.ph.i.i.i.i.i.i37.i

.lr.ph.i.i.i.i.i.i37.i:                           ; preds = %.lr.ph.i.i.i.i.i.i37.i.preheader384, %.lr.ph.i.i.i.i.i.i37.i
  %.012.i.i.i.i.i.i38.i = phi i64 [ %i.ti, %.lr.ph.i.i.i.i.i.i37.i ], [ %.012.i.i.i.i.i.i38.i.ph, %.lr.ph.i.i.i.i.i.i37.i.preheader384 ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i = phi ptr [ %i.th, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0811.i.i.i.i.i.i39.i.ph, %.lr.ph.i.i.i.i.i.i37.i.preheader384 ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i = phi ptr [ %i.tg, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0910.i.i.i.i.i.i40.i.ph, %.lr.ph.i.i.i.i.i.i37.i.preheader384 ] ; 3 uses
  %i.tc = load i32, ptr %.0910.i.i.i.i.i.i40.i, align 4, !tbaa !58
  store i32 %i.tc, ptr %.0811.i.i.i.i.i.i39.i, align 4, !tbaa !259
  %i.td = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 4
  %i.te = load i32, ptr %i.td, align 4, !tbaa !58
  %i.tf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 4
  store i32 %i.te, ptr %i.tf, align 4, !tbaa !260
  %i.tg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 8 ; 2 uses
  %i.ti = add nsw i64 %.012.i.i.i.i.i.i38.i, -1
  %i.tj = icmp samesign ugt i64 %.012.i.i.i.i.i.i38.i, 1
  br i1 %i.tj, label %.lr.ph.i.i.i.i.i.i37.i, label %_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i, !llvm.loop !1667

_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i37.i, %middle.block195, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %i.sx, %middle.block195 ], [ %i.th, %.lr.ph.i.i.i.i.i.i37.i ] ; 2 uses
  %i.tk = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.tl = sub i64 %i.lx, %i.tk                    ; 2 uses
  %i.tm = ashr exact i64 %i.tl, 3                 ; 7 uses
  %i.tn = icmp sgt i64 %i.tm, 0
  br i1 %i.tn, label %.lr.ph.i.i.i.i.i19.i32.preheader.i, label %_ZSt17__merge_sort_loopIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEEvSE_SE_SI_T1_T2_.exit

.lr.ph.i.i.i.i.i19.i32.preheader.i:               ; preds = %_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i
  %i.to = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64 ; 2 uses
  %i.tp = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64 ; 2 uses
  %i.tq = sub i64 %i.to, %i.tp
  %i.tr = getelementptr i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.tq ; 5 uses
  %min.iters.check = icmp ult i64 %i.tm, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i19.i32.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i
  %i.ts = add i64 %i.tl, %i.to
  %i.tt = sub i64 %i.ts, %i.tp
  %scevgep = getelementptr i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.tt
  %bound0 = icmp ult ptr %.08.lcssa.i.i.i.i.i.i30.i, %i.e
  %bound1 = icmp ult ptr %.016.lcssa.i27.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i19.i32.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.tm, 9223372036854775804     ; 3 uses
  %i.tu = and i64 %i.tm, 3
  %i.tv = shl i64 %n.vec, 3                       ; 2 uses
  %i.tw = getelementptr i8, ptr %i.tr, i64 %i.tv
  %i.tx = getelementptr i8, ptr %.016.lcssa.i27.i, i64 %i.tv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ty = shl i64 %index, 3                       ; 3 uses
  %i.tz = or disjoint i64 %i.ty, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.tr, i64 %i.ty
  %next.gep160 = getelementptr i8, ptr %i.tr, i64 %i.tz
  %next.gep161 = getelementptr i8, ptr %.016.lcssa.i27.i, i64 %i.ty
  %next.gep162 = getelementptr i8, ptr %.016.lcssa.i27.i, i64 %i.tz
  %wide.vec = load <4 x i32>, ptr %next.gep161, align 4, !tbaa !58, !alias.scope !1688
  %wide.vec164 = load <4 x i32>, ptr %next.gep162, align 4, !tbaa !58, !alias.scope !1688
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !58, !alias.scope !1689, !noalias !1688
  store <4 x i32> %wide.vec164, ptr %next.gep160, align 4, !tbaa !58, !alias.scope !1689, !noalias !1688
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ua = icmp eq i64 %index.next, %n.vec
  br i1 %i.ua, label %middle.block, label %vector.body, !llvm.loop !1671

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.tm, %n.vec
  br i1 %cmp.n, label %_ZSt17__merge_sort_loopIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEEvSE_SE_SI_T1_T2_.exit, label %.lr.ph.i.i.i.i.i19.i32.i.preheader

.lr.ph.i.i.i.i.i19.i32.i.preheader:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i19.i32.preheader.i, %middle.block
  %.012.i.i.i.i.i20.i33.i.ph = phi i64 [ %i.tm, %vector.memcheck ], [ %i.tm, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.tu, %middle.block ]
  %.0811.i.i.i.i.i21.i34.i.ph = phi ptr [ %i.tr, %vector.memcheck ], [ %i.tr, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.tw, %middle.block ]
  %.0910.i.i.i.i.i22.i35.i.ph = phi ptr [ %.016.lcssa.i27.i, %vector.memcheck ], [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.tx, %middle.block ]
  br label %.lr.ph.i.i.i.i.i19.i32.i

.lr.ph.i.i.i.i.i19.i32.i:                         ; preds = %.lr.ph.i.i.i.i.i19.i32.i.preheader, %.lr.ph.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i20.i33.i = phi i64 [ %i.uh, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.012.i.i.i.i.i20.i33.i.ph, %.lr.ph.i.i.i.i.i19.i32.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i = phi ptr [ %i.ug, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0811.i.i.i.i.i21.i34.i.ph, %.lr.ph.i.i.i.i.i19.i32.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i = phi ptr [ %i.uf, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0910.i.i.i.i.i22.i35.i.ph, %.lr.ph.i.i.i.i.i19.i32.i.preheader ] ; 3 uses
  %i.ub = load i32, ptr %.0910.i.i.i.i.i22.i35.i, align 4, !tbaa !58
  store i32 %i.ub, ptr %.0811.i.i.i.i.i21.i34.i, align 4, !tbaa !259
  %i.uc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 4
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !58
  %i.ue = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 4
  store i32 %i.ud, ptr %i.ue, align 4, !tbaa !260
  %i.uf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 8
  %i.ug = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 8
  %i.uh = add nsw i64 %.012.i.i.i.i.i20.i33.i, -1
  %i.ui = icmp samesign ugt i64 %.012.i.i.i.i.i20.i33.i, 1
  br i1 %i.ui, label %.lr.ph.i.i.i.i.i19.i32.i, label %_ZSt17__merge_sort_loopIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEEvSE_SE_SI_T1_T2_.exit, !llvm.loop !1672

_ZSt17__merge_sort_loopIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEEvSE_SE_SI_T1_T2_.exit: ; preds = %.lr.ph.i.i.i.i.i19.i32.i, %middle.block, %_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i
  %i.uj = icmp slt i64 %i.pv, %i.d
end_hunk_0
