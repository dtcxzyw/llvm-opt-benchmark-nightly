Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/bin?download=true
inline.NumInlined: 9544
inline.NumDeleted: 2682
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 531
loop-unroll.NumUnrolled: 532
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS3_SN_E0_EEEvSE_SE_SI_T1_:bb.a
  %next.gep158 = getelementptr i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.th
  %next.gep159 = getelementptr i8, ptr %.0.lcssa.i28.i, i64 %i.tg
  %next.gep160 = getelementptr i8, ptr %.0.lcssa.i28.i, i64 %i.th
  %wide.vec161 = load <4 x i32>, ptr %next.gep159, align 4, !tbaa !58, !alias.scope !1686
  %wide.vec164 = load <4 x i32>, ptr %next.gep160, align 4, !tbaa !58, !alias.scope !1686
  store <4 x i32> %wide.vec161, ptr %next.gep157, align 4, !tbaa !58, !alias.scope !1687, !noalias !1686
  store <4 x i32> %wide.vec164, ptr %next.gep158, align 4, !tbaa !58, !alias.scope !1687, !noalias !1686
  %index.next169 = add nuw i64 %index156, 4       ; 2 uses
  %i.ti = icmp eq i64 %index.next169, %n.vec154
  br i1 %i.ti, label %middle.block170, label %vector.body155, !llvm.loop !1666

middle.block170:                                  ; preds = %vector.body155
  %cmp.n171 = icmp eq i64 %i.ta, %n.vec154
  br i1 %cmp.n171, label %_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i, label %.lr.ph.i.i.i.i.i.i36.i.preheader359

.lr.ph.i.i.i.i.i.i36.i.preheader359:              ; preds = %vector.memcheck145, %.lr.ph.i.i.i.i.i.i36.i.preheader, %middle.block170
  %.012.i.i.i.i.i.i37.i.ph = phi i64 [ %i.ta, %vector.memcheck145 ], [ %i.ta, %.lr.ph.i.i.i.i.i.i36.i.preheader ], [ %i.tc, %middle.block170 ]
  %.0811.i.i.i.i.i.i38.i.ph = phi ptr [ %.sroa.0.0.lcssa.i26.i, %vector.memcheck145 ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i36.i.preheader ], [ %i.te, %middle.block170 ]
  %.0910.i.i.i.i.i.i39.i.ph = phi ptr [ %.0.lcssa.i28.i, %vector.memcheck145 ], [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i36.i.preheader ], [ %i.tf, %middle.block170 ]
  br label %.lr.ph.i.i.i.i.i.i36.i

.lr.ph.i.i.i.i.i.i36.i:                           ; preds = %.lr.ph.i.i.i.i.i.i36.i.preheader359, %.lr.ph.i.i.i.i.i.i36.i
  %.012.i.i.i.i.i.i37.i = phi i64 [ %i.tp, %.lr.ph.i.i.i.i.i.i36.i ], [ %.012.i.i.i.i.i.i37.i.ph, %.lr.ph.i.i.i.i.i.i36.i.preheader359 ] ; 2 uses
  %.0811.i.i.i.i.i.i38.i = phi ptr [ %i.to, %.lr.ph.i.i.i.i.i.i36.i ], [ %.0811.i.i.i.i.i.i38.i.ph, %.lr.ph.i.i.i.i.i.i36.i.preheader359 ] ; 3 uses
  %.0910.i.i.i.i.i.i39.i = phi ptr [ %i.tn, %.lr.ph.i.i.i.i.i.i36.i ], [ %.0910.i.i.i.i.i.i39.i.ph, %.lr.ph.i.i.i.i.i.i36.i.preheader359 ] ; 3 uses
  %i.tj = load i32, ptr %.0910.i.i.i.i.i.i39.i, align 4, !tbaa !58
  store i32 %i.tj, ptr %.0811.i.i.i.i.i.i38.i, align 4, !tbaa !259
  %i.tk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i, i64 4
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !58
  %i.tm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i, i64 4
  store i32 %i.tl, ptr %i.tm, align 4, !tbaa !260
  %i.tn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.i, i64 8
  %i.to = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.i, i64 8 ; 2 uses
  %i.tp = add nsw i64 %.012.i.i.i.i.i.i37.i, -1
  %i.tq = icmp samesign ugt i64 %.012.i.i.i.i.i.i37.i, 1
  br i1 %i.tq, label %.lr.ph.i.i.i.i.i.i36.i, label %_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i, !llvm.loop !1667

