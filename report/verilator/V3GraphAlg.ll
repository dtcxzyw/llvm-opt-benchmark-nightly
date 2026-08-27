Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3GraphAlg?download=true
inline.NumInlined: 1704
inline.NumDeleted: 657
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_SE_T0_SF_T1_":bb.a
  br i1 %i.u, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.t, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7685, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.v = lshr i64 %.016.i, 1                      ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i, i64 %i.v ; 2 uses
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17   ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !137
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef %.val.i), !inline_history !304
  %i.ac = icmp slt i32 %i.ab, 0                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = xor i64 %i.v, -1
  %i.af = add nsw i64 %.016.i, %i.ae
  %.sroa.011.1.i = select i1 %i.ac, ptr %i.ad, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.ac, i64 %i.af, i64 %i.v    ; 2 uses
  %i.ag = icmp sgt i64 %.1.i, 0
  br i1 %i.ag, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit", !llvm.loop !305

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit" ], [ %i.p, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit" ], [ %.tr7685, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ah = sub i64 %.pre-phi, %i.p
  %i.ai = ashr exact i64 %i.ah, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53: ; preds = %bb.e
  %i.aj = sdiv i64 %.tr7988, 2                    ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %.tr7685, i64 %i.aj ; 2 uses
  %i.al = ptrtoint ptr %.tr83 to i64              ; 3 uses
  %i.am = sub i64 %i.p, %i.al
  %i.an = ashr exact i64 %i.am, 3                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55
  %.016.i56 = phi i64 [ %.1.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55 ], [ %i.an, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ] ; 2 uses
  %.sroa.011.015.i57 = phi ptr [ %.sroa.011.1.i61, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55 ], [ %.tr83, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ] ; 2 uses
  %i.ap = lshr i64 %.016.i56, 1                   ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i57, i64 %i.ap ; 2 uses
  %.val.i60 = load ptr, ptr %i.ak, align 8, !tbaa !17 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.as = load ptr, ptr %.val.i60, align 8, !tbaa !137
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(80) %.val.i60, ptr noundef %i.ar), !inline_history !306
  %i.aw = icmp slt i32 %i.av, 0                   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ay = xor i64 %i.ap, -1
  %i.az = add nsw i64 %.016.i56, %i.ay
  %.sroa.011.1.i61 = select i1 %i.aw, ptr %.sroa.011.015.i57, ptr %i.ax ; 3 uses
  %.1.i62 = select i1 %i.aw, i64 %i.ap, i64 %i.az ; 2 uses
  %i.ba = icmp sgt i64 %.1.i62, 0
  br i1 %i.ba, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit", !llvm.loop !307

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55
  %.pre91 = ptrtoint ptr %.sroa.011.1.i61 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53
  %.pre-phi92 = phi i64 [ %.pre91, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit" ], [ %i.al, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ]
  %.sroa.011.0.lcssa.i54 = phi ptr [ %.sroa.011.1.i61, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit" ], [ %.tr83, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ]
  %i.bb = sub i64 %.pre-phi92, %i.al
  %i.bc = ashr exact i64 %i.bb, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit"
  %.sroa.065.0 = phi ptr [ %i.r, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit" ], [ %.sroa.011.0.lcssa.i54, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit" ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit" ], [ %i.ak, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit" ] ; 2 uses
  %.047 = phi i64 [ %i.ai, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit" ], [ %i.aj, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.q, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit" ], [ %i.bc, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit" ] ; 2 uses
  %i.bd = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %.sroa.065.0, ptr %.tr7685, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_SE_T0_SF_T1_"(ptr %.tr83, ptr %.sroa.065.0, ptr %i.bd, i64 noundef %.0, i64 noundef %.047)
  %i.be = sub nsw i64 %.tr7887, %.0               ; 2 uses
  %i.bf = sub nsw i64 %.tr7988, %.047             ; 2 uses
  %i.bg = icmp eq i64 %i.be, 0
  %i.bh = icmp eq i64 %i.bf, 0
  %or.cond = or i1 %i.bg, %i.bh
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.c

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
  %wide.load171 = load <2 x ptr>, ptr %next.gep170, align 8, !tbaa !17, !alias.scope !308, !noalias !311
  %wide.load172 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !17, !alias.scope !308, !noalias !311
  %i.y = getelementptr i8, ptr %next.gep169, i64 16 ; 2 uses
  %wide.load173 = load <2 x ptr>, ptr %next.gep169, align 8, !tbaa !17, !alias.scope !311
  %wide.load174 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !17, !alias.scope !311
  store <2 x ptr> %wide.load173, ptr %next.gep170, align 8, !tbaa !17, !alias.scope !308, !noalias !311
  store <2 x ptr> %wide.load174, ptr %i.x, align 8, !tbaa !17, !alias.scope !308, !noalias !311
  store <2 x ptr> %wide.load171, ptr %next.gep169, align 8, !tbaa !17, !alias.scope !311
  store <2 x ptr> %wide.load172, ptr %i.y, align 8, !tbaa !17, !alias.scope !311
  %index.next175 = add nuw i64 %index168, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next175, %n.vec166
  br i1 %i.z, label %middle.block176, label %vector.body167, !llvm.loop !313

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %i.o, %n.vec166
  br i1 %cmp.n177, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.preheader180

.lr.ph.i.preheader180:                            ; preds = %vector.memcheck157, %.lr.ph.i.preheader, %middle.block176
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck157 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block176 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck157 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block176 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader180, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %i.aa = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !17
  %i.ab = load ptr, ptr %.sroa.0.08.i, align 8, !tbaa !17
  store ptr %i.ab, ptr %.sroa.04.07.i, align 8, !tbaa !17
  store ptr %i.aa, ptr %.sroa.0.08.i, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i, !llvm.loop !316

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
  br i1 %i.ai, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %bb.f
  %i.aj = load ptr, ptr %.sroa.041.0, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 8
  %.idx86 = shl nuw nsw i64 %.0, 3                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 %.idx86
  %gepdiff = add nsw i64 %.idx86, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.041.0, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !17
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

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
  %wide.load = load <2 x ptr>, ptr %next.gep128, align 8, !tbaa !17, !alias.scope !317, !noalias !320
  %wide.load129 = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !17, !alias.scope !317, !noalias !320
  %i.ax = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load130 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !17, !alias.scope !320
  %wide.load131 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !17, !alias.scope !320
  store <2 x ptr> %wide.load130, ptr %next.gep128, align 8, !tbaa !17, !alias.scope !317, !noalias !320
  store <2 x ptr> %wide.load131, ptr %i.aw, align 8, !tbaa !17, !alias.scope !317, !noalias !320
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !17, !alias.scope !320
  store <2 x ptr> %wide.load129, ptr %i.ax, align 8, !tbaa !17, !alias.scope !320
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !322

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
  %i.ba = load ptr, ptr %.sroa.041.195.prol, align 8, !tbaa !17
  %i.bb = load ptr, ptr %.sroa.038.096.prol, align 8, !tbaa !17
  store ptr %i.bb, ptr %.sroa.041.195.prol, align 8, !tbaa !17
  store ptr %i.ba, ptr %.sroa.038.096.prol, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.041.195.prol, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.038.096.prol, i64 8 ; 2 uses
  %i.be = add nuw nsw i64 %.02897.prol, 1         ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !323

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
  br i1 %.not31, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.h

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %.02897 = phi i64 [ %i.bz, %.lr.ph99 ], [ %.02897.unr, %.lr.ph99.prol.loopexit ]
  %.sroa.038.096 = phi ptr [ %i.by, %.lr.ph99 ], [ %.sroa.038.096.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %.sroa.041.195 = phi ptr [ %i.bx, %.lr.ph99 ], [ %.sroa.041.195.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %i.bj = load ptr, ptr %.sroa.041.195, align 8, !tbaa !17
  %i.bk = load ptr, ptr %.sroa.038.096, align 8, !tbaa !17
  store ptr %i.bk, ptr %.sroa.041.195, align 8, !tbaa !17
  store ptr %i.bj, ptr %.sroa.038.096, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !17
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !17
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !17
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !17
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !17
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !17
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !17
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !17
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !17
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 32
  %i.bz = add nuw nsw i64 %.02897, 4              ; 2 uses
  %exitcond108.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond108.not.3, label %._crit_edge100, label %.lr.ph99, !llvm.loop !325

bb.h:                                             ; preds = %._crit_edge100
  %i.ca = sub nsw i64 %.084, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.0 ; 8 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !17
  %.idx = shl nuw nsw i64 %.0, 3
  %i.cf = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !65

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %.sroa.041.0, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 8
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %.sroa.041.0, align 8, !tbaa !17
  store ptr %i.cl, ptr %i.cd, align 8, !tbaa !17
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store ptr %i.ce, ptr %.sroa.041.0, align 8, !tbaa !17
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

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
  %wide.load147 = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !17, !alias.scope !326, !noalias !329
  %wide.load148 = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !17, !alias.scope !326, !noalias !329
  %i.cx = getelementptr inbounds i8, ptr %next.gep145, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep145, i64 -32 ; 2 uses
  %wide.load149 = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !17, !alias.scope !329
  %wide.load150 = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !17, !alias.scope !329
  store <2 x ptr> %wide.load149, ptr %i.cv, align 8, !tbaa !17, !alias.scope !326, !noalias !329
  store <2 x ptr> %wide.load150, ptr %i.cw, align 8, !tbaa !17, !alias.scope !326, !noalias !329
  store <2 x ptr> %wide.load147, ptr %i.cx, align 8, !tbaa !17, !alias.scope !329
  store <2 x ptr> %wide.load148, ptr %i.cy, align 8, !tbaa !17, !alias.scope !329
  %index.next151 = add nuw i64 %index144, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.cz, label %middle.block152, label %vector.body143, !llvm.loop !331

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
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !17
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !17
  store ptr %i.dd, ptr %i.da, align 8, !tbaa !17
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !17
  %i.de = add nuw nsw i64 %.02794.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !332

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
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.041.0.be = phi ptr [ %.sroa.041.1.lcssa, %bb.h ], [ %.sroa.041.2.lcssa, %._crit_edge ]
  %.084.be = phi i64 [ %i.ca, %bb.h ], [ %i.dh, %._crit_edge ]
  %.0.be = phi i64 [ %.084, %bb.h ], [ %i.ag, %._crit_edge ]
  br label %bb.e, !llvm.loop !333

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02794 = phi i64 [ %i.dy, %.lr.ph ], [ %.02794.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.093 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.0.093.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.041.292 = phi ptr [ %i.du, %.lr.ph ], [ %.sroa.041.292.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -8 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -8 ; 2 uses
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !17
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !17
  store ptr %i.dl, ptr %i.di, align 8, !tbaa !17
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !17
  %i.dm = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -16 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -16 ; 2 uses
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !17
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !17
  store ptr %i.dp, ptr %i.dm, align 8, !tbaa !17
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !17
  %i.dq = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -24 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -24 ; 2 uses
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !17
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !17
  store ptr %i.dt, ptr %i.dq, align 8, !tbaa !17
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !17
  %i.du = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -32 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -32 ; 3 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !17
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !17
  store ptr %i.dx, ptr %i.du, align 8, !tbaa !17
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !17
  %i.dy = add nuw nsw i64 %.02794, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dy, %.084
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !334

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %._crit_edge, %._crit_edge100, %.lr.ph.i, %middle.block176, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %bb.b, %bb.a
  %.sroa.024.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ], [ %i.af, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ], [ %1, %middle.block176 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge100 ], [ %i.af, %._crit_edge ]
  ret ptr %.sroa.024.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_SE_T0_SF_T1_SF_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef range(i64 -9223372036854775808, 4611686018427387903) %6) unnamed_addr #0 {
bb.a:
  %.not99 = icmp sgt i64 %3, %6
  %.not66100 = icmp sgt i64 %4, %6
  %or.cond101 = and i1 %.not99, %.not66100
  br i1 %or.cond101, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.ar, %tailrecurse ]
  %.tr93.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr95.lcssa = phi i64 [ %3, %bb.a ], [ %i.aq, %tailrecurse ]
  %.tr96.lcssa = phi i64 [ %4, %bb.a ], [ %i.as, %tailrecurse ]
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_SE_T0_SF_T1_T2_"(ptr %.tr.lcssa, ptr %.tr93.lcssa, ptr %2, i64 noundef %.tr95.lcssa, i64 noundef %.tr96.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr96107 = phi i64 [ %4, %.lr.ph ], [ %i.as, %tailrecurse ] ; 3 uses
  %.tr95106 = phi i64 [ %3, %.lr.ph ], [ %i.aq, %tailrecurse ] ; 3 uses
  %.tr93104 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr102 = phi ptr [ %0, %.lr.ph ], [ %i.ar, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr95106, %.tr96107
  %i.c = ptrtoint ptr %.tr93104 to i64            ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit70

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr95106, 2                    ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %.tr102, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph12sortVerticesEvE3$_0EEET_SE_SE_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr93104, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.i = lshr i64 %.016.i, 1                      ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i, i64 %i.i ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17   ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_SE_T0_SF_T1_":bb.a
  br i1 %i.u, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.t, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7685, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.v = lshr i64 %.016.i, 1                      ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i, i64 %i.v ; 2 uses
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21   ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !137
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef %.val.i), !inline_history !354
  %i.ac = icmp slt i32 %i.ab, 0                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = xor i64 %i.v, -1
  %i.af = add nsw i64 %.016.i, %i.ae
  %.sroa.011.1.i = select i1 %i.ac, ptr %i.ad, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.ac, i64 %i.af, i64 %i.v    ; 2 uses
  %i.ag = icmp sgt i64 %.1.i, 0
  br i1 %i.ag, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit", !llvm.loop !355

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit" ], [ %i.p, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit" ], [ %.tr7685, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ah = sub i64 %.pre-phi, %i.p
  %i.ai = ashr exact i64 %i.ah, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53: ; preds = %bb.e
  %i.aj = sdiv i64 %.tr7988, 2                    ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %.tr7685, i64 %i.aj ; 2 uses
  %i.al = ptrtoint ptr %.tr83 to i64              ; 3 uses
  %i.am = sub i64 %i.p, %i.al
  %i.an = ashr exact i64 %i.am, 3                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55
  %.016.i56 = phi i64 [ %.1.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55 ], [ %i.an, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ] ; 2 uses
  %.sroa.011.015.i57 = phi ptr [ %.sroa.011.1.i61, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55 ], [ %.tr83, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ] ; 2 uses
  %i.ap = lshr i64 %.016.i56, 1                   ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i57, i64 %i.ap ; 2 uses
  %.val.i60 = load ptr, ptr %i.ak, align 8, !tbaa !21 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.as = load ptr, ptr %.val.i60, align 8, !tbaa !137
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(72) %.val.i60, ptr noundef %i.ar), !inline_history !356
  %i.aw = icmp slt i32 %i.av, 0                   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ay = xor i64 %i.ap, -1
  %i.az = add nsw i64 %.016.i56, %i.ay
  %.sroa.011.1.i61 = select i1 %i.aw, ptr %.sroa.011.015.i57, ptr %i.ax ; 3 uses
  %.1.i62 = select i1 %i.aw, i64 %i.ap, i64 %i.az ; 2 uses
  %i.ba = icmp sgt i64 %.1.i62, 0
  br i1 %i.ba, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit", !llvm.loop !357

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55
  %.pre91 = ptrtoint ptr %.sroa.011.1.i61 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53
  %.pre-phi92 = phi i64 [ %.pre91, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit" ], [ %i.al, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ]
  %.sroa.011.0.lcssa.i54 = phi ptr [ %.sroa.011.1.i61, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit" ], [ %.tr83, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ]
  %i.bb = sub i64 %.pre-phi92, %i.al
  %i.bc = ashr exact i64 %i.bb, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit"
  %.sroa.065.0 = phi ptr [ %i.r, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit" ], [ %.sroa.011.0.lcssa.i54, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit" ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit" ], [ %i.ak, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit" ] ; 2 uses
  %.047 = phi i64 [ %i.ai, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit" ], [ %i.aj, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.q, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit" ], [ %i.bc, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit" ] ; 2 uses
  %i.bd = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %.sroa.065.0, ptr %.tr7685, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_SE_T0_SF_T1_"(ptr %.tr83, ptr %.sroa.065.0, ptr %i.bd, i64 noundef %.0, i64 noundef %.047)
  %i.be = sub nsw i64 %.tr7887, %.0               ; 2 uses
  %i.bf = sub nsw i64 %.tr7988, %.047             ; 2 uses
  %i.bg = icmp eq i64 %i.be, 0
  %i.bh = icmp eq i64 %i.bf, 0
  %or.cond = or i1 %i.bg, %i.bh
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.c

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
  %wide.load171 = load <2 x ptr>, ptr %next.gep170, align 8, !tbaa !21, !alias.scope !358, !noalias !361
  %wide.load172 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !21, !alias.scope !358, !noalias !361
  %i.y = getelementptr i8, ptr %next.gep169, i64 16 ; 2 uses
  %wide.load173 = load <2 x ptr>, ptr %next.gep169, align 8, !tbaa !21, !alias.scope !361
  %wide.load174 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !21, !alias.scope !361
  store <2 x ptr> %wide.load173, ptr %next.gep170, align 8, !tbaa !21, !alias.scope !358, !noalias !361
  store <2 x ptr> %wide.load174, ptr %i.x, align 8, !tbaa !21, !alias.scope !358, !noalias !361
  store <2 x ptr> %wide.load171, ptr %next.gep169, align 8, !tbaa !21, !alias.scope !361
  store <2 x ptr> %wide.load172, ptr %i.y, align 8, !tbaa !21, !alias.scope !361
  %index.next175 = add nuw i64 %index168, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next175, %n.vec166
  br i1 %i.z, label %middle.block176, label %vector.body167, !llvm.loop !363

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %i.o, %n.vec166
  br i1 %cmp.n177, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.preheader180

.lr.ph.i.preheader180:                            ; preds = %vector.memcheck157, %.lr.ph.i.preheader, %middle.block176
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck157 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block176 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck157 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block176 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader180, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %i.aa = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !21
  %i.ab = load ptr, ptr %.sroa.0.08.i, align 8, !tbaa !21
  store ptr %i.ab, ptr %.sroa.04.07.i, align 8, !tbaa !21
  store ptr %i.aa, ptr %.sroa.0.08.i, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i, !llvm.loop !364

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
  br i1 %i.ai, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %bb.f
  %i.aj = load ptr, ptr %.sroa.041.0, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 8
  %.idx86 = shl nuw nsw i64 %.0, 3                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 %.idx86
  %gepdiff = add nsw i64 %.idx86, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.041.0, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !21
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

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
  %wide.load = load <2 x ptr>, ptr %next.gep128, align 8, !tbaa !21, !alias.scope !365, !noalias !368
  %wide.load129 = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !21, !alias.scope !365, !noalias !368
  %i.ax = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load130 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !21, !alias.scope !368
  %wide.load131 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !21, !alias.scope !368
  store <2 x ptr> %wide.load130, ptr %next.gep128, align 8, !tbaa !21, !alias.scope !365, !noalias !368
  store <2 x ptr> %wide.load131, ptr %i.aw, align 8, !tbaa !21, !alias.scope !365, !noalias !368
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !21, !alias.scope !368
  store <2 x ptr> %wide.load129, ptr %i.ax, align 8, !tbaa !21, !alias.scope !368
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !370

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
  %i.ba = load ptr, ptr %.sroa.041.195.prol, align 8, !tbaa !21
  %i.bb = load ptr, ptr %.sroa.038.096.prol, align 8, !tbaa !21
  store ptr %i.bb, ptr %.sroa.041.195.prol, align 8, !tbaa !21
  store ptr %i.ba, ptr %.sroa.038.096.prol, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.041.195.prol, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.038.096.prol, i64 8 ; 2 uses
  %i.be = add nuw nsw i64 %.02897.prol, 1         ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !371

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
  br i1 %.not31, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.h

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %.02897 = phi i64 [ %i.bz, %.lr.ph99 ], [ %.02897.unr, %.lr.ph99.prol.loopexit ]
  %.sroa.038.096 = phi ptr [ %i.by, %.lr.ph99 ], [ %.sroa.038.096.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %.sroa.041.195 = phi ptr [ %i.bx, %.lr.ph99 ], [ %.sroa.041.195.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %i.bj = load ptr, ptr %.sroa.041.195, align 8, !tbaa !21
  %i.bk = load ptr, ptr %.sroa.038.096, align 8, !tbaa !21
  store ptr %i.bk, ptr %.sroa.041.195, align 8, !tbaa !21
  store ptr %i.bj, ptr %.sroa.038.096, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !21
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !21
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !21
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !21
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !21
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !21
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !21
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !21
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !21
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 32
  %i.bz = add nuw nsw i64 %.02897, 4              ; 2 uses
  %exitcond108.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond108.not.3, label %._crit_edge100, label %.lr.ph99, !llvm.loop !372

bb.h:                                             ; preds = %._crit_edge100
  %i.ca = sub nsw i64 %.084, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.0 ; 8 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !21
  %.idx = shl nuw nsw i64 %.0, 3
  %i.cf = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !65

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %.sroa.041.0, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 8
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %.sroa.041.0, align 8, !tbaa !21
  store ptr %i.cl, ptr %i.cd, align 8, !tbaa !21
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store ptr %i.ce, ptr %.sroa.041.0, align 8, !tbaa !21
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

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
  %wide.load147 = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !21, !alias.scope !373, !noalias !376
  %wide.load148 = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !21, !alias.scope !373, !noalias !376
  %i.cx = getelementptr inbounds i8, ptr %next.gep145, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep145, i64 -32 ; 2 uses
  %wide.load149 = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !21, !alias.scope !376
  %wide.load150 = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !21, !alias.scope !376
  store <2 x ptr> %wide.load149, ptr %i.cv, align 8, !tbaa !21, !alias.scope !373, !noalias !376
  store <2 x ptr> %wide.load150, ptr %i.cw, align 8, !tbaa !21, !alias.scope !373, !noalias !376
  store <2 x ptr> %wide.load147, ptr %i.cx, align 8, !tbaa !21, !alias.scope !376
  store <2 x ptr> %wide.load148, ptr %i.cy, align 8, !tbaa !21, !alias.scope !376
  %index.next151 = add nuw i64 %index144, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.cz, label %middle.block152, label %vector.body143, !llvm.loop !378

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
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !21
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !21
  store ptr %i.dd, ptr %i.da, align 8, !tbaa !21
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !21
  %i.de = add nuw nsw i64 %.02794.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !379

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
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.041.0.be = phi ptr [ %.sroa.041.1.lcssa, %bb.h ], [ %.sroa.041.2.lcssa, %._crit_edge ]
  %.084.be = phi i64 [ %i.ca, %bb.h ], [ %i.dh, %._crit_edge ]
  %.0.be = phi i64 [ %.084, %bb.h ], [ %i.ag, %._crit_edge ]
  br label %bb.e, !llvm.loop !380

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02794 = phi i64 [ %i.dy, %.lr.ph ], [ %.02794.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.093 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.0.093.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.041.292 = phi ptr [ %i.du, %.lr.ph ], [ %.sroa.041.292.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -8 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -8 ; 2 uses
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !21
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !21
  store ptr %i.dl, ptr %i.di, align 8, !tbaa !21
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !21
  %i.dm = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -16 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -16 ; 2 uses
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !21
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !21
  store ptr %i.dp, ptr %i.dm, align 8, !tbaa !21
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !21
  %i.dq = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -24 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -24 ; 2 uses
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !21
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !21
  store ptr %i.dt, ptr %i.dq, align 8, !tbaa !21
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !21
  %i.du = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -32 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -32 ; 3 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !21
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !21
  store ptr %i.dx, ptr %i.du, align 8, !tbaa !21
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !21
  %i.dy = add nuw nsw i64 %.02794, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dy, %.084
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !381

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %._crit_edge, %._crit_edge100, %.lr.ph.i, %middle.block176, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %bb.b, %bb.a
  %.sroa.024.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ], [ %i.af, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ], [ %1, %middle.block176 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge100 ], [ %i.af, %._crit_edge ]
  ret ptr %.sroa.024.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_SE_T0_SF_T1_SF_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef range(i64 -9223372036854775808, 4611686018427387903) %6) unnamed_addr #0 {
bb.a:
  %.not99 = icmp sgt i64 %3, %6
  %.not66100 = icmp sgt i64 %4, %6
  %or.cond101 = and i1 %.not99, %.not66100
  br i1 %or.cond101, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.ar, %tailrecurse ]
  %.tr93.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr95.lcssa = phi i64 [ %3, %bb.a ], [ %i.aq, %tailrecurse ]
  %.tr96.lcssa = phi i64 [ %4, %bb.a ], [ %i.as, %tailrecurse ]
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_SE_T0_SF_T1_T2_"(ptr %.tr.lcssa, ptr %.tr93.lcssa, ptr %2, i64 noundef %.tr95.lcssa, i64 noundef %.tr96.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr96107 = phi i64 [ %4, %.lr.ph ], [ %i.as, %tailrecurse ] ; 3 uses
  %.tr95106 = phi i64 [ %3, %.lr.ph ], [ %i.aq, %tailrecurse ] ; 3 uses
  %.tr93104 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr102 = phi ptr [ %0, %.lr.ph ], [ %i.ar, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr95106, %.tr96107
  %i.c = ptrtoint ptr %.tr93104 to i64            ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit70

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr95106, 2                    ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %.tr102, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN7V3Graph9sortEdgesEvE3$_0EEET_SE_SE_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr93104, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.i = lshr i64 %.016.i, 1                      ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i, i64 %i.i ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
end_hunk_1
