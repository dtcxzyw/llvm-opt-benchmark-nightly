Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TypeSystemClang?download=true
inline.NumInlined: 12535
inline.NumDeleted: 5891
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 29
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEEvT_SP_T0_T1_":bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i.i, i64 24 ; 2 uses
  %i.cy = add nsw i64 %.012.i.i.i.i.i12.i.i, -1
  %i.cz = icmp samesign ugt i64 %.012.i.i.i.i.i12.i.i, 1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i11.i.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit.i", !llvm.loop !54

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit.i": ; preds = %.lr.ph.i.i.i.i.i11.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i
  %.08.lcssa.i.i.i.i.i9.i.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i ], [ %i.cx, %.lr.ph.i.i.i.i.i11.i.i ] ; 2 uses
  %i.da = sub i64 %i.a, %i.co
  %i.db = sdiv exact i64 %i.da, 24                ; 2 uses
  %.not.i = icmp slt i64 %i.db, %i.bl
  br i1 %.not.i, label %._crit_edge.i24, label %bb.o, !llvm.loop !3496

._crit_edge.i24:                                  ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit.i", %bb.n
  %.sroa.051.0.lcssa.i = phi ptr [ %0, %bb.n ], [ %i.bn, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.n ], [ %.08.lcssa.i.i.i.i.i9.i.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit.i" ] ; 2 uses
  %.lcssa66.i = phi i64 [ %i.d, %bb.n ], [ %i.db, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.057, i64 %.lcssa66.i) ; 2 uses
  %.idx61.i = mul nsw i64 %.sroa.speculated.i, 24
  %i.dc = getelementptr inbounds i8, ptr %.sroa.051.0.lcssa.i, i64 %.idx61.i ; 5 uses
  %i.dd = icmp ne i64 %.sroa.speculated.i, 0
  %i.de = icmp ne ptr %i.dc, %1
  %or.cond24.i16.i = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond24.i16.i, label %.lr.ph.i34.i, label %.critedge.i17.i

.lr.ph.i34.i:                                     ; preds = %._crit_edge.i24, %bb.u
  %.027.i35.i = phi ptr [ %i.dq, %bb.u ], [ %.0.lcssa.i, %._crit_edge.i24 ] ; 4 uses
  %.sroa.020.026.i36.i = phi ptr [ %.sroa.020.1.i41.i, %bb.u ], [ %.sroa.051.0.lcssa.i, %._crit_edge.i24 ] ; 4 uses
  %.sroa.016.025.i37.i = phi ptr [ %.sroa.016.1.i40.i, %bb.u ], [ %i.dc, %._crit_edge.i24 ] ; 4 uses
  %.val.i.i38.i = load i64, ptr %.sroa.016.025.i37.i, align 8, !tbaa !1027 ; 2 uses
  %.val1.i.i39.i = load i64, ptr %.sroa.020.026.i36.i, align 8, !tbaa !1027 ; 2 uses
  %i.df = insertelement <2 x i64> poison, i64 %.val.i.i38.i, i64 0
  %i.dg = insertelement <2 x i64> %i.df, i64 %.val1.i.i39.i, i64 1
  %i.dh = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.dg) ; 2 uses
  %i.di = extractelement <2 x i64> %i.dh, i64 0
  %i.dj = extractelement <2 x i64> %i.dh, i64 1
  %i.dk = icmp samesign ugt i64 %i.di, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %.027.i35.i, i64 8 ; 2 uses
  br i1 %i.dk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i34.i
  store i64 %.val.i.i38.i, ptr %.027.i35.i, align 8, !tbaa !1027
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i64 16, i1 false), !tbaa.struct !1028
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37.i, i64 24
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph.i34.i
  store i64 %.val1.i.i39.i, ptr %.027.i35.i, align 8, !tbaa !1027
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.do, i64 16, i1 false), !tbaa.struct !1028
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36.i, i64 24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.016.1.i40.i = phi ptr [ %i.dn, %bb.s ], [ %.sroa.016.025.i37.i, %bb.t ] ; 3 uses
  %.sroa.020.1.i41.i = phi ptr [ %.sroa.020.026.i36.i, %bb.s ], [ %i.dp, %bb.t ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.027.i35.i, i64 24 ; 2 uses
  %i.dr = icmp ne ptr %.sroa.020.1.i41.i, %i.dc
  %i.ds = icmp ne ptr %.sroa.016.1.i40.i, %1
  %or.cond.i42.i = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %or.cond.i42.i, label %.lr.ph.i34.i, label %.critedge.i17.i, !llvm.loop !3495

.critedge.i17.i:                                  ; preds = %bb.u, %._crit_edge.i24
  %.sroa.016.0.lcssa.i18.i = phi ptr [ %i.dc, %._crit_edge.i24 ], [ %.sroa.016.1.i40.i, %bb.u ] ; 2 uses
  %.sroa.020.0.lcssa.i19.i = phi ptr [ %.sroa.051.0.lcssa.i, %._crit_edge.i24 ], [ %.sroa.020.1.i41.i, %bb.u ] ; 2 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i24 ], [ %i.dq, %bb.u ] ; 2 uses
  %i.dt = ptrtoint ptr %i.dc to i64
  %i.du = ptrtoint ptr %.sroa.020.0.lcssa.i19.i to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 2 uses
  %i.dw = icmp sgt i64 %i.dv, 0
  br i1 %i.dw, label %.lr.ph.preheader.i.i.i.i.i.i29.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21.i

.lr.ph.preheader.i.i.i.i.i.i29.i:                 ; preds = %.critedge.i17.i
  %i.dx = udiv exact i64 %i.dv, 24
  br label %.lr.ph.i.i.i.i.i.i30.i

