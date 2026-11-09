Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_simplifier?download=true
inline.NumInlined: 2303
inline.NumDeleted: 730
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZSt17__merge_sort_loopIPSt4pairIjjES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIN3sat20bool_var_and_cost_ltEEEEvT_S9_T0_T1_T2_:bb.a
_ZSt12__move_mergeIPSt4pairIjjES2_N9__gnu_cxx5__ops15_Iter_comp_iterIN3sat20bool_var_and_cost_ltEEEET0_T_SA_SA_SA_S9_T1_.exit46: ; preds = %.lr.ph.i.i.i.i.i22.i30, %middle.block198, %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__merge_without_bufferIPSt4pairIjjElN9__gnu_cxx5__ops15_Iter_comp_iterIN3sat20bool_var_and_cost_ltEEEEvT_S9_S9_T0_SA_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond71 = or i1 %i.a, %i.b
  br i1 %or.cond71, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr6876 = phi i64 [ %4, %.lr.ph ], [ %i.bd, %tailrecurse ] ; 4 uses
  %.tr6775 = phi i64 [ %3, %.lr.ph ], [ %i.bc, %tailrecurse ] ; 4 uses
  %.tr6573 = phi ptr [ %1, %.lr.ph ], [ %.061, %tailrecurse ] ; 8 uses
  %.tr72 = phi ptr [ %0, %.lr.ph ], [ %i.bb, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr6876, %.tr6775
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr6573, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !355
  %i.h = getelementptr inbounds nuw i8, ptr %.tr72, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !355
  %i.j = icmp ult i32 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %.tr72, align 4, !tbaa !41
  %i.l = load i32, ptr %.tr6573, align 4, !tbaa !41
  store i32 %i.l, ptr %.tr72, align 4, !tbaa !41
  store i32 %i.k, ptr %.tr6573, align 4, !tbaa !41
  %i.m = load i32, ptr %i.h, align 4, !tbaa !41
  %i.n = load i32, ptr %i.f, align 4, !tbaa !41
  store i32 %i.n, ptr %i.h, align 4, !tbaa !41
  store i32 %i.m, ptr %i.f, align 4, !tbaa !41
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.o = icmp sgt i64 %.tr6775, %.tr6876
  %i.p = ptrtoint ptr %.tr6573 to i64             ; 4 uses
  br i1 %i.o, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit42

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.q = sdiv i64 %.tr6775, 2                     ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.tr72, i64 %i.q ; 2 uses
  %i.s = sub i64 %i.c, %i.p
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !355
  br label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.t, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi ptr [ %.tr6573, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.x = lshr i64 %.017.i, 1                      ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.01116.i, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !355
  %i.ab = icmp ult i32 %i.aa, %i.w                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = xor i64 %i.x, -1
  %i.ae = add nsw i64 %.017.i, %i.ad
  %.112.i = select i1 %i.ab, ptr %i.ac, ptr %.01116.i ; 3 uses
  %.1.i = select i1 %i.ab, i64 %i.ae, i64 %i.x    ; 2 uses
  %i.af = icmp sgt i64 %.1.i, 0
  br i1 %i.af, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !27

_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.112.i to i64
  br label %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit

_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.p, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %.112.i, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr6573, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ag = sub i64 %.pre-phi, %i.p
  %i.ah = ashr exact i64 %i.ag, 3
  br label %tailrecurse

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit42: ; preds = %bb.e
  %i.ai = sdiv i64 %.tr6876, 2                    ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %.tr6573, i64 %i.ai ; 2 uses
  %i.ak = ptrtoint ptr %.tr72 to i64              ; 3 uses
  %i.al = sub i64 %i.p, %i.ak
  %i.am = ashr exact i64 %i.al, 3                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44, label %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit42
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !355
  br label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i45

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i45: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i45, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44
  %.017.i46 = phi i64 [ %i.am, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44 ], [ %.1.i51, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i45 ] ; 2 uses
  %.01116.i47 = phi ptr [ %.tr72, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44 ], [ %.112.i50, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i45 ] ; 2 uses
  %i.aq = lshr i64 %.017.i46, 1                   ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.01116.i47, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !355
  %i.au = icmp ult i32 %i.ap, %i.at               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.aw = xor i64 %i.aq, -1
  %i.ax = add nsw i64 %.017.i46, %i.aw
  %.112.i50 = select i1 %i.au, ptr %.01116.i47, ptr %i.av ; 3 uses
  %.1.i51 = select i1 %i.au, i64 %i.aq, i64 %i.ax ; 2 uses
  %i.ay = icmp sgt i64 %.1.i51, 0
  br i1 %i.ay, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i45, label %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !28

_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i45
  %.pre79 = ptrtoint ptr %.112.i50 to i64
  br label %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit

_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit42
  %.pre-phi80 = phi i64 [ %.pre79, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.ak, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit42 ]
  %.011.lcssa.i43 = phi ptr [ %.112.i50, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr72, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit42 ]
  %i.az = sub i64 %.pre-phi80, %i.ak
  %i.ba = ashr exact i64 %i.az, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit
  %.062 = phi ptr [ %i.r, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ], [ %.011.lcssa.i43, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.061 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ], [ %i.aj, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.036 = phi i64 [ %i.ah, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ], [ %i.ai, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.q, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ], [ %i.ba, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %i.bb = tail call noundef ptr @_ZNSt3_V28__rotateIPSt4pairIjjEEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %.062, ptr noundef %.tr6573, ptr noundef %.061) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIPSt4pairIjjElN9__gnu_cxx5__ops15_Iter_comp_iterIN3sat20bool_var_and_cost_ltEEEEvT_S9_S9_T0_SA_T1_(ptr noundef %.tr72, ptr noundef %.062, ptr noundef %i.bb, i64 noundef %.0, i64 noundef %.036)
  %i.bc = sub nsw i64 %.tr6775, %.0               ; 2 uses
  %i.bd = sub nsw i64 %.tr6876, %.036             ; 2 uses
  %i.be = icmp eq i64 %i.bc, 0
  %i.bf = icmp eq i64 %i.bd, 0
  %or.cond = or i1 %i.be, %i.bf
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPSt4pairIjjEEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 3 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.m, 56
  br i1 %min.iters.check161, label %.lr.ph.i.preheader185, label %vector.memcheck162

vector.memcheck162:                               ; preds = %.lr.ph.i.preheader
  %i.p = and i64 %i.m, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %1, i64 %i.q
  %bound0163 = icmp ult ptr %0, %i.s
  %bound1164 = icmp ult ptr %1, %i.r
  %found.conflict165 = and i1 %bound0163, %bound1164
  br i1 %found.conflict165, label %.lr.ph.i.preheader185, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck162
  %n.vec167 = and i64 %i.o, 4611686018427387902   ; 3 uses
  %i.t = shl i64 %n.vec167, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next180, %vector.body168 ] ; 2 uses
  %i.w = shl i64 %index169, 3                     ; 2 uses
  %next.gep170 = getelementptr i8, ptr %1, i64 %i.w ; 2 uses
  %next.gep171 = getelementptr i8, ptr %0, i64 %i.w ; 2 uses
  %wide.vec172 = load <4 x i32>, ptr %next.gep171, align 4, !tbaa !41, !alias.scope !659, !noalias !660
  %wide.vec175 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !41, !alias.scope !660
  store <4 x i32> %wide.vec175, ptr %next.gep171, align 4, !tbaa !41, !alias.scope !659, !noalias !660
  store <4 x i32> %wide.vec172, ptr %next.gep170, align 4, !tbaa !41, !alias.scope !660
  %index.next180 = add nuw i64 %index169, 2       ; 2 uses
  %i.x = icmp eq i64 %index.next180, %n.vec167
  br i1 %i.x, label %middle.block181, label %vector.body168, !llvm.loop !650

middle.block181:                                  ; preds = %vector.body168
  %cmp.n182 = icmp eq i64 %i.o, %n.vec167
  br i1 %cmp.n182, label %_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader185

.lr.ph.i.preheader185:                            ; preds = %vector.memcheck162, %.lr.ph.i.preheader, %middle.block181
  %.010.i.ph = phi ptr [ %1, %vector.memcheck162 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block181 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck162 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block181 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader185, %.lr.ph.i
  %.010.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader185 ] ; 4 uses
  %.079.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader185 ] ; 4 uses
  %i.y = load i32, ptr %.079.i, align 4, !tbaa !41
  %i.z = load i32, ptr %.010.i, align 4, !tbaa !41
  store i32 %i.z, ptr %.079.i, align 4, !tbaa !41
  store i32 %i.y, ptr %.010.i, align 4, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !41
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !41
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !41
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %.lr.ph.i, !llvm.loop !651

bb.d:                                             ; preds = %bb.c
  %i.ag = sub i64 %i.c, %i.g
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.070 = phi i64 [ %i.f, %bb.d ], [ %.070.be, %.backedge ] ; 8 uses
  %.066 = phi i64 [ %i.i, %bb.d ], [ %.066.be, %.backedge ] ; 14 uses
  %.041 = phi ptr [ %0, %bb.d ], [ %.041.be, %.backedge ] ; 12 uses
  %i.ai = sub nsw i64 %.070, %.066                ; 9 uses
  %i.aj = icmp slt i64 %.066, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i64 %i.ai, 0
  br i1 %i.ak, label %.lr.ph89.preheader, label %._crit_edge90

.lr.ph89.preheader:                               ; preds = %bb.f
  %i.al = getelementptr [8 x i8], ptr %.041, i64 %.066 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ai, 4
  br i1 %min.iters.check, label %.lr.ph89.preheader186, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph89.preheader
  %i.am = shl i64 %.070, 3
  %i.an = sub i64 %.070, %.066
  %3 = shl i64 %i.an, 3
  %i.ao = getelementptr i8, ptr %.041, i64 %3
  %i.ap = getelementptr i8, ptr %.041, i64 %i.am
  %bound0143 = icmp ult ptr %.041, %i.ap
  %bound1144 = icmp ult ptr %i.al, %i.ao
  %found.conflict145 = and i1 %bound0143, %bound1144
  br i1 %found.conflict145, label %.lr.ph89.preheader186, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 9223372036854775806     ; 4 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.al, i64 %i.aq
  %i.as = getelementptr i8, ptr %.041, i64 %i.aq  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.at ; 2 uses
  %next.gep147 = getelementptr i8, ptr %.041, i64 %i.at ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep147, align 4, !tbaa !41, !alias.scope !661, !noalias !662
  %wide.vec149 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !41, !alias.scope !662
  store <4 x i32> %wide.vec149, ptr %next.gep147, align 4, !tbaa !41, !alias.scope !661, !noalias !662
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !41, !alias.scope !662
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !655

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge90, label %.lr.ph89.preheader186

.lr.ph89.preheader186:                            ; preds = %vector.memcheck, %.lr.ph89.preheader, %middle.block
  %.03987.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph89.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.04086.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph89.preheader ], [ %i.ar, %middle.block ] ; 5 uses
  %.185.ph = phi ptr [ %.041, %vector.memcheck ], [ %.041, %.lr.ph89.preheader ], [ %i.as, %middle.block ] ; 5 uses
  %i.av = sub i64 %.070, %.066
  %i.aw = xor i64 %.03987.ph, -1
  %i.ax = add i64 %.070, %i.aw
  %xtraiter189 = and i64 %i.av, 1
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph89.prol.loopexit, label %.lr.ph89.prol

