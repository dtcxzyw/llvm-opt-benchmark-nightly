Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_arith?download=true
inline.NumInlined: 21080
inline.NumDeleted: 3671
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 251
loop-unroll.NumUnrolled: 318
begin_hunk_0_@_ZSt17__merge_sort_loopIPSt4pairIP4exprjES4_lN9__gnu_cxx5__ops15_Iter_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEEvT_SE_T0_T1_T2_:bb.a
  %i.gf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i32, i64 56
  store i32 %i.ge, ptr %i.gf, align 8, !tbaa !1183
  %i.gg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i33, i64 64
  %i.gh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i32, i64 64
  %i.gi = add nsw i64 %.012.i.i.i.i.i23.i31, -4
  %i.gj = icmp sgt i64 %.012.i.i.i.i.i23.i31, 4
  br i1 %i.gj, label %.lr.ph.i.i.i.i.i22.i30, label %_ZSt12__move_mergeIPSt4pairIP4exprjES4_N9__gnu_cxx5__ops15_Iter_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET0_T_SF_SF_SF_SE_T1_.exit47, !llvm.loop !177

_ZSt12__move_mergeIPSt4pairIP4exprjES4_N9__gnu_cxx5__ops15_Iter_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET0_T_SF_SF_SF_SE_T1_.exit47: ; preds = %.lr.ph.i.i.i.i.i22.i30.prol.loopexit, %.lr.ph.i.i.i.i.i22.i30, %_ZSt4moveIPSt4pairIP4exprjES4_ET0_T_S6_S5_.exit.i27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__merge_without_bufferIPSt4pairIP4exprjElN9__gnu_cxx5__ops15_Iter_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEEvT_SE_SE_T0_SF_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond71 = or i1 %i.a, %i.b
  br i1 %or.cond71, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr6876 = phi i64 [ %4, %.lr.ph ], [ %i.bb, %tailrecurse ] ; 4 uses
  %.tr6775 = phi i64 [ %3, %.lr.ph ], [ %i.ba, %tailrecurse ] ; 4 uses
  %.tr6573 = phi ptr [ %1, %.lr.ph ], [ %.061, %tailrecurse ] ; 8 uses
  %.tr72 = phi ptr [ %0, %.lr.ph ], [ %i.az, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr6876, %.tr6775
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr6573, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1183 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.tr72, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1183 ; 2 uses
  %i.j = icmp ugt i32 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %.tr72, align 8, !tbaa !205
  %i.l = load ptr, ptr %.tr6573, align 8, !tbaa !205
  store ptr %i.l, ptr %.tr72, align 8, !tbaa !205
  store ptr %i.k, ptr %.tr6573, align 8, !tbaa !205
  store i32 %i.g, ptr %i.h, align 8, !tbaa !201
  store i32 %i.i, ptr %i.f, align 8, !tbaa !201
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.m = icmp sgt i64 %.tr6775, %.tr6876
  %i.n = ptrtoint ptr %.tr6573 to i64             ; 4 uses
  br i1 %i.m, label %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit42

_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.o = sdiv i64 %.tr6775, 2                     ; 2 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %.tr72, i64 %i.o ; 2 uses
  %i.q = sub i64 %i.c, %i.n
  %i.r = ashr exact i64 %i.q, 4                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Iter_comp_valIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit

_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1183
  br label %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.r, %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi ptr [ %.tr6573, %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.v = lshr i64 %.017.i, 1                      ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.01116.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !1183
  %i.z = icmp ugt i32 %i.y, %i.u                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ab = xor i64 %i.v, -1
  %i.ac = add nsw i64 %.017.i, %i.ab
  %.112.i = select i1 %i.z, ptr %i.aa, ptr %.01116.i ; 3 uses
  %.1.i = select i1 %i.z, i64 %i.ac, i64 %i.v     ; 2 uses
  %i.ad = icmp sgt i64 %.1.i, 0
  br i1 %i.ad, label %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Iter_comp_valIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !178

_ZSt13__lower_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Iter_comp_valIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.112.i to i64
  br label %_ZSt13__lower_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Iter_comp_valIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__lower_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Iter_comp_valIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Iter_comp_valIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Iter_comp_valIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.n, %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %.112.i, %_ZSt13__lower_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Iter_comp_valIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.tr6573, %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ae = sub i64 %.pre-phi, %i.n
  %i.af = ashr exact i64 %i.ae, 4
  br label %tailrecurse

_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit42: ; preds = %bb.e
  %i.ag = sdiv i64 %.tr6876, 2                    ; 2 uses
  %i.ah = getelementptr inbounds [16 x i8], ptr %.tr6573, i64 %i.ag ; 2 uses
  %i.ai = ptrtoint ptr %.tr72 to i64              ; 3 uses
  %i.aj = sub i64 %i.n, %i.ai
  %i.ak = ashr exact i64 %i.aj, 4                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44, label %_ZSt13__upper_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Val_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit

_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44: ; preds = %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit42
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !1183
  br label %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.i45

_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.i45: ; preds = %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.i45, %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44
  %.017.i46 = phi i64 [ %i.ak, %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44 ], [ %.1.i51, %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.i45 ] ; 2 uses
  %.01116.i47 = phi ptr [ %.tr72, %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44 ], [ %.112.i50, %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.i45 ] ; 2 uses
  %i.ao = lshr i64 %.017.i46, 1                   ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.01116.i47, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !1183
  %i.as = icmp ugt i32 %i.an, %i.ar               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = xor i64 %i.ao, -1
  %i.av = add nsw i64 %.017.i46, %i.au
  %.112.i50 = select i1 %i.as, ptr %.01116.i47, ptr %i.at ; 3 uses
  %.1.i51 = select i1 %i.as, i64 %i.ao, i64 %i.av ; 2 uses
  %i.aw = icmp sgt i64 %.1.i51, 0
  br i1 %i.aw, label %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.i45, label %_ZSt13__upper_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Val_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !179

_ZSt13__upper_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Val_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.i45
  %.pre79 = ptrtoint ptr %.112.i50 to i64
  br label %_ZSt13__upper_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Val_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__upper_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Val_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Val_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit42
  %.pre-phi80 = phi i64 [ %.pre79, %_ZSt13__upper_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Val_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.ai, %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit42 ]
  %.011.lcssa.i43 = phi ptr [ %.112.i50, %_ZSt13__upper_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Val_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.tr72, %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit42 ]
  %i.ax = sub i64 %.pre-phi80, %i.ai
  %i.ay = ashr exact i64 %i.ax, 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Val_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit, %_ZSt13__lower_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Iter_comp_valIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit
  %.062 = phi ptr [ %i.p, %_ZSt13__lower_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Iter_comp_valIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit ], [ %.011.lcssa.i43, %_ZSt13__upper_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Val_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.061 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Iter_comp_valIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit ], [ %i.ah, %_ZSt13__upper_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Val_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.036 = phi i64 [ %i.af, %_ZSt13__lower_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Iter_comp_valIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit ], [ %i.ag, %_ZSt13__upper_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Val_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.o, %_ZSt13__lower_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Iter_comp_valIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit ], [ %i.ay, %_ZSt13__upper_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Val_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %i.az = tail call noundef ptr @_ZNSt3_V28__rotateIPSt4pairIP4exprjEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %.062, ptr noundef %.tr6573, ptr noundef %.061) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIPSt4pairIP4exprjElN9__gnu_cxx5__ops15_Iter_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEEvT_SE_SE_T0_SF_T1_(ptr noundef %.tr72, ptr noundef %.062, ptr noundef %i.az, i64 noundef %.0, i64 noundef %.036)
  %i.ba = sub nsw i64 %.tr6775, %.0               ; 2 uses
  %i.bb = sub nsw i64 %.tr6876, %.036             ; 2 uses
  %i.bc = icmp eq i64 %i.ba, 0
  %i.bd = icmp eq i64 %i.bb, 0
  %or.cond = or i1 %i.bc, %i.bd
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3_V28__rotateIPSt4pairIP4exprjEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPSt4pairIP4exprjES4_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPSt4pairIP4exprjES4_ET0_T_S6_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 4                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 4                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.010.i = phi ptr [ %i.s, %.lr.ph.i ], [ %1, %bb.c ] ; 4 uses
  %.079.i = phi ptr [ %i.r, %.lr.ph.i ], [ %0, %bb.c ] ; 4 uses
  %i.l = load ptr, ptr %.079.i, align 8, !tbaa !205
  %i.m = load ptr, ptr %.010.i, align 8, !tbaa !205
  store ptr %i.m, ptr %.079.i, align 8, !tbaa !205
  store ptr %i.l, ptr %.010.i, align 8, !tbaa !205
  %i.n = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.n, align 8, !tbaa !201
  %i.q = load i32, ptr %i.o, align 8, !tbaa !201
  store i32 %i.q, ptr %i.n, align 8, !tbaa !201
  store i32 %i.p, ptr %i.o, align 8, !tbaa !201
  %i.r = getelementptr inbounds nuw i8, ptr %.079.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %.not.i = icmp eq ptr %i.r, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPSt4pairIP4exprjES4_ET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !3862

bb.d:                                             ; preds = %bb.c
  %i.t = sub i64 %i.c, %i.g
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.070 = phi i64 [ %i.f, %bb.d ], [ %.070.be, %.backedge ] ; 5 uses
  %.066 = phi i64 [ %i.i, %bb.d ], [ %.066.be, %.backedge ] ; 12 uses
  %.041 = phi ptr [ %0, %bb.d ], [ %.041.be, %.backedge ] ; 7 uses
  %i.v = sub nsw i64 %.070, %.066                 ; 8 uses
  %i.w = icmp slt i64 %.066, %i.v
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = icmp sgt i64 %i.v, 0
  br i1 %i.x, label %.lr.ph89.preheader, label %._crit_edge90

.lr.ph89.preheader:                               ; preds = %bb.f
  %i.y = getelementptr inbounds [16 x i8], ptr %.041, i64 %.066 ; 2 uses
  %.neg = add i64 %.066, 1
  %xtraiter105 = and i64 %i.v, 1
  %i.z = icmp eq i64 %.070, %.neg
  br i1 %i.z, label %.lr.ph89.epil.preheader, label %.lr.ph89.preheader.new

.lr.ph89.preheader.new:                           ; preds = %.lr.ph89.preheader
  %unroll_iter109 = and i64 %i.v, 9223372036854775806
  br label %.lr.ph89

._crit_edge90.loopexit.unr-lcssa:                 ; preds = %.lr.ph89
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %._crit_edge90, label %.lr.ph89.epil.preheader

.lr.ph89.epil.preheader:                          ; preds = %._crit_edge90.loopexit.unr-lcssa, %.lr.ph89.preheader
  %.04086.epil.init = phi ptr [ %i.y, %.lr.ph89.preheader ], [ %i.ax, %._crit_edge90.loopexit.unr-lcssa ] ; 3 uses
  %.185.epil.init = phi ptr [ %.041, %.lr.ph89.preheader ], [ %i.aw, %._crit_edge90.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod108 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.aa = load ptr, ptr %.185.epil.init, align 8, !tbaa !205
  %i.ab = load ptr, ptr %.04086.epil.init, align 8, !tbaa !205
  store ptr %i.ab, ptr %.185.epil.init, align 8, !tbaa !205
  store ptr %i.aa, ptr %.04086.epil.init, align 8, !tbaa !205
  %i.ac = getelementptr inbounds nuw i8, ptr %.185.epil.init, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.04086.epil.init, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 8, !tbaa !201
  %i.af = load i32, ptr %i.ad, align 8, !tbaa !201
  store i32 %i.af, ptr %i.ac, align 8, !tbaa !201
  store i32 %i.ae, ptr %i.ad, align 8, !tbaa !201
  %i.ag = getelementptr inbounds nuw i8, ptr %.185.epil.init, i64 16
  br label %._crit_edge90

._crit_edge90:                                    ; preds = %.lr.ph89.epil.preheader, %._crit_edge90.loopexit.unr-lcssa, %bb.f
  %.1.lcssa = phi ptr [ %.041, %bb.f ], [ %i.aw, %._crit_edge90.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph89.epil.preheader ]
  %i.ah = srem i64 %.070, %.066                   ; 2 uses
  %.not53 = icmp eq i64 %i.ah, 0
  br i1 %.not53, label %_ZSt11swap_rangesIPSt4pairIP4exprjES4_ET0_T_S6_S5_.exit, label %bb.g

.lr.ph89:                                         ; preds = %.lr.ph89, %.lr.ph89.preheader.new
  %.04086 = phi ptr [ %i.y, %.lr.ph89.preheader.new ], [ %i.ax, %.lr.ph89 ] ; 6 uses
  %.185 = phi ptr [ %.041, %.lr.ph89.preheader.new ], [ %i.aw, %.lr.ph89 ] ; 6 uses
  %niter110 = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %niter110.next.1, %.lr.ph89 ]
  %i.ai = load ptr, ptr %.185, align 8, !tbaa !205
  %i.aj = load ptr, ptr %.04086, align 8, !tbaa !205
  store ptr %i.aj, ptr %.185, align 8, !tbaa !205
  store ptr %i.ai, ptr %.04086, align 8, !tbaa !205
  %i.ak = getelementptr inbounds nuw i8, ptr %.185, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.04086, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !201
  %i.an = load i32, ptr %i.al, align 8, !tbaa !201
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !201
  store i32 %i.am, ptr %i.al, align 8, !tbaa !201
  %i.ao = getelementptr inbounds nuw i8, ptr %.185, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.04086, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !205
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !205
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !205
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !205
  %i.as = getelementptr inbounds nuw i8, ptr %.185, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.04086, i64 24 ; 2 uses
  %i.au = load i32, ptr %i.as, align 8, !tbaa !201
  %i.av = load i32, ptr %i.at, align 8, !tbaa !201
  store i32 %i.av, ptr %i.as, align 8, !tbaa !201
  store i32 %i.au, ptr %i.at, align 8, !tbaa !201
  %i.aw = getelementptr inbounds nuw i8, ptr %.185, i64 32 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04086, i64 32 ; 2 uses
  %niter110.next.1 = add i64 %niter110, 2         ; 2 uses
  %niter110.ncmp.1 = icmp eq i64 %niter110.next.1, %unroll_iter109
  br i1 %niter110.ncmp.1, label %._crit_edge90.loopexit.unr-lcssa, label %.lr.ph89, !llvm.loop !3863

bb.g:                                             ; preds = %._crit_edge90
  %i.ay = sub nsw i64 %.066, %i.ah
  br label %.backedge

bb.h:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds [16 x i8], ptr %.041, i64 %.070 ; 3 uses
  %i.ba = sub i64 0, %i.v
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.ba ; 3 uses
  %i.bc = icmp sgt i64 %.066, 0
  br i1 %i.bc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %.066, 1
  %i.bd = icmp eq i64 %.066, 1
  br i1 %i.bd, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.066, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03883.epil.init = phi ptr [ %i.az, %.lr.ph.preheader ], [ %i.bw, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.282.epil.init = phi ptr [ %i.bb, %.lr.ph.preheader ], [ %i.bv, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod104 = trunc i64 %.066 to i1
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %i.be = getelementptr inbounds i8, ptr %.282.epil.init, i64 -16 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.03883.epil.init, i64 -16 ; 2 uses
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !205
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !205
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !205
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !205
  %i.bi = getelementptr inbounds i8, ptr %.282.epil.init, i64 -8 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.03883.epil.init, i64 -8 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 8, !tbaa !201
  %i.bl = load i32, ptr %i.bj, align 8, !tbaa !201
  store i32 %i.bl, ptr %i.bi, align 8, !tbaa !201
  store i32 %i.bk, ptr %i.bj, align 8, !tbaa !201
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %.2.lcssa = phi ptr [ %i.bb, %bb.h ], [ %.041, %._crit_edge.loopexit.unr-lcssa ], [ %.041, %.lr.ph.epil.preheader ]
  %i.bm = srem i64 %.070, %i.v                    ; 2 uses
  %.not = icmp eq i64 %i.bm, 0
  br i1 %.not, label %_ZSt11swap_rangesIPSt4pairIP4exprjES4_ET0_T_S6_S5_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.g
  %.070.be = phi i64 [ %.066, %bb.g ], [ %i.v, %._crit_edge ]
  %.066.be = phi i64 [ %i.ay, %bb.g ], [ %i.bm, %._crit_edge ]
  %.041.be = phi ptr [ %.1.lcssa, %bb.g ], [ %.2.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !3864

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03883 = phi ptr [ %i.az, %.lr.ph.preheader.new ], [ %i.bw, %.lr.ph ] ; 4 uses
  %.282 = phi ptr [ %i.bb, %.lr.ph.preheader.new ], [ %i.bv, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bn = getelementptr inbounds i8, ptr %.282, i64 -16 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.03883, i64 -16 ; 2 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !205
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !205
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !205
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !205
  %i.br = getelementptr inbounds i8, ptr %.282, i64 -8 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.03883, i64 -8 ; 2 uses
  %i.bt = load i32, ptr %i.br, align 8, !tbaa !201
  %i.bu = load i32, ptr %i.bs, align 8, !tbaa !201
  store i32 %i.bu, ptr %i.br, align 8, !tbaa !201
  store i32 %i.bt, ptr %i.bs, align 8, !tbaa !201
  %i.bv = getelementptr inbounds i8, ptr %.282, i64 -32 ; 4 uses
  %i.bw = getelementptr inbounds i8, ptr %.03883, i64 -32 ; 4 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !205
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !205
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !205
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !205
  %i.bz = getelementptr inbounds i8, ptr %.282, i64 -24 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.03883, i64 -24 ; 2 uses
  %i.cb = load i32, ptr %i.bz, align 8, !tbaa !201
  %i.cc = load i32, ptr %i.ca, align 8, !tbaa !201
  store i32 %i.cc, ptr %i.bz, align 8, !tbaa !201
  store i32 %i.cb, ptr %i.ca, align 8, !tbaa !201
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3865

_ZSt11swap_rangesIPSt4pairIP4exprjES4_ET0_T_S6_S5_.exit: ; preds = %._crit_edge, %._crit_edge90, %.lr.ph.i, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %1, %.lr.ph.i ], [ %i.u, %._crit_edge90 ], [ %i.u, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt23__merge_adaptive_resizeIPSt4pairIP4exprjElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
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
  tail call void @_ZSt16__merge_adaptiveIPSt4pairIP4exprjElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEEvT_SE_SE_T0_SF_T1_T2_(ptr noundef %.tr.lcssa, ptr noundef %.tr83.lcssa, ptr noundef %2, i64 noundef %.tr85.lcssa, i64 noundef %.tr86.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8695 = phi i64 [ %4, %.lr.ph ], [ %i.aq, %tailrecurse ] ; 3 uses
  %.tr8594 = phi i64 [ %3, %.lr.ph ], [ %i.ao, %tailrecurse ] ; 3 uses
  %.tr8393 = phi ptr [ %1, %.lr.ph ], [ %.079, %tailrecurse ] ; 5 uses
  %.tr92 = phi ptr [ %0, %.lr.ph ], [ %i.ap, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr8594, %.tr8695
  %i.c = ptrtoint ptr %.tr8393 to i64             ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit60

_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr8594, 2                     ; 2 uses
  %i.e = getelementptr inbounds [16 x i8], ptr %.tr92, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPSt4pairIP4exprjES3_N9__gnu_cxx5__ops14_Iter_comp_valIN3smt12theory_arithINS8_6mi_extEE15var_num_occs_ltEEEET_SE_SE_RKT0_T1_.exit

_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1183
  br label %_ZSt9__advanceIPSt4pairIP4exprjElEvRT_T0_St26random_access_iterator_tag.exit.i

end_hunk_0