_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i36.i, %middle.block170, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %i.te, %middle.block170 ], [ %i.to, %.lr.ph.i.i.i.i.i.i36.i ] ; 2 uses
  %i.tr = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.ts = sub i64 %i.md, %i.tr                    ; 2 uses
  %i.tt = ashr exact i64 %i.ts, 3                 ; 7 uses
  %i.tu = icmp sgt i64 %i.tt, 0
  br i1 %i.tu, label %.lr.ph.i.i.i.i.i19.i32.preheader.i, label %_ZSt17__merge_sort_loopIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEEvSE_SE_SI_T1_T2_.exit

.lr.ph.i.i.i.i.i19.i32.preheader.i:               ; preds = %_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i
  %i.tv = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64 ; 2 uses
  %i.tw = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64 ; 2 uses
  %i.tx = sub i64 %i.tv, %i.tw
  %i.ty = getelementptr i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.tx ; 5 uses
  %min.iters.check = icmp ult i64 %i.tt, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i19.i32.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i
  %i.tz = add i64 %i.ts, %i.tv
  %i.ua = sub i64 %i.tz, %i.tw
  %scevgep = getelementptr i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.ua
  %bound0 = icmp ult ptr %.08.lcssa.i.i.i.i.i.i30.i, %i.e
  %bound1 = icmp ult ptr %.016.lcssa.i27.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i19.i32.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.tt, 9223372036854775804     ; 3 uses
  %i.ub = and i64 %i.tt, 3
  %i.uc = shl i64 %n.vec, 3                       ; 2 uses
  %i.ud = getelementptr i8, ptr %i.ty, i64 %i.uc
  %i.ue = getelementptr i8, ptr %.016.lcssa.i27.i, i64 %i.uc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.uf = shl i64 %index, 3                       ; 3 uses
  %i.ug = or disjoint i64 %i.uf, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ty, i64 %i.uf
  %next.gep135 = getelementptr i8, ptr %i.ty, i64 %i.ug
  %next.gep136 = getelementptr i8, ptr %.016.lcssa.i27.i, i64 %i.uf
  %next.gep137 = getelementptr i8, ptr %.016.lcssa.i27.i, i64 %i.ug
  %wide.vec = load <4 x i32>, ptr %next.gep136, align 4, !tbaa !58, !alias.scope !1688
  %wide.vec139 = load <4 x i32>, ptr %next.gep137, align 4, !tbaa !58, !alias.scope !1688
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !58, !alias.scope !1689, !noalias !1688
  store <4 x i32> %wide.vec139, ptr %next.gep135, align 4, !tbaa !58, !alias.scope !1689, !noalias !1688
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.uh = icmp eq i64 %index.next, %n.vec
  br i1 %i.uh, label %middle.block, label %vector.body, !llvm.loop !1671

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.tt, %n.vec
  br i1 %cmp.n, label %_ZSt17__merge_sort_loopIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEEvSE_SE_SI_T1_T2_.exit, label %.lr.ph.i.i.i.i.i19.i32.i.preheader

.lr.ph.i.i.i.i.i19.i32.i.preheader:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i19.i32.preheader.i, %middle.block
  %.012.i.i.i.i.i20.i33.i.ph = phi i64 [ %i.tt, %vector.memcheck ], [ %i.tt, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.ub, %middle.block ]
  %.0811.i.i.i.i.i21.i34.i.ph = phi ptr [ %i.ty, %vector.memcheck ], [ %i.ty, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.ud, %middle.block ]
  %.0910.i.i.i.i.i22.i35.i.ph = phi ptr [ %.016.lcssa.i27.i, %vector.memcheck ], [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.ue, %middle.block ]
  br label %.lr.ph.i.i.i.i.i19.i32.i