.lr.ph89.prol:                                    ; preds = %.lr.ph89.preheader186
  %i.ay = load i32, ptr %.185.ph, align 4, !tbaa !41
  %i.az = load i32, ptr %.04086.ph, align 4, !tbaa !41
  store i32 %i.az, ptr %.185.ph, align 4, !tbaa !41
  store i32 %i.ay, ptr %.04086.ph, align 4, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %.185.ph, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.04086.ph, i64 4 ; 2 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !41
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !41
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !41
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %.185.ph, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.04086.ph, i64 8
  %i.bg = or disjoint i64 %.03987.ph, 1
  br label %.lr.ph89.prol.loopexit

.lr.ph89.prol.loopexit:                           ; preds = %.lr.ph89.prol, %.lr.ph89.preheader186
  %.lcssa.unr = phi ptr [ poison, %.lr.ph89.preheader186 ], [ %i.be, %.lr.ph89.prol ]
  %.03987.unr = phi i64 [ %.03987.ph, %.lr.ph89.preheader186 ], [ %i.bg, %.lr.ph89.prol ]
  %.04086.unr = phi ptr [ %.04086.ph, %.lr.ph89.preheader186 ], [ %i.bf, %.lr.ph89.prol ]
  %.185.unr = phi ptr [ %.185.ph, %.lr.ph89.preheader186 ], [ %i.be, %.lr.ph89.prol ]
  %i.bh = icmp eq i64 %i.ax, %.066
  br i1 %i.bh, label %._crit_edge90, label %.lr.ph89

._crit_edge90:                                    ; preds = %.lr.ph89.prol.loopexit, %.lr.ph89, %middle.block, %bb.f
  %.1.lcssa = phi ptr [ %.041, %bb.f ], [ %i.as, %middle.block ], [ %.lcssa.unr, %.lr.ph89.prol.loopexit ], [ %i.bx, %.lr.ph89 ]
  %i.bi = srem i64 %.070, %.066                   ; 2 uses
  %.not53 = icmp eq i64 %i.bi, 0
  br i1 %.not53, label %_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %bb.g

.lr.ph89:                                         ; preds = %.lr.ph89.prol.loopexit, %.lr.ph89
  %.03987 = phi i64 [ %i.bz, %.lr.ph89 ], [ %.03987.unr, %.lr.ph89.prol.loopexit ]
  %.04086 = phi ptr [ %i.by, %.lr.ph89 ], [ %.04086.unr, %.lr.ph89.prol.loopexit ] ; 6 uses
  %.185 = phi ptr [ %i.bx, %.lr.ph89 ], [ %.185.unr, %.lr.ph89.prol.loopexit ] ; 6 uses
  %i.bj = load i32, ptr %.185, align 4, !tbaa !41
  %i.bk = load i32, ptr %.04086, align 4, !tbaa !41
  store i32 %i.bk, ptr %.185, align 4, !tbaa !41
  store i32 %i.bj, ptr %.04086, align 4, !tbaa !41
  %i.bl = getelementptr inbounds nuw i8, ptr %.185, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.04086, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !41
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !41
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !41
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !41
  %i.bp = getelementptr inbounds nuw i8, ptr %.185, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.04086, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !41
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !41
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !41
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %.185, i64 12 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.04086, i64 12 ; 2 uses
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !41
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !41
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !41
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !41
  %i.bx = getelementptr inbounds nuw i8, ptr %.185, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.04086, i64 16
  %i.bz = add nuw nsw i64 %.03987, 2              ; 2 uses
  %exitcond94.not.1 = icmp eq i64 %i.bz, %i.ai
  br i1 %exitcond94.not.1, label %._crit_edge90, label %.lr.ph89, !llvm.loop !656

bb.g:                                             ; preds = %._crit_edge90
  %i.ca = sub nsw i64 %.066, %i.bi
  br label %.backedge