.lr.ph.i.i.i.i.i.i30.i:                           ; preds = %.lr.ph.i.i.i.i.i.i30.i, %.lr.ph.preheader.i.i.i.i.i.i29.i
  %.012.i.i.i.i.i.i31.i = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i.i30.i ], [ %i.dx, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 2 uses
  %.0811.i.i.i.i.i.i32.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i30.i ], [ %.0.lcssa.i20.i, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 3 uses
  %.0910.i.i.i.i.i.i33.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i.i30.i ], [ %.sroa.020.0.lcssa.i19.i, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 3 uses
  %i.dy = load i64, ptr %.0910.i.i.i.i.i.i33.i, align 8, !tbaa !88
  store i64 %i.dy, ptr %.0811.i.i.i.i.i.i32.i, align 8, !tbaa !1027
  %i.dz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33.i, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !tbaa.struct !1028
  %i.eb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33.i, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32.i, i64 24 ; 2 uses
  %i.ed = add nsw i64 %.012.i.i.i.i.i.i31.i, -1
  %i.ee = icmp samesign ugt i64 %.012.i.i.i.i.i.i31.i, 1
  br i1 %i.ee, label %.lr.ph.i.i.i.i.i.i30.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21.i, !llvm.loop !54

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21.i: ; preds = %.lr.ph.i.i.i.i.i.i30.i, %.critedge.i17.i
  %.08.lcssa.i.i.i.i.i.i22.i = phi ptr [ %.0.lcssa.i20.i, %.critedge.i17.i ], [ %i.ec, %.lr.ph.i.i.i.i.i.i30.i ]
  %i.ef = ptrtoint ptr %.sroa.016.0.lcssa.i18.i to i64
  %i.eg = sub i64 %i.a, %i.ef                     ; 2 uses
  %i.eh = icmp sgt i64 %i.eg, 0
  br i1 %i.eh, label %.lr.ph.preheader.i.i.i.i.i10.i24.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEEvT_SP_T0_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i10.i24.i:               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21.i
  %i.ei = udiv exact i64 %i.eg, 24
  br label %.lr.ph.i.i.i.i.i11.i25.i

.lr.ph.i.i.i.i.i11.i25.i:                         ; preds = %.lr.ph.i.i.i.i.i11.i25.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i12.i26.i = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i11.i25.i ], [ %i.ei, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 2 uses
  %.0811.i.i.i.i.i13.i27.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i11.i25.i ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 3 uses
  %.0910.i.i.i.i.i14.i28.i = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i11.i25.i ], [ %.sroa.016.0.lcssa.i18.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 3 uses
  %i.ej = load i64, ptr %.0910.i.i.i.i.i14.i28.i, align 8, !tbaa !88
  store i64 %i.ej, ptr %.0811.i.i.i.i.i13.i27.i, align 8, !tbaa !1027
  %i.ek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28.i, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false), !tbaa.struct !1028
  %i.em = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28.i, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27.i, i64 24
  %i.eo = add nsw i64 %.012.i.i.i.i.i12.i26.i, -1
  %i.ep = icmp samesign ugt i64 %.012.i.i.i.i.i12.i26.i, 1
  br i1 %i.ep, label %.lr.ph.i.i.i.i.i11.i25.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEEvT_SP_T0_T1_T2_.exit", !llvm.loop !54

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEEvT_SP_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i11.i25.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21.i
  %i.eq = shl nsw i64 %.057, 2                    ; 4 uses
  %.not65.i = icmp slt i64 %i.bk, %i.eq
  br i1 %.not65.i, label %._crit_edge.i32, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEEvT_SP_T0_T1_T2_.exit"
  %.idx.i28 = mul nsw i64 %.057, 48
  %.idx56.i = mul nsw i64 %.057, 96
  br label %bb.v

bb.v:                                             ; preds = %"_ZSt12__move_mergeIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit.i", %.lr.ph.i27
  %.sroa.022.067.i = phi ptr [ %0, %.lr.ph.i27 ], [ %i.gl, %"_ZSt12__move_mergeIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit.i" ]
  %.066.i = phi ptr [ %2, %.lr.ph.i27 ], [ %i.es, %"_ZSt12__move_mergeIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit.i" ] ; 3 uses
  %i.er = getelementptr inbounds i8, ptr %.066.i, i64 %.idx.i28 ; 3 uses
  %i.es = getelementptr inbounds i8, ptr %.066.i, i64 %.idx56.i ; 4 uses
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %bb.v, %bb.y
  %.030.i.i = phi ptr [ %.1.i.i, %bb.y ], [ %.066.i, %bb.v ] ; 4 uses
  %.01629.i.i = phi ptr [ %.117.i.i, %bb.y ], [ %i.er, %bb.v ] ; 4 uses
  %.sroa.0.028.i.i = phi ptr [ %i.fe, %bb.y ], [ %.sroa.022.067.i, %bb.v ] ; 4 uses
  %.016.val.i.i = load i64, ptr %.01629.i.i, align 8, !tbaa !1027 ; 2 uses
  %.0.val.i.i = load i64, ptr %.030.i.i, align 8, !tbaa !1027 ; 2 uses
  %i.et = insertelement <2 x i64> poison, i64 %.016.val.i.i, i64 0
  %i.eu = insertelement <2 x i64> %i.et, i64 %.0.val.i.i, i64 1
  %i.ev = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.eu) ; 2 uses
  %i.ew = extractelement <2 x i64> %i.ev, i64 0
  %i.ex = extractelement <2 x i64> %i.ev, i64 1
  %i.ey = icmp samesign ugt i64 %i.ew, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i, i64 8 ; 2 uses
  br i1 %i.ey, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i.i29
  store i64 %.016.val.i.i, ptr %.sroa.0.028.i.i, align 8, !tbaa !1027
  %i.fa = getelementptr inbounds nuw i8, ptr %.01629.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i64 16, i1 false), !tbaa.struct !1028
  %i.fb = getelementptr inbounds nuw i8, ptr %.01629.i.i, i64 24
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph.i.i29
  store i64 %.0.val.i.i, ptr %.sroa.0.028.i.i, align 8, !tbaa !1027
  %i.fc = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i64 16, i1 false), !tbaa.struct !1028
  %i.fd = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 24
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.117.i.i = phi ptr [ %i.fb, %bb.w ], [ %.01629.i.i, %bb.x ] ; 4 uses
  %.1.i.i = phi ptr [ %.030.i.i, %bb.w ], [ %i.fd, %bb.x ] ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i, i64 24 ; 5 uses
  %i.ff = icmp ne ptr %.1.i.i, %i.er
  %i.fg = icmp ne ptr %.117.i.i, %i.es
  %i.fh = select i1 %i.ff, i1 %i.fg, i1 false
  br i1 %i.fh, label %.lr.ph.i.i29, label %._crit_edge.i.i, !llvm.loop !3497

