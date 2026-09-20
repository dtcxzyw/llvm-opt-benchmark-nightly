Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/rewireMiaig?download=true
inline.NumInlined: 1410
inline.NumDeleted: 327
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 37
begin_hunk_0_@"_ZSt23__merge_adaptive_resizeIPilS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEEvT_S8_S8_T0_S9_T1_S9_T2_":bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.cd, %tailrecurse ]
  %.tr84.lcssa = phi ptr [ %1, %bb.a ], [ %.080, %tailrecurse ]
  %.tr86.lcssa = phi i64 [ %3, %bb.a ], [ %i.cc, %tailrecurse ]
  %.tr87.lcssa = phi i64 [ %4, %bb.a ], [ %i.ce, %tailrecurse ]
  tail call fastcc void @"_ZSt16__merge_adaptiveIPilS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEEvT_S8_S8_T0_S9_T1_T2_"(ptr noundef %.tr.lcssa, ptr noundef %.tr84.lcssa, ptr noundef %2, i64 noundef %.tr86.lcssa, i64 noundef %.tr87.lcssa, ptr noundef %5, i64 %7)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8798 = phi i64 [ %4, %.lr.ph ], [ %i.ce, %tailrecurse ] ; 3 uses
  %.tr8697 = phi i64 [ %3, %.lr.ph ], [ %i.cc, %tailrecurse ] ; 3 uses
  %.tr8496 = phi ptr [ %1, %.lr.ph ], [ %.080, %tailrecurse ] ; 5 uses
  %.tr95 = phi ptr [ %0, %.lr.ph ], [ %i.cd, %tailrecurse ] ; 5 uses
  %i.d = icmp sgt i64 %.tr8697, %.tr8798
  %i.e = ptrtoint ptr %.tr8496 to i64             ; 4 uses
  br i1 %i.d, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit59

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.f = sdiv i64 %.tr8697, 2                     ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %.tr95, i64 %i.f ; 2 uses
  %i.h = sub i64 %i.c, %i.e
  %i.i = ashr exact i64 %i.h, 2                   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %"_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit"

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit
  %.val = load i32, ptr %i.g, align 4
  %.val.val.i = load ptr, ptr %i.b, align 8, !tbaa !78 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105  ; 2 uses
  %i.m = ashr i32 %.val, 1
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !47
  %i.q = icmp eq i32 %i.p, 0                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 56
  br label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %.thread14.i, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.021.i = phi i64 [ %i.i, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %i.am, %.thread14.i ] ; 3 uses
  %.01120.i = phi ptr [ %.tr8496, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %i.al, %.thread14.i ] ; 3 uses
  %i.s = lshr i64 %.021.i, 1                      ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.01120.i, i64 %i.s ; 3 uses
  %.val13.i = load i32, ptr %i.t, align 4, !tbaa !47
  %i.u = ashr i32 %.val13.i, 1
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !47
  %i.y = icmp ne i32 %i.x, 0                      ; 2 uses
  %or.cond.i.i.i = select i1 %i.y, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.aa = xor i64 %i.s, -1
  %i.ab = add nsw i64 %.021.i, %i.aa
  br label %.thread14.i

bb.c:                                             ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i
  %or.cond4.i.i.i = select i1 %i.y, i1 %i.q, i1 false
  br i1 %or.cond4.i.i.i, label %.thread14.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortEPiiE3$_1EclIS4_KiEEbT_RT0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortEPiiE3$_1EclIS4_KiEEbT_RT0_.exit.i": ; preds = %bb.c
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !131 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.v
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !47
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.n
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !47
  %i.ah = icmp slt i32 %i.ae, %i.ag
  %cond.fr.i = freeze i1 %i.ah                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.aj = xor i64 %i.s, -1
  %i.ak = add nsw i64 %.021.i, %i.aj
  %spec.select.i = select i1 %cond.fr.i, ptr %i.ai, ptr %.01120.i
  %spec.select19.i = select i1 %cond.fr.i, i64 %i.ak, i64 %i.s
  br label %.thread14.i