.lr.ph.i.i.i.i.i19.i32.i:                         ; preds = %.lr.ph.i.i.i.i.i19.i32.i.preheader, %.lr.ph.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i20.i33.i = phi i64 [ %i.uo, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.012.i.i.i.i.i20.i33.i.ph, %.lr.ph.i.i.i.i.i19.i32.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i = phi ptr [ %i.un, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0811.i.i.i.i.i21.i34.i.ph, %.lr.ph.i.i.i.i.i19.i32.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i = phi ptr [ %i.um, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0910.i.i.i.i.i22.i35.i.ph, %.lr.ph.i.i.i.i.i19.i32.i.preheader ] ; 3 uses
  %i.ui = load i32, ptr %.0910.i.i.i.i.i22.i35.i, align 4, !tbaa !58
  store i32 %i.ui, ptr %.0811.i.i.i.i.i21.i34.i, align 4, !tbaa !259
  %i.uj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 4
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !58
  %i.ul = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 4
  store i32 %i.uk, ptr %i.ul, align 4, !tbaa !260
  %i.um = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 8
  %i.un = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 8
  %i.uo = add nsw i64 %.012.i.i.i.i.i20.i33.i, -1
  %i.up = icmp samesign ugt i64 %.012.i.i.i.i.i20.i33.i, 1
  br i1 %i.up, label %.lr.ph.i.i.i.i.i19.i32.i, label %_ZSt17__merge_sort_loopIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEEvSE_SE_SI_T1_T2_.exit, !llvm.loop !1672

_ZSt17__merge_sort_loopIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEEvSE_SE_SI_T1_T2_.exit: ; preds = %.lr.ph.i.i.i.i.i19.i32.i, %middle.block, %_ZSt4moveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i
  %i.uq = icmp slt i64 %i.qb, %i.d
  br i1 %i.uq, label %bb.w, label %._crit_edge, !llvm.loop !1673

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEEvSE_SE_SI_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS3_SN_E0_EEEvSE_SE_SI_T1_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS3_SN_E0_EEEvSE_SE_SE_SI_SI_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #30 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 7 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt21__move_merge_adaptiveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEEvSE_SE_SI_SI_T1_T2_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.d, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader165, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.f = getelementptr i8, ptr %5, i64 %i.c
  %bound0 = icmp ult ptr %5, %1
  %bound1 = icmp ult ptr %0, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader165, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, 9223372036854775804      ; 3 uses
  %i.g = and i64 %i.d, 3
  %i.h = shl i64 %n.vec, 3                        ; 2 uses
  %i.i = getelementptr i8, ptr %5, i64 %i.h       ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 3                        ; 3 uses
  %i.l = or disjoint i64 %i.k, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.k
  %next.gep78 = getelementptr i8, ptr %5, i64 %i.l
  %next.gep79 = getelementptr i8, ptr %0, i64 %i.k
  %next.gep80 = getelementptr i8, ptr %0, i64 %i.l
  %wide.vec = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !58, !alias.scope !1709
  %wide.vec82 = load <4 x i32>, ptr %next.gep80, align 4, !tbaa !58, !alias.scope !1709
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !58, !alias.scope !1710, !noalias !1709
  store <4 x i32> %wide.vec82, ptr %next.gep78, align 4, !tbaa !58, !alias.scope !1710, !noalias !1709
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !1693

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.preheader, label %.lr.ph.i.i.i.i.i.preheader165

.lr.ph.i.i.i.i.i.preheader165:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.g, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %.lr.ph.i.i.i.i.i.preheader ], [ %i.i, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.j, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader165, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader165 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader165 ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader165 ] ; 3 uses
  %i.n = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !58
  store i32 %i.n, ptr %.0811.i.i.i.i.i, align 4, !tbaa !259
  %i.o = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  store i32 %i.p, ptr %i.q, align 4, !tbaa !260
  %i.r = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.t = add nsw i64 %.012.i.i.i.i.i, -1
  %i.u = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.u, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.preheader, !llvm.loop !1694

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.lcssa76 = phi ptr [ %i.i, %middle.block ], [ %i.s, %.lr.ph.i.i.i.i.i ] ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %.026.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.preheader ] ; 11 uses
  %.sroa.0.025.i = phi ptr [ %i.z, %bb.f ], [ %0, %.lr.ph.i.preheader ] ; 10 uses
  %.sroa.016.024.i = phi ptr [ %.sroa.016.1.i, %bb.f ], [ %1, %.lr.ph.i.preheader ] ; 5 uses
  %.not19.i = icmp eq ptr %.sroa.016.024.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.0.val.i = load i32, ptr %.026.i, align 4, !tbaa !259 ; 2 uses
  %.val.i.i = load i32, ptr %.sroa.016.024.i, align 4, !tbaa !259 ; 2 uses
  %i.v = icmp sgt i32 %.val.i.i, %.0.val.i
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.val.i.sink = phi i32 [ %.val.i.i, %bb.d ], [ %.0.val.i, %bb.e ]
  %.sroa.016.024.pn.i = phi ptr [ %.sroa.016.024.i, %bb.d ], [ %.026.i, %bb.e ]
  %.sroa.016.1.i = phi ptr [ %i.w, %bb.d ], [ %.sroa.016.024.i, %bb.e ]
  %.1.i = phi ptr [ %.026.i, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  store i32 %.0.val.i.sink, ptr %.sroa.0.025.i, align 4, !tbaa !259
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %.sroa.016.024.pn.i, i64 4
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 4
  store i32 %.sink.i, ptr %i.y, align 4, !tbaa !260
  %i.z = getelementptr i8, ptr %.sroa.0.025.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %.lcssa76
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEEvSE_SE_SI_SI_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !1695

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.aa = ptrtoint ptr %.lcssa76 to i64
  %i.ab = ptrtoint ptr %.026.i to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = ashr exact i64 %i.ac, 3                 ; 7 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt21__move_merge_adaptiveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEEvSE_SE_SI_SI_T1_T2_.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.critedge.i
  %min.iters.check94 = icmp ult i64 %i.ad, 6
  br i1 %min.iters.check94, label %.lr.ph.i.i.i.i.i.i.preheader160, label %vector.memcheck88

vector.memcheck88:                                ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %.sroa.0.025.i, i64 %i.ac
  %bound090 = icmp ult ptr %.sroa.0.025.i, %.lcssa76
  %bound191 = icmp ult ptr %.026.i, %scevgep
  %found.conflict92 = and i1 %bound090, %bound191
  br i1 %found.conflict92, label %.lr.ph.i.i.i.i.i.i.preheader160, label %vector.ph95

vector.ph95:                                      ; preds = %vector.memcheck88
  %n.vec96 = and i64 %i.ad, 9223372036854775804   ; 3 uses
  %i.af = and i64 %i.ad, 3
  %i.ag = shl i64 %n.vec96, 3                     ; 2 uses
  %i.ah = getelementptr i8, ptr %.sroa.0.025.i, i64 %i.ag
  %i.ai = getelementptr i8, ptr %.026.i, i64 %i.ag
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph95
  %index98 = phi i64 [ 0, %vector.ph95 ], [ %index.next111, %vector.body97 ] ; 2 uses
  %i.aj = shl i64 %index98, 3                     ; 3 uses
  %i.ak = or disjoint i64 %i.aj, 16               ; 2 uses
  %next.gep99 = getelementptr i8, ptr %.sroa.0.025.i, i64 %i.aj
  %next.gep100 = getelementptr i8, ptr %.sroa.0.025.i, i64 %i.ak
  %next.gep101 = getelementptr i8, ptr %.026.i, i64 %i.aj
  %next.gep102 = getelementptr i8, ptr %.026.i, i64 %i.ak
  %wide.vec103 = load <4 x i32>, ptr %next.gep101, align 4, !tbaa !58, !alias.scope !1711
  %wide.vec106 = load <4 x i32>, ptr %next.gep102, align 4, !tbaa !58, !alias.scope !1711
  store <4 x i32> %wide.vec103, ptr %next.gep99, align 4, !tbaa !58, !alias.scope !1712, !noalias !1711
  store <4 x i32> %wide.vec106, ptr %next.gep100, align 4, !tbaa !58, !alias.scope !1712, !noalias !1711
  %index.next111 = add nuw i64 %index98, 4        ; 2 uses
  %i.al = icmp eq i64 %index.next111, %n.vec96
  br i1 %i.al, label %middle.block112, label %vector.body97, !llvm.loop !1699

middle.block112:                                  ; preds = %vector.body97
  %cmp.n113 = icmp eq i64 %i.ad, %n.vec96
  br i1 %cmp.n113, label %_ZSt21__move_merge_adaptiveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEEvSE_SE_SI_SI_T1_T2_.exit, label %.lr.ph.i.i.i.i.i.i.preheader160

.lr.ph.i.i.i.i.i.i.preheader160:                  ; preds = %vector.memcheck88, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.ad, %vector.memcheck88 ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block112 ]
  %.0811.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0.025.i, %vector.memcheck88 ], [ %.sroa.0.025.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block112 ]
  %.0910.i.i.i.i.i.i.ph = phi ptr [ %.026.i, %vector.memcheck88 ], [ %.026.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader160, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader160 ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader160 ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader160 ] ; 3 uses
  %i.am = load i32, ptr %.0910.i.i.i.i.i.i, align 4, !tbaa !58
  store i32 %i.am, ptr %.0811.i.i.i.i.i.i, align 4, !tbaa !259
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !260
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.as = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.at = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEEvSE_SE_SI_SI_T1_T2_.exit, !llvm.loop !1700