._crit_edge.i.i:                                  ; preds = %bb.y
  %i.fi = ptrtoint ptr %i.er to i64
  %i.fj = ptrtoint ptr %.1.i.i to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 2 uses
  %i.fl = icmp sgt i64 %i.fk, 0
  br i1 %i.fl, label %.lr.ph.preheader.i.i.i.i.i.i.i35, label %_ZSt4moveIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i35:                 ; preds = %._crit_edge.i.i
  %i.fm = udiv exact i64 %i.fk, 24
  br label %.lr.ph.i.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i.i36:                           ; preds = %.lr.ph.i.i.i.i.i.i.i36, %.lr.ph.preheader.i.i.i.i.i.i.i35
  %.012.i.i.i.i.i.i.i37 = phi i64 [ %i.fs, %.lr.ph.i.i.i.i.i.i.i36 ], [ %i.fm, %.lr.ph.preheader.i.i.i.i.i.i.i35 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i38 = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i.i.i36 ], [ %i.fe, %.lr.ph.preheader.i.i.i.i.i.i.i35 ] ; 3 uses
  %.0910.i.i.i.i.i.i.i39 = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i.i36 ], [ %.1.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i35 ] ; 3 uses
  %i.fn = load i64, ptr %.0910.i.i.i.i.i.i.i39, align 8, !tbaa !88
  store i64 %i.fn, ptr %.0811.i.i.i.i.i.i.i38, align 8, !tbaa !1027
  %i.fo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i39, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i38, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i64 16, i1 false), !tbaa.struct !1028
  %i.fq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i39, i64 24
  %i.fr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i38, i64 24 ; 2 uses
  %i.fs = add nsw i64 %.012.i.i.i.i.i.i.i37, -1
  %i.ft = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i37, 1
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i.i.i36, label %_ZSt4moveIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i, !llvm.loop !54

_ZSt4moveIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i36, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i30 = phi ptr [ %i.fe, %._crit_edge.i.i ], [ %i.fr, %.lr.ph.i.i.i.i.i.i.i36 ]
  %i.fu = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i30 to i64 ; 2 uses
  %i.fv = ptrtoint ptr %i.fe to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = getelementptr inbounds i8, ptr %i.fe, i64 %i.fw ; 3 uses
  %i.fy = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.fz = ptrtoint ptr %.117.i.i to i64
  %i.ga = sub i64 %i.fy, %i.fz                    ; 2 uses
  %i.gb = icmp sgt i64 %i.ga, 0
  br i1 %i.gb, label %.lr.ph.preheader.i.i.i.i.i19.i.i, label %"_ZSt12__move_mergeIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit.i"

.lr.ph.preheader.i.i.i.i.i19.i.i:                 ; preds = %_ZSt4moveIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i
  %i.gc = udiv exact i64 %i.ga, 24
  br label %.lr.ph.i.i.i.i.i20.i.i

.lr.ph.i.i.i.i.i20.i.i:                           ; preds = %.lr.ph.i.i.i.i.i20.i.i, %.lr.ph.preheader.i.i.i.i.i19.i.i
  %.012.i.i.i.i.i21.i.i = phi i64 [ %i.gi, %.lr.ph.i.i.i.i.i20.i.i ], [ %i.gc, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i.i = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i20.i.i ], [ %i.fx, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i.i = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i20.i.i ], [ %.117.i.i, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 3 uses
  %i.gd = load i64, ptr %.0910.i.i.i.i.i23.i.i, align 8, !tbaa !88
  store i64 %i.gd, ptr %.0811.i.i.i.i.i22.i.i, align 8, !tbaa !1027
  %i.ge = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i64 16, i1 false), !tbaa.struct !1028
  %i.gg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 24
  %i.gh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 24 ; 2 uses
  %i.gi = add nsw i64 %.012.i.i.i.i.i21.i.i, -1
  %i.gj = icmp samesign ugt i64 %.012.i.i.i.i.i21.i.i, 1
  br i1 %i.gj, label %.lr.ph.i.i.i.i.i20.i.i, label %"_ZSt12__move_mergeIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit.i", !llvm.loop !54

"_ZSt12__move_mergeIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit.i": ; preds = %.lr.ph.i.i.i.i.i20.i.i, %_ZSt4moveIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi ptr [ %i.fx, %_ZSt4moveIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i ], [ %i.gh, %.lr.ph.i.i.i.i.i20.i.i ]
  %3 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i.i to i64
  %i.gk = sub i64 %3, %i.fu
  %i.gl = getelementptr inbounds i8, ptr %i.fx, i64 %i.gk ; 2 uses
  %i.gm = sub i64 %i.bj, %i.fy
  %i.gn = sdiv exact i64 %i.gm, 24                ; 2 uses
  %.not.i31 = icmp slt i64 %i.gn, %i.eq
  br i1 %.not.i31, label %._crit_edge.i32, label %bb.v, !llvm.loop !3498