.thread14.i:                                      ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortEPiiE3$_1EclIS4_KiEEbT_RT0_.exit.i", %bb.c, %.thread.i
  %i.al = phi ptr [ %.01120.i, %bb.c ], [ %spec.select.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortEPiiE3$_1EclIS4_KiEEbT_RT0_.exit.i" ], [ %i.z, %.thread.i ] ; 3 uses
  %i.am = phi i64 [ %i.s, %bb.c ], [ %spec.select19.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortEPiiE3$_1EclIS4_KiEEbT_RT0_.exit.i" ], [ %i.ab, %.thread.i ] ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit.loopexit", !llvm.loop !36

"_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit.loopexit": ; preds = %.thread14.i
  %.pre = ptrtoint ptr %i.al to i64
  br label %"_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit"

"_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit.loopexit" ], [ %i.e, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %i.al, %"_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit.loopexit" ], [ %.tr8496, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ao = sub i64 %.pre-phi, %i.e
  %i.ap = ashr exact i64 %i.ao, 2
  br label %tailrecurse

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit59: ; preds = %bb.b
  %i.aq = sdiv i64 %.tr8798, 2                    ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %.tr8496, i64 %i.aq ; 2 uses
  %i.as = ptrtoint ptr %.tr95 to i64              ; 3 uses
  %i.at = sub i64 %i.e, %i.as
  %i.au = ashr exact i64 %i.at, 2                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i61, label %"_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit"

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i61: ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit59
  %.val55 = load i32, ptr %i.ar, align 4
  %.val.val.i62 = load ptr, ptr %i.b, align 8, !tbaa !78 ; 2 uses
  %i.aw = ashr i32 %.val55, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.val.i62, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !105 ; 2 uses
  %i.az = sext i32 %i.aw to i64                   ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !47
  %i.bc = icmp ne i32 %i.bb, 0                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.val.i62, i64 56
  br label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i63

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i63: ; preds = %.thread.i67, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i61
  %.020.i = phi i64 [ %i.au, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i61 ], [ %i.by, %.thread.i67 ] ; 3 uses
  %.01119.i = phi ptr [ %.tr95, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i61 ], [ %i.bx, %.thread.i67 ] ; 3 uses
  %i.be = lshr i64 %.020.i, 1                     ; 5 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.01119.i, i64 %i.be ; 3 uses
  %.val14.i = load i32, ptr %i.bf, align 4, !tbaa !47
  %i.bg = ashr i32 %.val14.i, 1
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !47
  %i.bk = icmp eq i32 %i.bj, 0                    ; 2 uses
  %or.cond.i.i.i66 = select i1 %i.bc, i1 true, i1 %i.bk
  br i1 %or.cond.i.i.i66, label %bb.d, label %.thread.i67

bb.d:                                             ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i63
  %or.cond4.i.i.i68 = select i1 %i.bc, i1 %i.bk, i1 false
  br i1 %or.cond4.i.i.i68, label %.thread14.i70, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortEPiiE3$_1EclIKiS4_EEbRT_T0_.exit.i"

.thread14.i70:                                    ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bm = xor i64 %i.be, -1
  %i.bn = add nsw i64 %.020.i, %i.bm
  br label %.thread.i67

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortEPiiE3$_1EclIKiS4_EEbRT_T0_.exit.i": ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !131 ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.az
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !47
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bh
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !47
  %i.bt = icmp slt i32 %i.bq, %i.bs
  %cond.fr.i69 = freeze i1 %i.bt
  br i1 %cond.fr.i69, label %.thread.i67, label %bb.e

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortEPiiE3$_1EclIKiS4_EEbRT_T0_.exit.i"
  %i.bu = xor i64 %i.be, -1
  %i.bv = add nsw i64 %.020.i, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  br label %.thread.i67

.thread.i67:                                      ; preds = %bb.e, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortEPiiE3$_1EclIKiS4_EEbRT_T0_.exit.i", %.thread14.i70, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i63
  %i.bx = phi ptr [ %i.bl, %.thread14.i70 ], [ %i.bw, %bb.e ], [ %.01119.i, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i63 ], [ %.01119.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortEPiiE3$_1EclIKiS4_EEbRT_T0_.exit.i" ] ; 3 uses
  %i.by = phi i64 [ %i.bn, %.thread14.i70 ], [ %i.bv, %bb.e ], [ %i.be, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i63 ], [ %i.be, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortEPiiE3$_1EclIKiS4_EEbRT_T0_.exit.i" ] ; 2 uses
  %i.bz = icmp sgt i64 %i.by, 0
  br i1 %i.bz, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i63, label %"_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit.loopexit", !llvm.loop !37

"_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit.loopexit": ; preds = %.thread.i67
  %.pre106 = ptrtoint ptr %i.bx to i64
  br label %"_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit"

"_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit59
  %.pre-phi107 = phi i64 [ %.pre106, %"_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit.loopexit" ], [ %i.as, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit59 ]
  %.011.lcssa.i60 = phi ptr [ %i.bx, %"_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit.loopexit" ], [ %.tr95, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit59 ]
  %i.ca = sub i64 %.pre-phi107, %i.as
  %i.cb = ashr exact i64 %i.ca, 2
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit", %"_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit"
  %.081 = phi ptr [ %i.g, %"_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit" ], [ %.011.lcssa.i60, %"_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit" ] ; 2 uses
  %.080 = phi ptr [ %.011.lcssa.i, %"_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit" ], [ %i.ar, %"_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit" ] ; 3 uses
  %.050 = phi i64 [ %i.ap, %"_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit" ], [ %i.aq, %"_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit" ] ; 3 uses
  %.0 = phi i64 [ %i.f, %"_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit" ], [ %i.cb, %"_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit" ] ; 2 uses
  %i.cc = sub nsw i64 %.tr8697, %.0               ; 4 uses
  %i.cd = tail call noundef ptr @_ZSt17__rotate_adaptiveIPiS0_lET_S1_S1_S1_T1_S2_T0_S2_(ptr noundef %.081, ptr noundef %.tr8496, ptr noundef %.080, i64 noundef %i.cc, i64 noundef %.050, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call fastcc void @"_ZSt23__merge_adaptive_resizeIPilS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEEvT_S8_S8_T0_S9_T1_S9_T2_"(ptr noundef %.tr95, ptr noundef %.081, ptr noundef %i.cd, i64 noundef %.0, i64 noundef %.050, ptr noundef %5, i64 noundef %6, i64 %7)
  %i.ce = sub nsw i64 %.tr8798, %.050             ; 3 uses
  %.not = icmp sgt i64 %i.cc, %6
  %.not54 = icmp sgt i64 %i.ce, %6
  %or.cond = and i1 %.not, %.not54
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !98     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Rewire5MiaigESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #44
  unreachable

_ZNKSt6vectorIN6Rewire5MiaigESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 576460752303423487)
  %i.k = select i1 %i.i, i64 576460752303423487, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = shl nuw nsw i64 %i.k, 4
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #38 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !100
  %i.r = load ptr, ptr %2, align 8, !tbaa !101    ; 3 uses
  store <2 x ptr> %i.q, ptr %i.p, align 8, !tbaa !100
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN6Rewire5MiaigC2ERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6Rewire5MiaigESaIS1_EE12_M_check_lenEmPKc.exit
  %i.s = load i32, ptr %i.r, align 4, !tbaa !47
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !47
  br label %_ZN6Rewire5MiaigC2ERKS0_.exit

_ZN6Rewire5MiaigC2ERKS0_.exit:                    ; preds = %_ZNKSt6vectorIN6Rewire5MiaigESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6Rewire5MiaigC2ERKS0_.exit, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.o, %_ZN6Rewire5MiaigC2ERKS0_.exit ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZN6Rewire5MiaigC2ERKS0_.exit ] ; 3 uses
  %i.u = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !100
  %i.v = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !101 ; 3 uses
  store <2 x ptr> %i.u, ptr %.011.i.i.i.i.i, align 8, !tbaa !100
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !47
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !47
  br label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !38

_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZN6Rewire5MiaigC2ERKS0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.o, %_ZN6Rewire5MiaigC2ERKS0_.exit ], [ %i.z, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit26, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i23
  %.011.i.i.i.i.i20 = phi ptr [ %i.ag, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i23 ], [ %i.aa, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.af, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i23 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %i.ab = load <2 x ptr>, ptr %.0810.i.i.i.i.i21, align 8, !tbaa !100
  %i.ac = load ptr, ptr %.0810.i.i.i.i.i21, align 8, !tbaa !101 ; 3 uses
  store <2 x ptr> %i.ab, ptr %.011.i.i.i.i.i20, align 8, !tbaa !100
  %.not.i.i.i.i.i.i.i.i22 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i22, label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i23, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i19
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !47
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !47
  br label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i23

_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i23: ; preds = %bb.e, %.lr.ph.i.i.i.i.i19
  %i.af = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 16 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i.i.i.i24, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit26, label %.lr.ph.i.i.i.i.i19, !llvm.loop !38

_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit26: ; preds = %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i23, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i25 = phi ptr [ %i.aa, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.ag, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i23 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit26, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit26 ] ; 2 uses
  tail call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i)
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i27, label %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit:       ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit26
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  br i1 %.not.i28, label %_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !99
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #39
  br label %_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !98
  store ptr %.0.lcssa.i.i.i.i.i25, ptr %i.a, align 8, !tbaa !102
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.k
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !99
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #30

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #31

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.g = load ptr, ptr %0, align 8, !tbaa !98     ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.d, 576460752303423487
  br i1 %i.l, label %bb.c, label %_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #44
  unreachable

_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #38 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.n = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !100
  %i.o = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !101 ; 3 uses
  store <2 x ptr> %i.n, ptr %.011.i.i.i.i.i, align 8, !tbaa !100
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !47
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !47
  br label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !38

_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit: ; preds = %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE11_M_allocateEm.exit.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !98     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !102  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.t, %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit ] ; 2 uses
  tail call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i)
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.w, %i.v
  br i1 %.not.i.i16, label %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !98
  br label %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit

_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit:       ; preds = %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exitthread-pre-split, %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit
  %i.x = phi ptr [ %.pr, %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exitthread-pre-split ], [ %i.t, %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #39
  br label %_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit, %bb.e
  store ptr %i.m, ptr %0, align 8, !tbaa !98
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c ; 2 uses
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !102
  store ptr %i.ac, ptr %i.e, align 8, !tbaa !99
  br label %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.f:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !102 ; 3 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.i                     ; 3 uses
  %.not = icmp ult i64 %i.ag, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKN6Rewire5MiaigElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp sgt i64 %i.d, 0
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i17:                               ; preds = %bb.g, %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ap, %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i ], [ %i.d, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ao, %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i ], [ %i.g, %bb.g ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.an, %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i ], [ %1, %bb.g ] ; 4 uses
  %i.ai = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %i.ai, label %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i17
  %i.aj = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !47
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !47
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %.0811.i.i.i.i.i)
  %i.am = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !100
  store <2 x ptr> %i.am, ptr %.0811.i.i.i.i.i, align 8, !tbaa !100
  br label %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i