bb.g:                                             ; preds = %bb.a
  %i.au = ptrtoint ptr %2 to i64
  %i.av = ptrtoint ptr %1 to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = ashr exact i64 %i.aw, 3                 ; 7 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i24.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit28

.lr.ph.i.i.i.i.i24.preheader:                     ; preds = %bb.g
  %min.iters.check124 = icmp ult i64 %i.ax, 6
  br i1 %min.iters.check124, label %.lr.ph.i.i.i.i.i24.preheader158, label %vector.memcheck125

vector.memcheck125:                               ; preds = %.lr.ph.i.i.i.i.i24.preheader
  %i.az = getelementptr i8, ptr %5, i64 %i.aw
  %bound0126 = icmp ult ptr %5, %2
  %bound1127 = icmp ult ptr %1, %i.az
  %found.conflict128 = and i1 %bound0126, %bound1127
  br i1 %found.conflict128, label %.lr.ph.i.i.i.i.i24.preheader158, label %vector.ph129

vector.ph129:                                     ; preds = %vector.memcheck125
  %n.vec130 = and i64 %i.ax, 9223372036854775804  ; 3 uses
  %i.ba = and i64 %i.ax, 3
  %i.bb = shl i64 %n.vec130, 3                    ; 2 uses
  %i.bc = getelementptr i8, ptr %5, i64 %i.bb     ; 2 uses
  %i.bd = getelementptr i8, ptr %1, i64 %i.bb
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph129
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next145, %vector.body131 ] ; 2 uses
  %i.be = shl i64 %index132, 3                    ; 3 uses
  %i.bf = or disjoint i64 %i.be, 16               ; 2 uses
  %next.gep133 = getelementptr i8, ptr %5, i64 %i.be
  %next.gep134 = getelementptr i8, ptr %5, i64 %i.bf
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.be
  %next.gep136 = getelementptr i8, ptr %1, i64 %i.bf
  %wide.vec137 = load <4 x i32>, ptr %next.gep135, align 4, !tbaa !58, !alias.scope !1713
  %wide.vec140 = load <4 x i32>, ptr %next.gep136, align 4, !tbaa !58, !alias.scope !1713
  store <4 x i32> %wide.vec137, ptr %next.gep133, align 4, !tbaa !58, !alias.scope !1714, !noalias !1713
  store <4 x i32> %wide.vec140, ptr %next.gep134, align 4, !tbaa !58, !alias.scope !1714, !noalias !1713
  %index.next145 = add nuw i64 %index132, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next145, %n.vec130
  br i1 %i.bg, label %middle.block146, label %vector.body131, !llvm.loop !1704

