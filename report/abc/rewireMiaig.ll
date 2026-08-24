Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/rewireMiaig?download=true
inline.NumInlined: 1410
inline.NumDeleted: 327
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 39
begin_hunk_0_@"_ZSt23__merge_adaptive_resizeIPilS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEEvT_S8_S8_T0_S9_T1_S9_T2_":bb.a

bb.d:                                             ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i63
  %or.cond4.i.i.i68 = select i1 %i.bc, i1 %i.bk, i1 false
  br i1 %or.cond4.i.i.i68, label %.thread14.i70, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortEPiiE3$_1EclIKiS4_EEbRT_T0_.exit.i"

.thread14.i70:                                    ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bm = xor i64 %i.be, -1
  %i.bn = add nsw i64 %.020.i, %i.bm
  br label %.thread.i67

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortEPiiE3$_1EclIKiS4_EEbRT_T0_.exit.i": ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !164 ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.az
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !8
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bh
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !8
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
  br i1 %i.bz, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i63, label %"_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEET_S8_S8_RKT0_T1_.exit.loopexit", !llvm.loop !543

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !63     ; 7 uses
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
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #38 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !67
  %i.s = load ptr, ptr %2, align 8, !tbaa !68     ; 3 uses
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !67
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN6Rewire5MiaigC2ERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6Rewire5MiaigESaIS1_EE12_M_check_lenEmPKc.exit
  %i.t = load i32, ptr %i.s, align 4, !tbaa !8
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !8
  br label %_ZN6Rewire5MiaigC2ERKS0_.exit

_ZN6Rewire5MiaigC2ERKS0_.exit:                    ; preds = %_ZNKSt6vectorIN6Rewire5MiaigESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6Rewire5MiaigC2ERKS0_.exit, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZN6Rewire5MiaigC2ERKS0_.exit ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZN6Rewire5MiaigC2ERKS0_.exit ] ; 3 uses
  %i.v = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !67
  %i.w = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !68 ; 3 uses
  store <2 x ptr> %i.v, ptr %.011.i.i.i.i.i, align 8, !tbaa !67
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !8
  br label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !544

_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZN6Rewire5MiaigC2ERKS0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZN6Rewire5MiaigC2ERKS0_.exit ], [ %i.aa, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit26, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i23
  %.011.i.i.i.i.i20 = phi ptr [ %i.ah, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i23 ], [ %i.ab, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.ag, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i23 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %i.ac = load <2 x ptr>, ptr %.0810.i.i.i.i.i21, align 8, !tbaa !67
  %i.ad = load ptr, ptr %.0810.i.i.i.i.i21, align 8, !tbaa !68 ; 3 uses
  store <2 x ptr> %i.ac, ptr %.011.i.i.i.i.i20, align 8, !tbaa !67
  %.not.i.i.i.i.i.i.i.i22 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i22, label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i23, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i19
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !8
  br label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i23

_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i23: ; preds = %bb.e, %.lr.ph.i.i.i.i.i19
  %i.ag = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 16 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i.i.i24, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit26, label %.lr.ph.i.i.i.i.i19, !llvm.loop !544

_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit26: ; preds = %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i23, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i25 = phi ptr [ %i.ab, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.ah, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i23 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit26, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit26 ] ; 2 uses
  tail call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i27, label %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !125

_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit:       ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Rewire5MiaigES2_SaIS1_EET0_T_S5_S4_RT1_.exit26
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  br i1 %.not.i28, label %_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !66
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #39
  br label %_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !63
  store ptr %.0.lcssa.i.i.i.i.i25, ptr %i.a, align 8, !tbaa !69
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !66
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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.g = load ptr, ptr %0, align 8, !tbaa !63     ; 4 uses
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
  %i.n = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !67
  %i.o = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !68 ; 3 uses
  store <2 x ptr> %i.n, ptr %.011.i.i.i.i.i, align 8, !tbaa !67
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !8
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !8
  br label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !544

_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit: ; preds = %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE11_M_allocateEm.exit.i
  %3 = load ptr, ptr %0, align 8, !tbaa !63       ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !69   ; 2 uses
  %.not4.i.i = icmp eq ptr %3, %i.u
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %3, %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit ] ; 2 uses
  tail call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i16, label %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !125

_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre33 = load ptr, ptr %0, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit

_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit:       ; preds = %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit.loopexit, %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit
  %i.w = phi ptr [ %.pre33, %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit.loopexit ], [ %3, %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #39
  br label %_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6Rewire5MiaigESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit, %bb.e
  store ptr %i.m, ptr %0, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c ; 2 uses
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !69
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !66
  br label %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.f:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !69 ; 3 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.i                     ; 3 uses
  %.not = icmp ult i64 %i.af, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKN6Rewire5MiaigElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.d, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i17:                               ; preds = %bb.g, %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ao, %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i ], [ %i.d, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.an, %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i ], [ %i.g, %bb.g ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.am, %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i ], [ %1, %bb.g ] ; 4 uses
  %i.ah = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %i.ah, label %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i17
  %i.ai = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %.0811.i.i.i.i.i)
  %i.al = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !67
  store <2 x ptr> %i.al, ptr %.0811.i.i.i.i.i, align 8, !tbaa !67
  br label %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i