bb.h:                                             ; preds = %bb.e
  %i.cb = getelementptr inbounds [8 x i8], ptr %.041, i64 %.070 ; 3 uses
  %i.cc = sub i64 0, %i.ai
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cc ; 3 uses
  %i.ce = icmp sgt i64 %.066, 0
  br i1 %i.ce, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %.066, 1
  %i.cf = icmp eq i64 %.066, 1
  br i1 %i.cf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.066, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03883.epil.init = phi ptr [ %i.cb, %.lr.ph.preheader ], [ %i.cy, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.282.epil.init = phi ptr [ %i.cd, %.lr.ph.preheader ], [ %i.cx, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod188 = trunc i64 %.066 to i1
  tail call void @llvm.assume(i1 %lcmp.mod188)
  %i.cg = getelementptr inbounds i8, ptr %.282.epil.init, i64 -8 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.03883.epil.init, i64 -8 ; 2 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !41
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !41
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !41
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !41
  %i.ck = getelementptr inbounds i8, ptr %.282.epil.init, i64 -4 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.03883.epil.init, i64 -4 ; 2 uses
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !41
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !41
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !41
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !41
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %.2.lcssa = phi ptr [ %i.cd, %bb.h ], [ %.041, %._crit_edge.loopexit.unr-lcssa ], [ %.041, %.lr.ph.epil.preheader ]
  %i.co = srem i64 %.070, %i.ai                   ; 2 uses
  %.not = icmp eq i64 %i.co, 0
  br i1 %.not, label %_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.g
  %.070.be = phi i64 [ %.066, %bb.g ], [ %i.ai, %._crit_edge ]
  %.066.be = phi i64 [ %i.ca, %bb.g ], [ %i.co, %._crit_edge ]
  %.041.be = phi ptr [ %.1.lcssa, %bb.g ], [ %.2.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !657

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03883 = phi ptr [ %i.cb, %.lr.ph.preheader.new ], [ %i.cy, %.lr.ph ] ; 4 uses
  %.282 = phi ptr [ %i.cd, %.lr.ph.preheader.new ], [ %i.cx, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.cp = getelementptr inbounds i8, ptr %.282, i64 -8 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.03883, i64 -8 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !41
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !41
  store i32 %i.cs, ptr %i.cp, align 4, !tbaa !41
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !41
  %i.ct = getelementptr inbounds i8, ptr %.282, i64 -4 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.03883, i64 -4 ; 2 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !41
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !41
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !41
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !41
  %i.cx = getelementptr inbounds i8, ptr %.282, i64 -16 ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %.03883, i64 -16 ; 4 uses
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !41
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !41
  store i32 %i.da, ptr %i.cx, align 4, !tbaa !41
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !41
  %i.db = getelementptr inbounds i8, ptr %.282, i64 -12 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.03883, i64 -12 ; 2 uses
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !41
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !41
  store i32 %i.de, ptr %i.db, align 4, !tbaa !41
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !41
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !658

_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit: ; preds = %._crit_edge, %._crit_edge90, %.lr.ph.i, %middle.block181, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %1, %middle.block181 ], [ %1, %.lr.ph.i ], [ %i.ah, %._crit_edge90 ], [ %i.ah, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt23__merge_adaptive_resizeIPSt4pairIjjElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIN3sat20bool_var_and_cost_ltEEEEvT_S9_S9_T0_SA_T1_SA_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %.not89 = icmp sgt i64 %3, %6
  %.not5690 = icmp sgt i64 %4, %6
  %or.cond91 = and i1 %.not89, %.not5690
  br i1 %or.cond91, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.ap, %tailrecurse ]
  %.tr83.lcssa = phi ptr [ %1, %bb.a ], [ %.079, %tailrecurse ]
  %.tr85.lcssa = phi i64 [ %3, %bb.a ], [ %i.ao, %tailrecurse ]
  %.tr86.lcssa = phi i64 [ %4, %bb.a ], [ %i.aq, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIPSt4pairIjjElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIN3sat20bool_var_and_cost_ltEEEEvT_S9_S9_T0_SA_T1_T2_(ptr noundef %.tr.lcssa, ptr noundef %.tr83.lcssa, ptr noundef %2, i64 noundef %.tr85.lcssa, i64 noundef %.tr86.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8695 = phi i64 [ %4, %.lr.ph ], [ %i.aq, %tailrecurse ] ; 3 uses
  %.tr8594 = phi i64 [ %3, %.lr.ph ], [ %i.ao, %tailrecurse ] ; 3 uses
  %.tr8393 = phi ptr [ %1, %.lr.ph ], [ %.079, %tailrecurse ] ; 5 uses
  %.tr92 = phi ptr [ %0, %.lr.ph ], [ %i.ap, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr8594, %.tr8695
  %i.c = ptrtoint ptr %.tr8393 to i64             ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit60

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr8594, 2                     ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %.tr92, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !355
  br label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.g, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi ptr [ %.tr8393, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.k = lshr i64 %.017.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.01116.i, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !355
  %i.o = icmp ult i32 %i.n, %i.j                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = xor i64 %i.k, -1
  %i.r = add nsw i64 %.017.i, %i.q
  %.112.i = select i1 %i.o, ptr %i.p, ptr %.01116.i ; 3 uses
  %.1.i = select i1 %i.o, i64 %i.r, i64 %i.k      ; 2 uses
  %i.s = icmp sgt i64 %.1.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !27

_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.112.i to i64
  br label %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit

_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %.112.i, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr8393, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.t = sub i64 %.pre-phi, %i.c
  %i.u = ashr exact i64 %i.t, 3
  br label %tailrecurse

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.b
  %i.v = sdiv i64 %.tr8695, 2                     ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %.tr8393, i64 %i.v ; 2 uses
  %i.x = ptrtoint ptr %.tr92 to i64               ; 3 uses
  %i.y = sub i64 %i.c, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62, label %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit60
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !355
  br label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i63

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i63: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i63, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62
  %.017.i64 = phi i64 [ %i.z, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.1.i69, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i63 ] ; 2 uses
  %.01116.i65 = phi ptr [ %.tr92, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.112.i68, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i63 ] ; 2 uses
  %i.ad = lshr i64 %.017.i64, 1                   ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.01116.i65, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !355
  %i.ah = icmp ult i32 %i.ac, %i.ag               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = xor i64 %i.ad, -1
  %i.ak = add nsw i64 %.017.i64, %i.aj
  %.112.i68 = select i1 %i.ah, ptr %.01116.i65, ptr %i.ai ; 3 uses
  %.1.i69 = select i1 %i.ah, i64 %i.ad, i64 %i.ak ; 2 uses
  %i.al = icmp sgt i64 %.1.i69, 0
  br i1 %i.al, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i63, label %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !28

_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i63
  %.pre101 = ptrtoint ptr %.112.i68 to i64
  br label %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit

_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit60
  %.pre-phi102 = phi i64 [ %.pre101, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.x, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %.011.lcssa.i61 = phi ptr [ %.112.i68, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr92, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %i.am = sub i64 %.pre-phi102, %i.x
  %i.an = ashr exact i64 %i.am, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit
  %.080 = phi ptr [ %i.e, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ], [ %.011.lcssa.i61, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.079 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ], [ %i.w, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ] ; 3 uses
  %.052 = phi i64 [ %i.u, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ], [ %i.v, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.d, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ], [ %i.an, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %i.ao = sub nsw i64 %.tr8594, %.0               ; 4 uses
  %i.ap = tail call noundef ptr @_ZSt17__rotate_adaptiveIPSt4pairIjjES2_lET_S3_S3_S3_T1_S4_T0_S4_(ptr noundef %.080, ptr noundef %.tr8393, ptr noundef %.079, i64 noundef %i.ao, i64 noundef %.052, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIPSt4pairIjjElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIN3sat20bool_var_and_cost_ltEEEEvT_S9_S9_T0_SA_T1_SA_T2_(ptr noundef %.tr92, ptr noundef %.080, ptr noundef %i.ap, i64 noundef %.0, i64 noundef %.052, ptr noundef %5, i64 noundef %6)
  %i.aq = sub nsw i64 %.tr8695, %.052             ; 3 uses
  %.not = icmp sgt i64 %i.ao, %6
  %.not56 = icmp sgt i64 %i.aq, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt17__rotate_adaptiveIPSt4pairIjjES2_lET_S3_S3_S3_T1_S4_T0_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit42, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 7 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.e, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader201, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.g = getelementptr i8, ptr %5, i64 %i.d
  %bound0 = icmp ult ptr %5, %2
  %bound1 = icmp ult ptr %1, %i.g
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 9223372036854775804      ; 3 uses
  %i.h = and i64 %i.e, 3
  %i.i = shl i64 %n.vec, 3                        ; 2 uses
  %i.j = getelementptr i8, ptr %5, i64 %i.i       ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl i64 %index, 3                        ; 3 uses
  %i.m = or disjoint i64 %i.l, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.l
  %next.gep86 = getelementptr i8, ptr %5, i64 %i.m
  %next.gep87 = getelementptr i8, ptr %1, i64 %i.l
  %next.gep88 = getelementptr i8, ptr %1, i64 %i.m
  %wide.vec = load <4 x i32>, ptr %next.gep87, align 4, !tbaa !41, !alias.scope !685
  %wide.vec90 = load <4 x i32>, ptr %next.gep88, align 4, !tbaa !41, !alias.scope !685
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !41, !alias.scope !686, !noalias !685
  store <4 x i32> %wide.vec90, ptr %next.gep86, align 4, !tbaa !41, !alias.scope !686, !noalias !685
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !666

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i.preheader201

.lr.ph.i.i.i.i.i.preheader201:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.i.i.i.i.i.preheader ], [ %i.h, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %.lr.ph.i.i.i.i.i.preheader ], [ %i.j, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader201, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader201 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader201 ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader201 ] ; 3 uses
  %i.o = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !41
  store i32 %i.o, ptr %.0811.i.i.i.i.i, align 4, !tbaa !354
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !355
  %i.s = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.u = add nsw i64 %.012.i.i.i.i.i, -1
  %i.v = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit, !llvm.loop !667

_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit:       ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.c
  %.08.lcssa.i.i.i.i.i = phi ptr [ %5, %bb.c ], [ %i.j, %middle.block ], [ %i.t, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.c, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 5 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.i.i.i.i36.preheader, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i36.preheader:                     ; preds = %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit
  %xtraiter = and i64 %i.y, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i36.prol.loopexit, label %.lr.ph.i.i.i.i.i36.prol

.lr.ph.i.i.i.i.i36.prol:                          ; preds = %.lr.ph.i.i.i.i.i36.preheader, %.lr.ph.i.i.i.i.i36.prol
  %.010.i.i.i.i.i.prol = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i36.prol ], [ %i.y, %.lr.ph.i.i.i.i.i36.preheader ]
  %.069.i.i.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i36.prol ], [ %2, %.lr.ph.i.i.i.i.i36.preheader ] ; 2 uses
  %.078.i.i.i.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i36.prol ], [ %1, %.lr.ph.i.i.i.i.i36.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i36.prol ], [ 0, %.lr.ph.i.i.i.i.i36.preheader ]
  %i.aa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !41
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !354
  %i.ad = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !41
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -4
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !355
  %i.ag = add nsw i64 %.010.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i36.prol.loopexit, label %.lr.ph.i.i.i.i.i36.prol, !llvm.loop !668

.lr.ph.i.i.i.i.i36.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i36.prol, %.lr.ph.i.i.i.i.i36.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i36.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i36.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i36.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i36.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i36.preheader ], [ %i.aa, %.lr.ph.i.i.i.i.i36.prol ]
  %i.ah = icmp ult i64 %i.y, 4
  br i1 %i.ah, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i36

.lr.ph.i.i.i.i.i36:                               ; preds = %.lr.ph.i.i.i.i.i36.prol.loopexit, %.lr.ph.i.i.i.i.i36
  %.010.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i36 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i36.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i36 ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i36.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i36 ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i36.prol.loopexit ] ; 8 uses
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !41
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !354
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41
  %i.an = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4
  store i32 %i.am, ptr %i.an, align 4, !tbaa !355
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !41
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !354
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !41
  %i.at = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -12
  store i32 %i.as, ptr %i.at, align 4, !tbaa !355
  %i.au = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.av = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !41
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !354
  %i.ax = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -20
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !41
  %i.az = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -20
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !355
  %i.ba = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !41
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !354
  %i.bd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !41
  %i.bf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -28
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !355
  %i.bg = add nsw i64 %.010.i.i.i.i.i, -4
  %i.bh = icmp sgt i64 %.010.i.i.i.i.i, 4
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i36, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit, !llvm.loop !24

_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit: ; preds = %.lr.ph.i.i.i.i.i36.prol.loopexit, %.lr.ph.i.i.i.i.i36, %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit
  %i.bi = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64
  %i.bj = ptrtoint ptr %5 to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = ashr exact i64 %i.bk, 3                 ; 7 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i38.preheader, label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit42

.lr.ph.i.i.i.i.i38.preheader:                     ; preds = %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit
  %min.iters.check102 = icmp ult i64 %i.bl, 6
  br i1 %min.iters.check102, label %.lr.ph.i.i.i.i.i38.preheader198, label %vector.memcheck103

vector.memcheck103:                               ; preds = %.lr.ph.i.i.i.i.i38.preheader
  %i.bn = getelementptr i8, ptr %0, i64 %i.bk
  %bound0104 = icmp ult ptr %0, %.08.lcssa.i.i.i.i.i
  %bound1105 = icmp ult ptr %5, %i.bn
  %found.conflict106 = and i1 %bound0104, %bound1105
  br i1 %found.conflict106, label %.lr.ph.i.i.i.i.i38.preheader198, label %vector.ph107

vector.ph107:                                     ; preds = %vector.memcheck103
  %n.vec108 = and i64 %i.bl, 9223372036854775804  ; 3 uses
  %i.bo = and i64 %i.bl, 3
  %i.bp = shl i64 %n.vec108, 3                    ; 2 uses
  %i.bq = getelementptr i8, ptr %0, i64 %i.bp     ; 2 uses
  %i.br = getelementptr i8, ptr %5, i64 %i.bp
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph107
  %index110 = phi i64 [ 0, %vector.ph107 ], [ %index.next123, %vector.body109 ] ; 2 uses
  %i.bs = shl i64 %index110, 3                    ; 3 uses
  %i.bt = or disjoint i64 %i.bs, 16               ; 2 uses
  %next.gep111 = getelementptr i8, ptr %0, i64 %i.bs
  %next.gep112 = getelementptr i8, ptr %0, i64 %i.bt
  %next.gep113 = getelementptr i8, ptr %5, i64 %i.bs
  %next.gep114 = getelementptr i8, ptr %5, i64 %i.bt
  %wide.vec115 = load <4 x i32>, ptr %next.gep113, align 4, !tbaa !41, !alias.scope !687
  %wide.vec118 = load <4 x i32>, ptr %next.gep114, align 4, !tbaa !41, !alias.scope !687
  store <4 x i32> %wide.vec115, ptr %next.gep111, align 4, !tbaa !41, !alias.scope !688, !noalias !687
  store <4 x i32> %wide.vec118, ptr %next.gep112, align 4, !tbaa !41, !alias.scope !688, !noalias !687
  %index.next123 = add nuw i64 %index110, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next123, %n.vec108
  br i1 %i.bu, label %middle.block124, label %vector.body109, !llvm.loop !672

middle.block124:                                  ; preds = %vector.body109
  %cmp.n125 = icmp eq i64 %i.bl, %n.vec108
  br i1 %cmp.n125, label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit42, label %.lr.ph.i.i.i.i.i38.preheader198

.lr.ph.i.i.i.i.i38.preheader198:                  ; preds = %vector.memcheck103, %.lr.ph.i.i.i.i.i38.preheader, %middle.block124
  %.012.i.i.i.i.i39.ph = phi i64 [ %i.bl, %vector.memcheck103 ], [ %i.bl, %.lr.ph.i.i.i.i.i38.preheader ], [ %i.bo, %middle.block124 ]
  %.0811.i.i.i.i.i40.ph = phi ptr [ %0, %vector.memcheck103 ], [ %0, %.lr.ph.i.i.i.i.i38.preheader ], [ %i.bq, %middle.block124 ]
  %.0910.i.i.i.i.i41.ph = phi ptr [ %5, %vector.memcheck103 ], [ %5, %.lr.ph.i.i.i.i.i38.preheader ], [ %i.br, %middle.block124 ]
  br label %.lr.ph.i.i.i.i.i38

.lr.ph.i.i.i.i.i38:                               ; preds = %.lr.ph.i.i.i.i.i38.preheader198, %.lr.ph.i.i.i.i.i38
  %.012.i.i.i.i.i39 = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i38 ], [ %.012.i.i.i.i.i39.ph, %.lr.ph.i.i.i.i.i38.preheader198 ] ; 2 uses
  %.0811.i.i.i.i.i40 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i38 ], [ %.0811.i.i.i.i.i40.ph, %.lr.ph.i.i.i.i.i38.preheader198 ] ; 3 uses
  %.0910.i.i.i.i.i41 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i38 ], [ %.0910.i.i.i.i.i41.ph, %.lr.ph.i.i.i.i.i38.preheader198 ] ; 3 uses
  %i.bv = load i32, ptr %.0910.i.i.i.i.i41, align 4, !tbaa !41
  store i32 %i.bv, ptr %.0811.i.i.i.i.i40, align 4, !tbaa !354
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i41, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i40, i64 4
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !355
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i41, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i40, i64 8 ; 2 uses
  %i.cb = add nsw i64 %.012.i.i.i.i.i39, -1
  %i.cc = icmp samesign ugt i64 %.012.i.i.i.i.i39, 1
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i38, label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit42, !llvm.loop !673

bb.d:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit42, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cd = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ce = ptrtoint ptr %0 to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 7 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i44.preheader, label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit48

.lr.ph.i.i.i.i.i44.preheader:                     ; preds = %bb.f
  %min.iters.check135 = icmp ult i64 %i.cg, 6
  br i1 %min.iters.check135, label %.lr.ph.i.i.i.i.i44.preheader196, label %vector.memcheck136

vector.memcheck136:                               ; preds = %.lr.ph.i.i.i.i.i44.preheader
  %i.ci = getelementptr i8, ptr %5, i64 %i.cf
  %bound0137 = icmp ult ptr %5, %1
  %bound1138 = icmp ult ptr %0, %i.ci
  %found.conflict139 = and i1 %bound0137, %bound1138
  br i1 %found.conflict139, label %.lr.ph.i.i.i.i.i44.preheader196, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck136
  %n.vec141 = and i64 %i.cg, 9223372036854775804  ; 3 uses
  %i.cj = and i64 %i.cg, 3
  %i.ck = shl i64 %n.vec141, 3                    ; 2 uses
  %i.cl = getelementptr i8, ptr %5, i64 %i.ck     ; 2 uses
  %i.cm = getelementptr i8, ptr %0, i64 %i.ck
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next156, %vector.body142 ] ; 2 uses
  %i.cn = shl i64 %index143, 3                    ; 3 uses
  %i.co = or disjoint i64 %i.cn, 16               ; 2 uses
  %next.gep144 = getelementptr i8, ptr %5, i64 %i.cn
  %next.gep145 = getelementptr i8, ptr %5, i64 %i.co
  %next.gep146 = getelementptr i8, ptr %0, i64 %i.cn
  %next.gep147 = getelementptr i8, ptr %0, i64 %i.co
  %wide.vec148 = load <4 x i32>, ptr %next.gep146, align 4, !tbaa !41, !alias.scope !689
  %wide.vec151 = load <4 x i32>, ptr %next.gep147, align 4, !tbaa !41, !alias.scope !689
  store <4 x i32> %wide.vec148, ptr %next.gep144, align 4, !tbaa !41, !alias.scope !690, !noalias !689
  store <4 x i32> %wide.vec151, ptr %next.gep145, align 4, !tbaa !41, !alias.scope !690, !noalias !689
  %index.next156 = add nuw i64 %index143, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next156, %n.vec141
  br i1 %i.cp, label %middle.block157, label %vector.body142, !llvm.loop !677

middle.block157:                                  ; preds = %vector.body142
  %cmp.n158 = icmp eq i64 %i.cg, %n.vec141
  br i1 %cmp.n158, label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit48, label %.lr.ph.i.i.i.i.i44.preheader196

.lr.ph.i.i.i.i.i44.preheader196:                  ; preds = %vector.memcheck136, %.lr.ph.i.i.i.i.i44.preheader, %middle.block157
  %.012.i.i.i.i.i45.ph = phi i64 [ %i.cg, %vector.memcheck136 ], [ %i.cg, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.cj, %middle.block157 ]
  %.0811.i.i.i.i.i46.ph = phi ptr [ %5, %vector.memcheck136 ], [ %5, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.cl, %middle.block157 ]
  %.0910.i.i.i.i.i47.ph = phi ptr [ %0, %vector.memcheck136 ], [ %0, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.cm, %middle.block157 ]
  br label %.lr.ph.i.i.i.i.i44

.lr.ph.i.i.i.i.i44:                               ; preds = %.lr.ph.i.i.i.i.i44.preheader196, %.lr.ph.i.i.i.i.i44
  %.012.i.i.i.i.i45 = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i44 ], [ %.012.i.i.i.i.i45.ph, %.lr.ph.i.i.i.i.i44.preheader196 ] ; 2 uses
  %.0811.i.i.i.i.i46 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i44 ], [ %.0811.i.i.i.i.i46.ph, %.lr.ph.i.i.i.i.i44.preheader196 ] ; 3 uses
  %.0910.i.i.i.i.i47 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i44 ], [ %.0910.i.i.i.i.i47.ph, %.lr.ph.i.i.i.i.i44.preheader196 ] ; 3 uses
  %i.cq = load i32, ptr %.0910.i.i.i.i.i47, align 4, !tbaa !41
  store i32 %i.cq, ptr %.0811.i.i.i.i.i46, align 4, !tbaa !354
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i47, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !41
  %i.ct = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i46, i64 4
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !355
  %i.cu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i47, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i46, i64 8 ; 2 uses
  %i.cw = add nsw i64 %.012.i.i.i.i.i45, -1
  %i.cx = icmp samesign ugt i64 %.012.i.i.i.i.i45, 1
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i44, label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit48, !llvm.loop !678

