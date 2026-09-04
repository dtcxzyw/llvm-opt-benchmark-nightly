Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SectionPriorities?download=true
inline.NumInlined: 2383
inline.NumDeleted: 1097
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNKS4_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS6_EESt8functionIFvRS5_RNS4_11StringPieceEmEEbbE3$_0EEEvT_SR_T0_T1_":bb.a
  %.lcssa71.i = phi i64 [ %i.d, %bb.v ], [ %i.ka, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNKS4_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS6_EESt8functionIFvRS5_RNS4_11StringPieceEmEEbbE3$_0EEET0_T_SS_SS_SS_SR_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.059, i64 %.lcssa71.i) ; 2 uses
  %.idx66.i = mul nsw i64 %.sroa.speculated.i, 24
  %i.kb = getelementptr inbounds i8, ptr %.sroa.056.0.lcssa.i, i64 %.idx66.i ; 5 uses
  %i.kc = icmp ne i64 %.sroa.speculated.i, 0
  %i.kd = icmp ne ptr %i.kb, %1
  %or.cond24.i16.i = select i1 %i.kc, i1 %i.kd, i1 false
  br i1 %or.cond24.i16.i, label %.lr.ph.i34.i, label %.critedge.i17.i

.lr.ph.i34.i:                                     ; preds = %._crit_edge.i25, %bb.ac
  %.027.i35.i = phi ptr [ %i.kl, %bb.ac ], [ %.0.lcssa.i, %._crit_edge.i25 ] ; 4 uses
  %.sroa.020.026.i36.i = phi ptr [ %.sroa.020.1.i43.i, %bb.ac ], [ %.sroa.056.0.lcssa.i, %._crit_edge.i25 ] ; 4 uses
  %.sroa.016.025.i37.i = phi ptr [ %.sroa.016.1.i42.i, %bb.ac ], [ %i.kb, %._crit_edge.i25 ] ; 4 uses
  %i.ke = getelementptr i8, ptr %.sroa.016.025.i37.i, i64 16
  %.val.i.i38.i = load i32, ptr %i.ke, align 4, !tbaa !38 ; 2 uses
  %i.kf = getelementptr i8, ptr %.sroa.020.026.i36.i, i64 16
  %.val1.i.i39.i = load i32, ptr %i.kf, align 4, !tbaa !38 ; 2 uses
  %i.kg = icmp slt i32 %.val.i.i38.i, %.val1.i.i39.i
  br i1 %i.kg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i34.i
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37.i, i64 24
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i34.i
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36.i, i64 24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.val1.i.sink.i40.i = phi i32 [ %.val.i.i38.i, %bb.aa ], [ %.val1.i.i39.i, %bb.ab ]
  %.sroa.016.025.pn.i41.i = phi ptr [ %.sroa.016.025.i37.i, %bb.aa ], [ %.sroa.020.026.i36.i, %bb.ab ] ; 2 uses
  %.sroa.016.1.i42.i = phi ptr [ %i.kh, %bb.aa ], [ %.sroa.016.025.i37.i, %bb.ab ] ; 3 uses
  %.sroa.020.1.i43.i = phi ptr [ %.sroa.020.026.i36.i, %bb.aa ], [ %i.ki, %bb.ab ] ; 3 uses
  %.sink.i44.i = load i64, ptr %.sroa.016.025.pn.i41.i, align 8, !tbaa !41
  %.sink32.in.i45.i = getelementptr inbounds nuw i8, ptr %.sroa.016.025.pn.i41.i, i64 8
  %.sink32.i46.i = load ptr, ptr %.sink32.in.i45.i, align 8, !tbaa !174
  %i.kj = getelementptr inbounds nuw i8, ptr %.027.i35.i, i64 16
  store i32 %.val1.i.sink.i40.i, ptr %i.kj, align 4, !tbaa !38
  %i.kk = getelementptr inbounds nuw i8, ptr %.027.i35.i, i64 8
  store ptr %.sink32.i46.i, ptr %i.kk, align 8, !tbaa !174
  store i64 %.sink.i44.i, ptr %.027.i35.i, align 8, !tbaa !41
  %i.kl = getelementptr inbounds nuw i8, ptr %.027.i35.i, i64 24 ; 2 uses
  %i.km = icmp ne ptr %.sroa.020.1.i43.i, %i.kb
  %i.kn = icmp ne ptr %.sroa.016.1.i42.i, %1
  %or.cond.i47.i = select i1 %i.km, i1 %i.kn, i1 false
  br i1 %or.cond.i47.i, label %.lr.ph.i34.i, label %.critedge.i17.i, !llvm.loop !623