._crit_edge.i32:                                  ; preds = %"_ZSt12__move_mergeIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEEvT_SP_T0_T1_T2_.exit"
  %.0.lcssa.i33 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEEvT_SP_T0_T1_T2_.exit" ], [ %i.es, %"_ZSt12__move_mergeIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEEvT_SP_T0_T1_T2_.exit" ], [ %i.gl, %"_ZSt12__move_mergeIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit.i" ] ; 2 uses
  %.lcssa63.i = phi i64 [ %i.bk, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEEvT_SP_T0_T1_T2_.exit" ], [ %i.gn, %"_ZSt12__move_mergeIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit.i" ]
  %.sroa.speculated.i34 = tail call i64 @llvm.smin.i64(i64 %i.bl, i64 %.lcssa63.i) ; 2 uses
  %.idx58.i = mul nsw i64 %.sroa.speculated.i34, 24
  %i.go = getelementptr inbounds i8, ptr %.0.lcssa.i33, i64 %.idx58.i ; 5 uses
  %i.gp = icmp ne i64 %.sroa.speculated.i34, 0
  %i.gq = icmp ne ptr %i.go, %i.e
  %i.gr = and i1 %i.gp, %i.gq
  br i1 %i.gr, label %.lr.ph.i43.i, label %._crit_edge.i25.i

.lr.ph.i43.i:                                     ; preds = %._crit_edge.i32, %bb.ab
  %.030.i44.i = phi ptr [ %.1.i50.i, %bb.ab ], [ %.0.lcssa.i33, %._crit_edge.i32 ] ; 4 uses
  %.01629.i45.i = phi ptr [ %.117.i49.i, %bb.ab ], [ %i.go, %._crit_edge.i32 ] ; 4 uses
  %.sroa.0.028.i46.i = phi ptr [ %i.hd, %bb.ab ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i32 ] ; 4 uses
  %.016.val.i47.i = load i64, ptr %.01629.i45.i, align 8, !tbaa !1027 ; 2 uses
  %.0.val.i48.i = load i64, ptr %.030.i44.i, align 8, !tbaa !1027 ; 2 uses
  %i.gs = insertelement <2 x i64> poison, i64 %.016.val.i47.i, i64 0
  %i.gt = insertelement <2 x i64> %i.gs, i64 %.0.val.i48.i, i64 1
  %i.gu = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.gt) ; 2 uses
  %i.gv = extractelement <2 x i64> %i.gu, i64 0
  %i.gw = extractelement <2 x i64> %i.gu, i64 1
  %i.gx = icmp samesign ugt i64 %i.gv, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46.i, i64 8 ; 2 uses
  br i1 %i.gx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i43.i
  store i64 %.016.val.i47.i, ptr %.sroa.0.028.i46.i, align 8, !tbaa !1027
  %i.gz = getelementptr inbounds nuw i8, ptr %.01629.i45.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i64 16, i1 false), !tbaa.struct !1028
  %i.ha = getelementptr inbounds nuw i8, ptr %.01629.i45.i, i64 24
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i43.i
  store i64 %.0.val.i48.i, ptr %.sroa.0.028.i46.i, align 8, !tbaa !1027
  %i.hb = getelementptr inbounds nuw i8, ptr %.030.i44.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i64 16, i1 false), !tbaa.struct !1028
  %i.hc = getelementptr inbounds nuw i8, ptr %.030.i44.i, i64 24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.117.i49.i = phi ptr [ %i.ha, %bb.z ], [ %.01629.i45.i, %bb.aa ] ; 3 uses
  %.1.i50.i = phi ptr [ %.030.i44.i, %bb.z ], [ %i.hc, %bb.aa ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46.i, i64 24 ; 2 uses
  %i.he = icmp ne ptr %.1.i50.i, %i.go
  %i.hf = icmp ne ptr %.117.i49.i, %i.e
  %i.hg = select i1 %i.he, i1 %i.hf, i1 false
  br i1 %i.hg, label %.lr.ph.i43.i, label %._crit_edge.i25.i, !llvm.loop !3497

._crit_edge.i25.i:                                ; preds = %bb.ab, %._crit_edge.i32
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i32 ], [ %i.hd, %bb.ab ] ; 4 uses
  %.016.lcssa.i27.i = phi ptr [ %i.go, %._crit_edge.i32 ], [ %.117.i49.i, %bb.ab ] ; 2 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i33, %._crit_edge.i32 ], [ %.1.i50.i, %bb.ab ] ; 2 uses
  %i.hh = ptrtoint ptr %i.go to i64
  %i.hi = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.hj = sub i64 %i.hh, %i.hi                    ; 2 uses
  %i.hk = icmp sgt i64 %i.hj, 0
  br i1 %i.hk, label %.lr.ph.preheader.i.i.i.i.i.i38.i, label %_ZSt4moveIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29.i

.lr.ph.preheader.i.i.i.i.i.i38.i:                 ; preds = %._crit_edge.i25.i
  %i.hl = udiv exact i64 %i.hj, 24
  br label %.lr.ph.i.i.i.i.i.i39.i

.lr.ph.i.i.i.i.i.i39.i:                           ; preds = %.lr.ph.i.i.i.i.i.i39.i, %.lr.ph.preheader.i.i.i.i.i.i38.i
  %.012.i.i.i.i.i.i40.i = phi i64 [ %i.hr, %.lr.ph.i.i.i.i.i.i39.i ], [ %i.hl, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 2 uses
  %.0811.i.i.i.i.i.i41.i = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i.i39.i ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 3 uses
  %.0910.i.i.i.i.i.i42.i = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i.i39.i ], [ %.0.lcssa.i28.i, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 3 uses
  %i.hm = load i64, ptr %.0910.i.i.i.i.i.i42.i, align 8, !tbaa !88
  store i64 %i.hm, ptr %.0811.i.i.i.i.i.i41.i, align 8, !tbaa !1027
  %i.hn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42.i, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noundef nonnull align 8 dereferenceable(16) %i.hn, i64 16, i1 false), !tbaa.struct !1028
  %i.hp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42.i, i64 24
  %i.hq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41.i, i64 24 ; 2 uses
  %i.hr = add nsw i64 %.012.i.i.i.i.i.i40.i, -1
  %i.hs = icmp samesign ugt i64 %.012.i.i.i.i.i.i40.i, 1
  br i1 %i.hs, label %.lr.ph.i.i.i.i.i.i39.i, label %_ZSt4moveIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29.i, !llvm.loop !54

_ZSt4moveIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i39.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %i.hq, %.lr.ph.i.i.i.i.i.i39.i ]
  %i.ht = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.hu = sub i64 %i.bj, %i.ht                    ; 2 uses
  %i.hv = icmp sgt i64 %i.hu, 0
  br i1 %i.hv, label %.lr.ph.preheader.i.i.i.i.i19.i32.i, label %"_ZSt17__merge_sort_loopIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEEvT_SP_T0_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i19.i32.i:               ; preds = %_ZSt4moveIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29.i
  %i.hw = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.hx = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.hy
  %i.ia = udiv exact i64 %i.hu, 24
  br label %.lr.ph.i.i.i.i.i20.i33.i

