Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LVReader?download=true
inline.NumInlined: 3906
inline.NumDeleted: 2188
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS4_8LVReader24checkIntegrityScopesTreeES8_E3$_2EEEvT_SK_T0_T1_":bb.a

._crit_edge.i26:                                  ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS4_8LVReader24checkIntegrityScopesTreeES8_E3$_2EEET0_T_SL_SL_SL_SK_T1_.exit.i", %bb.j
  %.sroa.056.0.lcssa.i = phi ptr [ %0, %bb.j ], [ %i.cp, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS4_8LVReader24checkIntegrityScopesTreeES8_E3$_2EEET0_T_SL_SL_SL_SK_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.j ], [ %.08.lcssa.i.i.i.i.i9.i.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS4_8LVReader24checkIntegrityScopesTreeES8_E3$_2EEET0_T_SL_SL_SL_SK_T1_.exit.i" ] ; 2 uses
  %.lcssa71.i = phi i64 [ %i.d, %bb.j ], [ %i.ed, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS4_8LVReader24checkIntegrityScopesTreeES8_E3$_2EEET0_T_SL_SL_SL_SK_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.063, i64 %.lcssa71.i) ; 2 uses
  %.idx66.i = mul nsw i64 %.sroa.speculated.i, 24
  %i.ee = getelementptr inbounds i8, ptr %.sroa.056.0.lcssa.i, i64 %.idx66.i ; 5 uses
  %i.ef = icmp ne i64 %.sroa.speculated.i, 0
  %i.eg = icmp ne ptr %i.ee, %1
  %or.cond24.i16.i = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %or.cond24.i16.i, label %.lr.ph.i34.i, label %.critedge.i17.i

.lr.ph.i34.i:                                     ; preds = %._crit_edge.i26, %bb.q
  %.027.i35.i = phi ptr [ %i.eq, %bb.q ], [ %.0.lcssa.i, %._crit_edge.i26 ] ; 4 uses
  %.sroa.020.026.i36.i = phi ptr [ %.sroa.020.1.i45.i, %bb.q ], [ %.sroa.056.0.lcssa.i, %._crit_edge.i26 ] ; 4 uses
  %.sroa.016.025.i37.i = phi ptr [ %.sroa.016.1.i44.i, %bb.q ], [ %i.ee, %._crit_edge.i26 ] ; 4 uses
  %i.eh = getelementptr i8, ptr %.sroa.016.025.i37.i, i64 16
  %.val.i.i38.i = load ptr, ptr %i.eh, align 8, !tbaa !57 ; 2 uses
  %i.ei = getelementptr i8, ptr %.sroa.020.026.i36.i, i64 16
  %.val1.i.i39.i = load ptr, ptr %i.ei, align 8, !tbaa !57 ; 2 uses
  %i.ej = getelementptr i8, ptr %.val.i.i38.i, i64 28
  %.val.val.i.i40.i = load i32, ptr %i.ej, align 4, !tbaa !82
  %i.ek = getelementptr i8, ptr %.val1.i.i39.i, i64 28
  %.val1.val.i.i41.i = load i32, ptr %i.ek, align 4, !tbaa !82
  %i.el = icmp ult i32 %.val.val.i.i40.i, %.val1.val.i.i41.i
  %i.em = getelementptr inbounds nuw i8, ptr %.027.i35.i, i64 8
  br i1 %i.el, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i34.i
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37.i, i64 24
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.i34.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36.i, i64 24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.val1.i.sink.i42.i = phi ptr [ %.val.i.i38.i, %bb.o ], [ %.val1.i.i39.i, %bb.p ]
  %.sink.in.i43.i = phi ptr [ %.sroa.016.025.i37.i, %bb.o ], [ %.sroa.020.026.i36.i, %bb.p ] ; 2 uses
  %.sroa.016.1.i44.i = phi ptr [ %i.en, %bb.o ], [ %.sroa.016.025.i37.i, %bb.p ] ; 3 uses
  %.sroa.020.1.i45.i = phi ptr [ %.sroa.020.026.i36.i, %bb.o ], [ %i.eo, %bb.p ] ; 3 uses
  %.sink85.in.i = getelementptr inbounds nuw i8, ptr %.sink.in.i43.i, i64 8
  %.sink85.i = load ptr, ptr %.sink85.in.i, align 8, !tbaa !37
  store ptr %.sink85.i, ptr %i.em, align 8, !tbaa !37
  %.sink.i46.i = load ptr, ptr %.sink.in.i43.i, align 8, !tbaa !37
  %i.ep = getelementptr inbounds nuw i8, ptr %.027.i35.i, i64 16
  store ptr %.val1.i.sink.i42.i, ptr %i.ep, align 8, !tbaa !57
  store ptr %.sink.i46.i, ptr %.027.i35.i, align 8, !tbaa !37
  %i.eq = getelementptr inbounds nuw i8, ptr %.027.i35.i, i64 24 ; 2 uses
  %i.er = icmp ne ptr %.sroa.020.1.i45.i, %i.ee
  %i.es = icmp ne ptr %.sroa.016.1.i44.i, %1
  %or.cond.i47.i = select i1 %i.er, i1 %i.es, i1 false
  br i1 %or.cond.i47.i, label %.lr.ph.i34.i, label %.critedge.i17.i, !llvm.loop !774

.critedge.i17.i:                                  ; preds = %bb.q, %._crit_edge.i26
  %.sroa.016.0.lcssa.i18.i = phi ptr [ %i.ee, %._crit_edge.i26 ], [ %.sroa.016.1.i44.i, %bb.q ] ; 2 uses
  %.sroa.020.0.lcssa.i19.i = phi ptr [ %.sroa.056.0.lcssa.i, %._crit_edge.i26 ], [ %.sroa.020.1.i45.i, %bb.q ] ; 2 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i26 ], [ %i.eq, %bb.q ] ; 2 uses
  %i.et = ptrtoint ptr %i.ee to i64
  %i.eu = ptrtoint ptr %.sroa.020.0.lcssa.i19.i to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, 0
  br i1 %i.ew, label %.lr.ph.preheader.i.i.i.i.i.i29.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i21.i