_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit48:     ; preds = %.lr.ph.i.i.i.i.i44, %middle.block157, %bb.f
  %.08.lcssa.i.i.i.i.i43 = phi ptr [ %5, %bb.f ], [ %i.cl, %middle.block157 ], [ %i.cv, %.lr.ph.i.i.i.i.i44 ] ; 3 uses
  %i.cy = ptrtoint ptr %2 to i64
  %i.cz = sub i64 %i.cy, %i.cd                    ; 2 uses
  %i.da = ashr exact i64 %i.cz, 3                 ; 7 uses
  %i.db = icmp sgt i64 %i.da, 0
  br i1 %i.db, label %.lr.ph.i.i.i.i.i50.preheader, label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit54

.lr.ph.i.i.i.i.i50.preheader:                     ; preds = %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit48
  %min.iters.check168 = icmp ult i64 %i.da, 6
  br i1 %min.iters.check168, label %.lr.ph.i.i.i.i.i50.preheader195, label %vector.memcheck169

vector.memcheck169:                               ; preds = %.lr.ph.i.i.i.i.i50.preheader
  %i.dc = getelementptr i8, ptr %0, i64 %i.cz
  %bound0170 = icmp ult ptr %0, %2
  %bound1171 = icmp ult ptr %1, %i.dc
  %found.conflict172 = and i1 %bound0170, %bound1171
  br i1 %found.conflict172, label %.lr.ph.i.i.i.i.i50.preheader195, label %vector.ph173