_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i:          ; preds = %bb.j, %.lr.ph.i.i.i.i.i17
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.ao = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ap = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit.loopexit, !llvm.loop !545

_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit.loopexit: ; preds = %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !69
  br label %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit

_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit: ; preds = %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit.loopexit, %bb.g
  %i.aq = phi ptr [ %i.ad, %bb.g ], [ %.pre, %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit.loopexit ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.g, %bb.g ], [ %i.an, %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit.loopexit ] ; 3 uses
  %.not.i18 = icmp eq ptr %i.aq, %.08.lcssa.i.i.i.i.i
  br i1 %.not.i18, label %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE15_M_erase_at_endEPS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit ] ; 2 uses
  tail call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %i.aq
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !125

_ZSt8_DestroyIPN6Rewire5MiaigEEvT_S3_.exit.i:     ; preds = %.lr.ph.i.i.i
  store ptr %.08.lcssa.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !69
  br label %_ZNSt6vectorIN6Rewire5MiaigESaIS1_EE15_M_erase_at_endEPS1_.exit

_ZSt9__advanceIPKN6Rewire5MiaigElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.f
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.af ; 2 uses
  %i.as = ashr exact i64 %i.af, 4                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i.i.i.i20, label %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26

.lr.ph.i.i.i.i.i20:                               ; preds = %_ZSt9__advanceIPKN6Rewire5MiaigElEvRT_T0_St26random_access_iterator_tag.exit, %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i25
  %.012.i.i.i.i.i21 = phi i64 [ %i.bb, %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i25 ], [ %i.as, %_ZSt9__advanceIPKN6Rewire5MiaigElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.0811.i.i.i.i.i22 = phi ptr [ %i.ba, %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i25 ], [ %i.g, %_ZSt9__advanceIPKN6Rewire5MiaigElEvRT_T0_St26random_access_iterator_tag.exit ] ; 4 uses
  %.0910.i.i.i.i.i23 = phi ptr [ %i.az, %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i25 ], [ %1, %_ZSt9__advanceIPKN6Rewire5MiaigElEvRT_T0_St26random_access_iterator_tag.exit ] ; 4 uses
  %i.au = icmp eq ptr %.0811.i.i.i.i.i22, %.0910.i.i.i.i.i23
  br i1 %i.au, label %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i25, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i20
  %i.av = load ptr, ptr %.0910.i.i.i.i.i23, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i.i24 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i24, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %.0811.i.i.i.i.i22)
  %i.ay = load <2 x ptr>, ptr %.0910.i.i.i.i.i23, align 8, !tbaa !67
  store <2 x ptr> %i.ay, ptr %.0811.i.i.i.i.i22, align 8, !tbaa !67
  br label %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i25

_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i25:        ; preds = %bb.m, %.lr.ph.i.i.i.i.i20
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 16
  %i.bb = add nsw i64 %.012.i.i.i.i.i21, -1
  %i.bc = icmp sgt i64 %.012.i.i.i.i.i21, 1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i20, label %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26.loopexit, !llvm.loop !545

_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26.loopexit: ; preds = %_ZN6Rewire5MiaigaSERKS0_.exit.i.i.i.i.i25
  %.pre32 = load ptr, ptr %i.ac, align 8, !tbaa !69
  br label %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26

_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26: ; preds = %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26.loopexit, %_ZSt9__advanceIPKN6Rewire5MiaigElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bd = phi ptr [ %.pre32, %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26.loopexit ], [ %i.ad, %_ZSt9__advanceIPKN6Rewire5MiaigElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN6Rewire5MiaigEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bj, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.bd, %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bi, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %.sink.i, %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26 ] ; 3 uses
  %i.be = load <2 x ptr>, ptr %.0810.i.i.i.i, align 8, !tbaa !67
  %i.bf = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !68 ; 3 uses
  store <2 x ptr> %i.be, ptr %.011.i.i.i.i, align 8, !tbaa !67
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !8
  br label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bi, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN6Rewire5MiaigEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !544

_ZSt22__uninitialized_copy_aIPKN6Rewire5MiaigEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bd, %_ZSt4copyIPKN6Rewire5MiaigEPS1_ET0_T_S6_S5_.exit26 ], [ %i.bj, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.ac, align 8, !tbaa !69
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

end_hunk_0