.lr.ph.preheader.i.i.i.i.i.i29.i:                 ; preds = %.critedge.i17.i
  %i.ex = udiv exact i64 %i.ev, 24
  br label %.lr.ph.i.i.i.i.i.i30.i

.lr.ph.i.i.i.i.i.i30.i:                           ; preds = %.lr.ph.i.i.i.i.i.i30.i, %.lr.ph.preheader.i.i.i.i.i.i29.i
  %.012.i.i.i.i.i.i31.i = phi i64 [ %i.fe, %.lr.ph.i.i.i.i.i.i30.i ], [ %i.ex, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 2 uses
  %.0811.i.i.i.i.i.i32.i = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i.i30.i ], [ %.0.lcssa.i20.i, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 3 uses
  %.0910.i.i.i.i.i.i33.i = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i30.i ], [ %.sroa.020.0.lcssa.i19.i, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33.i, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32.i, i64 8
  %i.fa = load <2 x ptr>, ptr %i.ey, align 8, !tbaa !50
  store <2 x ptr> %i.fa, ptr %i.ez, align 8, !tbaa !50
  %i.fb = load ptr, ptr %.0910.i.i.i.i.i.i33.i, align 8, !tbaa !37
  store ptr %i.fb, ptr %.0811.i.i.i.i.i.i32.i, align 8, !tbaa !37
  %i.fc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33.i, i64 24
  %i.fd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32.i, i64 24 ; 2 uses
  %i.fe = add nsw i64 %.012.i.i.i.i.i.i31.i, -1
  %i.ff = icmp samesign ugt i64 %.012.i.i.i.i.i.i31.i, 1
  br i1 %i.ff, label %.lr.ph.i.i.i.i.i.i30.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i21.i, !llvm.loop !9

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i21.i: ; preds = %.lr.ph.i.i.i.i.i.i30.i, %.critedge.i17.i
  %.08.lcssa.i.i.i.i.i.i22.i = phi ptr [ %.0.lcssa.i20.i, %.critedge.i17.i ], [ %i.fd, %.lr.ph.i.i.i.i.i.i30.i ]
  %i.fg = ptrtoint ptr %.sroa.016.0.lcssa.i18.i to i64
  %i.fh = sub i64 %i.a, %i.fg                     ; 2 uses
  %i.fi = icmp sgt i64 %i.fh, 0
  br i1 %i.fi, label %.lr.ph.preheader.i.i.i.i.i10.i24.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS4_8LVReader24checkIntegrityScopesTreeES8_E3$_2EEEvT_SK_T0_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i10.i24.i:               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i21.i
  %i.fj = udiv exact i64 %i.fh, 24
  br label %.lr.ph.i.i.i.i.i11.i25.i

.lr.ph.i.i.i.i.i11.i25.i:                         ; preds = %.lr.ph.i.i.i.i.i11.i25.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i12.i26.i = phi i64 [ %i.fq, %.lr.ph.i.i.i.i.i11.i25.i ], [ %i.fj, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 2 uses
  %.0811.i.i.i.i.i13.i27.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i11.i25.i ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 3 uses
  %.0910.i.i.i.i.i14.i28.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i11.i25.i ], [ %.sroa.016.0.lcssa.i18.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28.i, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27.i, i64 8
  %i.fm = load <2 x ptr>, ptr %i.fk, align 8, !tbaa !50
  store <2 x ptr> %i.fm, ptr %i.fl, align 8, !tbaa !50
  %i.fn = load ptr, ptr %.0910.i.i.i.i.i14.i28.i, align 8, !tbaa !37
  store ptr %i.fn, ptr %.0811.i.i.i.i.i13.i27.i, align 8, !tbaa !37
  %i.fo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28.i, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27.i, i64 24
  %i.fq = add nsw i64 %.012.i.i.i.i.i12.i26.i, -1
  %i.fr = icmp samesign ugt i64 %.012.i.i.i.i.i12.i26.i, 1
  br i1 %i.fr, label %.lr.ph.i.i.i.i.i11.i25.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS4_8LVReader24checkIntegrityScopesTreeES8_E3$_2EEEvT_SK_T0_T1_T2_.exit", !llvm.loop !9

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS4_8LVReader24checkIntegrityScopesTreeES8_E3$_2EEEvT_SK_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i11.i25.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i21.i
  %i.fs = shl nsw i64 %.063, 2                    ; 4 uses
  %.not70.i = icmp slt i64 %i.cm, %i.fs
  br i1 %.not70.i, label %._crit_edge.i38, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS4_8LVReader24checkIntegrityScopesTreeES8_E3$_2EEEvT_SK_T0_T1_T2_.exit"
  %.idx.i30 = mul nsw i64 %.063, 48
  %.idx61.i = mul nsw i64 %.063, 96
  br label %bb.r

bb.r:                                             ; preds = %"_ZSt12__move_mergeIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS2_8LVReader24checkIntegrityScopesTreeES6_E3$_2EEET0_T_SL_SL_SL_SK_T1_.exit.i", %.lr.ph.i29
  %.sroa.022.072.i = phi ptr [ %0, %.lr.ph.i29 ], [ %i.hn, %"_ZSt12__move_mergeIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS2_8LVReader24checkIntegrityScopesTreeES6_E3$_2EEET0_T_SL_SL_SL_SK_T1_.exit.i" ]
  %.071.i = phi ptr [ %2, %.lr.ph.i29 ], [ %i.fu, %"_ZSt12__move_mergeIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS2_8LVReader24checkIntegrityScopesTreeES6_E3$_2EEET0_T_SL_SL_SL_SK_T1_.exit.i" ] ; 3 uses
  %i.ft = getelementptr inbounds i8, ptr %.071.i, i64 %.idx.i30 ; 3 uses
  %i.fu = getelementptr inbounds i8, ptr %.071.i, i64 %.idx61.i ; 4 uses
  br label %.lr.ph.i.i31

.lr.ph.i.i31:                                     ; preds = %bb.r, %bb.u
  %.030.i.i = phi ptr [ %.1.i.i, %bb.u ], [ %.071.i, %bb.r ] ; 4 uses
  %.01629.i.i = phi ptr [ %.117.i.i, %bb.u ], [ %i.ft, %bb.r ] ; 4 uses
  %.sroa.0.028.i.i = phi ptr [ %i.ge, %bb.u ], [ %.sroa.022.072.i, %bb.r ] ; 4 uses
  %i.fv = getelementptr i8, ptr %.01629.i.i, i64 16
  %.016.val.i.i = load ptr, ptr %i.fv, align 8, !tbaa !57 ; 2 uses
  %i.fw = getelementptr i8, ptr %.030.i.i, i64 16
  %.0.val.i.i = load ptr, ptr %i.fw, align 8, !tbaa !57 ; 2 uses
  %i.fx = getelementptr i8, ptr %.016.val.i.i, i64 28
  %.016.val.val.i.i = load i32, ptr %i.fx, align 4, !tbaa !82
  %i.fy = getelementptr i8, ptr %.0.val.i.i, i64 28
  %.0.val.val.i.i = load i32, ptr %i.fy, align 4, !tbaa !82
  %i.fz = icmp ult i32 %.016.val.val.i.i, %.0.val.val.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i, i64 8
  br i1 %i.fz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.i31
  %i.gb = getelementptr inbounds nuw i8, ptr %.01629.i.i, i64 24
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i31
  %i.gc = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.val.sink.i.i = phi ptr [ %.016.val.i.i, %bb.s ], [ %.0.val.i.i, %bb.t ]
  %.sink.in.i.i32 = phi ptr [ %.01629.i.i, %bb.s ], [ %.030.i.i, %bb.t ] ; 2 uses
  %.117.i.i = phi ptr [ %i.gb, %bb.s ], [ %.01629.i.i, %bb.t ] ; 4 uses
  %.1.i.i = phi ptr [ %.030.i.i, %bb.s ], [ %i.gc, %bb.t ] ; 4 uses
  %.sink.in.i33 = getelementptr inbounds nuw i8, ptr %.sink.in.i.i32, i64 8
  %.sink.i34 = load ptr, ptr %.sink.in.i33, align 8, !tbaa !37
  store ptr %.sink.i34, ptr %i.ga, align 8, !tbaa !37
  %.sink.i.i35 = load ptr, ptr %.sink.in.i.i32, align 8, !tbaa !37
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i, i64 16
  store ptr %.0.val.sink.i.i, ptr %i.gd, align 8, !tbaa !57
  store ptr %.sink.i.i35, ptr %.sroa.0.028.i.i, align 8, !tbaa !37
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i, i64 24 ; 5 uses
  %i.gf = icmp ne ptr %.1.i.i, %i.ft
  %i.gg = icmp ne ptr %.117.i.i, %i.fu
  %i.gh = select i1 %i.gf, i1 %i.gg, i1 false
  br i1 %i.gh, label %.lr.ph.i.i31, label %._crit_edge.i.i, !llvm.loop !776

._crit_edge.i.i:                                  ; preds = %bb.u
  %i.gi = ptrtoint ptr %i.ft to i64
  %i.gj = ptrtoint ptr %.1.i.i to i64
  %i.gk = sub i64 %i.gi, %i.gj                    ; 2 uses
  %i.gl = icmp sgt i64 %i.gk, 0
  br i1 %i.gl, label %.lr.ph.preheader.i.i.i.i.i.i.i41, label %_ZSt4moveIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i41:                 ; preds = %._crit_edge.i.i
  %i.gm = udiv exact i64 %i.gk, 24
  br label %.lr.ph.i.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i.i42:                           ; preds = %.lr.ph.i.i.i.i.i.i.i42, %.lr.ph.preheader.i.i.i.i.i.i.i41
  %.012.i.i.i.i.i.i.i43 = phi i64 [ %i.gt, %.lr.ph.i.i.i.i.i.i.i42 ], [ %i.gm, %.lr.ph.preheader.i.i.i.i.i.i.i41 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i44 = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i.i.i42 ], [ %i.ge, %.lr.ph.preheader.i.i.i.i.i.i.i41 ] ; 3 uses
  %.0910.i.i.i.i.i.i.i45 = phi ptr [ %i.gr, %.lr.ph.i.i.i.i.i.i.i42 ], [ %.1.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i41 ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i45, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i44, i64 8
  %i.gp = load <2 x ptr>, ptr %i.gn, align 8, !tbaa !50
  store <2 x ptr> %i.gp, ptr %i.go, align 8, !tbaa !50
  %i.gq = load ptr, ptr %.0910.i.i.i.i.i.i.i45, align 8, !tbaa !37
  store ptr %i.gq, ptr %.0811.i.i.i.i.i.i.i44, align 8, !tbaa !37
  %i.gr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i45, i64 24
  %i.gs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i44, i64 24 ; 2 uses
  %i.gt = add nsw i64 %.012.i.i.i.i.i.i.i43, -1
  %i.gu = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i43, 1
  br i1 %i.gu, label %.lr.ph.i.i.i.i.i.i.i42, label %_ZSt4moveIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i, !llvm.loop !9

_ZSt4moveIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i42, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i36 = phi ptr [ %i.ge, %._crit_edge.i.i ], [ %i.gs, %.lr.ph.i.i.i.i.i.i.i42 ]
  %i.gv = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i36 to i64 ; 2 uses
  %i.gw = ptrtoint ptr %i.ge to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = getelementptr inbounds i8, ptr %i.ge, i64 %i.gx ; 3 uses
  %i.gz = ptrtoint ptr %i.fu to i64               ; 2 uses
  %i.ha = ptrtoint ptr %.117.i.i to i64
  %i.hb = sub i64 %i.gz, %i.ha                    ; 2 uses
  %i.hc = icmp sgt i64 %i.hb, 0
  br i1 %i.hc, label %.lr.ph.preheader.i.i.i.i.i19.i.i, label %"_ZSt12__move_mergeIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS2_8LVReader24checkIntegrityScopesTreeES6_E3$_2EEET0_T_SL_SL_SL_SK_T1_.exit.i"

.lr.ph.preheader.i.i.i.i.i19.i.i:                 ; preds = %_ZSt4moveIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i
  %i.hd = udiv exact i64 %i.hb, 24
  br label %.lr.ph.i.i.i.i.i20.i.i

.lr.ph.i.i.i.i.i20.i.i:                           ; preds = %.lr.ph.i.i.i.i.i20.i.i, %.lr.ph.preheader.i.i.i.i.i19.i.i
  %.012.i.i.i.i.i21.i.i = phi i64 [ %i.hk, %.lr.ph.i.i.i.i.i20.i.i ], [ %i.hd, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i.i = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i20.i.i ], [ %i.gy, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i.i = phi ptr [ %i.hi, %.lr.ph.i.i.i.i.i20.i.i ], [ %.117.i.i, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 8
  %i.hg = load <2 x ptr>, ptr %i.he, align 8, !tbaa !50
  store <2 x ptr> %i.hg, ptr %i.hf, align 8, !tbaa !50
  %i.hh = load ptr, ptr %.0910.i.i.i.i.i23.i.i, align 8, !tbaa !37
  store ptr %i.hh, ptr %.0811.i.i.i.i.i22.i.i, align 8, !tbaa !37
  %i.hi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 24
  %i.hj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 24 ; 2 uses
  %i.hk = add nsw i64 %.012.i.i.i.i.i21.i.i, -1
  %i.hl = icmp samesign ugt i64 %.012.i.i.i.i.i21.i.i, 1
  br i1 %i.hl, label %.lr.ph.i.i.i.i.i20.i.i, label %"_ZSt12__move_mergeIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS2_8LVReader24checkIntegrityScopesTreeES6_E3$_2EEET0_T_SL_SL_SL_SK_T1_.exit.i", !llvm.loop !9

"_ZSt12__move_mergeIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS2_8LVReader24checkIntegrityScopesTreeES6_E3$_2EEET0_T_SL_SL_SL_SK_T1_.exit.i": ; preds = %.lr.ph.i.i.i.i.i20.i.i, %_ZSt4moveIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi ptr [ %i.gy, %_ZSt4moveIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i ], [ %i.hj, %.lr.ph.i.i.i.i.i20.i.i ]
  %3 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i.i to i64
  %i.hm = sub i64 %3, %i.gv
  %i.hn = getelementptr inbounds i8, ptr %i.gy, i64 %i.hm ; 2 uses
  %i.ho = sub i64 %i.cl, %i.gz
  %i.hp = sdiv exact i64 %i.ho, 24                ; 2 uses
  %.not.i37 = icmp slt i64 %i.hp, %i.fs
  br i1 %.not.i37, label %._crit_edge.i38, label %bb.r, !llvm.loop !777

._crit_edge.i38:                                  ; preds = %"_ZSt12__move_mergeIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS2_8LVReader24checkIntegrityScopesTreeES6_E3$_2EEET0_T_SL_SL_SL_SK_T1_.exit.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS4_8LVReader24checkIntegrityScopesTreeES8_E3$_2EEEvT_SK_T0_T1_T2_.exit"
  %.0.lcssa.i39 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS4_8LVReader24checkIntegrityScopesTreeES8_E3$_2EEEvT_SK_T0_T1_T2_.exit" ], [ %i.fu, %"_ZSt12__move_mergeIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS2_8LVReader24checkIntegrityScopesTreeES6_E3$_2EEET0_T_SL_SL_SL_SK_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS4_8LVReader24checkIntegrityScopesTreeES8_E3$_2EEEvT_SK_T0_T1_T2_.exit" ], [ %i.hn, %"_ZSt12__move_mergeIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS2_8LVReader24checkIntegrityScopesTreeES6_E3$_2EEET0_T_SL_SL_SL_SK_T1_.exit.i" ] ; 2 uses
  %.lcssa68.i = phi i64 [ %i.cm, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS4_8LVReader24checkIntegrityScopesTreeES8_E3$_2EEEvT_SK_T0_T1_T2_.exit" ], [ %i.hp, %"_ZSt12__move_mergeIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS2_8LVReader24checkIntegrityScopesTreeES6_E3$_2EEET0_T_SL_SL_SL_SK_T1_.exit.i" ]
  %.sroa.speculated.i40 = tail call i64 @llvm.smin.i64(i64 %i.cn, i64 %.lcssa68.i) ; 2 uses
  %.idx63.i = mul nsw i64 %.sroa.speculated.i40, 24
  %i.hq = getelementptr inbounds i8, ptr %.0.lcssa.i39, i64 %.idx63.i ; 5 uses
  %i.hr = icmp ne i64 %.sroa.speculated.i40, 0
  %i.hs = icmp ne ptr %i.hq, %i.e
  %i.ht = and i1 %i.hr, %i.hs
  br i1 %i.ht, label %.lr.ph.i43.i, label %._crit_edge.i25.i

.lr.ph.i43.i:                                     ; preds = %._crit_edge.i38, %bb.x
  %.030.i44.i = phi ptr [ %.1.i54.i, %bb.x ], [ %.0.lcssa.i39, %._crit_edge.i38 ] ; 4 uses
  %.01629.i45.i = phi ptr [ %.117.i53.i, %bb.x ], [ %i.hq, %._crit_edge.i38 ] ; 4 uses
  %.sroa.0.028.i46.i = phi ptr [ %i.id, %bb.x ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i38 ] ; 4 uses
  %i.hu = getelementptr i8, ptr %.01629.i45.i, i64 16
  %.016.val.i47.i = load ptr, ptr %i.hu, align 8, !tbaa !57 ; 2 uses
  %i.hv = getelementptr i8, ptr %.030.i44.i, i64 16
  %.0.val.i48.i = load ptr, ptr %i.hv, align 8, !tbaa !57 ; 2 uses
  %i.hw = getelementptr i8, ptr %.016.val.i47.i, i64 28
  %.016.val.val.i49.i = load i32, ptr %i.hw, align 4, !tbaa !82
  %i.hx = getelementptr i8, ptr %.0.val.i48.i, i64 28
  %.0.val.val.i50.i = load i32, ptr %i.hx, align 4, !tbaa !82
  %i.hy = icmp ult i32 %.016.val.val.i49.i, %.0.val.val.i50.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46.i, i64 8
  br i1 %i.hy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i43.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.01629.i45.i, i64 24
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph.i43.i
  %i.ib = getelementptr inbounds nuw i8, ptr %.030.i44.i, i64 24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0.val.sink.i51.i = phi ptr [ %.016.val.i47.i, %bb.v ], [ %.0.val.i48.i, %bb.w ]
  %.sink.in.i52.i = phi ptr [ %.01629.i45.i, %bb.v ], [ %.030.i44.i, %bb.w ] ; 2 uses
  %.117.i53.i = phi ptr [ %i.ia, %bb.v ], [ %.01629.i45.i, %bb.w ] ; 3 uses
  %.1.i54.i = phi ptr [ %.030.i44.i, %bb.v ], [ %i.ib, %bb.w ] ; 3 uses
  %.sink83.in.i = getelementptr inbounds nuw i8, ptr %.sink.in.i52.i, i64 8
  %.sink83.i = load ptr, ptr %.sink83.in.i, align 8, !tbaa !37
  store ptr %.sink83.i, ptr %i.hz, align 8, !tbaa !37
  %.sink.i55.i = load ptr, ptr %.sink.in.i52.i, align 8, !tbaa !37
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46.i, i64 16
  store ptr %.0.val.sink.i51.i, ptr %i.ic, align 8, !tbaa !57
  store ptr %.sink.i55.i, ptr %.sroa.0.028.i46.i, align 8, !tbaa !37
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46.i, i64 24 ; 2 uses
  %i.ie = icmp ne ptr %.1.i54.i, %i.hq
  %i.if = icmp ne ptr %.117.i53.i, %i.e
  %i.ig = select i1 %i.ie, i1 %i.if, i1 false
  br i1 %i.ig, label %.lr.ph.i43.i, label %._crit_edge.i25.i, !llvm.loop !776

._crit_edge.i25.i:                                ; preds = %bb.x, %._crit_edge.i38
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i38 ], [ %i.id, %bb.x ] ; 4 uses
  %.016.lcssa.i27.i = phi ptr [ %i.hq, %._crit_edge.i38 ], [ %.117.i53.i, %bb.x ] ; 2 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i39, %._crit_edge.i38 ], [ %.1.i54.i, %bb.x ] ; 2 uses
  %i.ih = ptrtoint ptr %i.hq to i64
  %i.ii = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.ij = sub i64 %i.ih, %i.ii                    ; 2 uses
  %i.ik = icmp sgt i64 %i.ij, 0
  br i1 %i.ik, label %.lr.ph.preheader.i.i.i.i.i.i38.i, label %_ZSt4moveIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i29.i

.lr.ph.preheader.i.i.i.i.i.i38.i:                 ; preds = %._crit_edge.i25.i
  %i.il = udiv exact i64 %i.ij, 24
  br label %.lr.ph.i.i.i.i.i.i39.i

.lr.ph.i.i.i.i.i.i39.i:                           ; preds = %.lr.ph.i.i.i.i.i.i39.i, %.lr.ph.preheader.i.i.i.i.i.i38.i
  %.012.i.i.i.i.i.i40.i = phi i64 [ %i.is, %.lr.ph.i.i.i.i.i.i39.i ], [ %i.il, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 2 uses
  %.0811.i.i.i.i.i.i41.i = phi ptr [ %i.ir, %.lr.ph.i.i.i.i.i.i39.i ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 3 uses
  %.0910.i.i.i.i.i.i42.i = phi ptr [ %i.iq, %.lr.ph.i.i.i.i.i.i39.i ], [ %.0.lcssa.i28.i, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42.i, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41.i, i64 8
  %i.io = load <2 x ptr>, ptr %i.im, align 8, !tbaa !50
  store <2 x ptr> %i.io, ptr %i.in, align 8, !tbaa !50
  %i.ip = load ptr, ptr %.0910.i.i.i.i.i.i42.i, align 8, !tbaa !37
  store ptr %i.ip, ptr %.0811.i.i.i.i.i.i41.i, align 8, !tbaa !37
  %i.iq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42.i, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41.i, i64 24 ; 2 uses
  %i.is = add nsw i64 %.012.i.i.i.i.i.i40.i, -1
  %i.it = icmp samesign ugt i64 %.012.i.i.i.i.i.i40.i, 1
  br i1 %i.it, label %.lr.ph.i.i.i.i.i.i39.i, label %_ZSt4moveIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i29.i, !llvm.loop !9

_ZSt4moveIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i39.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %i.ir, %.lr.ph.i.i.i.i.i.i39.i ]
  %i.iu = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.iv = sub i64 %i.cl, %i.iu                    ; 2 uses
  %i.iw = icmp sgt i64 %i.iv, 0
  br i1 %i.iw, label %.lr.ph.preheader.i.i.i.i.i19.i32.i, label %"_ZSt17__merge_sort_loopIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIZNS2_8LVReader24checkIntegrityScopesTreeES6_E3$_2EEEvT_SK_T0_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i19.i32.i:               ; preds = %_ZSt4moveIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i29.i
  %i.ix = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.iy = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.iz
  %i.jb = udiv exact i64 %i.iv, 24
  br label %.lr.ph.i.i.i.i.i20.i33.i

.lr.ph.i.i.i.i.i20.i33.i:                         ; preds = %.lr.ph.i.i.i.i.i20.i33.i, %.lr.ph.preheader.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i21.i34.i = phi i64 [ %i.ji, %.lr.ph.i.i.i.i.i20.i33.i ], [ %i.jb, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i35.i = phi ptr [ %i.jh, %.lr.ph.i.i.i.i.i20.i33.i ], [ %i.ja, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i36.i = phi ptr [ %i.jg, %.lr.ph.i.i.i.i.i20.i33.i ], [ %.016.lcssa.i27.i, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36.i, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35.i, i64 8
  %i.je = load <2 x ptr>, ptr %i.jc, align 8, !tbaa !50
  store <2 x ptr> %i.je, ptr %i.jd, align 8, !tbaa !50
  %i.jf = load ptr, ptr %.0910.i.i.i.i.i23.i36.i, align 8, !tbaa !37
  store ptr %i.jf, ptr %.0811.i.i.i.i.i22.i35.i, align 8, !tbaa !37
  %i.jg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36.i, i64 24
  %i.jh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35.i, i64 24
  %i.ji = add nsw i64 %.012.i.i.i.i.i21.i34.i, -1
  %i.jj = icmp samesign ugt i64 %.012.i.i.i.i.i21.i34.i, 1
  br i1 %i.jj, label %.lr.ph.i.i.i.i.i20.i33.i, label %"_ZSt17__merge_sort_loopIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIZNS2_8LVReader24checkIntegrityScopesTreeES6_E3$_2EEEvT_SK_T0_T1_T2_.exit", !llvm.loop !9

"_ZSt17__merge_sort_loopIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIZNS2_8LVReader24checkIntegrityScopesTreeES6_E3$_2EEEvT_SK_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i20.i33.i, %_ZSt4moveIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i29.i
  %i.jk = icmp slt i64 %i.fs, %i.d
  br i1 %i.jk, label %bb.j, label %._crit_edge, !llvm.loop !778

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIZNS2_8LVReader24checkIntegrityScopesTreeES6_E3$_2EEEvT_SK_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_8LVReader24checkIntegrityScopesTreeES8_E3$_2EEEvT_SK_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS4_7LVScopeES8_EESt6vectorIS9_SaIS9_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS4_8LVReader24checkIntegrityScopesTreeES8_E3$_2EEEvT_SK_SK_T0_SL_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #18 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt5tupleIJPN4llvm11logicalview9LVElementEPNS2_7LVScopeES6_EEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEESE_NS9_5__ops15_Iter_comp_iterIZNS2_8LVReader24checkIntegrityScopesTreeES6_E3$_2EEEvT_SK_T0_SL_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.h = load <2 x ptr>, ptr %i.f, align 8, !tbaa !50
  store <2 x ptr> %i.h, ptr %i.g, align 8, !tbaa !50
  %i.i = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !37
  store ptr %i.i, ptr %.0811.i.i.i.i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 3 uses
  %i.l = add nsw i64 %.012.i.i.i.i.i, -1
  %i.m = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.m, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !9

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.026.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.sroa.0.025.i = phi ptr [ %i.w, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.sroa.016.024.i = phi ptr [ %.sroa.016.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.not19.i = icmp eq ptr %.sroa.016.024.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr i8, ptr %.026.i, i64 16
  %.0.val.i = load ptr, ptr %i.n, align 8, !tbaa !57 ; 2 uses
  %i.o = getelementptr i8, ptr %.0.val.i, i64 28
  %.0.val.val.i = load i32, ptr %i.o, align 4, !tbaa !82
  %i.p = getelementptr i8, ptr %.sroa.016.024.i, i64 16
  %.val.i.i = load ptr, ptr %i.p, align 8, !tbaa !57 ; 2 uses
  %i.q = getelementptr i8, ptr %.val.i.i, i64 28
  %.val.val.i.i = load i32, ptr %i.q, align 4, !tbaa !82
  %i.r = icmp ult i32 %.val.val.i.i, %.0.val.val.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 8
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 24
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.026.i, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.val.sink.i = phi ptr [ %.val.i.i, %bb.d ], [ %.0.val.i, %bb.e ]
  %.sink.in.i = phi ptr [ %.sroa.016.024.i, %bb.d ], [ %.026.i, %bb.e ] ; 2 uses
  %.sroa.016.1.i = phi ptr [ %i.t, %bb.d ], [ %.sroa.016.024.i, %bb.e ]
  %.1.i = phi ptr [ %.026.i, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %.sink.in = getelementptr inbounds nuw i8, ptr %.sink.in.i, i64 8
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !37
  store ptr %.sink, ptr %i.s, align 8, !tbaa !37
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 16
end_hunk_0