middle.block146:                                  ; preds = %vector.body131
  %cmp.n147 = icmp eq i64 %i.ax, %n.vec130
  br i1 %cmp.n147, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit28, label %.lr.ph.i.i.i.i.i24.preheader158

.lr.ph.i.i.i.i.i24.preheader158:                  ; preds = %vector.memcheck125, %.lr.ph.i.i.i.i.i24.preheader, %middle.block146
  %.012.i.i.i.i.i25.ph = phi i64 [ %i.ax, %vector.memcheck125 ], [ %i.ax, %.lr.ph.i.i.i.i.i24.preheader ], [ %i.ba, %middle.block146 ]
  %.0811.i.i.i.i.i26.ph = phi ptr [ %5, %vector.memcheck125 ], [ %5, %.lr.ph.i.i.i.i.i24.preheader ], [ %i.bc, %middle.block146 ]
  %.0910.i.i.i.i.i27.ph = phi ptr [ %1, %vector.memcheck125 ], [ %1, %.lr.ph.i.i.i.i.i24.preheader ], [ %i.bd, %middle.block146 ]
  br label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %.lr.ph.i.i.i.i.i24.preheader158, %.lr.ph.i.i.i.i.i24
  %.012.i.i.i.i.i25 = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i24 ], [ %.012.i.i.i.i.i25.ph, %.lr.ph.i.i.i.i.i24.preheader158 ] ; 2 uses
  %.0811.i.i.i.i.i26 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i24 ], [ %.0811.i.i.i.i.i26.ph, %.lr.ph.i.i.i.i.i24.preheader158 ] ; 3 uses
  %.0910.i.i.i.i.i27 = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i24 ], [ %.0910.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i24.preheader158 ] ; 3 uses
  %i.bh = load i32, ptr %.0910.i.i.i.i.i27, align 4, !tbaa !58
  store i32 %i.bh, ptr %.0811.i.i.i.i.i26, align 4, !tbaa !259
  %i.bi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !58
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 4
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !260
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 8 ; 2 uses
  %i.bn = add nsw i64 %.012.i.i.i.i.i25, -1
  %i.bo = icmp samesign ugt i64 %.012.i.i.i.i.i25, 1
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit28, !llvm.loop !1705

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit28: ; preds = %.lr.ph.i.i.i.i.i24, %middle.block146, %bb.g
  %.08.lcssa.i.i.i.i.i23 = phi ptr [ %5, %bb.g ], [ %i.bc, %middle.block146 ], [ %i.bm, %.lr.ph.i.i.i.i.i24 ] ; 5 uses
  %i.bp = icmp eq ptr %0, %1
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit28
  %i.bq = ptrtoint ptr %.08.lcssa.i.i.i.i.i23 to i64
  %i.br = ptrtoint ptr %5 to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 3                 ; 5 uses
  %i.bu = icmp sgt i64 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i.i31.preheader, label %_ZSt21__move_merge_adaptiveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEEvSE_SE_SI_SI_T1_T2_.exit