.lr.ph.i.i.i.i.i20.i33.i:                         ; preds = %.lr.ph.i.i.i.i.i20.i33.i, %.lr.ph.preheader.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i21.i34.i = phi i64 [ %i.ig, %.lr.ph.i.i.i.i.i20.i33.i ], [ %i.ia, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i35.i = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i20.i33.i ], [ %i.hz, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i36.i = phi ptr [ %i.ie, %.lr.ph.i.i.i.i.i20.i33.i ], [ %.016.lcssa.i27.i, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 3 uses
  %i.ib = load i64, ptr %.0910.i.i.i.i.i23.i36.i, align 8, !tbaa !88
  store i64 %i.ib, ptr %.0811.i.i.i.i.i22.i35.i, align 8, !tbaa !1027
  %i.ic = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36.i, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.id, ptr noundef nonnull align 8 dereferenceable(16) %i.ic, i64 16, i1 false), !tbaa.struct !1028
  %i.ie = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36.i, i64 24
  %i.if = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35.i, i64 24
  %i.ig = add nsw i64 %.012.i.i.i.i.i21.i34.i, -1
  %i.ih = icmp samesign ugt i64 %.012.i.i.i.i.i21.i34.i, 1
  br i1 %i.ih, label %.lr.ph.i.i.i.i.i20.i33.i, label %"_ZSt17__merge_sort_loopIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEEvT_SP_T0_T1_T2_.exit", !llvm.loop !54

"_ZSt17__merge_sort_loopIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEEvT_SP_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i20.i33.i, %_ZSt4moveIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29.i
  %i.ii = icmp slt i64 %i.eq, %i.d
  br i1 %i.ii, label %bb.n, label %._crit_edge, !llvm.loop !3499

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEEvT_SP_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEEvT_SP_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm9StringRefEESt6vectorIS5_SaIS5_EEEElS6_NS0_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEEvT_SP_SP_T0_SQ_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #25 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEESA_NS5_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEEvT_SP_T0_SQ_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.f = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !88
  store i64 %i.f, ptr %.0811.i.i.i.i.i, align 8, !tbaa !1027
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !1028
  %i.i = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 3 uses
  %i.k = add nsw i64 %.012.i.i.i.i.i, -1
  %i.l = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.l, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !54

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.026.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.sroa.0.025.i = phi ptr [ %i.x, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.sroa.016.024.i = phi ptr [ %.sroa.016.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.not19.i = icmp eq ptr %.sroa.016.024.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.0.val.i = load i64, ptr %.026.i, align 8, !tbaa !1027 ; 2 uses
  %.val.i.i = load i64, ptr %.sroa.016.024.i, align 8, !tbaa !1027 ; 2 uses
  %i.m = insertelement <2 x i64> poison, i64 %.val.i.i, i64 0
  %i.n = insertelement <2 x i64> %i.m, i64 %.0.val.i, i64 1
  %i.o = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.n) ; 2 uses
  %i.p = extractelement <2 x i64> %i.o, i64 0
  %i.q = extractelement <2 x i64> %i.o, i64 1
  %i.r = icmp samesign ugt i64 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 8 ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %.val.i.i, ptr %.sroa.0.025.i, align 8, !tbaa !1027
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !1028
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 24
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 %.0.val.i, ptr %.sroa.0.025.i, align 8, !tbaa !1027
  %i.v = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !1028
  %i.w = getelementptr inbounds nuw i8, ptr %.026.i, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.016.1.i = phi ptr [ %i.u, %bb.d ], [ %.sroa.016.024.i, %bb.e ]
  %.1.i = phi ptr [ %.026.i, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 24
  %.not.i = icmp eq ptr %.1.i, %i.j
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPSt4pairImN4llvm9StringRefEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEESA_NS5_5__ops15_Iter_comp_iterIZL13DumpEnumValueRKN5clang8QualTypeERN12lldb_private6StreamERKNSH_13DataExtractorEmmjjE3$_0EEEvT_SP_T0_SQ_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !3500

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.y = ptrtoint ptr %i.j to i64
  %i.z = ptrtoint ptr %.026.i to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
end_hunk_0
begin_hunk_1_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN12lldb_private10TypeSystemEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SH_T0_T1_T2_:bb.a
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !1075
  %i.ez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.prol, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.prol, i64 16 ; 2 uses
  %i.fb = add nsw i64 %.012.i.i.i.i.i11.i25.prol, -1 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.prol, !llvm.loop !3606

.lr.ph.i.i.i.i.i10.i24.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i10.i24.prol, %.lr.ph.i.i.i.i.i10.i24.preheader
  %.012.i.i.i.i.i11.i25.unr = phi i64 [ %i.et, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.fb, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %.0811.i.i.i.i.i12.i26.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.fa, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %.0910.i.i.i.i.i13.i27.unr = phi ptr [ %.sroa.015.0.lcssa.i18, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.ez, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %i.fc = icmp ult i64 %i.et, 4
  br i1 %i.fc, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN12lldb_private10TypeSystemEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SI_SI_SI_SH_T1_.exit43, label %.lr.ph.i.i.i.i.i10.i24

.lr.ph.i.i.i.i.i10.i24:                           ; preds = %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24
  %.012.i.i.i.i.i11.i25 = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i10.i24 ], [ %.012.i.i.i.i.i11.i25.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26 = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.i10.i24 ], [ %.0811.i.i.i.i.i12.i26.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27 = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.i10.i24 ], [ %.0910.i.i.i.i.i13.i27.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 9 uses
  %i.fd = load i32, ptr %.0910.i.i.i.i.i13.i27, align 4, !tbaa !700
  store i32 %i.fd, ptr %.0811.i.i.i.i.i12.i26, align 8, !tbaa !1074
  %i.fe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !936
  %i.fg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 8
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !1075
  %i.fh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 16
  %i.fj = load i32, ptr %i.fh, align 8, !tbaa !700
  store i32 %i.fj, ptr %i.fi, align 8, !tbaa !1074
  %i.fk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !936
  %i.fm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 24
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !1075
  %i.fn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 32
  %i.fp = load i32, ptr %i.fn, align 8, !tbaa !700
  store i32 %i.fp, ptr %i.fo, align 8, !tbaa !1074
  %i.fq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !936
  %i.fs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 40
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !1075
  %i.ft = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 48
  %i.fu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 48
  %i.fv = load i32, ptr %i.ft, align 8, !tbaa !700
  store i32 %i.fv, ptr %i.fu, align 8, !tbaa !1074
  %i.fw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 56
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !936
  %i.fy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 56
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !1075
  %i.fz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 64
  %i.gb = add nsw i64 %.012.i.i.i.i.i11.i25, -4
  %i.gc = icmp sgt i64 %.012.i.i.i.i.i11.i25, 4
  br i1 %i.gc, label %.lr.ph.i.i.i.i.i10.i24, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN12lldb_private10TypeSystemEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SI_SI_SI_SH_T1_.exit43, !llvm.loop !63

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN12lldb_private10TypeSystemEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SI_SI_SI_SH_T1_.exit43: ; preds = %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN12lldb_private10TypeSystemEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SH_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not65 = icmp slt i64 %i.e, %i.a
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nsw i64 %3, 4                       ; 2 uses
  %.idx56 = shl nsw i64 %3, 5                     ; 2 uses
  %.not57 = icmp eq i64 %.idx, %.idx56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SI_SI_SI_SH_T1_.exit
  %.sroa.022.067 = phi ptr [ %2, %.lr.ph ], [ %i.cw, %_ZSt12__move_mergeIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SI_SI_SI_SH_T1_.exit ] ; 2 uses
  %.066 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SI_SI_SI_SH_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.066, i64 %.idx ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.066, i64 %.idx56 ; 4 uses
  br i1 %.not57, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.029.i = phi ptr [ %.1.i, %bb.e ], [ %.066, %bb.b ] ; 4 uses
  %.01628.i = phi ptr [ %.117.i, %bb.e ], [ %i.f, %bb.b ] ; 4 uses
  %.sroa.0.027.i = phi ptr [ %i.n, %bb.e ], [ %.sroa.022.067, %bb.b ] ; 3 uses
  %i.h = load i32, ptr %.01628.i, align 4, !tbaa !700 ; 2 uses
  %i.i = load i32, ptr %.029.i, align 4, !tbaa !700 ; 2 uses
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.01628.i, i64 16
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.029.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink34.i = phi i32 [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  %.01628.pn.i = phi ptr [ %.01628.i, %bb.c ], [ %.029.i, %bb.d ]
  %.117.i = phi ptr [ %i.k, %bb.c ], [ %.01628.i, %bb.d ] ; 3 uses
  %.1.i = phi ptr [ %.029.i, %bb.c ], [ %i.l, %bb.d ] ; 3 uses
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %.01628.pn.i, i64 8
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !936
  store i32 %.sink34.i, ptr %.sroa.0.027.i, align 8, !tbaa !1074
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 8
  store ptr %.sink.i, ptr %i.m, align 8, !tbaa !1075
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 16 ; 2 uses
  %i.o = icmp ne ptr %.1.i, %i.f
  %i.p = icmp ne ptr %.117.i, %i.g
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3607

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.067, %bb.b ], [ %i.n, %bb.e ] ; 5 uses
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.117.i, %bb.e ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.066, %bb.b ], [ %.1.i, %bb.e ] ; 3 uses
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = ptrtoint ptr %.0.lcssa.i to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 4                   ; 5 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt4moveIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.u, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ], [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.w = load i32, ptr %.0910.i.i.i.i.i.i.prol, align 4, !tbaa !700
  store i32 %i.w, ptr %.0811.i.i.i.i.i.i.prol, align 8, !tbaa !1074
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !936
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !1075
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.ac = add nsw i64 %.012.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3608

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.unr = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ]
  %.lcssa106.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ad = icmp ult i64 %i.u, 4
  br i1 %i.ad, label %_ZSt4moveIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ae = load i32, ptr %.0910.i.i.i.i.i.i, align 4, !tbaa !700
  store i32 %i.ae, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !1074
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !936
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !1075
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.ak = load i32, ptr %i.ai, align 8, !tbaa !700
  store i32 %i.ak, ptr %i.aj, align 8, !tbaa !1074
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !936
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  store ptr %i.am, ptr %i.an, align 8, !tbaa !1075
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.aq = load i32, ptr %i.ao, align 8, !tbaa !700
  store i32 %i.aq, ptr %i.ap, align 8, !tbaa !1074
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !936
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  store ptr %i.as, ptr %i.at, align 8, !tbaa !1075
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.aw = load i32, ptr %i.au, align 8, !tbaa !700
  store i32 %i.aw, ptr %i.av, align 8, !tbaa !1074
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !936
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !1075
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.bc = add nsw i64 %.012.i.i.i.i.i.i, -4
  %i.bd = icmp sgt i64 %.012.i.i.i.i.i.i, 4
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, !llvm.loop !63

_ZSt4moveIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %.lcssa106.unr.a, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bb, %.lr.ph.i.i.i.i.i.i ]
  %i.be = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 2 uses
  %i.bf = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.bg ; 4 uses
  %i.bi = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.bj = ptrtoint ptr %.016.lcssa.i to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 4                 ; 5 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i19.i.preheader, label %_ZSt12__move_mergeIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SI_SI_SI_SH_T1_.exit

.lr.ph.i.i.i.i.i19.i.preheader:                   ; preds = %_ZSt4moveIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i
  %xtraiter111 = and i64 %i.bl, 3                 ; 2 uses
  %lcmp.mod112.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod112.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol

.lr.ph.i.i.i.i.i19.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i19.i.preheader, %.lr.ph.i.i.i.i.i19.i.prol
  %.012.i.i.i.i.i20.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.bl, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %.0811.i.i.i.i.i21.i.prol = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.bh, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.prol = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i19.i.prol ], [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 3 uses
  %prol.iter113 = phi i64 [ %prol.iter113.next, %.lr.ph.i.i.i.i.i19.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %i.bn = load i32, ptr %.0910.i.i.i.i.i22.i.prol, align 4, !tbaa !700
  store i32 %i.bn, ptr %.0811.i.i.i.i.i21.i.prol, align 8, !tbaa !1074
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !936
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !1075
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 16 ; 3 uses
  %i.bt = add nsw i64 %.012.i.i.i.i.i20.i.prol, -1 ; 2 uses
  %prol.iter113.next = add i64 %prol.iter113, 1   ; 2 uses
  %prol.iter113.cmp.not = icmp eq i64 %prol.iter113.next, %xtraiter111
  br i1 %prol.iter113.cmp.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol, !llvm.loop !3609

.lr.ph.i.i.i.i.i19.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i19.i.prol, %.lr.ph.i.i.i.i.i19.i.preheader
  %.012.i.i.i.i.i20.i.unr = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0811.i.i.i.i.i21.i.unr = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bs, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0910.i.i.i.i.i22.i.unr = phi ptr [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.br, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.lcssa107.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bs, %.lr.ph.i.i.i.i.i19.i.prol ]
  %i.bu = icmp ult i64 %i.bl, 4
  br i1 %i.bu, label %_ZSt12__move_mergeIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SI_SI_SI_SH_T1_.exit, label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i
  %.012.i.i.i.i.i20.i = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i19.i ], [ %.012.i.i.i.i.i20.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i19.i ], [ %.0811.i.i.i.i.i21.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i19.i ], [ %.0910.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %i.bv = load i32, ptr %.0910.i.i.i.i.i22.i, align 4, !tbaa !700
  store i32 %i.bv, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !1074
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !936
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !1075
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 16
  %i.cb = load i32, ptr %i.bz, align 8, !tbaa !700
  store i32 %i.cb, ptr %i.ca, align 8, !tbaa !1074
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !936
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 24
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !1075
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 32
  %i.ch = load i32, ptr %i.cf, align 8, !tbaa !700
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !1074
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !936
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 40
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !1075
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 48
  %i.cn = load i32, ptr %i.cl, align 8, !tbaa !700
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !1074
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !936
  %i.cq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 56
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !1075
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 64 ; 2 uses
  %i.ct = add nsw i64 %.012.i.i.i.i.i20.i, -4
  %i.cu = icmp sgt i64 %.012.i.i.i.i.i20.i, 4
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SI_SI_SI_SH_T1_.exit, !llvm.loop !63

_ZSt12__move_mergeIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SI_SI_SI_SH_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i, %_ZSt4moveIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.bh, %_ZSt4moveIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ], [ %.lcssa107.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ], [ %i.cs, %.lr.ph.i.i.i.i.i19.i ]
  %4 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.cv = sub i64 %4, %i.be
  %i.cw = getelementptr inbounds i8, ptr %i.bh, i64 %i.cv ; 2 uses
  %i.cx = sub i64 %i.b, %i.bi
  %i.cy = ashr exact i64 %i.cx, 4                 ; 2 uses
  %.not = icmp slt i64 %i.cy, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3610

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SI_SI_SI_SH_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SI_SI_SI_SH_T1_.exit ] ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.cw, %_ZSt12__move_mergeIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SI_SI_SI_SH_T1_.exit ] ; 2 uses
  %.lcssa63 = phi i64 [ %i.e, %bb.a ], [ %i.cy, %_ZSt12__move_mergeIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SI_SI_SI_SH_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa63) ; 2 uses
  %.idx58 = shl nsw i64 %.sroa.speculated, 4
  %i.cz = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx58 ; 5 uses
  %i.da = icmp ne i64 %.sroa.speculated, 0
  %i.db = icmp ne ptr %i.cz, %1
  %i.dc = and i1 %i.da, %i.db
  br i1 %i.dc, label %.lr.ph.i41, label %._crit_edge.i25