vector.ph173:                                     ; preds = %vector.memcheck169
  %n.vec174 = and i64 %i.da, 9223372036854775804  ; 3 uses
  %i.dd = and i64 %i.da, 3
  %i.de = shl i64 %n.vec174, 3                    ; 2 uses
  %i.df = getelementptr i8, ptr %0, i64 %i.de
  %i.dg = getelementptr i8, ptr %1, i64 %i.de
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph173
  %index176 = phi i64 [ 0, %vector.ph173 ], [ %index.next189, %vector.body175 ] ; 2 uses
  %i.dh = shl i64 %index176, 3                    ; 3 uses
  %i.di = or disjoint i64 %i.dh, 16               ; 2 uses
  %next.gep177 = getelementptr i8, ptr %0, i64 %i.dh
  %next.gep178 = getelementptr i8, ptr %0, i64 %i.di
  %next.gep179 = getelementptr i8, ptr %1, i64 %i.dh
  %next.gep180 = getelementptr i8, ptr %1, i64 %i.di
  %wide.vec181 = load <4 x i32>, ptr %next.gep179, align 4, !tbaa !41, !alias.scope !691
  %wide.vec184 = load <4 x i32>, ptr %next.gep180, align 4, !tbaa !41, !alias.scope !691
  store <4 x i32> %wide.vec181, ptr %next.gep177, align 4, !tbaa !41, !alias.scope !692, !noalias !691
  store <4 x i32> %wide.vec184, ptr %next.gep178, align 4, !tbaa !41, !alias.scope !692, !noalias !691
  %index.next189 = add nuw i64 %index176, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next189, %n.vec174
  br i1 %i.dj, label %middle.block190, label %vector.body175, !llvm.loop !682