.critedge.i17.i:                                  ; preds = %bb.ac, %._crit_edge.i25
  %.sroa.016.0.lcssa.i18.i = phi ptr [ %i.kb, %._crit_edge.i25 ], [ %.sroa.016.1.i42.i, %bb.ac ] ; 2 uses
  %.sroa.020.0.lcssa.i19.i = phi ptr [ %.sroa.056.0.lcssa.i, %._crit_edge.i25 ], [ %.sroa.020.1.i43.i, %bb.ac ] ; 2 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i25 ], [ %i.kl, %bb.ac ] ; 2 uses
  %i.ko = ptrtoint ptr %i.kb to i64
  %i.kp = ptrtoint ptr %.sroa.020.0.lcssa.i19.i to i64
  %i.kq = sub i64 %i.ko, %i.kp                    ; 2 uses
  %i.kr = icmp sgt i64 %i.kq, 0
  br i1 %i.kr, label %.lr.ph.preheader.i.i.i.i.i.i29.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i21.i

.lr.ph.preheader.i.i.i.i.i.i29.i:                 ; preds = %.critedge.i17.i
  %i.ks = udiv exact i64 %i.kq, 24
  br label %.lr.ph.i.i.i.i.i.i30.i

.lr.ph.i.i.i.i.i.i30.i:                           ; preds = %.lr.ph.i.i.i.i.i.i30.i, %.lr.ph.preheader.i.i.i.i.i.i29.i
  %.012.i.i.i.i.i.i31.i = phi i64 [ %i.lc, %.lr.ph.i.i.i.i.i.i30.i ], [ %i.ks, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 2 uses
  %.0811.i.i.i.i.i.i32.i = phi ptr [ %i.lb, %.lr.ph.i.i.i.i.i.i30.i ], [ %.0.lcssa.i20.i, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 4 uses
  %.0910.i.i.i.i.i.i33.i = phi ptr [ %i.la, %.lr.ph.i.i.i.i.i.i30.i ], [ %.sroa.020.0.lcssa.i19.i, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33.i, i64 16
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !38
  %i.kv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32.i, i64 16
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !38
  %i.kw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33.i, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !174
  %i.ky = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32.i, i64 8
  store ptr %i.kx, ptr %i.ky, align 8, !tbaa !174
  %i.kz = load i64, ptr %.0910.i.i.i.i.i.i33.i, align 8, !tbaa !41
  store i64 %i.kz, ptr %.0811.i.i.i.i.i.i32.i, align 8, !tbaa !41
  %i.la = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33.i, i64 24
  %i.lb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32.i, i64 24 ; 2 uses
  %i.lc = add nsw i64 %.012.i.i.i.i.i.i31.i, -1
  %i.ld = icmp samesign ugt i64 %.012.i.i.i.i.i.i31.i, 1
  br i1 %i.ld, label %.lr.ph.i.i.i.i.i.i30.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i21.i, !llvm.loop !14

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i21.i: ; preds = %.lr.ph.i.i.i.i.i.i30.i, %.critedge.i17.i
  %.08.lcssa.i.i.i.i.i.i22.i = phi ptr [ %.0.lcssa.i20.i, %.critedge.i17.i ], [ %i.lb, %.lr.ph.i.i.i.i.i.i30.i ]
  %i.le = ptrtoint ptr %.sroa.016.0.lcssa.i18.i to i64
  %i.lf = sub i64 %i.a, %i.le                     ; 2 uses
  %i.lg = icmp sgt i64 %i.lf, 0
  br i1 %i.lg, label %.lr.ph.preheader.i.i.i.i.i10.i24.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS4_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS6_EESt8functionIFvRS5_RNS4_11StringPieceEmEEbbE3$_0EEEvT_SR_T0_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i10.i24.i:               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i21.i
  %i.lh = udiv exact i64 %i.lf, 24
  br label %.lr.ph.i.i.i.i.i11.i25.i

.lr.ph.i.i.i.i.i11.i25.i:                         ; preds = %.lr.ph.i.i.i.i.i11.i25.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i12.i26.i = phi i64 [ %i.lr, %.lr.ph.i.i.i.i.i11.i25.i ], [ %i.lh, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 2 uses
  %.0811.i.i.i.i.i13.i27.i = phi ptr [ %i.lq, %.lr.ph.i.i.i.i.i11.i25.i ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 4 uses
  %.0910.i.i.i.i.i14.i28.i = phi ptr [ %i.lp, %.lr.ph.i.i.i.i.i11.i25.i ], [ %.sroa.016.0.lcssa.i18.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28.i, i64 16
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !38
  %i.lk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27.i, i64 16
  store i32 %i.lj, ptr %i.lk, align 4, !tbaa !38
  %i.ll = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28.i, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !174
  %i.ln = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27.i, i64 8
  store ptr %i.lm, ptr %i.ln, align 8, !tbaa !174
  %i.lo = load i64, ptr %.0910.i.i.i.i.i14.i28.i, align 8, !tbaa !41
  store i64 %i.lo, ptr %.0811.i.i.i.i.i13.i27.i, align 8, !tbaa !41
  %i.lp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28.i, i64 24
  %i.lq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27.i, i64 24
  %i.lr = add nsw i64 %.012.i.i.i.i.i12.i26.i, -1
  %i.ls = icmp samesign ugt i64 %.012.i.i.i.i.i12.i26.i, 1
  br i1 %i.ls, label %.lr.ph.i.i.i.i.i11.i25.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS4_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS6_EESt8functionIFvRS5_RNS4_11StringPieceEmEEbbE3$_0EEEvT_SR_T0_T1_T2_.exit", !llvm.loop !14

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS4_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS6_EESt8functionIFvRS5_RNS4_11StringPieceEmEEbbE3$_0EEEvT_SR_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i11.i25.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i21.i
  %i.lt = shl nsw i64 %.059, 2                    ; 4 uses
  %.not70.i = icmp slt i64 %i.if, %i.lt
  br i1 %.not70.i, label %._crit_edge.i34, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS4_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS6_EESt8functionIFvRS5_RNS4_11StringPieceEmEEbbE3$_0EEEvT_SR_T0_T1_T2_.exit"
  %.idx.i29 = mul nsw i64 %.059, 48
  %.idx61.i = mul nsw i64 %.059, 96
  br label %bb.ad

bb.ad:                                            ; preds = %"_ZSt12__move_mergeIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS4_EESt8functionIFvRS3_RNS2_11StringPieceEmEEbbE3$_0EEET0_T_SS_SS_SS_SR_T1_.exit.i", %.lr.ph.i28
  %.sroa.022.072.i = phi ptr [ %0, %.lr.ph.i28 ], [ %i.ns, %"_ZSt12__move_mergeIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS4_EESt8functionIFvRS3_RNS2_11StringPieceEmEEbbE3$_0EEET0_T_SS_SS_SS_SR_T1_.exit.i" ]
  %.071.i = phi ptr [ %2, %.lr.ph.i28 ], [ %i.lv, %"_ZSt12__move_mergeIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS4_EESt8functionIFvRS3_RNS2_11StringPieceEmEEbbE3$_0EEET0_T_SS_SS_SS_SR_T1_.exit.i" ] ; 3 uses
  %i.lu = getelementptr inbounds i8, ptr %.071.i, i64 %.idx.i29 ; 3 uses
  %i.lv = getelementptr inbounds i8, ptr %.071.i, i64 %.idx61.i ; 4 uses
  br label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %bb.ad, %bb.ag
  %.030.i.i = phi ptr [ %.1.i.i, %bb.ag ], [ %.071.i, %bb.ad ] ; 4 uses
  %.01629.i.i = phi ptr [ %.117.i.i, %bb.ag ], [ %i.lu, %bb.ad ] ; 4 uses
  %.sroa.0.028.i.i = phi ptr [ %i.md, %bb.ag ], [ %.sroa.022.072.i, %bb.ad ] ; 4 uses
  %i.lw = getelementptr i8, ptr %.01629.i.i, i64 16
  %.016.val.i.i = load i32, ptr %i.lw, align 4, !tbaa !38 ; 2 uses
  %i.lx = getelementptr i8, ptr %.030.i.i, i64 16
  %.0.val.i.i = load i32, ptr %i.lx, align 4, !tbaa !38 ; 2 uses
  %i.ly = icmp slt i32 %.016.val.i.i, %.0.val.i.i
  br i1 %i.ly, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i.i30
  %i.lz = getelementptr inbounds nuw i8, ptr %.01629.i.i, i64 24
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i.i30
  %i.ma = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 24
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0.val.sink.i.i = phi i32 [ %.016.val.i.i, %bb.ae ], [ %.0.val.i.i, %bb.af ]
  %.01629.pn.i.i = phi ptr [ %.01629.i.i, %bb.ae ], [ %.030.i.i, %bb.af ] ; 2 uses
  %.117.i.i = phi ptr [ %i.lz, %bb.ae ], [ %.01629.i.i, %bb.af ] ; 4 uses
  %.1.i.i = phi ptr [ %.030.i.i, %bb.ae ], [ %i.ma, %bb.af ] ; 4 uses
  %.sink.i.i31 = load i64, ptr %.01629.pn.i.i, align 8, !tbaa !41
  %.sink35.in.i.i = getelementptr inbounds nuw i8, ptr %.01629.pn.i.i, i64 8
  %.sink35.i.i = load ptr, ptr %.sink35.in.i.i, align 8, !tbaa !174
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i, i64 16
  store i32 %.0.val.sink.i.i, ptr %i.mb, align 4, !tbaa !38
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i, i64 8
  store ptr %.sink35.i.i, ptr %i.mc, align 8, !tbaa !174
  store i64 %.sink.i.i31, ptr %.sroa.0.028.i.i, align 8, !tbaa !41
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i, i64 24 ; 5 uses
  %i.me = icmp ne ptr %.1.i.i, %i.lu
  %i.mf = icmp ne ptr %.117.i.i, %i.lv
  %i.mg = select i1 %i.me, i1 %i.mf, i1 false
  br i1 %i.mg, label %.lr.ph.i.i30, label %._crit_edge.i.i, !llvm.loop !625

._crit_edge.i.i:                                  ; preds = %bb.ag
  %i.mh = ptrtoint ptr %i.lu to i64
  %i.mi = ptrtoint ptr %.1.i.i to i64
  %i.mj = sub i64 %i.mh, %i.mi                    ; 2 uses
  %i.mk = icmp sgt i64 %i.mj, 0
  br i1 %i.mk, label %.lr.ph.preheader.i.i.i.i.i.i.i37, label %_ZSt4moveIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i37:                 ; preds = %._crit_edge.i.i
  %i.ml = udiv exact i64 %i.mj, 24
  br label %.lr.ph.i.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i.i38:                           ; preds = %.lr.ph.i.i.i.i.i.i.i38, %.lr.ph.preheader.i.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i.i39 = phi i64 [ %i.mv, %.lr.ph.i.i.i.i.i.i.i38 ], [ %i.ml, %.lr.ph.preheader.i.i.i.i.i.i.i37 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i40 = phi ptr [ %i.mu, %.lr.ph.i.i.i.i.i.i.i38 ], [ %i.md, %.lr.ph.preheader.i.i.i.i.i.i.i37 ] ; 4 uses
  %.0910.i.i.i.i.i.i.i41 = phi ptr [ %i.mt, %.lr.ph.i.i.i.i.i.i.i38 ], [ %.1.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i37 ] ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i41, i64 16
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !38
  %i.mo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i40, i64 16
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !38
  %i.mp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i41, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !174
  %i.mr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i40, i64 8
  store ptr %i.mq, ptr %i.mr, align 8, !tbaa !174
  %i.ms = load i64, ptr %.0910.i.i.i.i.i.i.i41, align 8, !tbaa !41
  store i64 %i.ms, ptr %.0811.i.i.i.i.i.i.i40, align 8, !tbaa !41
  %i.mt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i41, i64 24
  %i.mu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i40, i64 24 ; 2 uses
  %i.mv = add nsw i64 %.012.i.i.i.i.i.i.i39, -1
  %i.mw = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i39, 1
  br i1 %i.mw, label %.lr.ph.i.i.i.i.i.i.i38, label %_ZSt4moveIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i, !llvm.loop !14

_ZSt4moveIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i38, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i32 = phi ptr [ %i.md, %._crit_edge.i.i ], [ %i.mu, %.lr.ph.i.i.i.i.i.i.i38 ]
  %i.mx = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i32 to i64 ; 2 uses
  %i.my = ptrtoint ptr %i.md to i64
  %i.mz = sub i64 %i.mx, %i.my
  %i.na = getelementptr inbounds i8, ptr %i.md, i64 %i.mz ; 3 uses
  %i.nb = ptrtoint ptr %i.lv to i64               ; 2 uses
  %i.nc = ptrtoint ptr %.117.i.i to i64
  %i.nd = sub i64 %i.nb, %i.nc                    ; 2 uses
  %i.ne = icmp sgt i64 %i.nd, 0
  br i1 %i.ne, label %.lr.ph.preheader.i.i.i.i.i19.i.i, label %"_ZSt12__move_mergeIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS4_EESt8functionIFvRS3_RNS2_11StringPieceEmEEbbE3$_0EEET0_T_SS_SS_SS_SR_T1_.exit.i"

.lr.ph.preheader.i.i.i.i.i19.i.i:                 ; preds = %_ZSt4moveIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i
  %i.nf = udiv exact i64 %i.nd, 24
  br label %.lr.ph.i.i.i.i.i20.i.i

.lr.ph.i.i.i.i.i20.i.i:                           ; preds = %.lr.ph.i.i.i.i.i20.i.i, %.lr.ph.preheader.i.i.i.i.i19.i.i
  %.012.i.i.i.i.i21.i.i = phi i64 [ %i.np, %.lr.ph.i.i.i.i.i20.i.i ], [ %i.nf, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i.i = phi ptr [ %i.no, %.lr.ph.i.i.i.i.i20.i.i ], [ %i.na, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 4 uses
  %.0910.i.i.i.i.i23.i.i = phi ptr [ %i.nn, %.lr.ph.i.i.i.i.i20.i.i ], [ %.117.i.i, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 4 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 16
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !38
  %i.ni = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 16
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !38
  %i.nj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !174
  %i.nl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 8
  store ptr %i.nk, ptr %i.nl, align 8, !tbaa !174
  %i.nm = load i64, ptr %.0910.i.i.i.i.i23.i.i, align 8, !tbaa !41
  store i64 %i.nm, ptr %.0811.i.i.i.i.i22.i.i, align 8, !tbaa !41
  %i.nn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 24
  %i.no = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 24 ; 2 uses
  %i.np = add nsw i64 %.012.i.i.i.i.i21.i.i, -1
  %i.nq = icmp samesign ugt i64 %.012.i.i.i.i.i21.i.i, 1
  br i1 %i.nq, label %.lr.ph.i.i.i.i.i20.i.i, label %"_ZSt12__move_mergeIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS4_EESt8functionIFvRS3_RNS2_11StringPieceEmEEbbE3$_0EEET0_T_SS_SS_SS_SR_T1_.exit.i", !llvm.loop !14

"_ZSt12__move_mergeIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS4_EESt8functionIFvRS3_RNS2_11StringPieceEmEEbbE3$_0EEET0_T_SS_SS_SS_SR_T1_.exit.i": ; preds = %.lr.ph.i.i.i.i.i20.i.i, %_ZSt4moveIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi ptr [ %i.na, %_ZSt4moveIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i ], [ %i.no, %.lr.ph.i.i.i.i.i20.i.i ]
  %3 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i.i to i64
  %i.nr = sub i64 %3, %i.mx
  %i.ns = getelementptr inbounds i8, ptr %i.na, i64 %i.nr ; 2 uses
  %i.nt = sub i64 %i.ie, %i.nb
  %i.nu = sdiv exact i64 %i.nt, 24                ; 2 uses
  %.not.i33 = icmp slt i64 %i.nu, %i.lt
  br i1 %.not.i33, label %._crit_edge.i34, label %bb.ad, !llvm.loop !626

._crit_edge.i34:                                  ; preds = %"_ZSt12__move_mergeIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS4_EESt8functionIFvRS3_RNS2_11StringPieceEmEEbbE3$_0EEET0_T_SS_SS_SS_SR_T1_.exit.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS4_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS6_EESt8functionIFvRS5_RNS4_11StringPieceEmEEbbE3$_0EEEvT_SR_T0_T1_T2_.exit"
  %.0.lcssa.i35 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS4_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS6_EESt8functionIFvRS5_RNS4_11StringPieceEmEEbbE3$_0EEEvT_SR_T0_T1_T2_.exit" ], [ %i.lv, %"_ZSt12__move_mergeIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS4_EESt8functionIFvRS3_RNS2_11StringPieceEmEEbbE3$_0EEET0_T_SS_SS_SS_SR_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS4_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS6_EESt8functionIFvRS5_RNS4_11StringPieceEmEEbbE3$_0EEEvT_SR_T0_T1_T2_.exit" ], [ %i.ns, %"_ZSt12__move_mergeIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS4_EESt8functionIFvRS3_RNS2_11StringPieceEmEEbbE3$_0EEET0_T_SS_SS_SS_SR_T1_.exit.i" ] ; 2 uses
  %.lcssa68.i = phi i64 [ %i.if, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS4_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS6_EESt8functionIFvRS5_RNS4_11StringPieceEmEEbbE3$_0EEEvT_SR_T0_T1_T2_.exit" ], [ %i.nu, %"_ZSt12__move_mergeIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS4_EESt8functionIFvRS3_RNS2_11StringPieceEmEEbbE3$_0EEET0_T_SS_SS_SS_SR_T1_.exit.i" ]
  %.sroa.speculated.i36 = tail call i64 @llvm.smin.i64(i64 %i.ig, i64 %.lcssa68.i) ; 2 uses
  %.idx63.i = mul nsw i64 %.sroa.speculated.i36, 24
  %i.nv = getelementptr inbounds i8, ptr %.0.lcssa.i35, i64 %.idx63.i ; 5 uses
  %i.nw = icmp ne i64 %.sroa.speculated.i36, 0
  %i.nx = icmp ne ptr %i.nv, %i.e
  %i.ny = and i1 %i.nw, %i.nx
  br i1 %i.ny, label %.lr.ph.i43.i, label %._crit_edge.i25.i

.lr.ph.i43.i:                                     ; preds = %._crit_edge.i34, %bb.aj
  %.030.i44.i = phi ptr [ %.1.i52.i, %bb.aj ], [ %.0.lcssa.i35, %._crit_edge.i34 ] ; 4 uses
  %.01629.i45.i = phi ptr [ %.117.i51.i, %bb.aj ], [ %i.nv, %._crit_edge.i34 ] ; 4 uses
  %.sroa.0.028.i46.i = phi ptr [ %i.og, %bb.aj ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i34 ] ; 4 uses
  %i.nz = getelementptr i8, ptr %.01629.i45.i, i64 16
  %.016.val.i47.i = load i32, ptr %i.nz, align 4, !tbaa !38 ; 2 uses
  %i.oa = getelementptr i8, ptr %.030.i44.i, i64 16
  %.0.val.i48.i = load i32, ptr %i.oa, align 4, !tbaa !38 ; 2 uses
  %i.ob = icmp slt i32 %.016.val.i47.i, %.0.val.i48.i
  br i1 %i.ob, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i43.i
  %i.oc = getelementptr inbounds nuw i8, ptr %.01629.i45.i, i64 24
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i43.i
  %i.od = getelementptr inbounds nuw i8, ptr %.030.i44.i, i64 24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.val.sink.i49.i = phi i32 [ %.016.val.i47.i, %bb.ah ], [ %.0.val.i48.i, %bb.ai ]
  %.01629.pn.i50.i = phi ptr [ %.01629.i45.i, %bb.ah ], [ %.030.i44.i, %bb.ai ] ; 2 uses
  %.117.i51.i = phi ptr [ %i.oc, %bb.ah ], [ %.01629.i45.i, %bb.ai ] ; 3 uses
  %.1.i52.i = phi ptr [ %.030.i44.i, %bb.ah ], [ %i.od, %bb.ai ] ; 3 uses
  %.sink.i53.i = load i64, ptr %.01629.pn.i50.i, align 8, !tbaa !41
  %.sink35.in.i54.i = getelementptr inbounds nuw i8, ptr %.01629.pn.i50.i, i64 8
  %.sink35.i55.i = load ptr, ptr %.sink35.in.i54.i, align 8, !tbaa !174
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46.i, i64 16
  store i32 %.0.val.sink.i49.i, ptr %i.oe, align 4, !tbaa !38
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46.i, i64 8
  store ptr %.sink35.i55.i, ptr %i.of, align 8, !tbaa !174
  store i64 %.sink.i53.i, ptr %.sroa.0.028.i46.i, align 8, !tbaa !41
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46.i, i64 24 ; 2 uses
  %i.oh = icmp ne ptr %.1.i52.i, %i.nv
  %i.oi = icmp ne ptr %.117.i51.i, %i.e
  %i.oj = select i1 %i.oh, i1 %i.oi, i1 false
  br i1 %i.oj, label %.lr.ph.i43.i, label %._crit_edge.i25.i, !llvm.loop !625

._crit_edge.i25.i:                                ; preds = %bb.aj, %._crit_edge.i34
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i34 ], [ %i.og, %bb.aj ] ; 4 uses
  %.016.lcssa.i27.i = phi ptr [ %i.nv, %._crit_edge.i34 ], [ %.117.i51.i, %bb.aj ] ; 2 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i35, %._crit_edge.i34 ], [ %.1.i52.i, %bb.aj ] ; 2 uses
  %i.ok = ptrtoint ptr %i.nv to i64
  %i.ol = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.om = sub i64 %i.ok, %i.ol                    ; 2 uses
  %i.on = icmp sgt i64 %i.om, 0
  br i1 %i.on, label %.lr.ph.preheader.i.i.i.i.i.i38.i, label %_ZSt4moveIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i

.lr.ph.preheader.i.i.i.i.i.i38.i:                 ; preds = %._crit_edge.i25.i
  %i.oo = udiv exact i64 %i.om, 24
  br label %.lr.ph.i.i.i.i.i.i39.i

.lr.ph.i.i.i.i.i.i39.i:                           ; preds = %.lr.ph.i.i.i.i.i.i39.i, %.lr.ph.preheader.i.i.i.i.i.i38.i
  %.012.i.i.i.i.i.i40.i = phi i64 [ %i.oy, %.lr.ph.i.i.i.i.i.i39.i ], [ %i.oo, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 2 uses
  %.0811.i.i.i.i.i.i41.i = phi ptr [ %i.ox, %.lr.ph.i.i.i.i.i.i39.i ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 4 uses
  %.0910.i.i.i.i.i.i42.i = phi ptr [ %i.ow, %.lr.ph.i.i.i.i.i.i39.i ], [ %.0.lcssa.i28.i, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42.i, i64 16
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !38
  %i.or = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41.i, i64 16
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !38
  %i.os = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42.i, i64 8
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !174
  %i.ou = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41.i, i64 8
  store ptr %i.ot, ptr %i.ou, align 8, !tbaa !174
  %i.ov = load i64, ptr %.0910.i.i.i.i.i.i42.i, align 8, !tbaa !41
  store i64 %i.ov, ptr %.0811.i.i.i.i.i.i41.i, align 8, !tbaa !41
  %i.ow = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42.i, i64 24
  %i.ox = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41.i, i64 24 ; 2 uses
  %i.oy = add nsw i64 %.012.i.i.i.i.i.i40.i, -1
  %i.oz = icmp samesign ugt i64 %.012.i.i.i.i.i.i40.i, 1
  br i1 %i.oz, label %.lr.ph.i.i.i.i.i.i39.i, label %_ZSt4moveIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i, !llvm.loop !14

_ZSt4moveIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i39.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %i.ox, %.lr.ph.i.i.i.i.i.i39.i ]
  %i.pa = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.pb = sub i64 %i.ie, %i.pa                    ; 2 uses
  %i.pc = icmp sgt i64 %i.pb, 0
  br i1 %i.pc, label %.lr.ph.preheader.i.i.i.i.i19.i32.i, label %"_ZSt17__merge_sort_loopIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNKS2_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS4_EESt8functionIFvRS3_RNS2_11StringPieceEmEEbbE3$_0EEEvT_SR_T0_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i19.i32.i:               ; preds = %_ZSt4moveIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i
  %i.pd = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.pe = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.pf = sub i64 %i.pd, %i.pe
  %i.pg = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.pf
  %i.ph = udiv exact i64 %i.pb, 24
  br label %.lr.ph.i.i.i.i.i20.i33.i

.lr.ph.i.i.i.i.i20.i33.i:                         ; preds = %.lr.ph.i.i.i.i.i20.i33.i, %.lr.ph.preheader.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i21.i34.i = phi i64 [ %i.pr, %.lr.ph.i.i.i.i.i20.i33.i ], [ %i.ph, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i35.i = phi ptr [ %i.pq, %.lr.ph.i.i.i.i.i20.i33.i ], [ %i.pg, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 4 uses
  %.0910.i.i.i.i.i23.i36.i = phi ptr [ %i.pp, %.lr.ph.i.i.i.i.i20.i33.i ], [ %.016.lcssa.i27.i, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36.i, i64 16
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !38
  %i.pk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35.i, i64 16
  store i32 %i.pj, ptr %i.pk, align 4, !tbaa !38
  %i.pl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36.i, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !174
  %i.pn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35.i, i64 8
  store ptr %i.pm, ptr %i.pn, align 8, !tbaa !174
  %i.po = load i64, ptr %.0910.i.i.i.i.i23.i36.i, align 8, !tbaa !41
  store i64 %i.po, ptr %.0811.i.i.i.i.i22.i35.i, align 8, !tbaa !41
  %i.pp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36.i, i64 24
  %i.pq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35.i, i64 24
  %i.pr = add nsw i64 %.012.i.i.i.i.i21.i34.i, -1
  %i.ps = icmp samesign ugt i64 %.012.i.i.i.i.i21.i34.i, 1
  br i1 %i.ps, label %.lr.ph.i.i.i.i.i20.i33.i, label %"_ZSt17__merge_sort_loopIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNKS2_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS4_EESt8functionIFvRS3_RNS2_11StringPieceEmEEbbE3$_0EEEvT_SR_T0_T1_T2_.exit", !llvm.loop !14

"_ZSt17__merge_sort_loopIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNKS2_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS4_EESt8functionIFvRS3_RNS2_11StringPieceEmEEbbE3$_0EEEvT_SR_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i20.i33.i, %_ZSt4moveIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i
  %i.pt = icmp slt i64 %i.lt, %i.d
  br i1 %i.pt, label %bb.v, label %._crit_edge, !llvm.loop !627

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNKS2_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS4_EESt8functionIFvRS3_RNS2_11StringPieceEmEEbbE3$_0EEEvT_SR_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNKS4_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS6_EESt8functionIFvRS5_RNS4_11StringPieceEmEEbbE3$_0EEEvT_SR_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNKS4_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS6_EESt8functionIFvRS5_RNS4_11StringPieceEmEEbbE3$_0EEEvT_SR_SR_T0_SS_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #15 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt5tupleIJiPN3lld5macho19CStringInputSectionEmEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNKS2_15PriorityBuilder18forEachStringPieceEN4llvm8ArrayRefIS4_EESt8functionIFvRS3_RNS2_11StringPieceEmEEbbE3$_0EEEvT_SR_T0_SS_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.g = load i32, ptr %i.f, align 4, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store i32 %i.g, ptr %i.h, align 4, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !174
  %i.k = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !174
  %i.l = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !41
  store i64 %i.l, ptr %.0811.i.i.i.i.i, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 3 uses
  %i.o = add nsw i64 %.012.i.i.i.i.i, -1
  %i.p = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !14

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.026.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.sroa.0.025.i = phi ptr [ %i.x, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.sroa.016.024.i = phi ptr [ %.sroa.016.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.not19.i = icmp eq ptr %.sroa.016.024.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr i8, ptr %.026.i, i64 16
  %.0.val.i = load i32, ptr %i.q, align 4, !tbaa !38 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.016.024.i, i64 16
  %.val.i.i = load i32, ptr %i.r, align 4, !tbaa !38 ; 2 uses
  %i.s = icmp slt i32 %.val.i.i, %.0.val.i
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 24
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.026.i, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.val.sink.i = phi i32 [ %.val.i.i, %bb.d ], [ %.0.val.i, %bb.e ]
  %.sroa.016.024.pn.i = phi ptr [ %.sroa.016.024.i, %bb.d ], [ %.026.i, %bb.e ] ; 2 uses
  %.sroa.016.1.i = phi ptr [ %i.t, %bb.d ], [ %.sroa.016.024.i, %bb.e ]
  %.1.i = phi ptr [ %.026.i, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %.sink.i = load i64, ptr %.sroa.016.024.pn.i, align 8, !tbaa !41
  %.sink30.in.i = getelementptr inbounds nuw i8, ptr %.sroa.016.024.pn.i, i64 8
end_hunk_0