.lr.ph.i41:                                       ; preds = %._crit_edge, %bb.h
  %.029.i42 = phi ptr [ %.1.i48, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %.01628.i43 = phi ptr [ %.117.i47, %bb.h ], [ %i.cz, %._crit_edge ] ; 4 uses
  %.sroa.0.027.i44 = phi ptr [ %i.dj, %bb.h ], [ %.sroa.022.0.lcssa, %._crit_edge ] ; 3 uses
  %i.dd = load i32, ptr %.01628.i43, align 4, !tbaa !700 ; 2 uses
  %i.de = load i32, ptr %.029.i42, align 4, !tbaa !700 ; 2 uses
  %i.df = icmp slt i32 %i.dd, %i.de
  br i1 %i.df, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i41
  %i.dg = getelementptr inbounds nuw i8, ptr %.01628.i43, i64 16
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i41
  %i.dh = getelementptr inbounds nuw i8, ptr %.029.i42, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink34.i45 = phi i32 [ %i.dd, %bb.f ], [ %i.de, %bb.g ]
  %.01628.pn.i46 = phi ptr [ %.01628.i43, %bb.f ], [ %.029.i42, %bb.g ]
  %.117.i47 = phi ptr [ %i.dg, %bb.f ], [ %.01628.i43, %bb.g ] ; 3 uses
  %.1.i48 = phi ptr [ %.029.i42, %bb.f ], [ %i.dh, %bb.g ] ; 3 uses
  %.sink.in.i49 = getelementptr inbounds nuw i8, ptr %.01628.pn.i46, i64 8
  %.sink.i50 = load ptr, ptr %.sink.in.i49, align 8, !tbaa !936
  store i32 %.sink34.i45, ptr %.sroa.0.027.i44, align 8, !tbaa !1074
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 8
  store ptr %.sink.i50, ptr %i.di, align 8, !tbaa !1075
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 16 ; 2 uses
  %i.dk = icmp ne ptr %.1.i48, %i.cz
  %i.dl = icmp ne ptr %.117.i47, %1
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph.i41, label %._crit_edge.i25, !llvm.loop !3607

._crit_edge.i25:                                  ; preds = %bb.h, %._crit_edge
  %.sroa.0.0.lcssa.i26 = phi ptr [ %.sroa.022.0.lcssa, %._crit_edge ], [ %i.dj, %bb.h ] ; 5 uses
  %.016.lcssa.i27 = phi ptr [ %i.cz, %._crit_edge ], [ %.117.i47, %bb.h ] ; 3 uses
  %.0.lcssa.i28 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i48, %bb.h ] ; 3 uses
  %i.dn = ptrtoint ptr %i.cz to i64
  %i.do = ptrtoint ptr %.0.lcssa.i28 to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 4                 ; 5 uses
  %i.dr = icmp sgt i64 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i.i37.preheader, label %_ZSt4moveIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29