middle.block190:                                  ; preds = %vector.body175
  %cmp.n191 = icmp eq i64 %i.da, %n.vec174
  br i1 %cmp.n191, label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit54, label %.lr.ph.i.i.i.i.i50.preheader195

.lr.ph.i.i.i.i.i50.preheader195:                  ; preds = %vector.memcheck169, %.lr.ph.i.i.i.i.i50.preheader, %middle.block190
  %.012.i.i.i.i.i51.ph = phi i64 [ %i.da, %vector.memcheck169 ], [ %i.da, %.lr.ph.i.i.i.i.i50.preheader ], [ %i.dd, %middle.block190 ]
  %.0811.i.i.i.i.i52.ph = phi ptr [ %0, %vector.memcheck169 ], [ %0, %.lr.ph.i.i.i.i.i50.preheader ], [ %i.df, %middle.block190 ]
  %.0910.i.i.i.i.i53.ph = phi ptr [ %1, %vector.memcheck169 ], [ %1, %.lr.ph.i.i.i.i.i50.preheader ], [ %i.dg, %middle.block190 ]
  br label %.lr.ph.i.i.i.i.i50

.lr.ph.i.i.i.i.i50:                               ; preds = %.lr.ph.i.i.i.i.i50.preheader195, %.lr.ph.i.i.i.i.i50
  %.012.i.i.i.i.i51 = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i50 ], [ %.012.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i50.preheader195 ] ; 2 uses
  %.0811.i.i.i.i.i52 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i50 ], [ %.0811.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i50.preheader195 ] ; 3 uses
  %.0910.i.i.i.i.i53 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i50 ], [ %.0910.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i50.preheader195 ] ; 3 uses
  %i.dk = load i32, ptr %.0910.i.i.i.i.i53, align 4, !tbaa !41
  store i32 %i.dk, ptr %.0811.i.i.i.i.i52, align 4, !tbaa !354
  %i.dl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i53, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i52, i64 4
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !355
  %i.do = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i53, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i52, i64 8
  %i.dq = add nsw i64 %.012.i.i.i.i.i51, -1
  %i.dr = icmp samesign ugt i64 %.012.i.i.i.i.i51, 1
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i50, label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit54, !llvm.loop !683

_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit54:     ; preds = %.lr.ph.i.i.i.i.i50, %middle.block190, %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit48
  %i.ds = ptrtoint ptr %.08.lcssa.i.i.i.i.i43 to i64
  %i.dt = ptrtoint ptr %5 to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 3                 ; 5 uses
  %i.dw = icmp sgt i64 %i.dv, 0
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i56.preheader, label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit42

.lr.ph.i.i.i.i.i56.preheader:                     ; preds = %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit54
  %xtraiter203 = and i64 %i.dv, 3                 ; 2 uses
  %lcmp.mod204.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod204.not, label %.lr.ph.i.i.i.i.i56.prol.loopexit, label %.lr.ph.i.i.i.i.i56.prol

.lr.ph.i.i.i.i.i56.prol:                          ; preds = %.lr.ph.i.i.i.i.i56.preheader, %.lr.ph.i.i.i.i.i56.prol
  %.010.i.i.i.i.i57.prol = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i56.prol ], [ %i.dv, %.lr.ph.i.i.i.i.i56.preheader ]
  %.069.i.i.i.i.i58.prol = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i56.prol ], [ %2, %.lr.ph.i.i.i.i.i56.preheader ] ; 2 uses
  %.078.i.i.i.i.i59.prol = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i56.prol ], [ %.08.lcssa.i.i.i.i.i43, %.lr.ph.i.i.i.i.i56.preheader ] ; 2 uses
  %prol.iter205 = phi i64 [ %prol.iter205.next, %.lr.ph.i.i.i.i.i56.prol ], [ 0, %.lr.ph.i.i.i.i.i56.preheader ]
  %i.dx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i59.prol, i64 -8 ; 3 uses
  %i.dy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i58.prol, i64 -8 ; 4 uses
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !41
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !354
  %i.ea = getelementptr inbounds i8, ptr %.078.i.i.i.i.i59.prol, i64 -4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !41
  %i.ec = getelementptr inbounds i8, ptr %.069.i.i.i.i.i58.prol, i64 -4
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !355
  %i.ed = add nsw i64 %.010.i.i.i.i.i57.prol, -1  ; 2 uses
  %prol.iter205.next = add i64 %prol.iter205, 1   ; 2 uses
  %prol.iter205.cmp.not = icmp eq i64 %prol.iter205.next, %xtraiter203
  br i1 %prol.iter205.cmp.not, label %.lr.ph.i.i.i.i.i56.prol.loopexit, label %.lr.ph.i.i.i.i.i56.prol, !llvm.loop !684

.lr.ph.i.i.i.i.i56.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i56.prol, %.lr.ph.i.i.i.i.i56.preheader
  %.010.i.i.i.i.i57.unr = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.ed, %.lr.ph.i.i.i.i.i56.prol ]
  %.069.i.i.i.i.i58.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.dy, %.lr.ph.i.i.i.i.i56.prol ]
  %.078.i.i.i.i.i59.unr = phi ptr [ %.08.lcssa.i.i.i.i.i43, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.dx, %.lr.ph.i.i.i.i.i56.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.dy, %.lr.ph.i.i.i.i.i56.prol ]
  %i.ee = icmp ult i64 %i.dv, 4
  br i1 %i.ee, label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit42, label %.lr.ph.i.i.i.i.i56

