Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DAGISelMatcherEmitter?download=true
inline.NumInlined: 4945
inline.NumDeleted: 2230
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_:bb.a
  %.012.i.i.i.i.i11.i25.i.prol = phi i64 [ %i.rz, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %i.rr, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %.0811.i.i.i.i.i12.i26.i.prol = phi ptr [ %i.ry, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i.prol = phi ptr [ %i.rx, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %prol.iter176 = phi i64 [ %prol.iter176.next, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %i.rt = load ptr, ptr %.0910.i.i.i.i.i13.i27.i.prol, align 8, !tbaa !102
  store ptr %i.rt, ptr %.0811.i.i.i.i.i12.i26.i.prol, align 8, !tbaa !104
  %i.ru = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 8
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !52
  %i.rw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 8
  store i32 %i.rv, ptr %i.rw, align 8, !tbaa !105
  %i.rx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 16 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 16 ; 2 uses
  %i.rz = add nsw i64 %.012.i.i.i.i.i11.i25.i.prol, -1 ; 2 uses
  %prol.iter176.next = add i64 %prol.iter176, 1   ; 2 uses
  %prol.iter176.cmp.not = icmp eq i64 %prol.iter176.next, %xtraiter174
  br i1 %prol.iter176.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i.prol, !llvm.loop !601

.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol, %.lr.ph.i.i.i.i.i10.i24.i.preheader
  %.012.i.i.i.i.i11.i25.i.unr = phi i64 [ %i.rr, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.rz, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0811.i.i.i.i.i12.i26.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.ry, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0910.i.i.i.i.i13.i27.i.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.rx, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %i.sa = icmp ult i64 %i.rr, 4
  br i1 %i.sa, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_T2_.exit, label %.lr.ph.i.i.i.i.i10.i24.i

.lr.ph.i.i.i.i.i10.i24.i:                         ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i11.i25.i = phi i64 [ %i.sz, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.012.i.i.i.i.i11.i25.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i = phi ptr [ %i.sy, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0811.i.i.i.i.i12.i26.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i = phi ptr [ %i.sx, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0910.i.i.i.i.i13.i27.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %i.sb = load ptr, ptr %.0910.i.i.i.i.i13.i27.i, align 8, !tbaa !102
  store ptr %i.sb, ptr %.0811.i.i.i.i.i12.i26.i, align 8, !tbaa !104
  %i.sc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 8
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !52
  %i.se = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 8
  store i32 %i.sd, ptr %i.se, align 8, !tbaa !105
  %i.sf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 16
  %i.sg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 16
  %i.sh = load ptr, ptr %i.sf, align 8, !tbaa !102
  store ptr %i.sh, ptr %i.sg, align 8, !tbaa !104
  %i.si = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 24
  %i.sj = load i32, ptr %i.si, align 8, !tbaa !52
  %i.sk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 24
  store i32 %i.sj, ptr %i.sk, align 8, !tbaa !105
  %i.sl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 32
  %i.sm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 32
  %i.sn = load ptr, ptr %i.sl, align 8, !tbaa !102
  store ptr %i.sn, ptr %i.sm, align 8, !tbaa !104
  %i.so = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 40
  %i.sp = load i32, ptr %i.so, align 8, !tbaa !52
  %i.sq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 40
  store i32 %i.sp, ptr %i.sq, align 8, !tbaa !105
  %i.sr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 48
  %i.ss = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 48
  %i.st = load ptr, ptr %i.sr, align 8, !tbaa !102
  store ptr %i.st, ptr %i.ss, align 8, !tbaa !104
  %i.su = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 56
  %i.sv = load i32, ptr %i.su, align 8, !tbaa !52
  %i.sw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 56
  store i32 %i.sv, ptr %i.sw, align 8, !tbaa !105
  %i.sx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 64
  %i.sy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 64
  %i.sz = add nsw i64 %.012.i.i.i.i.i11.i25.i, -4
  %i.ta = icmp sgt i64 %.012.i.i.i.i.i11.i25.i, 4
  br i1 %i.ta, label %.lr.ph.i.i.i.i.i10.i24.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_T2_.exit, !llvm.loop !7

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_T2_.exit: ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i21.i
  %i.tb = shl nsw i64 %.058, 2                    ; 4 uses
  %.not66.i = icmp slt i64 %i.d, %i.tb
  br i1 %.not66.i, label %._crit_edge.i34, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_T2_.exit
  %.idx.i27 = shl nsw i64 %.058, 5                ; 2 uses
  %.idx57.i = shl nsw i64 %.058, 6                ; 2 uses
  %.not58.i = icmp eq i64 %.idx.i27, %.idx57.i
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt12__move_mergeIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEESQ_SN_SN_SN_SN_SQ_T1_.exit.i, %.lr.ph.i26
  %.sroa.022.068.i = phi ptr [ %0, %.lr.ph.i26 ], [ %i.wt, %_ZSt12__move_mergeIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEESQ_SN_SN_SN_SN_SQ_T1_.exit.i ] ; 2 uses
  %.067.i = phi ptr [ %2, %.lr.ph.i26 ], [ %i.td, %_ZSt12__move_mergeIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEESQ_SN_SN_SN_SN_SQ_T1_.exit.i ] ; 4 uses
  %i.tc = getelementptr inbounds i8, ptr %.067.i, i64 %.idx.i27 ; 4 uses
  %i.td = getelementptr inbounds i8, ptr %.067.i, i64 %.idx57.i ; 4 uses
  br i1 %.not58.i, label %._crit_edge.i.i, label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %bb.ac, %bb.af
  %.029.i.i = phi ptr [ %.1.i.i, %bb.af ], [ %.067.i, %bb.ac ] ; 4 uses
  %.01628.i.i = phi ptr [ %.117.i.i, %bb.af ], [ %i.tc, %bb.ac ] ; 4 uses
  %.sroa.0.027.i.i = phi ptr [ %i.tk, %bb.af ], [ %.sroa.022.068.i, %bb.ac ] ; 3 uses
  %i.te = getelementptr i8, ptr %.01628.i.i, i64 8
  %.016.val.i.i = load i32, ptr %i.te, align 8, !tbaa !105 ; 2 uses
  %i.tf = getelementptr i8, ptr %.029.i.i, i64 8
  %.0.val.i.i = load i32, ptr %i.tf, align 8, !tbaa !105 ; 2 uses
  %i.tg = icmp ugt i32 %.016.val.i.i, %.0.val.i.i
  br i1 %i.tg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i28
  %i.th = getelementptr inbounds nuw i8, ptr %.01628.i.i, i64 16
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i.i28
  %i.ti = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sink.in.i.i29 = phi ptr [ %.01628.i.i, %bb.ad ], [ %.029.i.i, %bb.ae ]
  %.0.val.sink.i.i = phi i32 [ %.016.val.i.i, %bb.ad ], [ %.0.val.i.i, %bb.ae ]
  %.117.i.i = phi ptr [ %i.th, %bb.ad ], [ %.01628.i.i, %bb.ae ] ; 3 uses
  %.1.i.i = phi ptr [ %.029.i.i, %bb.ad ], [ %i.ti, %bb.ae ] ; 3 uses
  %.sink.i.i30 = load ptr, ptr %.sink.in.i.i29, align 8, !tbaa !102
  store ptr %.sink.i.i30, ptr %.sroa.0.027.i.i, align 8, !tbaa !104
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 8
  store i32 %.0.val.sink.i.i, ptr %i.tj, align 8, !tbaa !105
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 16 ; 2 uses
  %i.tl = icmp ne ptr %.1.i.i, %i.tc
  %i.tm = icmp ne ptr %.117.i.i, %i.td
  %i.tn = select i1 %i.tl, i1 %i.tm, i1 false
  br i1 %i.tn, label %.lr.ph.i.i28, label %._crit_edge.i.i, !llvm.loop !602

._crit_edge.i.i:                                  ; preds = %bb.af, %bb.ac
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.022.068.i, %bb.ac ], [ %i.tk, %bb.af ] ; 5 uses
  %.016.lcssa.i.i = phi ptr [ %i.tc, %bb.ac ], [ %.117.i.i, %bb.af ] ; 3 uses
  %.0.lcssa.i.i31 = phi ptr [ %.067.i, %bb.ac ], [ %.1.i.i, %bb.af ] ; 3 uses
  %i.to = ptrtoint ptr %i.tc to i64
  %i.tp = ptrtoint ptr %.0.lcssa.i.i31 to i64
  %i.tq = sub i64 %i.to, %i.tp
  %i.tr = ashr exact i64 %i.tq, 4                 ; 5 uses
  %i.ts = icmp sgt i64 %i.tr, 0
  br i1 %i.ts, label %.lr.ph.i.i.i.i.i.i.i37.preheader, label %_ZSt4moveIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %._crit_edge.i.i
  %xtraiter177 = and i64 %i.tr, 3                 ; 2 uses
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i37.prol

.lr.ph.i.i.i.i.i.i.i37.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i37.prol
  %.012.i.i.i.i.i.i.i38.prol = phi i64 [ %i.tz, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ %i.tr, %.lr.ph.i.i.i.i.i.i.i37.preheader ]
  %.0811.i.i.i.i.i.i.i39.prol = phi ptr [ %i.ty, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i37.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i40.prol = phi ptr [ %i.tx, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ %.0.lcssa.i.i31, %.lr.ph.i.i.i.i.i.i.i37.preheader ] ; 3 uses
  %prol.iter179 = phi i64 [ %prol.iter179.next, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i37.preheader ]
  %i.tt = load ptr, ptr %.0910.i.i.i.i.i.i.i40.prol, align 8, !tbaa !102
  store ptr %i.tt, ptr %.0811.i.i.i.i.i.i.i39.prol, align 8, !tbaa !104
  %i.tu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40.prol, i64 8
  %i.tv = load i32, ptr %i.tu, align 8, !tbaa !52
  %i.tw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39.prol, i64 8
  store i32 %i.tv, ptr %i.tw, align 8, !tbaa !105
  %i.tx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40.prol, i64 16 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39.prol, i64 16 ; 3 uses
  %i.tz = add nsw i64 %.012.i.i.i.i.i.i.i38.prol, -1 ; 2 uses
  %prol.iter179.next = add i64 %prol.iter179, 1   ; 2 uses
  %prol.iter179.cmp.not = icmp eq i64 %prol.iter179.next, %xtraiter177
  br i1 %prol.iter179.cmp.not, label %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i37.prol, !llvm.loop !603

.lr.ph.i.i.i.i.i.i.i37.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i.i.i37.preheader
  %.012.i.i.i.i.i.i.i38.unr = phi i64 [ %i.tr, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.tz, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %.0811.i.i.i.i.i.i.i39.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.ty, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %.0910.i.i.i.i.i.i.i40.unr = phi ptr [ %.0.lcssa.i.i31, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.tx, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %.lcssa138.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.ty, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %i.ua = icmp ult i64 %i.tr, 4
  br i1 %i.ua, label %_ZSt4moveIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i.i37:                           ; preds = %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i.i38 = phi i64 [ %i.uz, %.lr.ph.i.i.i.i.i.i.i37 ], [ %.012.i.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i39 = phi ptr [ %i.uy, %.lr.ph.i.i.i.i.i.i.i37 ], [ %.0811.i.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i40 = phi ptr [ %i.ux, %.lr.ph.i.i.i.i.i.i.i37 ], [ %.0910.i.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %i.ub = load ptr, ptr %.0910.i.i.i.i.i.i.i40, align 8, !tbaa !102
  store ptr %i.ub, ptr %.0811.i.i.i.i.i.i.i39, align 8, !tbaa !104
  %i.uc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 8
  %i.ud = load i32, ptr %i.uc, align 8, !tbaa !52
  %i.ue = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 8
  store i32 %i.ud, ptr %i.ue, align 8, !tbaa !105
  %i.uf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 16
  %i.ug = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 16
  %i.uh = load ptr, ptr %i.uf, align 8, !tbaa !102
  store ptr %i.uh, ptr %i.ug, align 8, !tbaa !104
  %i.ui = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 24
  %i.uj = load i32, ptr %i.ui, align 8, !tbaa !52
  %i.uk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 24
  store i32 %i.uj, ptr %i.uk, align 8, !tbaa !105
  %i.ul = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 32
  %i.um = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 32
  %i.un = load ptr, ptr %i.ul, align 8, !tbaa !102
  store ptr %i.un, ptr %i.um, align 8, !tbaa !104
  %i.uo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 40
  %i.up = load i32, ptr %i.uo, align 8, !tbaa !52
  %i.uq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 40
  store i32 %i.up, ptr %i.uq, align 8, !tbaa !105
  %i.ur = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 48
  %i.us = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 48
  %i.ut = load ptr, ptr %i.ur, align 8, !tbaa !102
  store ptr %i.ut, ptr %i.us, align 8, !tbaa !104
  %i.uu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 56
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !52
  %i.uw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 56
  store i32 %i.uv, ptr %i.uw, align 8, !tbaa !105
  %i.ux = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 64
  %i.uy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 64 ; 2 uses
  %i.uz = add nsw i64 %.012.i.i.i.i.i.i.i38, -4
  %i.va = icmp sgt i64 %.012.i.i.i.i.i.i.i38, 4
  br i1 %i.va, label %.lr.ph.i.i.i.i.i.i.i37, label %_ZSt4moveIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i, !llvm.loop !7

_ZSt4moveIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i37, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i32 = phi ptr [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa138.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ], [ %i.uy, %.lr.ph.i.i.i.i.i.i.i37 ]
  %i.vb = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i32 to i64 ; 2 uses
  %i.vc = ptrtoint ptr %.sroa.0.0.lcssa.i.i to i64
  %i.vd = sub i64 %i.vb, %i.vc
  %i.ve = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.vd ; 4 uses
  %i.vf = ptrtoint ptr %i.td to i64               ; 2 uses
  %i.vg = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.vh = sub i64 %i.vf, %i.vg
  %i.vi = ashr exact i64 %i.vh, 4                 ; 5 uses
  %i.vj = icmp sgt i64 %i.vi, 0
  br i1 %i.vj, label %.lr.ph.i.i.i.i.i19.i.i.preheader, label %_ZSt12__move_mergeIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEESQ_SN_SN_SN_SN_SQ_T1_.exit.i

.lr.ph.i.i.i.i.i19.i.i.preheader:                 ; preds = %_ZSt4moveIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i
  %xtraiter180 = and i64 %i.vi, 3                 ; 2 uses
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i.prol

.lr.ph.i.i.i.i.i19.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i.i.preheader, %.lr.ph.i.i.i.i.i19.i.i.prol
  %.012.i.i.i.i.i20.i.i.prol = phi i64 [ %i.vq, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %i.vi, %.lr.ph.i.i.i.i.i19.i.i.preheader ]
  %.0811.i.i.i.i.i21.i.i.prol = phi ptr [ %i.vp, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %i.ve, %.lr.ph.i.i.i.i.i19.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i.prol = phi ptr [ %i.vo, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i.preheader ] ; 3 uses
  %prol.iter182 = phi i64 [ %prol.iter182.next, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i.preheader ]
  %i.vk = load ptr, ptr %.0910.i.i.i.i.i22.i.i.prol, align 8, !tbaa !102
  store ptr %i.vk, ptr %.0811.i.i.i.i.i21.i.i.prol, align 8, !tbaa !104
  %i.vl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 8
  %i.vm = load i32, ptr %i.vl, align 8, !tbaa !52
  %i.vn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 8
  store i32 %i.vm, ptr %i.vn, align 8, !tbaa !105
  %i.vo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 16 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 16 ; 3 uses
  %i.vq = add nsw i64 %.012.i.i.i.i.i20.i.i.prol, -1 ; 2 uses
  %prol.iter182.next = add i64 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i64 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i.prol, !llvm.loop !604

.lr.ph.i.i.i.i.i19.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol, %.lr.ph.i.i.i.i.i19.i.i.preheader
  %.012.i.i.i.i.i20.i.i.unr = phi i64 [ %i.vi, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.vq, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.0811.i.i.i.i.i21.i.i.unr = phi ptr [ %i.ve, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.vp, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.0910.i.i.i.i.i22.i.i.unr = phi ptr [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.vo, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.lcssa139.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.vp, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %i.vr = icmp ult i64 %i.vi, 4
  br i1 %i.vr, label %_ZSt12__move_mergeIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEESQ_SN_SN_SN_SN_SQ_T1_.exit.i, label %.lr.ph.i.i.i.i.i19.i.i

.lr.ph.i.i.i.i.i19.i.i:                           ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i
  %.012.i.i.i.i.i20.i.i = phi i64 [ %i.wq, %.lr.ph.i.i.i.i.i19.i.i ], [ %.012.i.i.i.i.i20.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i = phi ptr [ %i.wp, %.lr.ph.i.i.i.i.i19.i.i ], [ %.0811.i.i.i.i.i21.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i = phi ptr [ %i.wo, %.lr.ph.i.i.i.i.i19.i.i ], [ %.0910.i.i.i.i.i22.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 9 uses
  %i.vs = load ptr, ptr %.0910.i.i.i.i.i22.i.i, align 8, !tbaa !102
  store ptr %i.vs, ptr %.0811.i.i.i.i.i21.i.i, align 8, !tbaa !104
  %i.vt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 8
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !52
  %i.vv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 8
  store i32 %i.vu, ptr %i.vv, align 8, !tbaa !105
  %i.vw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 16
  %i.vx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 16
  %i.vy = load ptr, ptr %i.vw, align 8, !tbaa !102
  store ptr %i.vy, ptr %i.vx, align 8, !tbaa !104
  %i.vz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 24
  %i.wa = load i32, ptr %i.vz, align 8, !tbaa !52
  %i.wb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 24
  store i32 %i.wa, ptr %i.wb, align 8, !tbaa !105
  %i.wc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 32
  %i.wd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 32
  %i.we = load ptr, ptr %i.wc, align 8, !tbaa !102
  store ptr %i.we, ptr %i.wd, align 8, !tbaa !104
  %i.wf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 40
  %i.wg = load i32, ptr %i.wf, align 8, !tbaa !52
  %i.wh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 40
  store i32 %i.wg, ptr %i.wh, align 8, !tbaa !105
  %i.wi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 48
  %i.wj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 48
  %i.wk = load ptr, ptr %i.wi, align 8, !tbaa !102
  store ptr %i.wk, ptr %i.wj, align 8, !tbaa !104
  %i.wl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 56
  %i.wm = load i32, ptr %i.wl, align 8, !tbaa !52
  %i.wn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 56
  store i32 %i.wm, ptr %i.wn, align 8, !tbaa !105
  %i.wo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 64
  %i.wp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 64 ; 2 uses
  %i.wq = add nsw i64 %.012.i.i.i.i.i20.i.i, -4
  %i.wr = icmp sgt i64 %.012.i.i.i.i.i20.i.i, 4
  br i1 %i.wr, label %.lr.ph.i.i.i.i.i19.i.i, label %_ZSt12__move_mergeIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEESQ_SN_SN_SN_SN_SQ_T1_.exit.i, !llvm.loop !7

_ZSt12__move_mergeIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEESQ_SN_SN_SN_SN_SQ_T1_.exit.i: ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i, %_ZSt4moveIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi ptr [ %i.ve, %_ZSt4moveIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i ], [ %.lcssa139.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ], [ %i.wp, %.lr.ph.i.i.i.i.i19.i.i ]
  %3 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i.i to i64
  %i.ws = sub i64 %3, %i.vb
  %i.wt = getelementptr inbounds i8, ptr %i.ve, i64 %i.ws ; 2 uses
  %i.wu = sub i64 %i.mb, %i.vf
  %i.wv = ashr exact i64 %i.wu, 4                 ; 2 uses
  %.not.i33 = icmp slt i64 %i.wv, %i.tb
  br i1 %.not.i33, label %._crit_edge.i34, label %bb.ac, !llvm.loop !605

._crit_edge.i34:                                  ; preds = %_ZSt12__move_mergeIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEESQ_SN_SN_SN_SN_SQ_T1_.exit.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_T2_.exit
  %.0.lcssa.i35 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_T2_.exit ], [ %i.td, %_ZSt12__move_mergeIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEESQ_SN_SN_SN_SN_SQ_T1_.exit.i ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_T2_.exit ], [ %i.wt, %_ZSt12__move_mergeIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEESQ_SN_SN_SN_SN_SQ_T1_.exit.i ] ; 2 uses
  %.lcssa64.i = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_T2_.exit ], [ %i.wv, %_ZSt12__move_mergeIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEESQ_SN_SN_SN_SN_SQ_T1_.exit.i ]
  %.sroa.speculated.i36 = tail call i64 @llvm.smin.i64(i64 %i.mc, i64 %.lcssa64.i) ; 2 uses
  %.idx59.i = shl nsw i64 %.sroa.speculated.i36, 4
  %i.ww = getelementptr inbounds i8, ptr %.0.lcssa.i35, i64 %.idx59.i ; 5 uses
  %i.wx = icmp ne i64 %.sroa.speculated.i36, 0
  %i.wy = icmp ne ptr %i.ww, %i.e
  %i.wz = and i1 %i.wx, %i.wy
  br i1 %i.wz, label %.lr.ph.i41.i, label %._crit_edge.i25.i

.lr.ph.i41.i:                                     ; preds = %._crit_edge.i34, %bb.ai
  %.029.i42.i = phi ptr [ %.1.i50.i, %bb.ai ], [ %.0.lcssa.i35, %._crit_edge.i34 ] ; 4 uses
  %.01628.i43.i = phi ptr [ %.117.i49.i, %bb.ai ], [ %i.ww, %._crit_edge.i34 ] ; 4 uses
  %.sroa.0.027.i44.i = phi ptr [ %i.xg, %bb.ai ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i34 ] ; 3 uses
  %i.xa = getelementptr i8, ptr %.01628.i43.i, i64 8
  %.016.val.i45.i = load i32, ptr %i.xa, align 8, !tbaa !105 ; 2 uses
  %i.xb = getelementptr i8, ptr %.029.i42.i, i64 8
  %.0.val.i46.i = load i32, ptr %i.xb, align 8, !tbaa !105 ; 2 uses
  %i.xc = icmp ugt i32 %.016.val.i45.i, %.0.val.i46.i
  br i1 %i.xc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i41.i
  %i.xd = getelementptr inbounds nuw i8, ptr %.01628.i43.i, i64 16
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i41.i
  %i.xe = getelementptr inbounds nuw i8, ptr %.029.i42.i, i64 16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink.in.i47.i = phi ptr [ %.01628.i43.i, %bb.ag ], [ %.029.i42.i, %bb.ah ]
  %.0.val.sink.i48.i = phi i32 [ %.016.val.i45.i, %bb.ag ], [ %.0.val.i46.i, %bb.ah ]
  %.117.i49.i = phi ptr [ %i.xd, %bb.ag ], [ %.01628.i43.i, %bb.ah ] ; 3 uses
  %.1.i50.i = phi ptr [ %.029.i42.i, %bb.ag ], [ %i.xe, %bb.ah ] ; 3 uses
  %.sink.i51.i = load ptr, ptr %.sink.in.i47.i, align 8, !tbaa !102
  store ptr %.sink.i51.i, ptr %.sroa.0.027.i44.i, align 8, !tbaa !104
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 8
  store i32 %.0.val.sink.i48.i, ptr %i.xf, align 8, !tbaa !105
  %i.xg = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 16 ; 2 uses
  %i.xh = icmp ne ptr %.1.i50.i, %i.ww
  %i.xi = icmp ne ptr %.117.i49.i, %i.e
  %i.xj = select i1 %i.xh, i1 %i.xi, i1 false
  br i1 %i.xj, label %.lr.ph.i41.i, label %._crit_edge.i25.i, !llvm.loop !602

._crit_edge.i25.i:                                ; preds = %bb.ai, %._crit_edge.i34
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i34 ], [ %i.xg, %bb.ai ] ; 5 uses
  %.016.lcssa.i27.i = phi ptr [ %i.ww, %._crit_edge.i34 ], [ %.117.i49.i, %bb.ai ] ; 3 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i35, %._crit_edge.i34 ], [ %.1.i50.i, %bb.ai ] ; 3 uses
  %i.xk = ptrtoint ptr %i.ww to i64
  %i.xl = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.xm = sub i64 %i.xk, %i.xl
  %i.xn = ashr exact i64 %i.xm, 4                 ; 5 uses
  %i.xo = icmp sgt i64 %i.xn, 0
  br i1 %i.xo, label %.lr.ph.i.i.i.i.i.i37.i.preheader, label %_ZSt4moveIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i

.lr.ph.i.i.i.i.i.i37.i.preheader:                 ; preds = %._crit_edge.i25.i
  %xtraiter183 = and i64 %i.xn, 3                 ; 2 uses
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol

.lr.ph.i.i.i.i.i.i37.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i37.i.preheader, %.lr.ph.i.i.i.i.i.i37.i.prol
  %.012.i.i.i.i.i.i38.i.prol = phi i64 [ %i.xv, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %i.xn, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %.0811.i.i.i.i.i.i39.i.prol = phi ptr [ %i.xu, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i.prol = phi ptr [ %i.xt, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %prol.iter185 = phi i64 [ %prol.iter185.next, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %i.xp = load ptr, ptr %.0910.i.i.i.i.i.i40.i.prol, align 8, !tbaa !102
  store ptr %i.xp, ptr %.0811.i.i.i.i.i.i39.i.prol, align 8, !tbaa !104
  %i.xq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 8
  %i.xr = load i32, ptr %i.xq, align 8, !tbaa !52
  %i.xs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 8
  store i32 %i.xr, ptr %i.xs, align 8, !tbaa !105
  %i.xt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 16 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 16 ; 3 uses
  %i.xv = add nsw i64 %.012.i.i.i.i.i.i38.i.prol, -1 ; 2 uses
  %prol.iter185.next = add i64 %prol.iter185, 1   ; 2 uses
  %prol.iter185.cmp.not = icmp eq i64 %prol.iter185.next, %xtraiter183
  br i1 %prol.iter185.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol, !llvm.loop !606

.lr.ph.i.i.i.i.i.i37.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol, %.lr.ph.i.i.i.i.i.i37.i.preheader
  %.012.i.i.i.i.i.i38.i.unr = phi i64 [ %i.xn, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.xv, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0811.i.i.i.i.i.i39.i.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.xu, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0910.i.i.i.i.i.i40.i.unr = phi ptr [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.xt, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.lcssa144.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.xu, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %i.xw = icmp ult i64 %i.xn, 4
  br i1 %i.xw, label %_ZSt4moveIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i, label %.lr.ph.i.i.i.i.i.i37.i

.lr.ph.i.i.i.i.i.i37.i:                           ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i
  %.012.i.i.i.i.i.i38.i = phi i64 [ %i.yv, %.lr.ph.i.i.i.i.i.i37.i ], [ %.012.i.i.i.i.i.i38.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i = phi ptr [ %i.yu, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0811.i.i.i.i.i.i39.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i = phi ptr [ %i.yt, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0910.i.i.i.i.i.i40.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %i.xx = load ptr, ptr %.0910.i.i.i.i.i.i40.i, align 8, !tbaa !102
  store ptr %i.xx, ptr %.0811.i.i.i.i.i.i39.i, align 8, !tbaa !104
  %i.xy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 8
  %i.xz = load i32, ptr %i.xy, align 8, !tbaa !52
  %i.ya = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 8
  store i32 %i.xz, ptr %i.ya, align 8, !tbaa !105
  %i.yb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 16
  %i.yc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 16
  %i.yd = load ptr, ptr %i.yb, align 8, !tbaa !102
  store ptr %i.yd, ptr %i.yc, align 8, !tbaa !104
  %i.ye = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 24
  %i.yf = load i32, ptr %i.ye, align 8, !tbaa !52
  %i.yg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 24
  store i32 %i.yf, ptr %i.yg, align 8, !tbaa !105
  %i.yh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 32
  %i.yi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 32
  %i.yj = load ptr, ptr %i.yh, align 8, !tbaa !102
  store ptr %i.yj, ptr %i.yi, align 8, !tbaa !104
  %i.yk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 40
  %i.yl = load i32, ptr %i.yk, align 8, !tbaa !52
  %i.ym = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 40
  store i32 %i.yl, ptr %i.ym, align 8, !tbaa !105
  %i.yn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 48
  %i.yo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 48
  %i.yp = load ptr, ptr %i.yn, align 8, !tbaa !102
  store ptr %i.yp, ptr %i.yo, align 8, !tbaa !104
  %i.yq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 56
  %i.yr = load i32, ptr %i.yq, align 8, !tbaa !52
  %i.ys = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 56
  store i32 %i.yr, ptr %i.ys, align 8, !tbaa !105
  %i.yt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 64
  %i.yu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 64 ; 2 uses
  %i.yv = add nsw i64 %.012.i.i.i.i.i.i38.i, -4
  %i.yw = icmp sgt i64 %.012.i.i.i.i.i.i38.i, 4
  br i1 %i.yw, label %.lr.ph.i.i.i.i.i.i37.i, label %_ZSt4moveIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i, !llvm.loop !7

_ZSt4moveIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %.lcssa144.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ], [ %i.yu, %.lr.ph.i.i.i.i.i.i37.i ]
  %i.yx = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.yy = sub i64 %i.mb, %i.yx
  %i.yz = ashr exact i64 %i.yy, 4                 ; 5 uses
  %i.za = icmp sgt i64 %i.yz, 0
  br i1 %i.za, label %.lr.ph.i.i.i.i.i19.i32.preheader.i, label %_ZSt17__merge_sort_loopIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_T2_.exit

.lr.ph.i.i.i.i.i19.i32.preheader.i:               ; preds = %_ZSt4moveIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i
  %i.zb = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.zc = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.zd = sub i64 %i.zb, %i.zc
  %i.ze = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.zd ; 2 uses
  %xtraiter186 = and i64 %i.yz, 3                 ; 2 uses
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol

.lr.ph.i.i.i.i.i19.i32.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i, %.lr.ph.i.i.i.i.i19.i32.i.prol
  %.012.i.i.i.i.i20.i33.i.prol = phi i64 [ %i.zl, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.yz, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %.0811.i.i.i.i.i21.i34.i.prol = phi ptr [ %i.zk, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.ze, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i.prol = phi ptr [ %i.zj, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %prol.iter188 = phi i64 [ %prol.iter188.next, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %i.zf = load ptr, ptr %.0910.i.i.i.i.i22.i35.i.prol, align 8, !tbaa !102
  store ptr %i.zf, ptr %.0811.i.i.i.i.i21.i34.i.prol, align 8, !tbaa !104
  %i.zg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 8
  %i.zh = load i32, ptr %i.zg, align 8, !tbaa !52
  %i.zi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 8
  store i32 %i.zh, ptr %i.zi, align 8, !tbaa !105
  %i.zj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 16 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 16 ; 2 uses
  %i.zl = add nsw i64 %.012.i.i.i.i.i20.i33.i.prol, -1 ; 2 uses
  %prol.iter188.next = add i64 %prol.iter188, 1   ; 2 uses
  %prol.iter188.cmp.not = icmp eq i64 %prol.iter188.next, %xtraiter186
  br i1 %prol.iter188.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol, !llvm.loop !607

.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i
  %.012.i.i.i.i.i20.i33.i.unr = phi i64 [ %i.yz, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.zl, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0811.i.i.i.i.i21.i34.i.unr = phi ptr [ %i.ze, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.zk, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0910.i.i.i.i.i22.i35.i.unr = phi ptr [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.zj, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %i.zm = icmp ult i64 %i.yz, 4
  br i1 %i.zm, label %_ZSt17__merge_sort_loopIPSt4pairIPKN4llvm14ComplexPatternEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_T2_.exit, label %.lr.ph.i.i.i.i.i19.i32.i

.lr.ph.i.i.i.i.i19.i32.i:                         ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i20.i33.i = phi i64 [ %i.aal, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.012.i.i.i.i.i20.i33.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i = phi ptr [ %i.aak, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0811.i.i.i.i.i21.i34.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i = phi ptr [ %i.aaj, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0910.i.i.i.i.i22.i35.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %i.zn = load ptr, ptr %.0910.i.i.i.i.i22.i35.i, align 8, !tbaa !102
  store ptr %i.zn, ptr %.0811.i.i.i.i.i21.i34.i, align 8, !tbaa !104
  %i.zo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 8
  %i.zp = load i32, ptr %i.zo, align 8, !tbaa !52
  %i.zq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 8
  store i32 %i.zp, ptr %i.zq, align 8, !tbaa !105
  %i.zr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 16
  %i.zs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 16
  %i.zt = load ptr, ptr %i.zr, align 8, !tbaa !102
  store ptr %i.zt, ptr %i.zs, align 8, !tbaa !104
  %i.zu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 24
  %i.zv = load i32, ptr %i.zu, align 8, !tbaa !52
  %i.zw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 24
  store i32 %i.zv, ptr %i.zw, align 8, !tbaa !105
  %i.zx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 32
  %i.zy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 32
  %i.zz = load ptr, ptr %i.zx, align 8, !tbaa !102
  store ptr %i.zz, ptr %i.zy, align 8, !tbaa !104
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 40
  %i.aab = load i32, ptr %i.aaa, align 8, !tbaa !52
end_hunk_0
begin_hunk_1_@_ZSt12__move_mergeIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEEST_SQ_SQ_SQ_SQ_ST_T1_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18: ; preds = %bb.i
  br i1 %i.ak, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i19

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.al = getelementptr inbounds nuw i8, ptr %.050, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !119 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %.not21.i.i21 = icmp eq ptr %.050, %.sroa.0.046
  br i1 %.not21.i.i21, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit26, label %bb.k, !prof !109

bb.k:                                             ; preds = %bb.j
  switch i64 %i.am, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ao = load i8, ptr %i.ai, align 1, !tbaa !113
  store i8 %i.ao, ptr %i.g, align 1, !tbaa !113
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.ai, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22: ; preds = %bb.m, %bb.l, %bb.k
  %i.ap = load i64, ptr %i.al, align 8, !tbaa !119 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.046, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !119
  %i.ar = load ptr, ptr %.sroa.0.046, align 8, !tbaa !112
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !113
  %.pre.i.i23 = load ptr, ptr %.050, align 8, !tbaa !112
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit26

.thread.i.i25:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.046, i64 8
  store ptr %i.ai, ptr %.sroa.0.046, align 8, !tbaa !112
  %i.au = getelementptr inbounds nuw i8, ptr %.050, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !119
  store i64 %i.av, ptr %i.at, align 8, !tbaa !119
  %i.aw = load i64, ptr %i.aj, align 8, !tbaa !113
  store i64 %i.aw, ptr %i.h, align 8, !tbaa !113
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18
  %i.ax = load i64, ptr %i.h, align 8, !tbaa !113
  store ptr %i.ai, ptr %.sroa.0.046, align 8, !tbaa !112
  %i.ay = getelementptr inbounds nuw i8, ptr %.050, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !119
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.046, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !119
  %i.bb = load i64, ptr %i.aj, align 8, !tbaa !113
  store i64 %i.bb, ptr %i.h, align 8, !tbaa !113
  %.not.i.i20 = icmp eq ptr %i.g, null
  br i1 %.not.i.i20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i19
  store ptr %i.g, ptr %.050, align 8, !tbaa !112
  store i64 %i.ax, ptr %i.aj, align 8, !tbaa !113
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit26

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i19, %.thread.i.i25
  store ptr %i.aj, ptr %.050, align 8, !tbaa !112
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit26

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit26: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22, %bb.n, %bb.o
  %i.bc = phi ptr [ %i.g, %bb.n ], [ %i.aj, %bb.o ], [ %i.ai, %bb.j ], [ %.pre.i.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.050, i64 8
  store i64 0, ptr %i.bd, align 8, !tbaa !119
  store i8 0, ptr %i.bc, align 1, !tbaa !113
  %i.be = load i32, ptr %i.e, align 8, !tbaa !52
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.046, i64 32
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !311
  %i.bg = getelementptr inbounds nuw i8, ptr %.050, i64 40
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit26, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit
  %.117 = phi ptr [ %i.ah, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit ], [ %.01649, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit26 ] ; 3 uses
  %.1 = phi ptr [ %.050, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit ], [ %i.bg, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit26 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.046, i64 40 ; 2 uses
  %i.bi = icmp ne ptr %.1, %1
  %i.bj = icmp ne ptr %.117, %3
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !639

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.bh, %bb.p ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.p ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.p ] ; 2 uses
  %i.bl = ptrtoint ptr %1 to i64
  %i.bm = ptrtoint ptr %.0.lcssa to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge
  %i.bp = udiv exact i64 %i.bn, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.013.i.i.i.i.i = phi i64 [ %i.cu, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i ], [ %i.bp, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ct, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 11 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cs, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 12 uses
  %i.bq = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !112 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 4 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  %i.bt = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !112 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16 ; 6 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu                ; 2 uses
  br i1 %i.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.bv, label %bb.q, label %.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.bv, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !119 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  tail call void @llvm.assume(i1 %i.by)
  %.not21.i.i.i.i.i.i.i = icmp eq ptr %.0910.i.i.i.i.i, %.0811.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i.i, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i, label %bb.r, !prof !109

bb.r:                                             ; preds = %bb.q
  switch i64 %i.bx, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.bz = load i8, ptr %i.bt, align 1, !tbaa !113
  store i8 %i.bz, ptr %i.bq, align 1, !tbaa !113
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bt, i64 %i.bx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.ca = load i64, ptr %i.bw, align 8, !tbaa !119 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !119
  %i.cc = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !112
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca
  store i8 0, ptr %i.cd, align 1, !tbaa !113
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !112
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.bt, ptr %.0811.i.i.i.i.i, align 8, !tbaa !112
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !119
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !119
  %i.ch = load i64, ptr %i.bu, align 8, !tbaa !113
  store i64 %i.ch, ptr %i.br, align 8, !tbaa !113
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.ci = load i64, ptr %i.br, align 8, !tbaa !113
  store ptr %i.bt, ptr %.0811.i.i.i.i.i, align 8, !tbaa !112
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !119
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !119
  %i.cm = load i64, ptr %i.bu, align 8, !tbaa !113
  store i64 %i.cm, ptr %i.br, align 8, !tbaa !113
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i
  store ptr %i.bq, ptr %.0910.i.i.i.i.i, align 8, !tbaa !112
  store i64 %i.ci, ptr %i.bu, align 8, !tbaa !113
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  store ptr %i.bu, ptr %.0910.i.i.i.i.i, align 8, !tbaa !112
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i, %bb.q
  %i.cn = phi ptr [ %i.bq, %bb.u ], [ %i.bu, %bb.v ], [ %i.bt, %bb.q ], [ %.pre.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  store i64 0, ptr %i.co, align 8, !tbaa !119
  store i8 0, ptr %i.cn, align 1, !tbaa !113
  %i.cp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !52
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !311
  %i.cs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40 ; 2 uses
  %i.cu = add nsw i64 %.013.i.i.i.i.i, -1
  %i.cv = icmp sgt i64 %.013.i.i.i.i.i, 1
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit, !llvm.loop !10

_ZSt4moveIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.ct, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i ]
  %i.cw = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.cx = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.cy ; 3 uses
  %i.da = ptrtoint ptr %3 to i64
  %i.db = ptrtoint ptr %.016.lcssa to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  %i.dd = icmp sgt i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.preheader.i.i.i.i.i28, label %_ZSt4moveIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit42

.lr.ph.preheader.i.i.i.i.i28:                     ; preds = %_ZSt4moveIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit
  %i.de = udiv exact i64 %i.dc, 40
  br label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i36, %.lr.ph.preheader.i.i.i.i.i28
  %.013.i.i.i.i.i30 = phi i64 [ %i.ej, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i36 ], [ %i.de, %.lr.ph.preheader.i.i.i.i.i28 ] ; 2 uses
  %.0811.i.i.i.i.i31 = phi ptr [ %i.ei, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i36 ], [ %i.cz, %.lr.ph.preheader.i.i.i.i.i28 ] ; 11 uses
  %.0910.i.i.i.i.i32 = phi ptr [ %i.eh, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i36 ], [ %.016.lcssa, %.lr.ph.preheader.i.i.i.i.i28 ] ; 12 uses
  %i.df = load ptr, ptr %.0811.i.i.i.i.i31, align 8, !tbaa !112 ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 16 ; 4 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  %i.di = load ptr, ptr %.0910.i.i.i.i.i32, align 8, !tbaa !112 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 16 ; 6 uses
  %i.dk = icmp eq ptr %i.di, %i.dj                ; 2 uses
  br i1 %i.dh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40: ; preds = %.lr.ph.i.i.i.i.i29
  br i1 %i.dk, label %bb.w, label %.thread.i.i.i.i.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i33: ; preds = %.lr.ph.i.i.i.i.i29
  br i1 %i.dk, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i34

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40
  %i.dl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 8 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !119 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 16
  tail call void @llvm.assume(i1 %i.dn)
  %.not21.i.i.i.i.i.i.i37 = icmp eq ptr %.0910.i.i.i.i.i32, %.0811.i.i.i.i.i31
  br i1 %.not21.i.i.i.i.i.i.i37, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i36, label %bb.x, !prof !109

bb.x:                                             ; preds = %bb.w
  switch i64 %i.dm, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.do = load i8, ptr %i.di, align 1, !tbaa !113
  store i8 %i.do, ptr %i.df, align 1, !tbaa !113
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.di, i64 %i.dm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38: ; preds = %bb.z, %bb.y, %bb.x
  %i.dp = load i64, ptr %i.dl, align 8, !tbaa !119 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !119
  %i.dr = load ptr, ptr %.0811.i.i.i.i.i31, align 8, !tbaa !112
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dp
  store i8 0, ptr %i.ds, align 1, !tbaa !113
  %.pre.i.i.i.i.i.i.i39 = load ptr, ptr %.0910.i.i.i.i.i32, align 8, !tbaa !112
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i36

.thread.i.i.i.i.i.i.i41:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40
  %i.dt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 8
  store ptr %i.di, ptr %.0811.i.i.i.i.i31, align 8, !tbaa !112
  %i.du = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !119
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !119
  %i.dw = load i64, ptr %i.dj, align 8, !tbaa !113
  store i64 %i.dw, ptr %i.dg, align 8, !tbaa !113
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i33
  %i.dx = load i64, ptr %i.dg, align 8, !tbaa !113
  store ptr %i.di, ptr %.0811.i.i.i.i.i31, align 8, !tbaa !112
  %i.dy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !119
  %i.ea = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 8
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !119
  %i.eb = load i64, ptr %i.dj, align 8, !tbaa !113
  store i64 %i.eb, ptr %i.dg, align 8, !tbaa !113
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i.i.i35, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i34
  store ptr %i.df, ptr %.0910.i.i.i.i.i32, align 8, !tbaa !112
  store i64 %i.dx, ptr %i.dj, align 8, !tbaa !113
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i36

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i34, %.thread.i.i.i.i.i.i.i41
  store ptr %i.dj, ptr %.0910.i.i.i.i.i32, align 8, !tbaa !112
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i36

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i36: ; preds = %bb.ab, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38, %bb.w
  %i.ec = phi ptr [ %i.df, %bb.aa ], [ %i.dj, %bb.ab ], [ %i.di, %bb.w ], [ %.pre.i.i.i.i.i.i.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38 ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 8
  store i64 0, ptr %i.ed, align 8, !tbaa !119
  store i8 0, ptr %i.ec, align 1, !tbaa !113
  %i.ee = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 32
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !52
  %i.eg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 32
  store i32 %i.ef, ptr %i.eg, align 8, !tbaa !311
  %i.eh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 40
  %i.ei = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 40 ; 2 uses
  %i.ej = add nsw i64 %.013.i.i.i.i.i30, -1
  %i.ek = icmp sgt i64 %.013.i.i.i.i.i30, 1
  br i1 %i.ek, label %.lr.ph.i.i.i.i.i29, label %_ZSt4moveIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit42, !llvm.loop !10

_ZSt4moveIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit42: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i36, %_ZSt4moveIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit
  %.08.lcssa.i.i.i.i.i27 = phi ptr [ %i.cz, %_ZSt4moveIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit ], [ %i.ei, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEaSEOS6_.exit.i.i.i.i.i36 ]
  %5 = ptrtoint ptr %.08.lcssa.i.i.i.i.i27 to i64
  %i.el = sub i64 %5, %i.cw
  %i.em = getelementptr inbounds i8, ptr %i.cz, i64 %i.el
  ret ptr %i.em
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEEvSQ_SQ_SQ_ST_ST_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond83 = or i1 %i.a, %i.b
  br i1 %or.cond83, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8088 = phi i64 [ %4, %.lr.ph ], [ %i.av, %tailrecurse ] ; 4 uses
  %.tr7987 = phi i64 [ %3, %.lr.ph ], [ %i.au, %tailrecurse ] ; 4 uses
  %.tr7785 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 7 uses
  %.tr84 = phi ptr [ %0, %.lr.ph ], [ %i.at, %tailrecurse ] ; 7 uses
  %i.d = add nsw i64 %.tr8088, %.tr7987
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.tr7785, i64 32   ; 3 uses
  %.val.i = load i32, ptr %i.f, align 8, !tbaa !311
  %i.g = getelementptr i8, ptr %.tr84, i64 32     ; 3 uses
  %.val1.i = load i32, ptr %i.g, align 8, !tbaa !311
  %i.h = icmp ugt i32 %.val.i, %.val1.i
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %.tr84, ptr noundef nonnull align 8 dereferenceable(36) %.tr7785) #25
  %i.i = load i32, ptr %i.g, align 8, !tbaa !52
  %i.j = load i32, ptr %i.f, align 8, !tbaa !52
  store i32 %i.j, ptr %i.g, align 8, !tbaa !52
  store i32 %i.i, ptr %i.f, align 8, !tbaa !52
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.k = icmp sgt i64 %.tr7987, %.tr8088
  %i.l = ptrtoint ptr %.tr7785 to i64             ; 4 uses
  br i1 %i.k, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit54

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.m = sdiv i64 %.tr7987, 2                     ; 2 uses
  %i.n = getelementptr inbounds [40 x i8], ptr %.tr84, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %.val = load i32, ptr %i.o, align 8
  %i.p = sub i64 %i.c, %i.l                       ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.r = udiv exact i64 %i.p, 40
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i
  %.07.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.r, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %.sroa.02.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7785, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %i.s = lshr i64 %.07.i, 1                       ; 3 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %.sroa.02.06.i, i64 %i.s ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 32
  %.val.i.i = load i32, ptr %i.u, align 8, !tbaa !311
  %i.v = icmp ugt i32 %.val.i.i, %.val            ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.x = xor i64 %i.s, -1
  %i.y = add nsw i64 %.07.i, %i.x
  %.sroa.02.1.i = select i1 %i.v, ptr %i.w, ptr %.sroa.02.06.i ; 3 uses
  %.1.i = select i1 %i.v, i64 %i.y, i64 %i.s      ; 2 uses
  %i.z = icmp sgt i64 %.1.i, 0
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit.loopexit, !llvm.loop !12

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.02.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit.loopexit ], [ %i.l, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.02.0.lcssa.i = phi ptr [ %.sroa.02.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit.loopexit ], [ %.tr7785, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.aa = sub i64 %.pre-phi, %i.l
  %i.ab = sdiv exact i64 %i.aa, 40
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit54: ; preds = %bb.e
  %i.ac = sdiv i64 %.tr8088, 2                    ; 2 uses
  %i.ad = getelementptr inbounds [40 x i8], ptr %.tr7785, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 32
  %.val50 = load i32, ptr %i.ae, align 8
  %i.af = ptrtoint ptr %.tr84 to i64              ; 3 uses
  %i.ag = sub i64 %i.l, %i.af                     ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit54
  %i.ai = udiv exact i64 %i.ag, 40
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56
  %.07.i58 = phi i64 [ %.1.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %i.ai, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56 ] ; 2 uses
  %.sroa.02.06.i59 = phi ptr [ %.sroa.02.1.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %.tr84, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56 ] ; 2 uses
  %i.aj = lshr i64 %.07.i58, 1                    ; 3 uses
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %.sroa.02.06.i59, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 32
  %.val2.i.i = load i32, ptr %i.al, align 8, !tbaa !311
  %i.am = icmp ugt i32 %.val50, %.val2.i.i        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.ao = xor i64 %i.aj, -1
  %i.ap = add nsw i64 %.07.i58, %i.ao
  %.sroa.02.1.i62 = select i1 %i.am, ptr %.sroa.02.06.i59, ptr %i.an ; 3 uses
  %.1.i63 = select i1 %i.am, i64 %i.aj, i64 %i.ap ; 2 uses
  %i.aq = icmp sgt i64 %.1.i63, 0
  br i1 %i.aq, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit.loopexit, !llvm.loop !13

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.pre91 = ptrtoint ptr %.sroa.02.1.i62 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit54
  %.pre-phi92 = phi i64 [ %.pre91, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit.loopexit ], [ %i.af, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ]
  %.sroa.02.0.lcssa.i55 = phi ptr [ %.sroa.02.1.i62, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit.loopexit ], [ %.tr84, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ]
  %i.ar = sub i64 %.pre-phi92, %i.af
  %i.as = sdiv exact i64 %i.ar, 40
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit
  %.sroa.066.0 = phi ptr [ %i.n, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit ], [ %.sroa.02.0.lcssa.i55, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.02.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit ], [ %i.ad, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit ] ; 2 uses
  %.047 = phi i64 [ %i.ab, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit ], [ %i.ac, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.m, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit ], [ %i.as, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEESQ_SQ_SQ_SV_T1_.exit ] ; 2 uses
  %i.at = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorISA_SaISA_EEEEEET_SG_SG_SG_St26random_access_iterator_tag(ptr %.sroa.066.0, ptr %.tr7785, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKN4llvm11MatcherListERKNSJ_18CodeGenDAGPatternsEEUlRKT_RKT0_E0_EEEvSQ_SQ_SQ_ST_ST_T1_(ptr %.tr84, ptr %.sroa.066.0, ptr %i.at, i64 noundef %.0, i64 noundef %.047)
  %i.au = sub nsw i64 %.tr7987, %.0               ; 2 uses
  %i.av = sub nsw i64 %.tr8088, %.047             ; 2 uses
  %i.aw = icmp eq i64 %i.au, 0
  %i.ax = icmp eq i64 %i.av, 0
  %or.cond = or i1 %i.aw, %i.ax
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorISA_SaISA_EEEEEET_SG_SG_SG_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 40                  ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = sdiv exact i64 %i.h, 40                  ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.q, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.p, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.04.07.i, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.0.08.i) #25
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !52
  %i.o = load i32, ptr %i.m, align 4, !tbaa !52
  store i32 %i.o, ptr %i.l, align 4, !tbaa !52
  store i32 %i.n, ptr %i.m, align 4, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 40
  %.not.i = icmp eq ptr %i.p, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit, label %.lr.ph.i, !llvm.loop !640

bb.d:                                             ; preds = %bb.c
  %i.r = sub i64 %i.c, %i.g
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.056 = phi i64 [ %i.f, %bb.d ], [ %.056.be, %.backedge ] ; 4 uses
  %.0 = phi i64 [ %i.i, %bb.d ], [ %.0.be, %.backedge ] ; 8 uses
  %.sroa.026.0 = phi ptr [ %0, %bb.d ], [ %.sroa.026.0.be, %.backedge ] ; 5 uses
  %i.t = sub nsw i64 %.056, %.0                   ; 6 uses
  %i.u = icmp slt i64 %.0, %i.t
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = icmp sgt i64 %i.t, 0
end_hunk_1
begin_hunk_2_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_T1_:bb.a
  %.012.i.i.i.i.i11.i25.i.prol = phi i64 [ %i.rz, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %i.rr, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %.0811.i.i.i.i.i12.i26.i.prol = phi ptr [ %i.ry, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i.prol = phi ptr [ %i.rx, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %prol.iter176 = phi i64 [ %prol.iter176.next, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %i.rt = load ptr, ptr %.0910.i.i.i.i.i13.i27.i.prol, align 8, !tbaa !124
  store ptr %i.rt, ptr %.0811.i.i.i.i.i12.i26.i.prol, align 8, !tbaa !123
  %i.ru = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 8
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !52
  %i.rw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 8
  store i32 %i.rv, ptr %i.rw, align 8, !tbaa !125
  %i.rx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 16 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 16 ; 2 uses
  %i.rz = add nsw i64 %.012.i.i.i.i.i11.i25.i.prol, -1 ; 2 uses
  %prol.iter176.next = add i64 %prol.iter176, 1   ; 2 uses
  %prol.iter176.cmp.not = icmp eq i64 %prol.iter176.next, %xtraiter174
  br i1 %prol.iter176.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i.prol, !llvm.loop !722

.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol, %.lr.ph.i.i.i.i.i10.i24.i.preheader
  %.012.i.i.i.i.i11.i25.i.unr = phi i64 [ %i.rr, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.rz, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0811.i.i.i.i.i12.i26.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.ry, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0910.i.i.i.i.i13.i27.i.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.rx, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %i.sa = icmp ult i64 %i.rr, 4
  br i1 %i.sa, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_T1_T2_.exit, label %.lr.ph.i.i.i.i.i10.i24.i

.lr.ph.i.i.i.i.i10.i24.i:                         ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i11.i25.i = phi i64 [ %i.sz, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.012.i.i.i.i.i11.i25.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i = phi ptr [ %i.sy, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0811.i.i.i.i.i12.i26.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i = phi ptr [ %i.sx, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0910.i.i.i.i.i13.i27.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %i.sb = load ptr, ptr %.0910.i.i.i.i.i13.i27.i, align 8, !tbaa !124
  store ptr %i.sb, ptr %.0811.i.i.i.i.i12.i26.i, align 8, !tbaa !123
  %i.sc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 8
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !52
  %i.se = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 8
  store i32 %i.sd, ptr %i.se, align 8, !tbaa !125
  %i.sf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 16
  %i.sg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 16
  %i.sh = load ptr, ptr %i.sf, align 8, !tbaa !124
  store ptr %i.sh, ptr %i.sg, align 8, !tbaa !123
  %i.si = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 24
  %i.sj = load i32, ptr %i.si, align 8, !tbaa !52
  %i.sk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 24
  store i32 %i.sj, ptr %i.sk, align 8, !tbaa !125
  %i.sl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 32
  %i.sm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 32
  %i.sn = load ptr, ptr %i.sl, align 8, !tbaa !124
  store ptr %i.sn, ptr %i.sm, align 8, !tbaa !123
  %i.so = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 40
  %i.sp = load i32, ptr %i.so, align 8, !tbaa !52
  %i.sq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 40
  store i32 %i.sp, ptr %i.sq, align 8, !tbaa !125
  %i.sr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 48
  %i.ss = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 48
  %i.st = load ptr, ptr %i.sr, align 8, !tbaa !124
  store ptr %i.st, ptr %i.ss, align 8, !tbaa !123
  %i.su = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 56
  %i.sv = load i32, ptr %i.su, align 8, !tbaa !52
  %i.sw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 56
  store i32 %i.sv, ptr %i.sw, align 8, !tbaa !125
  %i.sx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 64
  %i.sy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 64
  %i.sz = add nsw i64 %.012.i.i.i.i.i11.i25.i, -4
  %i.ta = icmp sgt i64 %.012.i.i.i.i.i11.i25.i, 4
  br i1 %i.ta, label %.lr.ph.i.i.i.i.i10.i24.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_T1_T2_.exit, !llvm.loop !21

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_T1_T2_.exit: ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.tb = shl nsw i64 %.058, 2                    ; 4 uses
  %.not66.i = icmp slt i64 %i.d, %i.tb
  br i1 %.not66.i, label %._crit_edge.i34, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_T1_T2_.exit
  %.idx.i27 = shl nsw i64 %.058, 5                ; 2 uses
  %.idx57.i = shl nsw i64 %.058, 6                ; 2 uses
  %.not58.i = icmp eq i64 %.idx.i27, %.idx57.i
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt12__move_mergeIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEESP_SM_SM_SM_SM_SP_T1_.exit.i, %.lr.ph.i26
  %.sroa.022.068.i = phi ptr [ %0, %.lr.ph.i26 ], [ %i.wt, %_ZSt12__move_mergeIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEESP_SM_SM_SM_SM_SP_T1_.exit.i ] ; 2 uses
  %.067.i = phi ptr [ %2, %.lr.ph.i26 ], [ %i.td, %_ZSt12__move_mergeIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEESP_SM_SM_SM_SM_SP_T1_.exit.i ] ; 4 uses
  %i.tc = getelementptr inbounds i8, ptr %.067.i, i64 %.idx.i27 ; 4 uses
  %i.td = getelementptr inbounds i8, ptr %.067.i, i64 %.idx57.i ; 4 uses
  br i1 %.not58.i, label %._crit_edge.i.i, label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %bb.ac, %bb.af
  %.029.i.i = phi ptr [ %.1.i.i, %bb.af ], [ %.067.i, %bb.ac ] ; 4 uses
  %.01628.i.i = phi ptr [ %.117.i.i, %bb.af ], [ %i.tc, %bb.ac ] ; 4 uses
  %.sroa.0.027.i.i = phi ptr [ %i.tk, %bb.af ], [ %.sroa.022.068.i, %bb.ac ] ; 3 uses
  %i.te = getelementptr i8, ptr %.01628.i.i, i64 8
  %.016.val.i.i = load i32, ptr %i.te, align 8, !tbaa !125 ; 2 uses
  %i.tf = getelementptr i8, ptr %.029.i.i, i64 8
  %.0.val.i.i = load i32, ptr %i.tf, align 8, !tbaa !125 ; 2 uses
  %i.tg = icmp ugt i32 %.016.val.i.i, %.0.val.i.i
  br i1 %i.tg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i28
  %i.th = getelementptr inbounds nuw i8, ptr %.01628.i.i, i64 16
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i.i28
  %i.ti = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sink.in.i.i29 = phi ptr [ %.01628.i.i, %bb.ad ], [ %.029.i.i, %bb.ae ]
  %.0.val.sink.i.i = phi i32 [ %.016.val.i.i, %bb.ad ], [ %.0.val.i.i, %bb.ae ]
  %.117.i.i = phi ptr [ %i.th, %bb.ad ], [ %.01628.i.i, %bb.ae ] ; 3 uses
  %.1.i.i = phi ptr [ %.029.i.i, %bb.ad ], [ %i.ti, %bb.ae ] ; 3 uses
  %.sink.i.i30 = load ptr, ptr %.sink.in.i.i29, align 8, !tbaa !124
  store ptr %.sink.i.i30, ptr %.sroa.0.027.i.i, align 8, !tbaa !123
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 8
  store i32 %.0.val.sink.i.i, ptr %i.tj, align 8, !tbaa !125
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 16 ; 2 uses
  %i.tl = icmp ne ptr %.1.i.i, %i.tc
  %i.tm = icmp ne ptr %.117.i.i, %i.td
  %i.tn = select i1 %i.tl, i1 %i.tm, i1 false
  br i1 %i.tn, label %.lr.ph.i.i28, label %._crit_edge.i.i, !llvm.loop !723

._crit_edge.i.i:                                  ; preds = %bb.af, %bb.ac
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.022.068.i, %bb.ac ], [ %i.tk, %bb.af ] ; 5 uses
  %.016.lcssa.i.i = phi ptr [ %i.tc, %bb.ac ], [ %.117.i.i, %bb.af ] ; 3 uses
  %.0.lcssa.i.i31 = phi ptr [ %.067.i, %bb.ac ], [ %.1.i.i, %bb.af ] ; 3 uses
  %i.to = ptrtoint ptr %i.tc to i64
  %i.tp = ptrtoint ptr %.0.lcssa.i.i31 to i64
  %i.tq = sub i64 %i.to, %i.tp
  %i.tr = ashr exact i64 %i.tq, 4                 ; 5 uses
  %i.ts = icmp sgt i64 %i.tr, 0
  br i1 %i.ts, label %.lr.ph.i.i.i.i.i.i.i37.preheader, label %_ZSt4moveIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %._crit_edge.i.i
  %xtraiter177 = and i64 %i.tr, 3                 ; 2 uses
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i37.prol

.lr.ph.i.i.i.i.i.i.i37.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i37.prol
  %.012.i.i.i.i.i.i.i38.prol = phi i64 [ %i.tz, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ %i.tr, %.lr.ph.i.i.i.i.i.i.i37.preheader ]
  %.0811.i.i.i.i.i.i.i39.prol = phi ptr [ %i.ty, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i37.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i40.prol = phi ptr [ %i.tx, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ %.0.lcssa.i.i31, %.lr.ph.i.i.i.i.i.i.i37.preheader ] ; 3 uses
  %prol.iter179 = phi i64 [ %prol.iter179.next, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i37.preheader ]
  %i.tt = load ptr, ptr %.0910.i.i.i.i.i.i.i40.prol, align 8, !tbaa !124
  store ptr %i.tt, ptr %.0811.i.i.i.i.i.i.i39.prol, align 8, !tbaa !123
  %i.tu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40.prol, i64 8
  %i.tv = load i32, ptr %i.tu, align 8, !tbaa !52
  %i.tw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39.prol, i64 8
  store i32 %i.tv, ptr %i.tw, align 8, !tbaa !125
  %i.tx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40.prol, i64 16 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39.prol, i64 16 ; 3 uses
  %i.tz = add nsw i64 %.012.i.i.i.i.i.i.i38.prol, -1 ; 2 uses
  %prol.iter179.next = add i64 %prol.iter179, 1   ; 2 uses
  %prol.iter179.cmp.not = icmp eq i64 %prol.iter179.next, %xtraiter177
  br i1 %prol.iter179.cmp.not, label %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i37.prol, !llvm.loop !724

.lr.ph.i.i.i.i.i.i.i37.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i.i.i37.preheader
  %.012.i.i.i.i.i.i.i38.unr = phi i64 [ %i.tr, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.tz, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %.0811.i.i.i.i.i.i.i39.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.ty, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %.0910.i.i.i.i.i.i.i40.unr = phi ptr [ %.0.lcssa.i.i31, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.tx, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %.lcssa138.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.ty, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %i.ua = icmp ult i64 %i.tr, 4
  br i1 %i.ua, label %_ZSt4moveIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i.i37:                           ; preds = %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i.i38 = phi i64 [ %i.uz, %.lr.ph.i.i.i.i.i.i.i37 ], [ %.012.i.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i39 = phi ptr [ %i.uy, %.lr.ph.i.i.i.i.i.i.i37 ], [ %.0811.i.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i40 = phi ptr [ %i.ux, %.lr.ph.i.i.i.i.i.i.i37 ], [ %.0910.i.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %i.ub = load ptr, ptr %.0910.i.i.i.i.i.i.i40, align 8, !tbaa !124
  store ptr %i.ub, ptr %.0811.i.i.i.i.i.i.i39, align 8, !tbaa !123
  %i.uc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 8
  %i.ud = load i32, ptr %i.uc, align 8, !tbaa !52
  %i.ue = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 8
  store i32 %i.ud, ptr %i.ue, align 8, !tbaa !125
  %i.uf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 16
  %i.ug = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 16
  %i.uh = load ptr, ptr %i.uf, align 8, !tbaa !124
  store ptr %i.uh, ptr %i.ug, align 8, !tbaa !123
  %i.ui = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 24
  %i.uj = load i32, ptr %i.ui, align 8, !tbaa !52
  %i.uk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 24
  store i32 %i.uj, ptr %i.uk, align 8, !tbaa !125
  %i.ul = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 32
  %i.um = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 32
  %i.un = load ptr, ptr %i.ul, align 8, !tbaa !124
  store ptr %i.un, ptr %i.um, align 8, !tbaa !123
  %i.uo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 40
  %i.up = load i32, ptr %i.uo, align 8, !tbaa !52
  %i.uq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 40
  store i32 %i.up, ptr %i.uq, align 8, !tbaa !125
  %i.ur = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 48
  %i.us = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 48
  %i.ut = load ptr, ptr %i.ur, align 8, !tbaa !124
  store ptr %i.ut, ptr %i.us, align 8, !tbaa !123
  %i.uu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 56
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !52
  %i.uw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 56
  store i32 %i.uv, ptr %i.uw, align 8, !tbaa !125
  %i.ux = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 64
  %i.uy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 64 ; 2 uses
  %i.uz = add nsw i64 %.012.i.i.i.i.i.i.i38, -4
  %i.va = icmp sgt i64 %.012.i.i.i.i.i.i.i38, 4
  br i1 %i.va, label %.lr.ph.i.i.i.i.i.i.i37, label %_ZSt4moveIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i, !llvm.loop !21

_ZSt4moveIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i37, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i32 = phi ptr [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa138.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ], [ %i.uy, %.lr.ph.i.i.i.i.i.i.i37 ]
  %i.vb = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i32 to i64 ; 2 uses
  %i.vc = ptrtoint ptr %.sroa.0.0.lcssa.i.i to i64
  %i.vd = sub i64 %i.vb, %i.vc
  %i.ve = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.vd ; 4 uses
  %i.vf = ptrtoint ptr %i.td to i64               ; 2 uses
  %i.vg = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.vh = sub i64 %i.vf, %i.vg
  %i.vi = ashr exact i64 %i.vh, 4                 ; 5 uses
  %i.vj = icmp sgt i64 %i.vi, 0
  br i1 %i.vj, label %.lr.ph.i.i.i.i.i19.i.i.preheader, label %_ZSt12__move_mergeIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEESP_SM_SM_SM_SM_SP_T1_.exit.i

.lr.ph.i.i.i.i.i19.i.i.preheader:                 ; preds = %_ZSt4moveIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %xtraiter180 = and i64 %i.vi, 3                 ; 2 uses
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i.prol

.lr.ph.i.i.i.i.i19.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i.i.preheader, %.lr.ph.i.i.i.i.i19.i.i.prol
  %.012.i.i.i.i.i20.i.i.prol = phi i64 [ %i.vq, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %i.vi, %.lr.ph.i.i.i.i.i19.i.i.preheader ]
  %.0811.i.i.i.i.i21.i.i.prol = phi ptr [ %i.vp, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %i.ve, %.lr.ph.i.i.i.i.i19.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i.prol = phi ptr [ %i.vo, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i.preheader ] ; 3 uses
  %prol.iter182 = phi i64 [ %prol.iter182.next, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i.preheader ]
  %i.vk = load ptr, ptr %.0910.i.i.i.i.i22.i.i.prol, align 8, !tbaa !124
  store ptr %i.vk, ptr %.0811.i.i.i.i.i21.i.i.prol, align 8, !tbaa !123
  %i.vl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 8
  %i.vm = load i32, ptr %i.vl, align 8, !tbaa !52
  %i.vn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 8
  store i32 %i.vm, ptr %i.vn, align 8, !tbaa !125
  %i.vo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 16 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 16 ; 3 uses
  %i.vq = add nsw i64 %.012.i.i.i.i.i20.i.i.prol, -1 ; 2 uses
  %prol.iter182.next = add i64 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i64 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i.prol, !llvm.loop !725

.lr.ph.i.i.i.i.i19.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol, %.lr.ph.i.i.i.i.i19.i.i.preheader
  %.012.i.i.i.i.i20.i.i.unr = phi i64 [ %i.vi, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.vq, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.0811.i.i.i.i.i21.i.i.unr = phi ptr [ %i.ve, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.vp, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.0910.i.i.i.i.i22.i.i.unr = phi ptr [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.vo, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.lcssa139.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.vp, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %i.vr = icmp ult i64 %i.vi, 4
  br i1 %i.vr, label %_ZSt12__move_mergeIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEESP_SM_SM_SM_SM_SP_T1_.exit.i, label %.lr.ph.i.i.i.i.i19.i.i

.lr.ph.i.i.i.i.i19.i.i:                           ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i
  %.012.i.i.i.i.i20.i.i = phi i64 [ %i.wq, %.lr.ph.i.i.i.i.i19.i.i ], [ %.012.i.i.i.i.i20.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i = phi ptr [ %i.wp, %.lr.ph.i.i.i.i.i19.i.i ], [ %.0811.i.i.i.i.i21.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i = phi ptr [ %i.wo, %.lr.ph.i.i.i.i.i19.i.i ], [ %.0910.i.i.i.i.i22.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 9 uses
  %i.vs = load ptr, ptr %.0910.i.i.i.i.i22.i.i, align 8, !tbaa !124
  store ptr %i.vs, ptr %.0811.i.i.i.i.i21.i.i, align 8, !tbaa !123
  %i.vt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 8
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !52
  %i.vv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 8
  store i32 %i.vu, ptr %i.vv, align 8, !tbaa !125
  %i.vw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 16
  %i.vx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 16
  %i.vy = load ptr, ptr %i.vw, align 8, !tbaa !124
  store ptr %i.vy, ptr %i.vx, align 8, !tbaa !123
  %i.vz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 24
  %i.wa = load i32, ptr %i.vz, align 8, !tbaa !52
  %i.wb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 24
  store i32 %i.wa, ptr %i.wb, align 8, !tbaa !125
  %i.wc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 32
  %i.wd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 32
  %i.we = load ptr, ptr %i.wc, align 8, !tbaa !124
  store ptr %i.we, ptr %i.wd, align 8, !tbaa !123
  %i.wf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 40
  %i.wg = load i32, ptr %i.wf, align 8, !tbaa !52
  %i.wh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 40
  store i32 %i.wg, ptr %i.wh, align 8, !tbaa !125
  %i.wi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 48
  %i.wj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 48
  %i.wk = load ptr, ptr %i.wi, align 8, !tbaa !124
  store ptr %i.wk, ptr %i.wj, align 8, !tbaa !123
  %i.wl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 56
  %i.wm = load i32, ptr %i.wl, align 8, !tbaa !52
  %i.wn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 56
  store i32 %i.wm, ptr %i.wn, align 8, !tbaa !125
  %i.wo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 64
  %i.wp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 64 ; 2 uses
  %i.wq = add nsw i64 %.012.i.i.i.i.i20.i.i, -4
  %i.wr = icmp sgt i64 %.012.i.i.i.i.i20.i.i, 4
  br i1 %i.wr, label %.lr.ph.i.i.i.i.i19.i.i, label %_ZSt12__move_mergeIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEESP_SM_SM_SM_SM_SP_T1_.exit.i, !llvm.loop !21

_ZSt12__move_mergeIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEESP_SM_SM_SM_SM_SP_T1_.exit.i: ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i, %_ZSt4moveIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi ptr [ %i.ve, %_ZSt4moveIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i ], [ %.lcssa139.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ], [ %i.wp, %.lr.ph.i.i.i.i.i19.i.i ]
  %3 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i.i to i64
  %i.ws = sub i64 %3, %i.vb
  %i.wt = getelementptr inbounds i8, ptr %i.ve, i64 %i.ws ; 2 uses
  %i.wu = sub i64 %i.mb, %i.vf
  %i.wv = ashr exact i64 %i.wu, 4                 ; 2 uses
  %.not.i33 = icmp slt i64 %i.wv, %i.tb
  br i1 %.not.i33, label %._crit_edge.i34, label %bb.ac, !llvm.loop !726

._crit_edge.i34:                                  ; preds = %_ZSt12__move_mergeIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEESP_SM_SM_SM_SM_SP_T1_.exit.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_T1_T2_.exit
  %.0.lcssa.i35 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_T1_T2_.exit ], [ %i.td, %_ZSt12__move_mergeIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEESP_SM_SM_SM_SM_SP_T1_.exit.i ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_T1_T2_.exit ], [ %i.wt, %_ZSt12__move_mergeIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEESP_SM_SM_SM_SM_SP_T1_.exit.i ] ; 2 uses
  %.lcssa64.i = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_T1_T2_.exit ], [ %i.wv, %_ZSt12__move_mergeIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEESP_SM_SM_SM_SM_SP_T1_.exit.i ]
  %.sroa.speculated.i36 = tail call i64 @llvm.smin.i64(i64 %i.mc, i64 %.lcssa64.i) ; 2 uses
  %.idx59.i = shl nsw i64 %.sroa.speculated.i36, 4
  %i.ww = getelementptr inbounds i8, ptr %.0.lcssa.i35, i64 %.idx59.i ; 5 uses
  %i.wx = icmp ne i64 %.sroa.speculated.i36, 0
  %i.wy = icmp ne ptr %i.ww, %i.e
  %i.wz = and i1 %i.wx, %i.wy
  br i1 %i.wz, label %.lr.ph.i41.i, label %._crit_edge.i25.i

.lr.ph.i41.i:                                     ; preds = %._crit_edge.i34, %bb.ai
  %.029.i42.i = phi ptr [ %.1.i50.i, %bb.ai ], [ %.0.lcssa.i35, %._crit_edge.i34 ] ; 4 uses
  %.01628.i43.i = phi ptr [ %.117.i49.i, %bb.ai ], [ %i.ww, %._crit_edge.i34 ] ; 4 uses
  %.sroa.0.027.i44.i = phi ptr [ %i.xg, %bb.ai ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i34 ] ; 3 uses
  %i.xa = getelementptr i8, ptr %.01628.i43.i, i64 8
  %.016.val.i45.i = load i32, ptr %i.xa, align 8, !tbaa !125 ; 2 uses
  %i.xb = getelementptr i8, ptr %.029.i42.i, i64 8
  %.0.val.i46.i = load i32, ptr %i.xb, align 8, !tbaa !125 ; 2 uses
  %i.xc = icmp ugt i32 %.016.val.i45.i, %.0.val.i46.i
  br i1 %i.xc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i41.i
  %i.xd = getelementptr inbounds nuw i8, ptr %.01628.i43.i, i64 16
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i41.i
  %i.xe = getelementptr inbounds nuw i8, ptr %.029.i42.i, i64 16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink.in.i47.i = phi ptr [ %.01628.i43.i, %bb.ag ], [ %.029.i42.i, %bb.ah ]
  %.0.val.sink.i48.i = phi i32 [ %.016.val.i45.i, %bb.ag ], [ %.0.val.i46.i, %bb.ah ]
  %.117.i49.i = phi ptr [ %i.xd, %bb.ag ], [ %.01628.i43.i, %bb.ah ] ; 3 uses
  %.1.i50.i = phi ptr [ %.029.i42.i, %bb.ag ], [ %i.xe, %bb.ah ] ; 3 uses
  %.sink.i51.i = load ptr, ptr %.sink.in.i47.i, align 8, !tbaa !124
  store ptr %.sink.i51.i, ptr %.sroa.0.027.i44.i, align 8, !tbaa !123
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 8
  store i32 %.0.val.sink.i48.i, ptr %i.xf, align 8, !tbaa !125
  %i.xg = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 16 ; 2 uses
  %i.xh = icmp ne ptr %.1.i50.i, %i.ww
  %i.xi = icmp ne ptr %.117.i49.i, %i.e
  %i.xj = select i1 %i.xh, i1 %i.xi, i1 false
  br i1 %i.xj, label %.lr.ph.i41.i, label %._crit_edge.i25.i, !llvm.loop !723

._crit_edge.i25.i:                                ; preds = %bb.ai, %._crit_edge.i34
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i34 ], [ %i.xg, %bb.ai ] ; 5 uses
  %.016.lcssa.i27.i = phi ptr [ %i.ww, %._crit_edge.i34 ], [ %.117.i49.i, %bb.ai ] ; 3 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i35, %._crit_edge.i34 ], [ %.1.i50.i, %bb.ai ] ; 3 uses
  %i.xk = ptrtoint ptr %i.ww to i64
  %i.xl = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.xm = sub i64 %i.xk, %i.xl
  %i.xn = ashr exact i64 %i.xm, 4                 ; 5 uses
  %i.xo = icmp sgt i64 %i.xn, 0
  br i1 %i.xo, label %.lr.ph.i.i.i.i.i.i37.i.preheader, label %_ZSt4moveIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i

.lr.ph.i.i.i.i.i.i37.i.preheader:                 ; preds = %._crit_edge.i25.i
  %xtraiter183 = and i64 %i.xn, 3                 ; 2 uses
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol

.lr.ph.i.i.i.i.i.i37.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i37.i.preheader, %.lr.ph.i.i.i.i.i.i37.i.prol
  %.012.i.i.i.i.i.i38.i.prol = phi i64 [ %i.xv, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %i.xn, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %.0811.i.i.i.i.i.i39.i.prol = phi ptr [ %i.xu, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i.prol = phi ptr [ %i.xt, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %prol.iter185 = phi i64 [ %prol.iter185.next, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %i.xp = load ptr, ptr %.0910.i.i.i.i.i.i40.i.prol, align 8, !tbaa !124
  store ptr %i.xp, ptr %.0811.i.i.i.i.i.i39.i.prol, align 8, !tbaa !123
  %i.xq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 8
  %i.xr = load i32, ptr %i.xq, align 8, !tbaa !52
  %i.xs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 8
  store i32 %i.xr, ptr %i.xs, align 8, !tbaa !125
  %i.xt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 16 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 16 ; 3 uses
  %i.xv = add nsw i64 %.012.i.i.i.i.i.i38.i.prol, -1 ; 2 uses
  %prol.iter185.next = add i64 %prol.iter185, 1   ; 2 uses
  %prol.iter185.cmp.not = icmp eq i64 %prol.iter185.next, %xtraiter183
  br i1 %prol.iter185.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol, !llvm.loop !727

.lr.ph.i.i.i.i.i.i37.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol, %.lr.ph.i.i.i.i.i.i37.i.preheader
  %.012.i.i.i.i.i.i38.i.unr = phi i64 [ %i.xn, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.xv, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0811.i.i.i.i.i.i39.i.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.xu, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0910.i.i.i.i.i.i40.i.unr = phi ptr [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.xt, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.lcssa144.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.xu, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %i.xw = icmp ult i64 %i.xn, 4
  br i1 %i.xw, label %_ZSt4moveIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i, label %.lr.ph.i.i.i.i.i.i37.i

.lr.ph.i.i.i.i.i.i37.i:                           ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i
  %.012.i.i.i.i.i.i38.i = phi i64 [ %i.yv, %.lr.ph.i.i.i.i.i.i37.i ], [ %.012.i.i.i.i.i.i38.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i = phi ptr [ %i.yu, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0811.i.i.i.i.i.i39.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i = phi ptr [ %i.yt, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0910.i.i.i.i.i.i40.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %i.xx = load ptr, ptr %.0910.i.i.i.i.i.i40.i, align 8, !tbaa !124
  store ptr %i.xx, ptr %.0811.i.i.i.i.i.i39.i, align 8, !tbaa !123
  %i.xy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 8
  %i.xz = load i32, ptr %i.xy, align 8, !tbaa !52
  %i.ya = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 8
  store i32 %i.xz, ptr %i.ya, align 8, !tbaa !125
  %i.yb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 16
  %i.yc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 16
  %i.yd = load ptr, ptr %i.yb, align 8, !tbaa !124
  store ptr %i.yd, ptr %i.yc, align 8, !tbaa !123
  %i.ye = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 24
  %i.yf = load i32, ptr %i.ye, align 8, !tbaa !52
  %i.yg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 24
  store i32 %i.yf, ptr %i.yg, align 8, !tbaa !125
  %i.yh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 32
  %i.yi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 32
  %i.yj = load ptr, ptr %i.yh, align 8, !tbaa !124
  store ptr %i.yj, ptr %i.yi, align 8, !tbaa !123
  %i.yk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 40
  %i.yl = load i32, ptr %i.yk, align 8, !tbaa !52
  %i.ym = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 40
  store i32 %i.yl, ptr %i.ym, align 8, !tbaa !125
  %i.yn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 48
  %i.yo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 48
  %i.yp = load ptr, ptr %i.yn, align 8, !tbaa !124
  store ptr %i.yp, ptr %i.yo, align 8, !tbaa !123
  %i.yq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 56
  %i.yr = load i32, ptr %i.yq, align 8, !tbaa !52
  %i.ys = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 56
  store i32 %i.yr, ptr %i.ys, align 8, !tbaa !125
  %i.yt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 64
  %i.yu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 64 ; 2 uses
  %i.yv = add nsw i64 %.012.i.i.i.i.i.i38.i, -4
  %i.yw = icmp sgt i64 %.012.i.i.i.i.i.i38.i, 4
  br i1 %i.yw, label %.lr.ph.i.i.i.i.i.i37.i, label %_ZSt4moveIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i, !llvm.loop !21

_ZSt4moveIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %.lcssa144.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ], [ %i.yu, %.lr.ph.i.i.i.i.i.i37.i ]
  %i.yx = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.yy = sub i64 %i.mb, %i.yx
  %i.yz = ashr exact i64 %i.yy, 4                 ; 5 uses
  %i.za = icmp sgt i64 %i.yz, 0
  br i1 %i.za, label %.lr.ph.i.i.i.i.i19.i32.preheader.i, label %_ZSt17__merge_sort_loopIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_T1_T2_.exit

.lr.ph.i.i.i.i.i19.i32.preheader.i:               ; preds = %_ZSt4moveIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i
  %i.zb = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.zc = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.zd = sub i64 %i.zb, %i.zc
  %i.ze = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.zd ; 2 uses
  %xtraiter186 = and i64 %i.yz, 3                 ; 2 uses
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol

.lr.ph.i.i.i.i.i19.i32.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i, %.lr.ph.i.i.i.i.i19.i32.i.prol
  %.012.i.i.i.i.i20.i33.i.prol = phi i64 [ %i.zl, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.yz, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %.0811.i.i.i.i.i21.i34.i.prol = phi ptr [ %i.zk, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.ze, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i.prol = phi ptr [ %i.zj, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %prol.iter188 = phi i64 [ %prol.iter188.next, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %i.zf = load ptr, ptr %.0910.i.i.i.i.i22.i35.i.prol, align 8, !tbaa !124
  store ptr %i.zf, ptr %.0811.i.i.i.i.i21.i34.i.prol, align 8, !tbaa !123
  %i.zg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 8
  %i.zh = load i32, ptr %i.zg, align 8, !tbaa !52
  %i.zi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 8
  store i32 %i.zh, ptr %i.zi, align 8, !tbaa !125
  %i.zj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 16 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 16 ; 2 uses
  %i.zl = add nsw i64 %.012.i.i.i.i.i20.i33.i.prol, -1 ; 2 uses
  %prol.iter188.next = add i64 %prol.iter188, 1   ; 2 uses
  %prol.iter188.cmp.not = icmp eq i64 %prol.iter188.next, %xtraiter186
  br i1 %prol.iter188.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol, !llvm.loop !728

.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i
  %.012.i.i.i.i.i20.i33.i.unr = phi i64 [ %i.yz, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.zl, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0811.i.i.i.i.i21.i34.i.unr = phi ptr [ %i.ze, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.zk, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0910.i.i.i.i.i22.i35.i.unr = phi ptr [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.zj, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %i.zm = icmp ult i64 %i.yz, 4
  br i1 %i.zm, label %_ZSt17__merge_sort_loopIPSt4pairIPN4llvm11TreePatternEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS1_11MatcherListERKNS1_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_T1_T2_.exit, label %.lr.ph.i.i.i.i.i19.i32.i

.lr.ph.i.i.i.i.i19.i32.i:                         ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i20.i33.i = phi i64 [ %i.aal, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.012.i.i.i.i.i20.i33.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i = phi ptr [ %i.aak, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0811.i.i.i.i.i21.i34.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i = phi ptr [ %i.aaj, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0910.i.i.i.i.i22.i35.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %i.zn = load ptr, ptr %.0910.i.i.i.i.i22.i35.i, align 8, !tbaa !124
  store ptr %i.zn, ptr %.0811.i.i.i.i.i21.i34.i, align 8, !tbaa !123
  %i.zo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 8
  %i.zp = load i32, ptr %i.zo, align 8, !tbaa !52
  %i.zq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 8
  store i32 %i.zp, ptr %i.zq, align 8, !tbaa !125
  %i.zr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 16
  %i.zs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 16
  %i.zt = load ptr, ptr %i.zr, align 8, !tbaa !124
  store ptr %i.zt, ptr %i.zs, align 8, !tbaa !123
  %i.zu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 24
  %i.zv = load i32, ptr %i.zu, align 8, !tbaa !52
  %i.zw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 24
  store i32 %i.zv, ptr %i.zw, align 8, !tbaa !125
  %i.zx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 32
  %i.zy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 32
  %i.zz = load ptr, ptr %i.zx, align 8, !tbaa !124
  store ptr %i.zz, ptr %i.zy, align 8, !tbaa !123
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 40
  %i.aab = load i32, ptr %i.aaa, align 8, !tbaa !52
end_hunk_2