.lr.ph.i.i.i.i.i.i37.preheader:                   ; preds = %._crit_edge.i25
  %xtraiter114 = and i64 %i.dq, 3                 ; 2 uses
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %.lr.ph.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.prol

.lr.ph.i.i.i.i.i.i37.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i37.prol
  %.012.i.i.i.i.i.i38.prol = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i.i37.prol ], [ %i.dq, %.lr.ph.i.i.i.i.i.i37.preheader ]
  %.0811.i.i.i.i.i.i39.prol = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i37.prol ], [ %.sroa.0.0.lcssa.i26, %.lr.ph.i.i.i.i.i.i37.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.prol = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i37.prol ], [ %.0.lcssa.i28, %.lr.ph.i.i.i.i.i.i37.preheader ] ; 3 uses
  %prol.iter116 = phi i64 [ %prol.iter116.next, %.lr.ph.i.i.i.i.i.i37.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.preheader ]
  %i.ds = load i32, ptr %.0910.i.i.i.i.i.i40.prol, align 4, !tbaa !700
  store i32 %i.ds, ptr %.0811.i.i.i.i.i.i39.prol, align 8, !tbaa !1074
  %i.dt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !936
  %i.dv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 8
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !1075
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 16 ; 3 uses
  %i.dy = add nsw i64 %.012.i.i.i.i.i.i38.prol, -1 ; 2 uses
  %prol.iter116.next = add i64 %prol.iter116, 1   ; 2 uses
  %prol.iter116.cmp.not = icmp eq i64 %prol.iter116.next, %xtraiter114
  br i1 %prol.iter116.cmp.not, label %.lr.ph.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.prol, !llvm.loop !3611