.lr.ph.i.i.i.i.i56:                               ; preds = %.lr.ph.i.i.i.i.i56.prol.loopexit, %.lr.ph.i.i.i.i.i56
  %.010.i.i.i.i.i57 = phi i64 [ %i.fd, %.lr.ph.i.i.i.i.i56 ], [ %.010.i.i.i.i.i57.unr, %.lr.ph.i.i.i.i.i56.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i58 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i56 ], [ %.069.i.i.i.i.i58.unr, %.lr.ph.i.i.i.i.i56.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i59 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i56 ], [ %.078.i.i.i.i.i59.unr, %.lr.ph.i.i.i.i.i56.prol.loopexit ] ; 8 uses
  %i.ef = getelementptr inbounds i8, ptr %.078.i.i.i.i.i59, i64 -8
  %i.eg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i58, i64 -8
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !41
  store i32 %i.eh, ptr %i.eg, align 4, !tbaa !354
  %i.ei = getelementptr inbounds i8, ptr %.078.i.i.i.i.i59, i64 -4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !41
  %i.ek = getelementptr inbounds i8, ptr %.069.i.i.i.i.i58, i64 -4
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !355
  %i.el = getelementptr inbounds i8, ptr %.078.i.i.i.i.i59, i64 -16
  %i.em = getelementptr inbounds i8, ptr %.069.i.i.i.i.i58, i64 -16
  %i.en = load i32, ptr %i.el, align 4, !tbaa !41
  store i32 %i.en, ptr %i.em, align 4, !tbaa !354
  %i.eo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i59, i64 -12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !41
  %i.eq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i58, i64 -12
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !355
  %i.er = getelementptr inbounds i8, ptr %.078.i.i.i.i.i59, i64 -24
  %i.es = getelementptr inbounds i8, ptr %.069.i.i.i.i.i58, i64 -24
  %i.et = load i32, ptr %i.er, align 4, !tbaa !41
  store i32 %i.et, ptr %i.es, align 4, !tbaa !354
  %i.eu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i59, i64 -20
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !41
  %i.ew = getelementptr inbounds i8, ptr %.069.i.i.i.i.i58, i64 -20
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !355
  %i.ex = getelementptr inbounds i8, ptr %.078.i.i.i.i.i59, i64 -32 ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %.069.i.i.i.i.i58, i64 -32 ; 3 uses
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !41
  store i32 %i.ez, ptr %i.ey, align 4, !tbaa !354
  %i.fa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i59, i64 -28
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !41
  %i.fc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i58, i64 -28
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !355
  %i.fd = add nsw i64 %.010.i.i.i.i.i57, -4
  %i.fe = icmp sgt i64 %.010.i.i.i.i.i57, 4
  br i1 %i.fe, label %.lr.ph.i.i.i.i.i56, label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit42, !llvm.loop !24

bb.g:                                             ; preds = %bb.d
  %i.ff = tail call noundef ptr @_ZNSt3_V28__rotateIPSt4pairIjjEEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit42

_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit42:     ; preds = %.lr.ph.i.i.i.i.i38, %.lr.ph.i.i.i.i.i56.prol.loopexit, %.lr.ph.i.i.i.i.i56, %middle.block124, %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit54, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit, %bb.e, %bb.b, %bb.g
  %.0 = phi ptr [ %2, %bb.e ], [ %i.ff, %bb.g ], [ %i.ey, %.lr.ph.i.i.i.i.i56 ], [ %0, %bb.b ], [ %0, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit ], [ %2, %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit54 ], [ %i.bq, %middle.block124 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i56.prol.loopexit ], [ %i.ca, %.lr.ph.i.i.i.i.i38 ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIN3sat14clause_wrapperELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !125    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 40) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !125
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !41   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 4                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  %i.l = shl i32 %i.g, 4
  %.not27 = icmp ugt i32 %i.k, %i.l
  %or.cond = and i1 %.not, %.not27
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.m, align 8, !tbaa !241
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !247
  %i.p = load ptr, ptr %1, align 8, !tbaa !248    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !249  ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.p, ptr %i.n, align 8, !tbaa !248
  %i.w = load i64, ptr %i.q, align 8, !tbaa !250
  store i64 %i.w, ptr %i.o, align 8, !tbaa !250
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !249
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = phi i64 [ %i.t, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.x, ptr %i.z, align 8, !tbaa !249
  store ptr %i.q, ptr %1, align 8, !tbaa !248
  store i64 0, ptr %i.y, align 8, !tbaa !249
  store i8 0, ptr %i.q, align 8, !tbaa !250
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #27
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %1, align 8, !tbaa !248   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !250
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @__cxa_free_exception(ptr %i.m) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn32 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.af, %bb.h ]
  resume { ptr, i32 } %.pn32

bb.j:                                             ; preds = %bb.c
  %i.ag = or disjoint i32 %i.k, 8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ah) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %0, align 8, !tbaa !125
  store i32 %i.j, ptr %i.ai, align 4, !tbaa !41
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  ret void