_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i:          ; preds = %bb.j, %.lr.ph.i.i.i.i.i17
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aq = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit.loopexit, !llvm.loop !543

_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit.loopexit: ; preds = %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !102
  br label %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit

_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit: ; preds = %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit.loopexit, %bb.g
  %i.ar = phi ptr [ %i.ae, %bb.g ], [ %.pre, %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit.loopexit ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.g, %bb.g ], [ %i.ao, %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit.loopexit ] ; 3 uses
  %.not.i18 = icmp eq ptr %i.ar, %.08.lcssa.i.i.i.i.i
  br i1 %.not.i18, label %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE15_M_erase_at_endEPS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit ] ; 2 uses
  tail call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i.i)
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit.i:     ; preds = %.lr.ph.i.i.i
  store ptr %.08.lcssa.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !102
  br label %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE15_M_erase_at_endEPS1_.exit

_ZSt9__advanceIPKN6Rewire5MiaigElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.f
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.ag ; 2 uses
  %i.at = ashr exact i64 %i.ag, 4                 ; 2 uses
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i.i.i.i.i20, label %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26

.lr.ph.i.i.i.i.i20:                               ; preds = %_ZSt9__advanceIPKN6Rewire5MiaigElEvRT_T0_St26random_access_iterator_tag.exit, %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i25
  %.012.i.i.i.i.i21 = phi i64 [ %i.bc, %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i25 ], [ %i.at, %_ZSt9__advanceIPKN6Rewire5MiaigElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.0811.i.i.i.i.i22 = phi ptr [ %i.bb, %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i25 ], [ %i.g, %_ZSt9__advanceIPKN6Rewire5MiaigElEvRT_T0_St26random_access_iterator_tag.exit ] ; 4 uses
  %.0910.i.i.i.i.i23 = phi ptr [ %i.ba, %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i25 ], [ %1, %_ZSt9__advanceIPKN6Rewire5MiaigElEvRT_T0_St26random_access_iterator_tag.exit ] ; 4 uses
  %i.av = icmp eq ptr %.0811.i.i.i.i.i22, %.0910.i.i.i.i.i23
  br i1 %i.av, label %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i25, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i20
  %i.aw = load ptr, ptr %.0910.i.i.i.i.i23, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i.i.i.i24 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i24, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !47
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !47
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %.0811.i.i.i.i.i22)
  %i.az = load <2 x ptr>, ptr %.0910.i.i.i.i.i23, align 8, !tbaa !100
  store <2 x ptr> %i.az, ptr %.0811.i.i.i.i.i22, align 8, !tbaa !100
  br label %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i25

