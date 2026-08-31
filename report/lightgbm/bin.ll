Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/bin?download=true
inline.NumInlined: 9528
inline.NumDeleted: 2666
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 521
loop-unroll.NumUnrolled: 524
begin_hunk_0_@_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_SA_T1_:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.p = load double, ptr %i.l, align 8, !tbaa !48
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.016.i = phi i64 [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.tr7280, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.q = lshr i64 %.016.i, 1                      ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i, i64 %i.q ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !48
  %i.t = fcmp olt double %i.s, %i.p               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = xor i64 %i.q, -1
  %i.w = add nsw i64 %.016.i, %i.v
  %.sroa.011.1.i = select i1 %i.t, ptr %i.u, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.t, i64 %i.w, i64 %i.q      ; 2 uses
  %i.x = icmp sgt i64 %.1.i, 0
  br i1 %i.x, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !1399

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.j, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr7280, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.y = sub i64 %.pre-phi, %i.j
  %i.z = ashr exact i64 %i.y, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit49: ; preds = %bb.e
  %i.aa = sdiv i64 %.tr7583, 2                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %.tr7280, i64 %i.aa ; 2 uses
  %i.ac = ptrtoint ptr %.tr79 to i64              ; 3 uses
  %i.ad = sub i64 %i.j, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Val_less_iterEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit49
  %i.ag = load double, ptr %i.ab, align 8, !tbaa !48
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i52

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i52: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i52, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51
  %.016.i53 = phi i64 [ %i.ae, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51 ], [ %.1.i58, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i52 ] ; 2 uses
  %.sroa.011.015.i54 = phi ptr [ %.tr79, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51 ], [ %.sroa.011.1.i57, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i52 ] ; 2 uses
  %i.ah = lshr i64 %.016.i53, 1                   ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i54, i64 %i.ah ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !48
  %i.ak = fcmp olt double %i.ag, %i.aj            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = xor i64 %i.ah, -1
  %i.an = add nsw i64 %.016.i53, %i.am
  %.sroa.011.1.i57 = select i1 %i.ak, ptr %.sroa.011.015.i54, ptr %i.al ; 3 uses
  %.1.i58 = select i1 %i.ak, i64 %i.ah, i64 %i.an ; 2 uses
  %i.ao = icmp sgt i64 %.1.i58, 0
  br i1 %i.ao, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i52, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Val_less_iterEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !1400

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Val_less_iterEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i52
  %.pre86 = ptrtoint ptr %.sroa.011.1.i57 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Val_less_iterEET_S9_S9_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Val_less_iterEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Val_less_iterEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit49
  %.pre-phi87 = phi i64 [ %.pre86, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Val_less_iterEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.ac, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  %.sroa.011.0.lcssa.i50 = phi ptr [ %.sroa.011.1.i57, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Val_less_iterEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr79, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  %i.ap = sub i64 %.pre-phi87, %i.ac
  %i.aq = ashr exact i64 %i.ap, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Val_less_iterEET_S9_S9_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit
  %.sroa.061.0 = phi ptr [ %i.l, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i50, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Val_less_iterEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit ], [ %i.ab, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Val_less_iterEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.043 = phi i64 [ %i.z, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit ], [ %i.aa, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Val_less_iterEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.k, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit ], [ %i.aq, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Val_less_iterEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %i.ar = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %.sroa.061.0, ptr %.tr7280, ptr %.sroa.0.0) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_SA_T1_(ptr %.tr79, ptr %.sroa.061.0, ptr %i.ar, i64 noundef %.0, i64 noundef %.043)
  %i.as = sub nsw i64 %.tr7482, %.0               ; 2 uses
  %i.at = sub nsw i64 %.tr7583, %.043             ; 2 uses
  %i.au = icmp eq i64 %i.as, 0
  %i.av = icmp eq i64 %i.at, 0
  %or.cond = or i1 %i.au, %i.av
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check164 = icmp ult i64 %i.m, 104
  br i1 %min.iters.check164, label %.lr.ph.i.preheader180, label %vector.memcheck157

vector.memcheck157:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep158 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep159 = getelementptr i8, ptr %1, i64 %i.s
  %bound0160 = icmp ult ptr %0, %scevgep159
  %bound1161 = icmp ult ptr %1, %scevgep158
  %found.conflict162 = and i1 %bound0160, %bound1161
  br i1 %found.conflict162, label %.lr.ph.i.preheader180, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck157
  %n.vec166 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec166, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next175, %vector.body167 ] ; 2 uses
  %i.w = shl i64 %index168, 3                     ; 2 uses
  %next.gep169 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep170 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep170, i64 16 ; 2 uses
  %wide.load171 = load <2 x double>, ptr %next.gep170, align 8, !tbaa !48, !alias.scope !1401, !noalias !1404
  %wide.load172 = load <2 x double>, ptr %i.x, align 8, !tbaa !48, !alias.scope !1401, !noalias !1404
  %i.y = getelementptr i8, ptr %next.gep169, i64 16 ; 2 uses
  %wide.load173 = load <2 x double>, ptr %next.gep169, align 8, !tbaa !48, !alias.scope !1404
  %wide.load174 = load <2 x double>, ptr %i.y, align 8, !tbaa !48, !alias.scope !1404
  store <2 x double> %wide.load173, ptr %next.gep170, align 8, !tbaa !48, !alias.scope !1401, !noalias !1404
  store <2 x double> %wide.load174, ptr %i.x, align 8, !tbaa !48, !alias.scope !1401, !noalias !1404
  store <2 x double> %wide.load171, ptr %next.gep169, align 8, !tbaa !48, !alias.scope !1404
  store <2 x double> %wide.load172, ptr %i.y, align 8, !tbaa !48, !alias.scope !1404
  %index.next175 = add nuw i64 %index168, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next175, %n.vec166
  br i1 %i.z, label %middle.block176, label %vector.body167, !llvm.loop !1406

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %i.o, %n.vec166
  br i1 %cmp.n177, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.preheader180

.lr.ph.i.preheader180:                            ; preds = %vector.memcheck157, %.lr.ph.i.preheader, %middle.block176
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck157 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block176 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck157 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block176 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader180, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %i.aa = load double, ptr %.sroa.04.07.i, align 8, !tbaa !48
  %i.ab = load double, ptr %.sroa.0.08.i, align 8, !tbaa !48
  store double %i.ab, ptr %.sroa.04.07.i, align 8, !tbaa !48
  store double %i.aa, ptr %.sroa.0.08.i, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !1407

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.041.0 = phi ptr [ %0, %bb.d ], [ %.sroa.041.0.be, %.backedge ] ; 22 uses
  %.084 = phi i64 [ %i.i, %bb.d ], [ %.084.be, %.backedge ] ; 18 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %i.ag = sub nsw i64 %.0, %.084                  ; 10 uses
  %i.ah = icmp slt i64 %.084, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.084, 1
  br i1 %i.ai, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.f
  %i.aj = load double, ptr %.sroa.041.0, align 8, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 8
  %.idx86 = shl nuw nsw i64 %.0, 3                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 %.idx86
  %gepdiff = add nsw i64 %.idx86, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.041.0, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store double %i.aj, ptr %i.am, align 8, !tbaa !48
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph99.preheader, label %._crit_edge100

.lr.ph99.preheader:                               ; preds = %bb.g
  %i.ao = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.084 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 6
  br i1 %min.iters.check, label %.lr.ph99.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph99.preheader
  %i.ap = shl i64 %.0, 3
  %i.aq = sub i64 %.0, %.084
  %i.ar = shl i64 %i.aq, 3
  %scevgep = getelementptr i8, ptr %.sroa.041.0, i64 %i.ar
  %scevgep127 = getelementptr i8, ptr %.sroa.041.0, i64 %i.ap
  %bound0 = icmp ult ptr %.sroa.041.0, %scevgep127
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775804     ; 4 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 %i.as
  %i.au = getelementptr i8, ptr %.sroa.041.0, i64 %i.as ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %next.gep128 = getelementptr i8, ptr %.sroa.041.0, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep128, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep128, align 8, !tbaa !48, !alias.scope !1408, !noalias !1411
  %wide.load129 = load <2 x double>, ptr %i.aw, align 8, !tbaa !48, !alias.scope !1408, !noalias !1411
  %i.ax = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load130 = load <2 x double>, ptr %next.gep, align 8, !tbaa !48, !alias.scope !1411
  %wide.load131 = load <2 x double>, ptr %i.ax, align 8, !tbaa !48, !alias.scope !1411
  store <2 x double> %wide.load130, ptr %next.gep128, align 8, !tbaa !48, !alias.scope !1408, !noalias !1411
  store <2 x double> %wide.load131, ptr %i.aw, align 8, !tbaa !48, !alias.scope !1408, !noalias !1411
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !48, !alias.scope !1411
  store <2 x double> %wide.load129, ptr %i.ax, align 8, !tbaa !48, !alias.scope !1411
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1413

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge100, label %.lr.ph99.preheader181

.lr.ph99.preheader181:                            ; preds = %vector.memcheck, %.lr.ph99.preheader, %middle.block
  %.02897.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph99.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.038.096.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph99.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.sroa.041.195.ph = phi ptr [ %.sroa.041.0, %vector.memcheck ], [ %.sroa.041.0, %.lr.ph99.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %i.az = sub i64 %.0, %.084
  %xtraiter189 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol

.lr.ph99.prol:                                    ; preds = %.lr.ph99.preheader181, %.lr.ph99.prol
  %.02897.prol = phi i64 [ %i.be, %.lr.ph99.prol ], [ %.02897.ph, %.lr.ph99.preheader181 ]
  %.sroa.038.096.prol = phi ptr [ %i.bd, %.lr.ph99.prol ], [ %.sroa.038.096.ph, %.lr.ph99.preheader181 ] ; 3 uses
  %.sroa.041.195.prol = phi ptr [ %i.bc, %.lr.ph99.prol ], [ %.sroa.041.195.ph, %.lr.ph99.preheader181 ] ; 3 uses
  %prol.iter191 = phi i64 [ %prol.iter191.next, %.lr.ph99.prol ], [ 0, %.lr.ph99.preheader181 ]
  %i.ba = load double, ptr %.sroa.041.195.prol, align 8, !tbaa !48
  %i.bb = load double, ptr %.sroa.038.096.prol, align 8, !tbaa !48
  store double %i.bb, ptr %.sroa.041.195.prol, align 8, !tbaa !48
  store double %i.ba, ptr %.sroa.038.096.prol, align 8, !tbaa !48
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.041.195.prol, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.038.096.prol, i64 8 ; 2 uses
  %i.be = add nuw nsw i64 %.02897.prol, 1         ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !1414

.lr.ph99.prol.loopexit:                           ; preds = %.lr.ph99.prol, %.lr.ph99.preheader181
  %.lcssa.unr = phi ptr [ poison, %.lr.ph99.preheader181 ], [ %i.bc, %.lr.ph99.prol ]
  %.02897.unr = phi i64 [ %.02897.ph, %.lr.ph99.preheader181 ], [ %i.be, %.lr.ph99.prol ]
  %.sroa.038.096.unr = phi ptr [ %.sroa.038.096.ph, %.lr.ph99.preheader181 ], [ %i.bd, %.lr.ph99.prol ]
  %.sroa.041.195.unr = phi ptr [ %.sroa.041.195.ph, %.lr.ph99.preheader181 ], [ %i.bc, %.lr.ph99.prol ]
  %i.bf = sub i64 %.02897.ph, %.0
  %i.bg = add i64 %i.bf, %.084
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge100, label %.lr.ph99

._crit_edge100:                                   ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99, %middle.block, %bb.g
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.0, %bb.g ], [ %i.au, %middle.block ], [ %.lcssa.unr, %.lr.ph99.prol.loopexit ], [ %i.bx, %.lr.ph99 ]
  %i.bi = srem i64 %.0, %.084                     ; 2 uses
  %.not31 = icmp eq i64 %i.bi, 0
  br i1 %.not31, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit, label %bb.h

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %.02897 = phi i64 [ %i.bz, %.lr.ph99 ], [ %.02897.unr, %.lr.ph99.prol.loopexit ]
  %.sroa.038.096 = phi ptr [ %i.by, %.lr.ph99 ], [ %.sroa.038.096.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %.sroa.041.195 = phi ptr [ %i.bx, %.lr.ph99 ], [ %.sroa.041.195.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %i.bj = load double, ptr %.sroa.041.195, align 8, !tbaa !48
  %i.bk = load double, ptr %.sroa.038.096, align 8, !tbaa !48
  store double %i.bk, ptr %.sroa.041.195, align 8, !tbaa !48
  store double %i.bj, ptr %.sroa.038.096, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 8 ; 2 uses
  %i.bn = load double, ptr %i.bl, align 8, !tbaa !48
  %i.bo = load double, ptr %i.bm, align 8, !tbaa !48
  store double %i.bo, ptr %i.bl, align 8, !tbaa !48
  store double %i.bn, ptr %i.bm, align 8, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 16 ; 2 uses
  %i.br = load double, ptr %i.bp, align 8, !tbaa !48
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !48
  store double %i.bs, ptr %i.bp, align 8, !tbaa !48
  store double %i.br, ptr %i.bq, align 8, !tbaa !48
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 24 ; 2 uses
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !48
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !48
  store double %i.bw, ptr %i.bt, align 8, !tbaa !48
  store double %i.bv, ptr %i.bu, align 8, !tbaa !48
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 32
  %i.bz = add nuw nsw i64 %.02897, 4              ; 2 uses
  %exitcond108.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond108.not.3, label %._crit_edge100, label %.lr.ph99, !llvm.loop !1415

bb.h:                                             ; preds = %._crit_edge100
  %i.ca = sub nsw i64 %.084, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.0 ; 8 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !48
  %.idx = shl nuw nsw i64 %.0, 3
  %i.cf = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !653

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %.sroa.041.0, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 8
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load double, ptr %.sroa.041.0, align 8, !tbaa !48
  store double %i.cl, ptr %i.cd, align 8, !tbaa !48
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store double %i.ce, ptr %.sroa.041.0, align 8, !tbaa !48
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit

bb.n:                                             ; preds = %bb.i
  %i.cm = sub i64 0, %i.ag
  %i.cn = getelementptr [8 x i8], ptr %i.cc, i64 %i.cm ; 6 uses
  %i.co = icmp sgt i64 %.084, 0
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check140 = icmp ult i64 %.084, 6
  br i1 %min.iters.check140, label %.lr.ph.preheader182, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph.preheader
  %i.cp = sub i64 %.0, %.084
  %i.cq = shl i64 %i.cp, 3
  %scevgep135 = getelementptr i8, ptr %.sroa.041.0, i64 %i.cq
  %bound0136 = icmp ult ptr %.sroa.041.0, %i.cc
  %bound1137 = icmp ult ptr %scevgep135, %i.cn
  %found.conflict138 = and i1 %bound0136, %bound1137
  br i1 %found.conflict138, label %.lr.ph.preheader182, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck134
  %n.vec142 = and i64 %.084, 9223372036854775804  ; 4 uses
  %i.cr = mul i64 %n.vec142, -8                   ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cc, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cn, i64 %i.cr
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next151, %vector.body143 ] ; 2 uses
  %i.cu = mul i64 %index144, -8                   ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.cc, i64 %i.cu ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.cn, i64 %i.cu ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %next.gep146, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep146, i64 -32 ; 2 uses
  %wide.load147 = load <2 x double>, ptr %i.cv, align 8, !tbaa !48, !alias.scope !1416, !noalias !1419
  %wide.load148 = load <2 x double>, ptr %i.cw, align 8, !tbaa !48, !alias.scope !1416, !noalias !1419
  %i.cx = getelementptr inbounds i8, ptr %next.gep145, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep145, i64 -32 ; 2 uses
  %wide.load149 = load <2 x double>, ptr %i.cx, align 8, !tbaa !48, !alias.scope !1419
  %wide.load150 = load <2 x double>, ptr %i.cy, align 8, !tbaa !48, !alias.scope !1419
  store <2 x double> %wide.load149, ptr %i.cv, align 8, !tbaa !48, !alias.scope !1416, !noalias !1419
  store <2 x double> %wide.load150, ptr %i.cw, align 8, !tbaa !48, !alias.scope !1416, !noalias !1419
  store <2 x double> %wide.load147, ptr %i.cx, align 8, !tbaa !48, !alias.scope !1419
  store <2 x double> %wide.load148, ptr %i.cy, align 8, !tbaa !48, !alias.scope !1419
  %index.next151 = add nuw i64 %index144, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.cz, label %middle.block152, label %vector.body143, !llvm.loop !1421

middle.block152:                                  ; preds = %vector.body143
  %cmp.n153 = icmp eq i64 %.084, %n.vec142
  br i1 %cmp.n153, label %._crit_edge, label %.lr.ph.preheader182

.lr.ph.preheader182:                              ; preds = %vector.memcheck134, %.lr.ph.preheader, %middle.block152
  %.02794.ph = phi i64 [ 0, %vector.memcheck134 ], [ 0, %.lr.ph.preheader ], [ %n.vec142, %middle.block152 ] ; 3 uses
  %.sroa.0.093.ph = phi ptr [ %i.cc, %vector.memcheck134 ], [ %i.cc, %.lr.ph.preheader ], [ %i.cs, %middle.block152 ] ; 2 uses
  %.sroa.041.292.ph = phi ptr [ %i.cn, %vector.memcheck134 ], [ %i.cn, %.lr.ph.preheader ], [ %i.ct, %middle.block152 ] ; 2 uses
  %xtraiter = and i64 %.084, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader182, %.lr.ph.prol
  %.02794.prol = phi i64 [ %i.de, %.lr.ph.prol ], [ %.02794.ph, %.lr.ph.preheader182 ]
  %.sroa.0.093.prol = phi ptr [ %i.db, %.lr.ph.prol ], [ %.sroa.0.093.ph, %.lr.ph.preheader182 ]
  %.sroa.041.292.prol = phi ptr [ %i.da, %.lr.ph.prol ], [ %.sroa.041.292.ph, %.lr.ph.preheader182 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader182 ]
  %i.da = getelementptr inbounds i8, ptr %.sroa.041.292.prol, i64 -8 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.093.prol, i64 -8 ; 4 uses
  %i.dc = load double, ptr %i.da, align 8, !tbaa !48
  %i.dd = load double, ptr %i.db, align 8, !tbaa !48
  store double %i.dd, ptr %i.da, align 8, !tbaa !48
  store double %i.dc, ptr %i.db, align 8, !tbaa !48
  %i.de = add nuw nsw i64 %.02794.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1422

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader182
  %.02794.unr = phi i64 [ %.02794.ph, %.lr.ph.preheader182 ], [ %i.de, %.lr.ph.prol ]
  %.sroa.0.093.unr = phi ptr [ %.sroa.0.093.ph, %.lr.ph.preheader182 ], [ %i.db, %.lr.ph.prol ]
  %.sroa.041.292.unr = phi ptr [ %.sroa.041.292.ph, %.lr.ph.preheader182 ], [ %i.da, %.lr.ph.prol ]
  %i.df = sub nsw i64 %.02794.ph, %.084
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block152, %bb.n
  %.sroa.041.2.lcssa = phi ptr [ %i.cn, %bb.n ], [ %.sroa.041.0, %middle.block152 ], [ %.sroa.041.0, %.lr.ph ], [ %.sroa.041.0, %.lr.ph.prol.loopexit ]
  %i.dh = srem i64 %.0, %i.ag                     ; 2 uses
  %.not = icmp eq i64 %i.dh, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.041.0.be = phi ptr [ %.sroa.041.1.lcssa, %bb.h ], [ %.sroa.041.2.lcssa, %._crit_edge ]
  %.084.be = phi i64 [ %i.ca, %bb.h ], [ %i.dh, %._crit_edge ]
  %.0.be = phi i64 [ %.084, %bb.h ], [ %i.ag, %._crit_edge ]
  br label %bb.e, !llvm.loop !1423

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02794 = phi i64 [ %i.dy, %.lr.ph ], [ %.02794.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.093 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.0.093.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.041.292 = phi ptr [ %i.du, %.lr.ph ], [ %.sroa.041.292.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -8 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -8 ; 2 uses
  %i.dk = load double, ptr %i.di, align 8, !tbaa !48
  %i.dl = load double, ptr %i.dj, align 8, !tbaa !48
  store double %i.dl, ptr %i.di, align 8, !tbaa !48
  store double %i.dk, ptr %i.dj, align 8, !tbaa !48
  %i.dm = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -16 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -16 ; 2 uses
  %i.do = load double, ptr %i.dm, align 8, !tbaa !48
  %i.dp = load double, ptr %i.dn, align 8, !tbaa !48
  store double %i.dp, ptr %i.dm, align 8, !tbaa !48
  store double %i.do, ptr %i.dn, align 8, !tbaa !48
  %i.dq = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -24 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -24 ; 2 uses
  %i.ds = load double, ptr %i.dq, align 8, !tbaa !48
  %i.dt = load double, ptr %i.dr, align 8, !tbaa !48
  store double %i.dt, ptr %i.dq, align 8, !tbaa !48
  store double %i.ds, ptr %i.dr, align 8, !tbaa !48
  %i.du = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -32 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -32 ; 3 uses
  %i.dw = load double, ptr %i.du, align 8, !tbaa !48
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !48
  store double %i.dx, ptr %i.du, align 8, !tbaa !48
  store double %i.dw, ptr %i.dv, align 8, !tbaa !48
  %i.dy = add nuw nsw i64 %.02794, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dy, %.084
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1424

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit: ; preds = %._crit_edge, %._crit_edge100, %.lr.ph.i, %middle.block176, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit, %bb.b, %bb.a
  %.sroa.024.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit ], [ %i.af, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit ], [ %1, %middle.block176 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge100 ], [ %i.af, %._crit_edge ]
  ret ptr %.sroa.024.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElS2_NS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_SA_T1_SA_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %.not89 = icmp sgt i64 %3, %6
  %.not5690 = icmp sgt i64 %4, %6
  %or.cond91 = and i1 %.not89, %.not5690
  br i1 %or.cond91, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.al, %tailrecurse ]
  %.tr83.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr85.lcssa = phi i64 [ %3, %bb.a ], [ %i.ak, %tailrecurse ]
  %.tr86.lcssa = phi i64 [ %4, %bb.a ], [ %i.am, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElS2_NS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_SA_T1_T2_(ptr %.tr.lcssa, ptr %.tr83.lcssa, ptr %2, i64 noundef %.tr85.lcssa, i64 noundef %.tr86.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8695 = phi i64 [ %4, %.lr.ph ], [ %i.am, %tailrecurse ] ; 3 uses
  %.tr8594 = phi i64 [ %3, %.lr.ph ], [ %i.ak, %tailrecurse ] ; 3 uses
  %.tr8393 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr92 = phi ptr [ %0, %.lr.ph ], [ %i.al, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr8594, %.tr8695
  %i.c = ptrtoint ptr %.tr8393 to i64             ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit60

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr8594, 2                     ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %.tr92, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdNS0_5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.i = load double, ptr %i.e, align 8, !tbaa !48
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.016.i = phi i64 [ %i.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.tr8393, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt22__merge_without_bufferIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_S5_T1_:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPddN9__gnu_cxx5__ops14_Iter_less_valEET_S4_S4_RKT0_T1_.exit

_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit
  %i.p = load double, ptr %i.l, align 8, !tbaa !48
  br label %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.n, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi ptr [ %.tr6270, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.q = lshr i64 %.017.i, 1                      ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.01116.i, i64 %i.q ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !48
  %i.t = fcmp olt double %i.s, %i.p               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = xor i64 %i.q, -1
  %i.w = add nsw i64 %.017.i, %i.v
  %.112.i = select i1 %i.t, ptr %i.u, ptr %.01116.i ; 3 uses
  %.1.i = select i1 %i.t, i64 %i.w, i64 %i.q      ; 2 uses
  %i.x = icmp sgt i64 %.1.i, 0
  br i1 %i.x, label %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPddN9__gnu_cxx5__ops14_Iter_less_valEET_S4_S4_RKT0_T1_.exit.loopexit, !llvm.loop !1481

_ZSt13__lower_boundIPddN9__gnu_cxx5__ops14_Iter_less_valEET_S4_S4_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.112.i to i64
  br label %_ZSt13__lower_boundIPddN9__gnu_cxx5__ops14_Iter_less_valEET_S4_S4_RKT0_T1_.exit

_ZSt13__lower_boundIPddN9__gnu_cxx5__ops14_Iter_less_valEET_S4_S4_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPddN9__gnu_cxx5__ops14_Iter_less_valEET_S4_S4_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPddN9__gnu_cxx5__ops14_Iter_less_valEET_S4_S4_RKT0_T1_.exit.loopexit ], [ %i.j, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %.112.i, %_ZSt13__lower_boundIPddN9__gnu_cxx5__ops14_Iter_less_valEET_S4_S4_RKT0_T1_.exit.loopexit ], [ %.tr6270, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.y = sub i64 %.pre-phi, %i.j
  %i.z = ashr exact i64 %i.y, 3
  br label %tailrecurse

_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit39: ; preds = %bb.e
  %i.aa = sdiv i64 %.tr6573, 2                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %.tr6270, i64 %i.aa ; 2 uses
  %i.ac = ptrtoint ptr %.tr69 to i64              ; 3 uses
  %i.ad = sub i64 %i.j, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41, label %_ZSt13__upper_boundIPddN9__gnu_cxx5__ops14_Val_less_iterEET_S4_S4_RKT0_T1_.exit

_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41: ; preds = %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit39
  %i.ag = load double, ptr %i.ab, align 8, !tbaa !48
  br label %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i42

_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i42: ; preds = %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i42, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41
  %.017.i43 = phi i64 [ %i.ae, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.1.i48, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i42 ] ; 2 uses
  %.01116.i44 = phi ptr [ %.tr69, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.112.i47, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i42 ] ; 2 uses
  %i.ah = lshr i64 %.017.i43, 1                   ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.01116.i44, i64 %i.ah ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !48
  %i.ak = fcmp olt double %i.ag, %i.aj            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = xor i64 %i.ah, -1
  %i.an = add nsw i64 %.017.i43, %i.am
  %.112.i47 = select i1 %i.ak, ptr %.01116.i44, ptr %i.al ; 3 uses
  %.1.i48 = select i1 %i.ak, i64 %i.ah, i64 %i.an ; 2 uses
  %i.ao = icmp sgt i64 %.1.i48, 0
  br i1 %i.ao, label %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i42, label %_ZSt13__upper_boundIPddN9__gnu_cxx5__ops14_Val_less_iterEET_S4_S4_RKT0_T1_.exit.loopexit, !llvm.loop !1482

_ZSt13__upper_boundIPddN9__gnu_cxx5__ops14_Val_less_iterEET_S4_S4_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i42
  %.pre76 = ptrtoint ptr %.112.i47 to i64
  br label %_ZSt13__upper_boundIPddN9__gnu_cxx5__ops14_Val_less_iterEET_S4_S4_RKT0_T1_.exit

_ZSt13__upper_boundIPddN9__gnu_cxx5__ops14_Val_less_iterEET_S4_S4_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPddN9__gnu_cxx5__ops14_Val_less_iterEET_S4_S4_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit39
  %.pre-phi77 = phi i64 [ %.pre76, %_ZSt13__upper_boundIPddN9__gnu_cxx5__ops14_Val_less_iterEET_S4_S4_RKT0_T1_.exit.loopexit ], [ %i.ac, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %.011.lcssa.i40 = phi ptr [ %.112.i47, %_ZSt13__upper_boundIPddN9__gnu_cxx5__ops14_Val_less_iterEET_S4_S4_RKT0_T1_.exit.loopexit ], [ %.tr69, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %i.ap = sub i64 %.pre-phi77, %i.ac
  %i.aq = ashr exact i64 %i.ap, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPddN9__gnu_cxx5__ops14_Val_less_iterEET_S4_S4_RKT0_T1_.exit, %_ZSt13__lower_boundIPddN9__gnu_cxx5__ops14_Iter_less_valEET_S4_S4_RKT0_T1_.exit
  %.059 = phi ptr [ %i.l, %_ZSt13__lower_boundIPddN9__gnu_cxx5__ops14_Iter_less_valEET_S4_S4_RKT0_T1_.exit ], [ %.011.lcssa.i40, %_ZSt13__upper_boundIPddN9__gnu_cxx5__ops14_Val_less_iterEET_S4_S4_RKT0_T1_.exit ] ; 2 uses
  %.058 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPddN9__gnu_cxx5__ops14_Iter_less_valEET_S4_S4_RKT0_T1_.exit ], [ %i.ab, %_ZSt13__upper_boundIPddN9__gnu_cxx5__ops14_Val_less_iterEET_S4_S4_RKT0_T1_.exit ] ; 2 uses
  %.033 = phi i64 [ %i.z, %_ZSt13__lower_boundIPddN9__gnu_cxx5__ops14_Iter_less_valEET_S4_S4_RKT0_T1_.exit ], [ %i.aa, %_ZSt13__upper_boundIPddN9__gnu_cxx5__ops14_Val_less_iterEET_S4_S4_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.k, %_ZSt13__lower_boundIPddN9__gnu_cxx5__ops14_Iter_less_valEET_S4_S4_RKT0_T1_.exit ], [ %i.aq, %_ZSt13__upper_boundIPddN9__gnu_cxx5__ops14_Val_less_iterEET_S4_S4_RKT0_T1_.exit ] ; 2 uses
  %i.ar = tail call noundef ptr @_ZNSt3_V28__rotateIPdEET_S2_S2_S2_St26random_access_iterator_tag(ptr noundef %.059, ptr noundef %.tr6270, ptr noundef %.058) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_S5_T1_(ptr noundef %.tr69, ptr noundef %.059, ptr noundef %i.ar, i64 noundef %.0, i64 noundef %.033)
  %i.as = sub nsw i64 %.tr6472, %.0               ; 2 uses
  %i.at = sub nsw i64 %.tr6573, %.033             ; 2 uses
  %i.au = icmp eq i64 %i.as, 0
  %i.av = icmp eq i64 %i.at, 0
  %or.cond = or i1 %i.au, %i.av
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPdEET_S2_S2_S2_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPdS0_ET0_T_S2_S1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPdS0_ET0_T_S2_S1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check174 = icmp ult i64 %i.m, 104
  br i1 %min.iters.check174, label %.lr.ph.i.preheader190, label %vector.memcheck167

vector.memcheck167:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep168 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep169 = getelementptr i8, ptr %1, i64 %i.s
  %bound0170 = icmp ult ptr %0, %scevgep169
  %bound1171 = icmp ult ptr %1, %scevgep168
  %found.conflict172 = and i1 %bound0170, %bound1171
  br i1 %found.conflict172, label %.lr.ph.i.preheader190, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck167
  %n.vec176 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec176, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next185, %vector.body177 ] ; 2 uses
  %i.w = shl i64 %index178, 3                     ; 2 uses
  %next.gep179 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep180 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep180, i64 16 ; 2 uses
  %wide.load181 = load <2 x double>, ptr %next.gep180, align 8, !tbaa !48, !alias.scope !1483, !noalias !1486
  %wide.load182 = load <2 x double>, ptr %i.x, align 8, !tbaa !48, !alias.scope !1483, !noalias !1486
  %i.y = getelementptr i8, ptr %next.gep179, i64 16 ; 2 uses
  %wide.load183 = load <2 x double>, ptr %next.gep179, align 8, !tbaa !48, !alias.scope !1486
  %wide.load184 = load <2 x double>, ptr %i.y, align 8, !tbaa !48, !alias.scope !1486
  store <2 x double> %wide.load183, ptr %next.gep180, align 8, !tbaa !48, !alias.scope !1483, !noalias !1486
  store <2 x double> %wide.load184, ptr %i.x, align 8, !tbaa !48, !alias.scope !1483, !noalias !1486
  store <2 x double> %wide.load181, ptr %next.gep179, align 8, !tbaa !48, !alias.scope !1486
  store <2 x double> %wide.load182, ptr %i.y, align 8, !tbaa !48, !alias.scope !1486
  %index.next185 = add nuw i64 %index178, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next185, %n.vec176
  br i1 %i.z, label %middle.block186, label %vector.body177, !llvm.loop !1488

middle.block186:                                  ; preds = %vector.body177
  %cmp.n187 = icmp eq i64 %i.o, %n.vec176
  br i1 %cmp.n187, label %_ZSt11swap_rangesIPdS0_ET0_T_S2_S1_.exit, label %.lr.ph.i.preheader190

.lr.ph.i.preheader190:                            ; preds = %vector.memcheck167, %.lr.ph.i.preheader, %middle.block186
  %.010.i.ph = phi ptr [ %1, %vector.memcheck167 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block186 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck167 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block186 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader190, %.lr.ph.i
  %.010.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader190 ] ; 3 uses
  %.079.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader190 ] ; 3 uses
  %i.aa = load double, ptr %.079.i, align 8, !tbaa !48
  %i.ab = load double, ptr %.010.i, align 8, !tbaa !48
  store double %i.ab, ptr %.079.i, align 8, !tbaa !48
  store double %i.aa, ptr %.010.i, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPdS0_ET0_T_S2_S1_.exit, label %.lr.ph.i, !llvm.loop !1489

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.f, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.i, %bb.d ], [ %.082.be, %.backedge ] ; 18 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 22 uses
  %i.ag = sub nsw i64 %.086, %.082                ; 10 uses
  %i.ah = icmp slt i64 %.082, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.082, 1
  br i1 %i.ai, label %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit, label %bb.g

_ZSt4moveIPdS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f
  %i.aj = load double, ptr %.058, align 8, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %.idx97 = shl nuw nsw i64 %.086, 3              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.058, i64 %.idx97
  %gepdiff = add nsw i64 %.idx97, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.058, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store double %i.aj, ptr %i.am, align 8, !tbaa !48
  br label %_ZSt11swap_rangesIPdS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.g
  %i.ao = getelementptr [8 x i8], ptr %.058, i64 %.082 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 6
  br i1 %min.iters.check, label %.lr.ph110.preheader191, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110.preheader
  %i.ap = shl i64 %.086, 3
  %i.aq = sub i64 %.086, %.082
  %i.ar = shl i64 %i.aq, 3
  %scevgep = getelementptr i8, ptr %.058, i64 %i.ar
  %scevgep137 = getelementptr i8, ptr %.058, i64 %i.ap
  %bound0 = icmp ult ptr %.058, %scevgep137
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader191, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775804     ; 4 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 %i.as
  %i.au = getelementptr i8, ptr %.058, i64 %i.as  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.058, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep138, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep138, align 8, !tbaa !48, !alias.scope !1490, !noalias !1493
  %wide.load139 = load <2 x double>, ptr %i.aw, align 8, !tbaa !48, !alias.scope !1490, !noalias !1493
  %i.ax = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load140 = load <2 x double>, ptr %next.gep, align 8, !tbaa !48, !alias.scope !1493
  %wide.load141 = load <2 x double>, ptr %i.ax, align 8, !tbaa !48, !alias.scope !1493
  store <2 x double> %wide.load140, ptr %next.gep138, align 8, !tbaa !48, !alias.scope !1490, !noalias !1493
  store <2 x double> %wide.load141, ptr %i.aw, align 8, !tbaa !48, !alias.scope !1490, !noalias !1493
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !48, !alias.scope !1493
  store <2 x double> %wide.load139, ptr %i.ax, align 8, !tbaa !48, !alias.scope !1493
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1495

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader191

.lr.ph110.preheader191:                           ; preds = %vector.memcheck, %.lr.ph110.preheader, %middle.block
  %.054108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.055107.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph110.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.159106.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %.lr.ph110.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %i.az = sub i64 %.086, %.082
  %xtraiter199 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader191, %.lr.ph110.prol
  %.054108.prol = phi i64 [ %i.be, %.lr.ph110.prol ], [ %.054108.ph, %.lr.ph110.preheader191 ]
  %.055107.prol = phi ptr [ %i.bd, %.lr.ph110.prol ], [ %.055107.ph, %.lr.ph110.preheader191 ] ; 3 uses
  %.159106.prol = phi ptr [ %i.bc, %.lr.ph110.prol ], [ %.159106.ph, %.lr.ph110.preheader191 ] ; 3 uses
  %prol.iter201 = phi i64 [ %prol.iter201.next, %.lr.ph110.prol ], [ 0, %.lr.ph110.preheader191 ]
  %i.ba = load double, ptr %.159106.prol, align 8, !tbaa !48
  %i.bb = load double, ptr %.055107.prol, align 8, !tbaa !48
  store double %i.bb, ptr %.159106.prol, align 8, !tbaa !48
  store double %i.ba, ptr %.055107.prol, align 8, !tbaa !48
  %i.bc = getelementptr inbounds nuw i8, ptr %.159106.prol, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.055107.prol, i64 8 ; 2 uses
  %i.be = add nuw nsw i64 %.054108.prol, 1        ; 2 uses
  %prol.iter201.next = add i64 %prol.iter201, 1   ; 2 uses
  %prol.iter201.cmp.not = icmp eq i64 %prol.iter201.next, %xtraiter199
  br i1 %prol.iter201.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !1496

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader191
  %.lcssa.unr = phi ptr [ poison, %.lr.ph110.preheader191 ], [ %i.bc, %.lr.ph110.prol ]
  %.054108.unr = phi i64 [ %.054108.ph, %.lr.ph110.preheader191 ], [ %i.be, %.lr.ph110.prol ]
  %.055107.unr = phi ptr [ %.055107.ph, %.lr.ph110.preheader191 ], [ %i.bd, %.lr.ph110.prol ]
  %.159106.unr = phi ptr [ %.159106.ph, %.lr.ph110.preheader191 ], [ %i.bc, %.lr.ph110.prol ]
  %i.bf = sub i64 %.054108.ph, %.086
  %i.bg = add i64 %i.bf, %.082
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge111, label %.lr.ph110

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.au, %middle.block ], [ %.lcssa.unr, %.lr.ph110.prol.loopexit ], [ %i.bx, %.lr.ph110 ]
  %i.bi = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.bi, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPdS0_ET0_T_S2_S1_.exit, label %bb.h

.lr.ph110:                                        ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110
  %.054108 = phi i64 [ %i.bz, %.lr.ph110 ], [ %.054108.unr, %.lr.ph110.prol.loopexit ]
  %.055107 = phi ptr [ %i.by, %.lr.ph110 ], [ %.055107.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %.159106 = phi ptr [ %i.bx, %.lr.ph110 ], [ %.159106.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %i.bj = load double, ptr %.159106, align 8, !tbaa !48
  %i.bk = load double, ptr %.055107, align 8, !tbaa !48
  store double %i.bk, ptr %.159106, align 8, !tbaa !48
  store double %i.bj, ptr %.055107, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %.159106, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.055107, i64 8 ; 2 uses
  %i.bn = load double, ptr %i.bl, align 8, !tbaa !48
  %i.bo = load double, ptr %i.bm, align 8, !tbaa !48
  store double %i.bo, ptr %i.bl, align 8, !tbaa !48
  store double %i.bn, ptr %i.bm, align 8, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %.159106, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.055107, i64 16 ; 2 uses
  %i.br = load double, ptr %i.bp, align 8, !tbaa !48
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !48
  store double %i.bs, ptr %i.bp, align 8, !tbaa !48
  store double %i.br, ptr %i.bq, align 8, !tbaa !48
  %i.bt = getelementptr inbounds nuw i8, ptr %.159106, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.055107, i64 24 ; 2 uses
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !48
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !48
  store double %i.bw, ptr %i.bt, align 8, !tbaa !48
  store double %i.bv, ptr %i.bu, align 8, !tbaa !48
  %i.bx = getelementptr inbounds nuw i8, ptr %.159106, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.055107, i64 32
  %i.bz = add nuw nsw i64 %.054108, 4             ; 2 uses
  %exitcond119.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond119.not.3, label %._crit_edge111, label %.lr.ph110, !llvm.loop !1497

bb.h:                                             ; preds = %._crit_edge111
  %i.ca = sub nsw i64 %.082, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr [8 x i8], ptr %.058, i64 %.086 ; 8 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !48
  %.idx = shl nuw nsw i64 %.086, 3
  %i.cf = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !653

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %.058, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 8
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load double, ptr %.058, align 8, !tbaa !48
  store double %i.cl, ptr %i.cd, align 8, !tbaa !48
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit:       ; preds = %bb.k, %bb.l, %bb.m
  store double %i.ce, ptr %.058, align 8, !tbaa !48
  br label %_ZSt11swap_rangesIPdS0_ET0_T_S2_S1_.exit

bb.n:                                             ; preds = %bb.i
  %i.cm = sub i64 0, %i.ag
  %i.cn = getelementptr [8 x i8], ptr %i.cc, i64 %i.cm ; 6 uses
  %i.co = icmp sgt i64 %.082, 0
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check150 = icmp ult i64 %.082, 6
  br i1 %min.iters.check150, label %.lr.ph.preheader192, label %vector.memcheck144

vector.memcheck144:                               ; preds = %.lr.ph.preheader
  %i.cp = sub i64 %.086, %.082
  %i.cq = shl i64 %i.cp, 3
  %scevgep145 = getelementptr i8, ptr %.058, i64 %i.cq
  %bound0146 = icmp ult ptr %.058, %i.cc
  %bound1147 = icmp ult ptr %scevgep145, %i.cn
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %.lr.ph.preheader192, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck144
  %n.vec152 = and i64 %.082, 9223372036854775804  ; 4 uses
  %i.cr = mul i64 %n.vec152, -8                   ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cc, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cn, i64 %i.cr
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next161, %vector.body153 ] ; 2 uses
  %i.cu = mul i64 %index154, -8                   ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.cc, i64 %i.cu ; 2 uses
  %next.gep156 = getelementptr i8, ptr %i.cn, i64 %i.cu ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %next.gep156, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep156, i64 -32 ; 2 uses
  %wide.load157 = load <2 x double>, ptr %i.cv, align 8, !tbaa !48, !alias.scope !1498, !noalias !1501
  %wide.load158 = load <2 x double>, ptr %i.cw, align 8, !tbaa !48, !alias.scope !1498, !noalias !1501
  %i.cx = getelementptr inbounds i8, ptr %next.gep155, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep155, i64 -32 ; 2 uses
  %wide.load159 = load <2 x double>, ptr %i.cx, align 8, !tbaa !48, !alias.scope !1501
  %wide.load160 = load <2 x double>, ptr %i.cy, align 8, !tbaa !48, !alias.scope !1501
  store <2 x double> %wide.load159, ptr %i.cv, align 8, !tbaa !48, !alias.scope !1498, !noalias !1501
  store <2 x double> %wide.load160, ptr %i.cw, align 8, !tbaa !48, !alias.scope !1498, !noalias !1501
  store <2 x double> %wide.load157, ptr %i.cx, align 8, !tbaa !48, !alias.scope !1501
  store <2 x double> %wide.load158, ptr %i.cy, align 8, !tbaa !48, !alias.scope !1501
  %index.next161 = add nuw i64 %index154, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next161, %n.vec152
  br i1 %i.cz, label %middle.block162, label %vector.body153, !llvm.loop !1503

middle.block162:                                  ; preds = %vector.body153
  %cmp.n163 = icmp eq i64 %.082, %n.vec152
  br i1 %cmp.n163, label %._crit_edge, label %.lr.ph.preheader192

.lr.ph.preheader192:                              ; preds = %vector.memcheck144, %.lr.ph.preheader, %middle.block162
  %.0105.ph = phi i64 [ 0, %vector.memcheck144 ], [ 0, %.lr.ph.preheader ], [ %n.vec152, %middle.block162 ] ; 3 uses
  %.052104.ph = phi ptr [ %i.cc, %vector.memcheck144 ], [ %i.cc, %.lr.ph.preheader ], [ %i.cs, %middle.block162 ] ; 2 uses
  %.260103.ph = phi ptr [ %i.cn, %vector.memcheck144 ], [ %i.cn, %.lr.ph.preheader ], [ %i.ct, %middle.block162 ] ; 2 uses
  %xtraiter = and i64 %.082, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader192, %.lr.ph.prol
  %.0105.prol = phi i64 [ %i.de, %.lr.ph.prol ], [ %.0105.ph, %.lr.ph.preheader192 ]
  %.052104.prol = phi ptr [ %i.db, %.lr.ph.prol ], [ %.052104.ph, %.lr.ph.preheader192 ]
  %.260103.prol = phi ptr [ %i.da, %.lr.ph.prol ], [ %.260103.ph, %.lr.ph.preheader192 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader192 ]
  %i.da = getelementptr inbounds i8, ptr %.260103.prol, i64 -8 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %.052104.prol, i64 -8 ; 4 uses
  %i.dc = load double, ptr %i.da, align 8, !tbaa !48
  %i.dd = load double, ptr %i.db, align 8, !tbaa !48
  store double %i.dd, ptr %i.da, align 8, !tbaa !48
  store double %i.dc, ptr %i.db, align 8, !tbaa !48
  %i.de = add nuw nsw i64 %.0105.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1504

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader192
  %.0105.unr = phi i64 [ %.0105.ph, %.lr.ph.preheader192 ], [ %i.de, %.lr.ph.prol ]
  %.052104.unr = phi ptr [ %.052104.ph, %.lr.ph.preheader192 ], [ %i.db, %.lr.ph.prol ]
  %.260103.unr = phi ptr [ %.260103.ph, %.lr.ph.preheader192 ], [ %i.da, %.lr.ph.prol ]
  %i.df = sub nsw i64 %.0105.ph, %.082
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block162, %bb.n
  %.260.lcssa = phi ptr [ %i.cn, %bb.n ], [ %.058, %middle.block162 ], [ %.058, %.lr.ph ], [ %.058, %.lr.ph.prol.loopexit ]
  %i.dh = srem i64 %.086, %i.ag                   ; 2 uses
  %.not = icmp eq i64 %i.dh, 0
  br i1 %.not, label %_ZSt11swap_rangesIPdS0_ET0_T_S2_S1_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.086.be = phi i64 [ %.082, %bb.h ], [ %i.ag, %._crit_edge ]
  %.082.be = phi i64 [ %i.ca, %bb.h ], [ %i.dh, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.h ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !1505

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0105 = phi i64 [ %i.dy, %.lr.ph ], [ %.0105.unr, %.lr.ph.prol.loopexit ]
  %.052104 = phi ptr [ %i.dv, %.lr.ph ], [ %.052104.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.260103 = phi ptr [ %i.du, %.lr.ph ], [ %.260103.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.260103, i64 -8 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.052104, i64 -8 ; 2 uses
  %i.dk = load double, ptr %i.di, align 8, !tbaa !48
  %i.dl = load double, ptr %i.dj, align 8, !tbaa !48
  store double %i.dl, ptr %i.di, align 8, !tbaa !48
  store double %i.dk, ptr %i.dj, align 8, !tbaa !48
  %i.dm = getelementptr inbounds i8, ptr %.260103, i64 -16 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.052104, i64 -16 ; 2 uses
  %i.do = load double, ptr %i.dm, align 8, !tbaa !48
  %i.dp = load double, ptr %i.dn, align 8, !tbaa !48
  store double %i.dp, ptr %i.dm, align 8, !tbaa !48
  store double %i.do, ptr %i.dn, align 8, !tbaa !48
  %i.dq = getelementptr inbounds i8, ptr %.260103, i64 -24 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.052104, i64 -24 ; 2 uses
  %i.ds = load double, ptr %i.dq, align 8, !tbaa !48
  %i.dt = load double, ptr %i.dr, align 8, !tbaa !48
  store double %i.dt, ptr %i.dq, align 8, !tbaa !48
  store double %i.ds, ptr %i.dr, align 8, !tbaa !48
  %i.du = getelementptr inbounds i8, ptr %.260103, i64 -32 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.052104, i64 -32 ; 3 uses
  %i.dw = load double, ptr %i.du, align 8, !tbaa !48
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !48
  store double %i.dx, ptr %i.du, align 8, !tbaa !48
  store double %i.dw, ptr %i.dv, align 8, !tbaa !48
  %i.dy = add nuw nsw i64 %.0105, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dy, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1506

_ZSt11swap_rangesIPdS0_ET0_T_S2_S1_.exit:         ; preds = %._crit_edge, %._crit_edge111, %.lr.ph.i, %middle.block186, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit, %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit ], [ %i.af, %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit ], [ %1, %middle.block186 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge111 ], [ %i.af, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt23__merge_adaptive_resizeIPdlS0_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_S5_T1_S5_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %.not80 = icmp sgt i64 %3, %6
  %.not4781 = icmp sgt i64 %4, %6
  %or.cond82 = and i1 %.not80, %.not4781
  br i1 %or.cond82, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.al, %tailrecurse ]
  %.tr74.lcssa = phi ptr [ %1, %bb.a ], [ %.070, %tailrecurse ]
  %.tr76.lcssa = phi i64 [ %3, %bb.a ], [ %i.ak, %tailrecurse ]
  %.tr77.lcssa = phi i64 [ %4, %bb.a ], [ %i.am, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIPdlS0_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_S5_T1_T2_(ptr noundef %.tr.lcssa, ptr noundef %.tr74.lcssa, ptr noundef %2, i64 noundef %.tr76.lcssa, i64 noundef %.tr77.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr7786 = phi i64 [ %4, %.lr.ph ], [ %i.am, %tailrecurse ] ; 3 uses
  %.tr7685 = phi i64 [ %3, %.lr.ph ], [ %i.ak, %tailrecurse ] ; 3 uses
  %.tr7484 = phi ptr [ %1, %.lr.ph ], [ %.070, %tailrecurse ] ; 5 uses
  %.tr83 = phi ptr [ %0, %.lr.ph ], [ %i.al, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr7685, %.tr7786
  %i.c = ptrtoint ptr %.tr7484 to i64             ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit51

_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr7685, 2                     ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %.tr83, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPddN9__gnu_cxx5__ops14_Iter_less_valEET_S4_S4_RKT0_T1_.exit

_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit
  %i.i = load double, ptr %i.e, align 8, !tbaa !48
  br label %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.g, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi ptr [ %.tr7484, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPdlEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZSt23__merge_adaptive_resizeIPdlS0_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_S5_T1_S5_T2_:bb.a
  %i.al = tail call noundef ptr @_ZSt17__rotate_adaptiveIPdS0_lET_S1_S1_S1_T1_S2_T0_S2_(ptr noundef %.071, ptr noundef %.tr7484, ptr noundef %.070, i64 noundef %i.ak, i64 noundef %.043, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIPdlS0_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_S5_T1_S5_T2_(ptr noundef %.tr83, ptr noundef %.071, ptr noundef %i.al, i64 noundef %.0, i64 noundef %.043, ptr noundef %5, i64 noundef %6)
  %i.am = sub nsw i64 %.tr7786, %.043             ; 3 uses
  %.not = icmp sgt i64 %i.ak, %6
  %.not47 = icmp sgt i64 %i.am, %6
  %or.cond = and i1 %.not, %.not47
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt17__rotate_adaptiveIPdS0_lET_S1_S1_S1_T1_S2_T0_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 8                     ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !653

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 8
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit

bb.f:                                             ; preds = %bb.e
  %i.g = load double, ptr %1, align 8, !tbaa !48
  store double %i.g, ptr %5, align 8, !tbaa !48
  br label %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit

_ZSt4moveIPdS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.d, %bb.e, %bb.f
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.c, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !653

bb.g:                                             ; preds = %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %0, i64 %i.i, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit
  %i.n = icmp eq i64 %i.i, 8
  br i1 %i.n, label %bb.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds i8, ptr %2, i64 -8
  %i.p = load double, ptr %0, align 8, !tbaa !48
  store double %i.p, ptr %i.o, align 8, !tbaa !48
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit:       ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !653

bb.j:                                             ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit
  %i.q = icmp eq i64 %i.d, 8
  br i1 %i.q, label %bb.l, label %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit36

bb.l:                                             ; preds = %bb.k
  %i.r = load double, ptr %5, align 8, !tbaa !48
  store double %i.r, ptr %0, align 8, !tbaa !48
  br label %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit36

_ZSt4moveIPdS0_ET0_T_S2_S1_.exit36:               ; preds = %bb.j, %bb.k, %bb.l
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp sgt i64 %i.v, 8
  br i1 %i.w, label %bb.p, label %bb.q, !prof !653

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.v, i1 false)
  br label %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit37

bb.q:                                             ; preds = %bb.o
  %i.x = icmp eq i64 %i.v, 8
  br i1 %i.x, label %bb.r, label %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit37

bb.r:                                             ; preds = %bb.q
  %i.y = load double, ptr %0, align 8, !tbaa !48
  store double %i.y, ptr %5, align 8, !tbaa !48
  br label %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit37

_ZSt4moveIPdS0_ET0_T_S2_S1_.exit37:               ; preds = %bb.p, %bb.q, %bb.r
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 8
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !653

bb.s:                                             ; preds = %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %i.aa, i1 false)
  br label %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit38

bb.t:                                             ; preds = %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit37
  %i.ac = icmp eq i64 %i.aa, 8
  br i1 %i.ac, label %bb.u, label %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit38

bb.u:                                             ; preds = %bb.t
  %i.ad = load double, ptr %1, align 8, !tbaa !48
  store double %i.ad, ptr %0, align 8, !tbaa !48
  br label %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit38

_ZSt4moveIPdS0_ET0_T_S2_S1_.exit38:               ; preds = %bb.s, %bb.t, %bb.u
  %i.ae = ashr exact i64 %i.v, 3                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.v, label %bb.w, !prof !653

bb.v:                                             ; preds = %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit38
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %5, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit39

bb.w:                                             ; preds = %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit38
  %i.ai = icmp eq i64 %i.v, 8
  br i1 %i.ai, label %bb.x, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit39

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -8
  %i.ak = load double, ptr %5, align 8, !tbaa !48
  store double %i.ak, ptr %i.aj, align 8, !tbaa !48
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit39

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit39:     ; preds = %bb.v, %bb.w, %bb.x
  %i.al = sub nsw i64 0, %i.ae
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al
  br label %bb.z

bb.y:                                             ; preds = %bb.m
  %i.an = tail call noundef ptr @_ZNSt3_V28__rotateIPdEET_S2_S2_S2_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.b, %bb.y, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit39, %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit36
  %.0 = phi ptr [ %i.s, %_ZSt4moveIPdS0_ET0_T_S2_S1_.exit36 ], [ %i.an, %bb.y ], [ %i.am, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit39 ], [ %0, %bb.b ], [ %2, %bb.n ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !582
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !317  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !13     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !653

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !317
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !13
  store i32 %i.s, ptr %i.d, align 4, !tbaa !13
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !317
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !653

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !13
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !13
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !13
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !1507

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1508

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !13
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1509

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1510

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !317
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !653

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !317
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !13
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !13
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !317
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !13
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !13
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !1511

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !1512

end_hunk_2
begin_hunk_3_@_ZNK8LightGBM17MultiValSparseBinIjhE29ConstructHistogramOrderedInt8EPKiiiPKfS5_Pd:bb.a
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %._crit_edge57.i, label %.lr.ph56.i

._crit_edge57.i:                                  ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %.lr.ph59.i
  %indvars.iv.next73.i = add nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond76.not.i = icmp eq i64 %indvars.iv.next73.i, %wide.trip.count75.i
  br i1 %exitcond76.not.i, label %_ZNK8LightGBM17MultiValSparseBinIjhE26ConstructHistogramIntInnerILb1ELb1ELb1EsLi8EEEvPKiiiPKfPd.exit, label %.lr.ph59.i, !llvm.loop !2118

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i.3, %.lr.ph56.i ], [ %indvars.iv67.i.unr, %.lr.ph56.i.prol.loopexit ] ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv67.i
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !12
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.ch ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !53
  %i.ck = add i16 %i.cj, %i.bt
  store i16 %i.ck, ptr %i.ci, align 2, !tbaa !53
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv67.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !12
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.co ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !53
  %i.cr = add i16 %i.cq, %i.bt
  store i16 %i.cr, ptr %i.cp, align 2, !tbaa !53
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv67.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !12
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.cv ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !53
  %i.cy = add i16 %i.cx, %i.bt
  store i16 %i.cy, ptr %i.cw, align 2, !tbaa !53
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv67.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 3
  %i.db = load i8, ptr %i.da, align 1, !tbaa !12
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.dc ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !53
  %i.df = add i16 %i.de, %i.bt
  store i16 %i.df, ptr %i.dd, align 2, !tbaa !53
  %indvars.iv.next68.i.3 = add nuw nsw i64 %indvars.iv67.i, 4 ; 2 uses
  %exitcond71.not.i.3 = icmp eq i64 %indvars.iv.next68.i.3, %wide.trip.count70.i
  br i1 %exitcond71.not.i.3, label %._crit_edge57.i, label %.lr.ph56.i, !llvm.loop !2119

_ZNK8LightGBM17MultiValSparseBinIjhE26ConstructHistogramIntInnerILb1ELb1ELb1EsLi8EEEvPKiiiPKfPd.exit: ; preds = %._crit_edge57.i, %.preheader.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinIjhE10FinishLoadEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !580
  tail call void @_ZN8LightGBM17MultiValSparseBinIjhE9MergeDataEPKj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %i.b)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !580  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1178
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8, !tbaa !1178
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !500
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !194
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13shrink_to_fitEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.l = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #19 ; 0 uses
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13shrink_to_fitEv.exit

_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13shrink_to_fitEv.exit: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !262
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE13shrink_to_fitEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13shrink_to_fitEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #19 ; 0 uses
  br label %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE13shrink_to_fitEv.exit

_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE13shrink_to_fitEv.exit: ; preds = %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13shrink_to_fitEv.exit, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1706 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1705 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i1, label %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE13shrink_to_fitEv.exit, %_ZSt8_DestroyISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEEEvPT_.exit.i.i.i.i ], [ %i.u, %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE13shrink_to_fitEv.exit ] ; 2 uses
  %i.x = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @free(ptr noundef nonnull %i.x) #19
  br label %_ZSt8_DestroyISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1707

_ZSt8_DestroyIPSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEEEvPT_.exit.i.i.i.i
  store ptr %i.u, ptr %i.v, align 8, !tbaa !1705
  br label %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EE5clearEv.exit

_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EE5clearEv.exit: ; preds = %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE13shrink_to_fitEv.exit, %_ZSt8_DestroyIPSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1776
  %i.ab = icmp eq ptr %i.aa, %i.u
  br i1 %i.ab, label %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EE13shrink_to_fitEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EE5clearEv.exit
  %i.ac = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIS0_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS5_EELb1EE8_S_do_itERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.t) #19 ; 0 uses
  br label %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EE13shrink_to_fitEv.exit

_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EE13shrink_to_fitEv.exit: ; preds = %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EE5clearEv.exit, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1738 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !183
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !13
  %i.aj = uitofp i32 %i.ai to double
  %i.ak = sitofp i32 %i.ae to double
  %i.al = fdiv double %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.al, ptr %i.am, align 8, !tbaa !1741
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN8LightGBM17MultiValSparseBinIjhE8IsSparseEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8LightGBM17MultiValSparseBinIjhE5CloneEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #38 ; 3 uses
  invoke void @_ZN8LightGBM17MultiValSparseBinIjhEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #37
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1179
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1178 ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !13     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !653

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !1178
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !13
  store i32 %i.s, ptr %i.d, align 4, !tbaa !13
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !1178
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !653

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !13
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !13
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !13
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !2120

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !2121

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !13
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !2122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2123

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !1178
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !653

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1178
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !13
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !13
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !1178
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !13
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !13
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !2124

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !2125

end_hunk_3
begin_hunk_4_@_ZNSt6vectorImN8LightGBM6Common18AlignmentAllocatorImLm32EEEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS4_EEmRKm:bb.a
  %i.db = shl i64 %index201, 3
  %next.gep202 = getelementptr i8, ptr %i.cx, i64 %i.db ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep202, i64 16
  store <2 x i64> %broadcast.splat199, ptr %next.gep202, align 8, !tbaa !61
  store <2 x i64> %broadcast.splat199, ptr %i.dc, align 8, !tbaa !61
  %index.next203 = add nuw i64 %index201, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next203, %n.vec197
  br i1 %i.dd, label %middle.block204, label %vector.body200, !llvm.loop !2408

middle.block204:                                  ; preds = %vector.body200
  %cmp.n205 = icmp eq i64 %2, %n.vec197
  br i1 %cmp.n205, label %_ZSt24__uninitialized_fill_n_aIPmmmN8LightGBM6Common18AlignmentAllocatorImLm32EEEET_S5_T0_RKT1_RT2_.exit89, label %.lr.ph.i84.preheader

.lr.ph.i84.preheader:                             ; preds = %.lr.ph.preheader.i82, %middle.block204
  %.016.i85.ph = phi ptr [ %i.cx, %.lr.ph.preheader.i82 ], [ %i.cz, %middle.block204 ]
  %.01315.i86.ph = phi i64 [ %2, %.lr.ph.preheader.i82 ], [ %i.da, %middle.block204 ]
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %.lr.ph.i84.preheader, %.lr.ph.i84
  %.016.i85 = phi ptr [ %i.df, %.lr.ph.i84 ], [ %.016.i85.ph, %.lr.ph.i84.preheader ] ; 2 uses
  %.01315.i86 = phi i64 [ %i.de, %.lr.ph.i84 ], [ %.01315.i86.ph, %.lr.ph.i84.preheader ]
  store i64 %.pre.i83, ptr %.016.i85, align 8, !tbaa !61
  %i.de = add i64 %.01315.i86, -1                 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.016.i85, i64 8
  %.not.i87 = icmp eq i64 %i.de, 0
  br i1 %.not.i87, label %_ZSt24__uninitialized_fill_n_aIPmmmN8LightGBM6Common18AlignmentAllocatorImLm32EEEET_S5_T0_RKT1_RT2_.exit89, label %.lr.ph.i84, !llvm.loop !2409

_ZSt24__uninitialized_fill_n_aIPmmmN8LightGBM6Common18AlignmentAllocatorImLm32EEEET_S5_T0_RKT1_RT2_.exit89: ; preds = %.lr.ph.i84, %middle.block204
  %.not13.i.i90 = icmp eq ptr %i.cg, %1
  br i1 %.not13.i.i90, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N8LightGBM6Common18AlignmentAllocatorImLm32EEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i91.preheader

.lr.ph.i.i91.preheader:                           ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmN8LightGBM6Common18AlignmentAllocatorImLm32EEEET_S5_T0_RKT1_RT2_.exit89
  %i.dg = add i64 %i.cq, -8
  %i.dh = sub i64 %i.dg, %i.ch                    ; 2 uses
  %i.di = lshr i64 %i.dh, 3
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check211 = icmp ult i64 %i.dh, 72
  %i.dk = sub i64 %i.ch, %i.cw
  %diff.check209 = icmp ugt i64 %i.dk, -32
  %or.cond243 = select i1 %min.iters.check211, i1 true, i1 %diff.check209
  br i1 %or.cond243, label %.lr.ph.i.i91.preheader245, label %vector.ph212

vector.ph212:                                     ; preds = %.lr.ph.i.i91.preheader
  %n.vec213 = and i64 %i.dj, 4611686018427387900  ; 3 uses
  %i.dl = shl i64 %n.vec213, 3                    ; 2 uses
  %i.dm = getelementptr i8, ptr %i.cv, i64 %i.dl  ; 2 uses
  %i.dn = getelementptr i8, ptr %i.cg, i64 %i.dl
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next220, %vector.body214 ] ; 2 uses
  %i.do = shl i64 %index215, 3                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %i.cv, i64 %i.do ; 2 uses
  %next.gep217 = getelementptr i8, ptr %i.cg, i64 %i.do ; 2 uses
  %i.dp = getelementptr i8, ptr %next.gep217, i64 16
  %wide.load218 = load <2 x i64>, ptr %next.gep217, align 8, !tbaa !61
  %wide.load219 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !61
  %i.dq = getelementptr i8, ptr %next.gep216, i64 16
  store <2 x i64> %wide.load218, ptr %next.gep216, align 8, !tbaa !61
  store <2 x i64> %wide.load219, ptr %i.dq, align 8, !tbaa !61
  %index.next220 = add nuw i64 %index215, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.dr, label %middle.block221, label %vector.body214, !llvm.loop !2410

middle.block221:                                  ; preds = %vector.body214
  %cmp.n222 = icmp eq i64 %i.dj, %n.vec213
  br i1 %cmp.n222, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N8LightGBM6Common18AlignmentAllocatorImLm32EEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i91.preheader245

.lr.ph.i.i91.preheader245:                        ; preds = %.lr.ph.i.i91.preheader, %middle.block221
  %.015.i.i92.ph = phi ptr [ %i.cv, %.lr.ph.i.i91.preheader ], [ %i.dm, %middle.block221 ]
  %.sroa.010.014.i.i93.ph = phi ptr [ %i.cg, %.lr.ph.i.i91.preheader ], [ %i.dn, %middle.block221 ]
  br label %.lr.ph.i.i91

.lr.ph.i.i91:                                     ; preds = %.lr.ph.i.i91.preheader245, %.lr.ph.i.i91
  %.015.i.i92 = phi ptr [ %i.du, %.lr.ph.i.i91 ], [ %.015.i.i92.ph, %.lr.ph.i.i91.preheader245 ] ; 2 uses
  %.sroa.010.014.i.i93 = phi ptr [ %i.dt, %.lr.ph.i.i91 ], [ %.sroa.010.014.i.i93.ph, %.lr.ph.i.i91.preheader245 ] ; 2 uses
  %i.ds = load i64, ptr %.sroa.010.014.i.i93, align 8, !tbaa !61
  store i64 %i.ds, ptr %.015.i.i92, align 8, !tbaa !61
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i93, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.015.i.i92, i64 8 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.dt, %1
  br i1 %.not.i.i94, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N8LightGBM6Common18AlignmentAllocatorImLm32EEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i91, !llvm.loop !2411

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N8LightGBM6Common18AlignmentAllocatorImLm32EEEET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i91, %middle.block221, %_ZSt24__uninitialized_fill_n_aIPmmmN8LightGBM6Common18AlignmentAllocatorImLm32EEEET_S5_T0_RKT1_RT2_.exit89
  %.0.lcssa.i.i95 = phi ptr [ %i.cv, %_ZSt24__uninitialized_fill_n_aIPmmmN8LightGBM6Common18AlignmentAllocatorImLm32EEEET_S5_T0_RKT1_RT2_.exit89 ], [ %i.dm, %middle.block221 ], [ %i.du, %.lr.ph.i.i91 ] ; 2 uses
  %.0.lcssa.i.i95226 = ptrtoaddr ptr %.0.lcssa.i.i95 to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i.i95, i64 %2 ; 5 uses
  %.not13.i.i96 = icmp eq ptr %1, %i.e
  br i1 %.not13.i.i96, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N8LightGBM6Common18AlignmentAllocatorImLm32EEEET0_T_S6_S5_RT1_.exit102, label %.lr.ph.i.i97.preheader

.lr.ph.i.i97.preheader:                           ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N8LightGBM6Common18AlignmentAllocatorImLm32EEEET0_T_S6_S5_RT1_.exit
  %i.dw = add i64 %i.g, -8
  %i.dx = sub i64 %i.dw, %i.cq                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 3
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %min.iters.check229 = icmp ult i64 %i.dx, 136
  br i1 %min.iters.check229, label %.lr.ph.i.i97.preheader244, label %vector.memcheck225

vector.memcheck225:                               ; preds = %.lr.ph.i.i97.preheader
  %i.ea = shl i64 %2, 3
  %i.eb = add i64 %i.ea, %.0.lcssa.i.i95226
  %i.ec = sub i64 %i.cq, %i.eb
  %diff.check227 = icmp ugt i64 %i.ec, -32
  br i1 %diff.check227, label %.lr.ph.i.i97.preheader244, label %vector.ph230

vector.ph230:                                     ; preds = %vector.memcheck225
  %n.vec231 = and i64 %i.dz, 4611686018427387900  ; 3 uses
  %i.ed = shl i64 %n.vec231, 3                    ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dv, i64 %i.ed  ; 2 uses
  %i.ef = getelementptr i8, ptr %1, i64 %i.ed
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next238, %vector.body232 ] ; 2 uses
  %i.eg = shl i64 %index233, 3                    ; 2 uses
  %next.gep234 = getelementptr i8, ptr %i.dv, i64 %i.eg ; 2 uses
  %next.gep235 = getelementptr i8, ptr %1, i64 %i.eg ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep235, i64 16
  %wide.load236 = load <2 x i64>, ptr %next.gep235, align 8, !tbaa !61
  %wide.load237 = load <2 x i64>, ptr %i.eh, align 8, !tbaa !61
  %i.ei = getelementptr i8, ptr %next.gep234, i64 16
  store <2 x i64> %wide.load236, ptr %next.gep234, align 8, !tbaa !61
  store <2 x i64> %wide.load237, ptr %i.ei, align 8, !tbaa !61
  %index.next238 = add nuw i64 %index233, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next238, %n.vec231
  br i1 %i.ej, label %middle.block239, label %vector.body232, !llvm.loop !2412

middle.block239:                                  ; preds = %vector.body232
  %cmp.n240 = icmp eq i64 %i.dz, %n.vec231
  br i1 %cmp.n240, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N8LightGBM6Common18AlignmentAllocatorImLm32EEEET0_T_S6_S5_RT1_.exit102, label %.lr.ph.i.i97.preheader244

.lr.ph.i.i97.preheader244:                        ; preds = %vector.memcheck225, %.lr.ph.i.i97.preheader, %middle.block239
  %.015.i.i98.ph = phi ptr [ %i.dv, %vector.memcheck225 ], [ %i.dv, %.lr.ph.i.i97.preheader ], [ %i.ee, %middle.block239 ]
  %.sroa.010.014.i.i99.ph = phi ptr [ %1, %vector.memcheck225 ], [ %1, %.lr.ph.i.i97.preheader ], [ %i.ef, %middle.block239 ]
  br label %.lr.ph.i.i97

.lr.ph.i.i97:                                     ; preds = %.lr.ph.i.i97.preheader244, %.lr.ph.i.i97
  %.015.i.i98 = phi ptr [ %i.em, %.lr.ph.i.i97 ], [ %.015.i.i98.ph, %.lr.ph.i.i97.preheader244 ] ; 2 uses
  %.sroa.010.014.i.i99 = phi ptr [ %i.el, %.lr.ph.i.i97 ], [ %.sroa.010.014.i.i99.ph, %.lr.ph.i.i97.preheader244 ] ; 2 uses
  %i.ek = load i64, ptr %.sroa.010.014.i.i99, align 8, !tbaa !61
  store i64 %i.ek, ptr %.015.i.i98, align 8, !tbaa !61
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i99, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.015.i.i98, i64 8 ; 2 uses
  %.not.i.i100 = icmp eq ptr %i.el, %i.e
  br i1 %.not.i.i100, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N8LightGBM6Common18AlignmentAllocatorImLm32EEEET0_T_S6_S5_RT1_.exit102, label %.lr.ph.i.i97, !llvm.loop !2413

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N8LightGBM6Common18AlignmentAllocatorImLm32EEEET0_T_S6_S5_RT1_.exit102: ; preds = %.lr.ph.i.i97, %middle.block239, %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N8LightGBM6Common18AlignmentAllocatorImLm32EEEET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i101 = phi ptr [ %i.dv, %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N8LightGBM6Common18AlignmentAllocatorImLm32EEEET0_T_S6_S5_RT1_.exit ], [ %i.ee, %middle.block239 ], [ %i.em, %.lr.ph.i.i97 ]
  %.not.i103 = icmp eq ptr %i.cg, null
  br i1 %.not.i103, label %_ZNSt12_Vector_baseImN8LightGBM6Common18AlignmentAllocatorImLm32EEEE13_M_deallocateEPmm.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N8LightGBM6Common18AlignmentAllocatorImLm32EEEET0_T_S6_S5_RT1_.exit102
  call void @free(ptr noundef nonnull %i.cg) #19
  br label %_ZNSt12_Vector_baseImN8LightGBM6Common18AlignmentAllocatorImLm32EEEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImN8LightGBM6Common18AlignmentAllocatorImLm32EEEE13_M_deallocateEPmm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N8LightGBM6Common18AlignmentAllocatorImLm32EEEET0_T_S6_S5_RT1_.exit102, %bb.m
  store ptr %i.cv, ptr %0, align 8, !tbaa !1765
  store ptr %.0.lcssa.i.i101, ptr %i.d, align 8, !tbaa !2356
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cp
  store ptr %i.en, ptr %i.b, align 8, !tbaa !2397
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i76, %.lr.ph.i.i.i, %middle.block163, %middle.block191, %_ZSt22__uninitialized_move_aIPmS0_N8LightGBM6Common18AlignmentAllocatorImLm32EEEET0_T_S6_S5_RT1_.exit74.thread, %_ZNSt12_Vector_baseImN8LightGBM6Common18AlignmentAllocatorImLm32EEEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1667
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1668 ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !61     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !653

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !1668
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !61
  store i64 %i.s, ptr %i.d, align 8, !tbaa !61
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !1668
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !653

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !61
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !61
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec128, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat130 = shufflevector <2 x i64> %broadcast.splatinsert129, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 3
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <2 x i64> %broadcast.splat130, ptr %next.gep133, align 8, !tbaa !61
  store <2 x i64> %broadcast.splat130, ptr %i.ak, align 8, !tbaa !61
  %index.next134 = add nuw i64 %index132, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !2414

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !2415

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %i.ar = add i64 %i.aq, -8
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !61
  store <2 x i64> %broadcast.splat, ptr %i.ay, align 8, !tbaa !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !2416

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !61
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2417

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !1668
  %i.bb = icmp sgt i64 %i.k, 8
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !653

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1668
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 8
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i64, ptr %1, align 8, !tbaa !61
  store i64 %i.bd, ptr %.0.i.i.i.i.i, align 8, !tbaa !61
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !1668
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -8
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 4611686018427387900  ; 3 uses
  %i.bk = shl i64 %n.vec115, 3
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat117 = shufflevector <2 x i64> %broadcast.splatinsert116, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 3
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x i64> %broadcast.splat117, ptr %next.gep120, align 8, !tbaa !61
  store <2 x i64> %broadcast.splat117, ptr %i.bn, align 8, !tbaa !61
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !2418

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !2419

end_hunk_4