bb.l:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #23
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!452 = distinct !{!452, i1 true, !"_ZN3sat6status9redundantEv"}
!453 = distinct !{!453, !452, !"_ZN3sat6status9redundantEv: argument 0"}
!454 = !{!449}
!455 = !{!451}
!456 = !{!237, !34, i64 496}
!457 = !{!237, !34, i64 436}
!458 = !{!237, !34, i64 440}
!459 = !{!237, !34, i64 444}
!460 = !{!237, !73, i64 2336}
!461 = !{!453}
!462 = !{!291, !267, i64 0}
!463 = distinct !{!463, !56}
!464 = distinct !{!464, !46}
!465 = distinct !{!465, !46}
!466 = distinct !{!466, !46}
!467 = distinct !{!467, !56}
!468 = distinct !{!468, !56}
!469 = distinct !{!469, !46}
!470 = distinct !{!470, !46}
!471 = !{!321, !319, i64 0}
!472 = !{!321, !320, i64 8}
!473 = distinct !{!473, !56}
!474 = distinct !{!474, !56}
!475 = distinct !{!475, !46}
!476 = distinct !{!476, !56}
!477 = distinct !{!477, !46}
!478 = distinct !{!478, !56}
!479 = distinct !{!479, !56}
!480 = distinct !{!480, i1 true, !"_ZNK3sat15clause_use_list11mk_iteratorEv"}
!481 = distinct !{!481, !480, !"_ZNK3sat15clause_use_list11mk_iteratorEv: argument 0"}
!482 = distinct !{!482, !46}
!483 = !{!481}
!484 = distinct !{!484, !56}
!485 = distinct !{!485, !56}
!486 = distinct !{!486, !46}
!487 = distinct !{!487, !46}
!488 = distinct !{!488, !46}
!489 = distinct !{!489, !46}
!490 = distinct !{!490, !46, !293, !294}
!491 = distinct !{!491, !46, !294, !293}
!492 = distinct !{!492, !46}
!493 = !{!"_ZTSN3sat10simplifier19blocked_clause_elim11clause_anteE", !73, i64 0, !200, i64 4, !200, i64 8, !50, i64 16}
!494 = !{!493, !50, i64 16}
!495 = !{!493, !73, i64 0}
!496 = distinct !{!496, i1 true, !"_ZNK3sat15clause_use_list11mk_iteratorEv"}
!497 = distinct !{!497, !496, !"_ZNK3sat15clause_use_list11mk_iteratorEv: argument 0"}
!498 = !{!497}
!499 = distinct !{!499, !46}
!500 = distinct !{!500, !46, !293, !294}
!501 = distinct !{!501, !46, !294, !293}
!502 = distinct !{!502, !56}
!503 = distinct !{!503, !56}
!504 = distinct !{!504, i1 true, !"_ZNK3sat15clause_use_list11mk_iteratorEv"}
!505 = distinct !{!505, !504, !"_ZNK3sat15clause_use_list11mk_iteratorEv: argument 0"}
!506 = distinct !{!506, !56}
!507 = !{!505}
!508 = distinct !{!508, !56}
!509 = distinct !{!509, !56}
!510 = distinct !{!510, !46}
!511 = distinct !{!511, !46}
!512 = distinct !{!512, !56}
!513 = distinct !{!513, !56}
!514 = distinct !{!514, !56}
!515 = distinct !{!515, !56}
!516 = distinct !{!516, !46}
!517 = distinct !{!517, !46}
!518 = distinct !{!518, !56}
!519 = distinct !{!519, !46}
!520 = distinct !{!520, !56}
!521 = distinct !{!521, !46}
!522 = distinct !{!522, !56}
!523 = distinct !{!523, !56}
!524 = distinct !{!524, !56}
!525 = distinct !{!525, !56}
!526 = distinct !{!526, !46}
!527 = distinct !{!527, !46}
!528 = distinct !{!528, !56}
!529 = distinct !{!529, !56}
!530 = distinct !{!530, !46}
!531 = distinct !{!531, !56}
!532 = distinct !{!532, !56}
!533 = distinct !{!533, !56}
!534 = distinct !{!534, !56}
!535 = distinct !{!535, !46}
!536 = distinct !{!536, !46}
!537 = distinct !{!537, !56}
!538 = distinct !{!538, !46}
!539 = distinct !{!539, !56}
!540 = distinct !{!540, !56}
!541 = distinct !{!541, !46}
!542 = distinct !{!542, !46}
!543 = distinct !{!543, !46}
!544 = distinct !{!544, !46}
!545 = distinct !{!545, !46}
!546 = distinct !{!546, !46}
!547 = distinct !{!547, !46}
!548 = distinct !{!548, i1 false, !"LVerDomain"}
!549 = distinct !{!549, !548}
!550 = distinct !{!550, !548}
!551 = distinct !{!551, !46, !293, !294}
!552 = distinct !{!552, !46, !293}
!553 = distinct !{!553, i1 false, !"LVerDomain"}
!554 = distinct !{!554, !553}
!555 = distinct !{!555, !553}
!556 = distinct !{!556, !46, !293, !294}
!557 = distinct !{!557, !56}
!558 = distinct !{!558, !46, !293}
!559 = distinct !{!559, i1 false, !"LVerDomain"}
!560 = distinct !{!560, !559}
!561 = distinct !{!561, !559}
!562 = distinct !{!562, !46, !293, !294}
!563 = distinct !{!563, !56}
!564 = distinct !{!564, !46}
!565 = distinct !{!565, !46, !293}
!566 = !{!549}
!567 = !{!550}
!568 = !{!554}
!569 = !{!555}
!570 = !{!560}
!571 = !{!561}
!572 = distinct !{!572, !46}
!573 = distinct !{!573, !56}
!574 = distinct !{!574, !46}
!575 = distinct !{!575, !46}
!576 = distinct !{!576, !46}
!577 = distinct !{!577, !46}
!578 = distinct !{!578, !46}
!579 = distinct !{!579, !46}
!580 = distinct !{!580, !46}
!581 = distinct !{!581, !46}
!582 = distinct !{!582, !46, !293, !294}
!583 = distinct !{!583, !46, !294, !293}
!584 = distinct !{!584, !46}
!585 = distinct !{!585, !56}
!586 = distinct !{!586, !46}
!587 = distinct !{!587, !46}
!588 = distinct !{!588, !56}
!589 = distinct !{!589, i1 false, !"LVerDomain"}
!590 = distinct !{!590, !589}
!591 = distinct !{!591, !589}
!592 = distinct !{!592, !46, !293, !294}
!593 = distinct !{!593, !46, !293}
!594 = distinct !{!594, !46}
!595 = distinct !{!595, i1 false, !"LVerDomain"}
!596 = distinct !{!596, !595}
!597 = distinct !{!597, !595}
!598 = distinct !{!598, !46, !293, !294}
!599 = distinct !{!599, !46, !293}
!600 = distinct !{!600, i1 false, !"LVerDomain"}
!601 = distinct !{!601, !600}
!602 = distinct !{!602, !600}
!603 = distinct !{!603, !46, !293, !294}
!604 = distinct !{!604, !46, !293}
!605 = distinct !{!605, !56}
!606 = distinct !{!606, !46}
!607 = distinct !{!607, !56}
!608 = !{!590}
!609 = !{!591}
!610 = !{!596}
!611 = !{!597}
!612 = !{!601}
!613 = !{!602}
!614 = distinct !{!614, !46}
!615 = distinct !{!615, !56}
!616 = distinct !{!616, !56}
!617 = distinct !{!617, !46}
!618 = distinct !{!618, i1 false, !"LVerDomain"}
!619 = distinct !{!619, !618}
!620 = distinct !{!620, !618}
!621 = distinct !{!621, !46, !293, !294}
!622 = distinct !{!622, !46, !293}
!623 = distinct !{!623, i1 false, !"LVerDomain"}
!624 = distinct !{!624, !623}
!625 = distinct !{!625, !623}
!626 = distinct !{!626, !46, !293, !294}
!627 = distinct !{!627, !46, !293}
!628 = distinct !{!628, !46}
!629 = distinct !{!629, i1 false, !"LVerDomain"}
!630 = distinct !{!630, !629}
!631 = distinct !{!631, !629}
!632 = distinct !{!632, !46, !293, !294}
!633 = distinct !{!633, !46, !293}
!634 = distinct !{!634, i1 false, !"LVerDomain"}
!635 = distinct !{!635, !634}
!636 = distinct !{!636, !634}
!637 = distinct !{!637, !46, !293, !294}
!638 = distinct !{!638, !46, !293}
!639 = !{!619}
!640 = !{!620}
!641 = !{!624}
!642 = !{!625}
!643 = !{!630}
!644 = !{!631}
!645 = !{!635}
!646 = !{!636}
!647 = distinct !{!647, i1 false, !"LVerDomain"}
!648 = distinct !{!648, !647}
!649 = distinct !{!649, !647}
!650 = distinct !{!650, !46, !293, !294}
!651 = distinct !{!651, !46, !293}
!652 = distinct !{!652, i1 false, !"LVerDomain"}
!653 = distinct !{!653, !652}
!654 = distinct !{!654, !652}
!655 = distinct !{!655, !46, !293, !294}
!656 = distinct !{!656, !46, !293}
!657 = distinct !{!657, !46}
!658 = distinct !{!658, !46}
!659 = !{!648}
!660 = !{!649}
!661 = !{!653}
!662 = !{!654}
!663 = distinct !{!663, i1 false, !"LVerDomain"}
!664 = distinct !{!664, !663}
!665 = distinct !{!665, !663}
!666 = distinct !{!666, !46, !293, !294}
!667 = distinct !{!667, !46, !293}
!668 = distinct !{!668, !56}
!669 = distinct !{!669, i1 false, !"LVerDomain"}
!670 = distinct !{!670, !669}
!671 = distinct !{!671, !669}
!672 = distinct !{!672, !46, !293, !294}
!673 = distinct !{!673, !46, !293}
!674 = distinct !{!674, i1 false, !"LVerDomain"}
!675 = distinct !{!675, !674}
!676 = distinct !{!676, !674}
!677 = distinct !{!677, !46, !293, !294}
!678 = distinct !{!678, !46, !293}
!679 = distinct !{!679, i1 false, !"LVerDomain"}
!680 = distinct !{!680, !679}
!681 = distinct !{!681, !679}
!682 = distinct !{!682, !46, !293, !294}
!683 = distinct !{!683, !46, !293}
!684 = distinct !{!684, !56}
!685 = !{!664}
!686 = !{!665}
!687 = !{!670}
!688 = !{!671}
!689 = !{!675}
!690 = !{!676}
!691 = !{!680}
!692 = !{!681}
end_hunk_1