.lr.ph.i.i.i.i.i.i37.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i.i37.preheader
  %.012.i.i.i.i.i.i38.unr = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.dy, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.0811.i.i.i.i.i.i39.unr = phi ptr [ %.sroa.0.0.lcssa.i26, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.dx, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.0910.i.i.i.i.i.i40.unr = phi ptr [ %.0.lcssa.i28, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.dw, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.dx, %.lr.ph.i.i.i.i.i.i37.prol ]
  %i.dz = icmp ult i64 %i.dq, 4
  br i1 %i.dz, label %_ZSt4moveIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29, label %.lr.ph.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i37:                             ; preds = %.lr.ph.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i38 = phi i64 [ %i.ey, %.lr.ph.i.i.i.i.i.i37 ], [ %.012.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i37 ], [ %.0811.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40 = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i.i37 ], [ %.0910.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %i.ea = load i32, ptr %.0910.i.i.i.i.i.i40, align 4, !tbaa !700
  store i32 %i.ea, ptr %.0811.i.i.i.i.i.i39, align 8, !tbaa !1074
  %i.eb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !936
  %i.ed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !1075
  %i.ee = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 16
  %i.eg = load i32, ptr %i.ee, align 8, !tbaa !700
  store i32 %i.eg, ptr %i.ef, align 8, !tbaa !1074
  %i.eh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !936
  %i.ej = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 24
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !1075
  %i.ek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 32
  %i.em = load i32, ptr %i.ek, align 8, !tbaa !700
  store i32 %i.em, ptr %i.el, align 8, !tbaa !1074
  %i.en = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !936
  %i.ep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 40
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !1075
  %i.eq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 48
  %i.er = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 48
  %i.es = load i32, ptr %i.eq, align 8, !tbaa !700
  store i32 %i.es, ptr %i.er, align 8, !tbaa !1074
  %i.et = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 56
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !936
  %i.ev = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 56
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !1075
  %i.ew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 64 ; 2 uses
  %i.ey = add nsw i64 %.012.i.i.i.i.i.i38, -4
  %i.ez = icmp sgt i64 %.012.i.i.i.i.i.i38, 4
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i.i37, label %_ZSt4moveIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29, !llvm.loop !63

_ZSt4moveIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29: ; preds = %.lr.ph.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i37, %._crit_edge.i25
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.0.0.lcssa.i26, %._crit_edge.i25 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ], [ %i.ex, %.lr.ph.i.i.i.i.i.i37 ]
  %i.fa = ptrtoint ptr %.016.lcssa.i27 to i64
  %i.fb = sub i64 %i.b, %i.fa
  %i.fc = ashr exact i64 %i.fb, 4                 ; 5 uses
  %i.fd = icmp sgt i64 %i.fc, 0
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i19.i32.preheader, label %_ZSt12__move_mergeIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SI_SI_SI_SH_T1_.exit51

.lr.ph.i.i.i.i.i19.i32.preheader:                 ; preds = %_ZSt4moveIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29
  %i.fe = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64
  %i.ff = ptrtoint ptr %.sroa.0.0.lcssa.i26 to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26, i64 %i.fg ; 2 uses
  %xtraiter117 = and i64 %i.fc, 3                 ; 2 uses
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol

.lr.ph.i.i.i.i.i19.i32.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader, %.lr.ph.i.i.i.i.i19.i32.prol
  %.012.i.i.i.i.i20.i33.prol = phi i64 [ %i.fo, %.lr.ph.i.i.i.i.i19.i32.prol ], [ %i.fc, %.lr.ph.i.i.i.i.i19.i32.preheader ]
  %.0811.i.i.i.i.i21.i34.prol = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i19.i32.prol ], [ %i.fh, %.lr.ph.i.i.i.i.i19.i32.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.prol = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i19.i32.prol ], [ %.016.lcssa.i27, %.lr.ph.i.i.i.i.i19.i32.preheader ] ; 3 uses
  %prol.iter119 = phi i64 [ %prol.iter119.next, %.lr.ph.i.i.i.i.i19.i32.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader ]
  %i.fi = load i32, ptr %.0910.i.i.i.i.i22.i35.prol, align 4, !tbaa !700
  store i32 %i.fi, ptr %.0811.i.i.i.i.i21.i34.prol, align 8, !tbaa !1074
  %i.fj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !936
  %i.fl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 8
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !1075
  %i.fm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 16 ; 2 uses
  %i.fo = add nsw i64 %.012.i.i.i.i.i20.i33.prol, -1 ; 2 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol, !llvm.loop !3612

.lr.ph.i.i.i.i.i19.i32.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i32.prol, %.lr.ph.i.i.i.i.i19.i32.preheader
  %.012.i.i.i.i.i20.i33.unr = phi i64 [ %i.fc, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.fo, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0811.i.i.i.i.i21.i34.unr = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.fn, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0910.i.i.i.i.i22.i35.unr = phi ptr [ %.016.lcssa.i27, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.fm, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %i.fp = icmp ult i64 %i.fc, 4
  br i1 %i.fp, label %_ZSt12__move_mergeIPSt4pairIiPN12lldb_private10TypeSystemEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SI_SI_SI_SH_T1_.exit51, label %.lr.ph.i.i.i.i.i19.i32

.lr.ph.i.i.i.i.i19.i32:                           ; preds = %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32
  %.012.i.i.i.i.i20.i33 = phi i64 [ %i.go, %.lr.ph.i.i.i.i.i19.i32 ], [ %.012.i.i.i.i.i20.i33.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34 = phi ptr [ %i.gn, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0811.i.i.i.i.i21.i34.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35 = phi ptr [ %i.gm, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0910.i.i.i.i.i22.i35.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 9 uses
  %i.fq = load i32, ptr %.0910.i.i.i.i.i22.i35, align 4, !tbaa !700
  store i32 %i.fq, ptr %.0811.i.i.i.i.i21.i34, align 8, !tbaa !1074
  %i.fr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !936
  %i.ft = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 8
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !1075
  %i.fu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 16
  %i.fw = load i32, ptr %i.fu, align 8, !tbaa !700
  store i32 %i.fw, ptr %i.fv, align 8, !tbaa !1074
  %i.fx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !936
  %i.fz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 24
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !1075
  %i.ga = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 32
  %i.gc = load i32, ptr %i.ga, align 8, !tbaa !700
  store i32 %i.gc, ptr %i.gb, align 8, !tbaa !1074
  %i.gd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !936
  %i.gf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 40
end_hunk_1