.lr.ph.i.i.i.i.i.i31.preheader:                   ; preds = %bb.h
  %xtraiter167 = and i64 %i.bt, 3                 ; 2 uses
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.lr.ph.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i31.prol

.lr.ph.i.i.i.i.i.i31.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i31.preheader, %.lr.ph.i.i.i.i.i.i31.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i.i31.prol ], [ %i.bt, %.lr.ph.i.i.i.i.i.i31.preheader ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i31.prol ], [ %2, %.lr.ph.i.i.i.i.i.i31.preheader ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i31.prol ], [ %.08.lcssa.i.i.i.i.i23, %.lr.ph.i.i.i.i.i.i31.preheader ] ; 2 uses
  %prol.iter169 = phi i64 [ %prol.iter169.next, %.lr.ph.i.i.i.i.i.i31.prol ], [ 0, %.lr.ph.i.i.i.i.i.i31.preheader ]
  %i.bv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.bw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !58
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !259
  %i.by = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !58
  %i.ca = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -4
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !260
  %i.cb = add nsw i64 %.010.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter169.next = add i64 %prol.iter169, 1   ; 2 uses
  %prol.iter169.cmp.not = icmp eq i64 %prol.iter169.next, %xtraiter167
  br i1 %prol.iter169.cmp.not, label %.lr.ph.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i31.prol, !llvm.loop !1706

.lr.ph.i.i.i.i.i.i31.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i31.prol, %.lr.ph.i.i.i.i.i.i31.preheader
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i.i31.preheader ], [ %i.cb, %.lr.ph.i.i.i.i.i.i31.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i31.preheader ], [ %i.bw, %.lr.ph.i.i.i.i.i.i31.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i23, %.lr.ph.i.i.i.i.i.i31.preheader ], [ %i.bv, %.lr.ph.i.i.i.i.i.i31.prol ]
  %i.cc = icmp ult i64 %i.bt, 4
  br i1 %i.cc, label %_ZSt21__move_merge_adaptiveIPSt4pairIiiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZN8LightGBM6CommonL11SortForPairIiiEEvPS5_IT_SaISE_EEPS5_IT0_SaISI_EEmbEUlRKS1_SN_E0_EEEvSE_SE_SI_SI_T1_T2_.exit, label %.lr.ph.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i31:                             ; preds = %.lr.ph.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i31
  %.010.i.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i.i31 ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i31.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i31 ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i31.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i31 ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i31.prol.loopexit ] ; 8 uses
  %i.cd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.ce = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !58
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !259
  %i.cg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !58
  %i.ci = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -4
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !260
  %i.cj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.ck = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !58
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !259
  %i.cm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !58
  %i.co = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -12
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !260
  %i.cp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.cq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !58
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !259
  %i.cs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -20
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !58
  %i.cu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -20
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !260
  %i.cv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !58
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !259
  %i.cy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -28
end_hunk_0