_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i25:        ; preds = %bb.m, %.lr.ph.i.i.i.i.i20
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 16
  %i.bc = add nsw i64 %.012.i.i.i.i.i21, -1
  %i.bd = icmp sgt i64 %.012.i.i.i.i.i21, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i20, label %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26.loopexit, !llvm.loop !543

_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26.loopexit: ; preds = %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i25
  %.pre32 = load ptr, ptr %i.ad, align 8, !tbaa !102
  br label %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26

_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26: ; preds = %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26.loopexit, %_ZSt9__advanceIPKN6Rewire5MiaigElEvRT_T0_St26random_access_iterator_tag.exit
  %i.be = phi ptr [ %.pre32, %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26.loopexit ], [ %i.ae, %_ZSt9__advanceIPKN6Rewire5MiaigElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN6Rewire5MiaigEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bk, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.be, %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bj, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %.sink.i, %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26 ] ; 3 uses
  %i.bf = load <2 x ptr>, ptr %.0810.i.i.i.i, align 8, !tbaa !100
  %i.bg = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !101 ; 3 uses
  store <2 x ptr> %i.bf, ptr %.011.i.i.i.i, align 8, !tbaa !100
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !47
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !47
  br label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bj, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN6Rewire5MiaigEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !38

_ZSt22__uninitialized_copy_aIPKN6Rewire5MiaigEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26
  %.0.lcssa.i.i.i.i = phi ptr [ %i.be, %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26 ], [ %i.bk, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.ad, align 8, !tbaa !102
  br label %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE15_M_erase_at_endEPS1_.exit

_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE15_M_erase_at_endEPS1_.exit: ; preds = %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit.i, %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit, %_ZSt22__uninitialized_copy_aIPKN6Rewire5MiaigEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE13_M_deallocateEPS1_m.exit
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #32

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #33

attributes #0 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nounwind }
attributes #33 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { nounwind allocsize(0) }
attributes #37 = { nounwind }
attributes #38 = { builtin nounwind allocsize(0) }
attributes #39 = { builtin nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { nounwind allocsize(1) }
attributes #42 = { nounwind allocsize(0,1) }
attributes #43 = { cold noreturn nounwind }
attributes #44 = { noreturn nounwind }

!llvm.module.flags = !{!39, !40}
!llvm.ident = !{!41}
!llvm.errno.tbaa = !{!46}

!0 = distinct !{!0, !92}
!1 = distinct !{!1, !92}
!2 = distinct !{!2, !92}
!3 = distinct !{!3, !92}
!4 = distinct !{!4, !92}
!5 = distinct !{!5, !92}
!6 = distinct !{!6, !92}
!7 = distinct !{!7, !92}
!8 = distinct !{!8, !92}
!9 = distinct !{!9, !92, !111}
!10 = distinct !{!10, !92}
!11 = distinct !{!11, !92}
!12 = distinct !{!12, !92}
!13 = distinct !{!13, !92}
!14 = distinct !{!14, !92}
!15 = distinct !{!15, !92}
!16 = distinct !{!16, !92}
!17 = distinct !{!17, !92}
!18 = distinct !{!18, !92}
!19 = distinct !{!19, !92}
!20 = distinct !{!20, !92}
!21 = distinct !{!21, !92}
!22 = distinct !{!22, !92}
!23 = distinct !{!23, !92}
!24 = distinct !{!24, !92}
!25 = distinct !{!25, !92}
!26 = distinct !{!26, !92}
!27 = distinct !{!27, !92}
!28 = distinct !{!28, !92}
!29 = distinct !{!29, !92}
!30 = distinct !{!30, !92}
!31 = distinct !{!31, !92}
!32 = distinct !{!32, !92}
!33 = distinct !{!33, !92}
!34 = distinct !{!34, !92}
!35 = distinct !{!35, !92}
!36 = distinct !{!36, !92}
!37 = distinct !{!37, !92}
!38 = distinct !{!38, !92}
!39 = !{i32 8, !"PIC Level", i32 2}
!40 = !{i32 7, !"uwtable", i32 2}
!41 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!"omnipotent char", !42, i64 0}
!44 = !{!"int", !43, i64 0}
!45 = !{!"__libc_errno", !44, i64 0}
!46 = !{!45, !44, i64 0}
!47 = !{!44, !44, i64 0}
!48 = !{!"any pointer", !43, i64 0}
!49 = !{!"p1 int", !48, i64 0}
!50 = !{!"_ZTS10Vec_Int_t_", !44, i64 0, !44, i64 4, !49, i64 8}
!51 = !{!50, !49, i64 8}
!52 = !{!"_ZTS3vi_", !44, i64 0, !44, i64 4, !49, i64 8}
!53 = !{!52, !49, i64 8}
!54 = !{!50, !44, i64 4}
!55 = !{!52, !44, i64 0}
!56 = !{!50, !44, i64 0}
!57 = !{!52, !44, i64 4}
!58 = !{!"p1 omnipotent char", !48, i64 0}
!59 = !{!"p1 _ZTS10Gia_Obj_t_", !48, i64 0}
!60 = !{!"p1 _ZTS10Vec_Int_t_", !48, i64 0}
!61 = !{!"p1 _ZTS10Gia_Rpr_t_", !48, i64 0}
!62 = !{!"p1 _ZTS10Vec_Wec_t_", !48, i64 0}
!63 = !{!"p1 _ZTS10Vec_Str_t_", !48, i64 0}
!64 = !{!"p1 _ZTS10Abc_Cex_t_", !48, i64 0}
!65 = !{!"p1 _ZTS10Vec_Ptr_t_", !48, i64 0}
!66 = !{!"p1 _ZTS10Gia_Plc_t_", !48, i64 0}
!67 = !{!"p1 _ZTS10Gia_Man_t_", !48, i64 0}
!68 = !{!"p1 _ZTS10Vec_Flt_t_", !48, i64 0}
!69 = !{!"float", !43, i64 0}
!70 = !{!"p1 _ZTS10Vec_Vec_t_", !48, i64 0}
!71 = !{!"long", !43, i64 0}
!72 = !{!"p1 _ZTS10Vec_Wrd_t_", !48, i64 0}
!73 = !{!"p1 _ZTS10Vec_Bit_t_", !48, i64 0}
!74 = !{!"p1 _ZTS10Gia_Dat_t_", !48, i64 0}
!75 = !{!"_ZTS10Gia_Man_t_", !58, i64 0, !58, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !59, i64 32, !49, i64 40, !44, i64 48, !44, i64 52, !44, i64 56, !60, i64 64, !60, i64 72, !50, i64 80, !50, i64 96, !44, i64 112, !44, i64 116, !44, i64 120, !50, i64 128, !49, i64 144, !49, i64 152, !60, i64 160, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !49, i64 184, !61, i64 192, !49, i64 200, !49, i64 208, !49, i64 216, !44, i64 224, !44, i64 228, !49, i64 232, !44, i64 240, !60, i64 248, !60, i64 256, !60, i64 264, !62, i64 272, !62, i64 280, !60, i64 288, !48, i64 296, !60, i64 304, !60, i64 312, !63, i64 320, !58, i64 328, !60, i64 336, !60, i64 344, !60, i64 352, !60, i64 360, !60, i64 368, !64, i64 376, !64, i64 384, !65, i64 392, !50, i64 400, !50, i64 416, !60, i64 432, !60, i64 440, !60, i64 448, !60, i64 456, !60, i64 464, !60, i64 472, !60, i64 480, !60, i64 488, !60, i64 496, !60, i64 504, !60, i64 512, !58, i64 520, !66, i64 528, !67, i64 536, !68, i64 544, !68, i64 552, !60, i64 560, !60, i64 568, !60, i64 576, !60, i64 584, !60, i64 592, !44, i64 600, !69, i64 604, !69, i64 608, !60, i64 616, !49, i64 624, !44, i64 632, !65, i64 640, !65, i64 648, !65, i64 656, !60, i64 664, !60, i64 672, !60, i64 680, !60, i64 688, !60, i64 696, !60, i64 704, !60, i64 712, !60, i64 720, !60, i64 728, !70, i64 736, !68, i64 744, !48, i64 752, !48, i64 760, !48, i64 768, !71, i64 776, !71, i64 784, !48, i64 792, !49, i64 800, !44, i64 808, !44, i64 812, !44, i64 816, !44, i64 820, !44, i64 824, !44, i64 828, !44, i64 832, !44, i64 836, !44, i64 840, !44, i64 844, !44, i64 848, !44, i64 852, !72, i64 856, !72, i64 864, !72, i64 872, !72, i64 880, !60, i64 888, !60, i64 896, !60, i64 904, !73, i64 912, !44, i64 920, !44, i64 924, !44, i64 928, !60, i64 936, !44, i64 944, !44, i64 948, !60, i64 952, !60, i64 960, !65, i64 968, !72, i64 976, !60, i64 984, !60, i64 992, !44, i64 1000, !44, i64 1004, !72, i64 1008, !50, i64 1016, !50, i64 1032, !50, i64 1048, !74, i64 1064, !63, i64 1072, !63, i64 1080, !44, i64 1088, !44, i64 1092, !44, i64 1096, !44, i64 1100, !63, i64 1104, !60, i64 1112, !60, i64 1120, !60, i64 1128, !65, i64 1136}
!76 = !{!"p1 _ZTSN6Rewire10Miaig_DataE", !48, i64 0}
!77 = !{!"_ZTSN6Rewire5MiaigE", !49, i64 0, !76, i64 8}
!78 = !{!77, !76, i64 8}
!79 = !{!"p1 long", !48, i64 0}
!80 = !{!"p1 _ZTS3vi_", !48, i64 0}
!81 = !{!"_ZTSN6Rewire10Miaig_DataE", !58, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !44, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !43, i64 96, !79, i64 120, !79, i64 128, !79, i64 136, !80, i64 144, !80, i64 152, !80, i64 160, !80, i64 168, !80, i64 176, !80, i64 184, !80, i64 192, !80, i64 200, !80, i64 208, !49, i64 216, !44, i64 224, !69, i64 228, !80, i64 232}
!82 = !{!81, !80, i64 192}
!83 = !{!81, !80, i64 200}
!84 = !{!75, !58, i64 0}
!85 = !{!81, !58, i64 0}
!86 = !{!43, !43, i64 0}
!87 = !{!75, !60, i64 72}
!88 = !{!81, !79, i64 136}
!89 = !{!81, !44, i64 28}
!90 = !{!79, !79, i64 0}
!91 = !{!71, !71, i64 0}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"llvm.loop.isvectorized", i32 1}
!94 = !{!"llvm.loop.unroll.runtime.disable"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !{!"p1 _ZTSN6Rewire5MiaigE", !48, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!97, !96, i64 0}
!99 = !{!97, !96, i64 16}
!100 = !{!48, !48, i64 0}
!101 = !{!77, !49, i64 0}
!102 = !{!97, !96, i64 8}
!103 = !{!81, !44, i64 16}
!104 = !{!81, !44, i64 20}
!105 = !{!81, !49, i64 72}
!106 = !{!81, !44, i64 12}
!107 = !{!81, !80, i64 176}
!108 = !{!81, !49, i64 48}
!109 = !{!75, !60, i64 64}
!110 = !{!75, !59, i64 32}
!111 = !{!"llvm.loop.peeled.count", i32 1}
!112 = !{!"_ZTS13Abc_NtkType_t", !43, i64 0}
!113 = !{!"_ZTS13Abc_NtkFunc_t", !43, i64 0}
!114 = !{!"p1 _ZTS9Nm_Man_t_", !48, i64 0}
!115 = !{!"p1 _ZTS10Abc_Ntk_t_", !48, i64 0}
!116 = !{!"p1 _ZTS10Abc_Des_t_", !48, i64 0}
!117 = !{!"double", !43, i64 0}
!118 = !{!"p1 _ZTS12Mem_Fixed_t_", !48, i64 0}
!119 = !{!"p1 _ZTS11Mem_Step_t_", !48, i64 0}
!120 = !{!"p1 _ZTS14Abc_ManTime_t_", !48, i64 0}
!121 = !{!"p1 float", !48, i64 0}
!122 = !{!"_ZTS10Abc_Ntk_t_", !112, i64 0, !113, i64 4, !58, i64 8, !58, i64 16, !114, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !65, i64 80, !65, i64 88, !43, i64 96, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !115, i64 160, !44, i64 168, !116, i64 176, !115, i64 184, !44, i64 192, !44, i64 196, !44, i64 200, !117, i64 208, !44, i64 216, !50, i64 224, !118, i64 240, !119, i64 248, !48, i64 256, !120, i64 264, !48, i64 272, !69, i64 280, !44, i64 284, !60, i64 288, !65, i64 296, !49, i64 304, !64, i64 312, !65, i64 320, !115, i64 328, !48, i64 336, !48, i64 344, !115, i64 352, !48, i64 360, !48, i64 368, !60, i64 376, !60, i64 384, !58, i64 392, !121, i64 400, !65, i64 408, !60, i64 416, !60, i64 424, !65, i64 432, !60, i64 440, !60, i64 448, !60, i64 456}
!123 = !{!"_ZTS11Mini_Aig_t_", !44, i64 0, !44, i64 4, !44, i64 8, !49, i64 16}
!124 = !{!123, !49, i64 16}
!125 = !{!81, !80, i64 232}
!126 = !{!81, !69, i64 228}
!127 = !{!122, !58, i64 8}
!128 = !{!123, !44, i64 4}
!129 = !{!81, !44, i64 24}
!130 = !{!81, !49, i64 40}
!131 = !{!81, !49, i64 56}
!132 = !{!81, !80, i64 144}
!133 = !{!81, !80, i64 152}
!134 = !{!81, !80, i64 160}
!135 = !{!81, !80, i64 168}
!136 = !{!81, !80, i64 184}
!137 = !{!81, !79, i64 120}
!138 = !{!81, !79, i64 128}
!139 = !{!81, !49, i64 80}
!140 = !{!81, !49, i64 88}
!141 = !{!81, !49, i64 216}
!142 = !{!75, !44, i64 24}
!143 = !{!"p1 _ZTS8_IO_FILE", !48, i64 0}
!144 = !{!143, !143, i64 0}
!145 = !{!80, !80, i64 0}
!146 = !{!81, !44, i64 224}
!147 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!148 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!149 = !{!"branch_weights", !"expected", i32 2146946911, i32 536737}
end_hunk_0
