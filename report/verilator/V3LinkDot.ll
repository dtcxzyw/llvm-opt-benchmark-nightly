Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3LinkDot?download=true
inline.NumInlined: 14877
inline.NumDeleted: 2437
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZZN19LinkDotScopeVisitor26processDeferredAliasScopesEvENKUlRKSt4pairIP13AstAliasScopeP7VSymEntES7_E_clES7_S7_:bb.a

.lr.ph.i.i.i.i.i5:                                ; preds = %bb.m, %bb.n
  %.020.i.i.i.i.i6 = phi ptr [ %i.ba, %bb.n ], [ %i.av, %bb.m ]
  %i.ba = load ptr, ptr %.020.i.i.i.i.i6, align 8, !tbaa !238 ; 4 uses
  %.not18.i.i.i.i.i7 = icmp eq ptr %i.ba, null
  br i1 %.not18.i.i.i.i.i7, label %.loopexit.i.i10, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i5
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !253 ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = urem i64 %i.bd, %i.an
  %.not19.i.i.i.i.i8 = icmp eq i64 %i.be, %i.as
  br i1 %.not19.i.i.i.i.i8, label %bb.n, label %..loopexit_crit_edge21.i.i.i.i.i9, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i.i9:                ; preds = %bb.o
  br label %.loopexit.i.i10, !llvm.loop !15

.loopexit.i.i10:                                  ; preds = %.lr.ph.i.i.i.i.i5, %bb.j, %..loopexit_crit_edge21.i.i.i.i.i9, %bb.l
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.766) #27
  unreachable

_ZNSt13unordered_mapIP7VSymEntiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEE2atERS7_.exit15: ; preds = %bb.n, %bb.k, %bb.m
  %i.bf = phi i32 [ %i.af, %bb.k ], [ %i.ap, %bb.m ], [ %i.ap, %bb.n ]
  %.sroa.06.1.i.i.i11 = phi ptr [ %.sroa.06.0.i.i.i13, %bb.k ], [ %i.av, %bb.m ], [ %i.ba, %bb.n ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i11, i64 16
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !142
  %i.bi = icmp slt i32 %i.bf, %i.bh
  ret i1 %i.bi
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEEvT_SK_SK_T0_SL_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8 ; 4 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8 ; 4 uses
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  store ptr %5, ptr %8, align 8
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %4, %3
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef zeroext i1 @_ZZN19LinkDotScopeVisitor26processDeferredAliasScopesEvENKUlRKSt4pairIP13AstAliasScopeP7VSymEntES7_E_clES7_S7_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %0)
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !505
  %i.g = load <2 x ptr>, ptr %0, align 8, !tbaa !505
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !505
  store <2 x ptr> %i.g, ptr %1, align 8, !tbaa !505
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.h = icmp sgt i64 %3, %4
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit55

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.i = sdiv i64 %3, 2                           ; 2 uses
  %i.j = getelementptr inbounds [16 x i8], ptr %0, i64 %i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %5, ptr %7, align 8
  %i.k = ptrtoint ptr %2 to i64
  %i.l = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.p = lshr i64 %.016.i, 1                      ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i, i64 %i.p ; 2 uses
  %i.r = call noundef zeroext i1 @_ZZN19LinkDotScopeVisitor26processDeferredAliasScopesEvENKUlRKSt4pairIP13AstAliasScopeP7VSymEntES7_E_clES7_S7_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.j) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = xor i64 %i.p, -1
  %i.u = add nsw i64 %.016.i, %i.t
  %.sroa.011.1.i = select i1 %i.r, ptr %i.s, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.r, i64 %i.u, i64 %i.p      ; 2 uses
  %i.v = icmp sgt i64 %.1.i, 0
  br i1 %i.v, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit.loopexit, !llvm.loop !19

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %i.l, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.w = sub i64 %.pre-phi, %i.l
  %i.x = ashr exact i64 %i.w, 4
  br label %bb.f

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit55: ; preds = %bb.e
  %i.y = sdiv i64 %4, 2                           ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %1, i64 %i.y ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %5, ptr %6, align 8
  %i.aa = ptrtoint ptr %1 to i64
  %i.ab = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 4                 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit55, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.016.i58 = phi i64 [ %.1.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %i.ad, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ] ; 2 uses
  %.sroa.011.015.i59 = phi ptr [ %.sroa.011.1.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ] ; 2 uses
  %i.af = lshr i64 %.016.i58, 1                   ; 3 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i59, i64 %i.af ; 2 uses
  %i.ah = call noundef zeroext i1 @_ZZN19LinkDotScopeVisitor26processDeferredAliasScopesEvENKUlRKSt4pairIP13AstAliasScopeP7VSymEntES7_E_clES7_S7_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.ag) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = xor i64 %i.af, -1
  %i.ak = add nsw i64 %.016.i58, %i.aj
  %.sroa.011.1.i62 = select i1 %i.ah, ptr %.sroa.011.015.i59, ptr %i.ai ; 3 uses
  %.1.i63 = select i1 %i.ah, i64 %i.af, i64 %i.ak ; 2 uses
  %i.al = icmp sgt i64 %.1.i63, 0
  br i1 %i.al, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit.loopexit, !llvm.loop !20

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.pre77 = ptrtoint ptr %.sroa.011.1.i62 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit55
  %.pre-phi78 = phi i64 [ %.pre77, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %i.ab, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %.sroa.011.0.lcssa.i56 = phi ptr [ %.sroa.011.1.i62, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.am = sub i64 %.pre-phi78, %i.ab
  %i.an = ashr exact i64 %i.am, 4
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit
  %.sroa.066.0 = phi ptr [ %i.j, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i56, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit ], [ %i.z, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %.049 = phi i64 [ %i.x, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit ], [ %i.y, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit ], [ %i.an, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %i.ao = call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS8_SaIS8_EEEEEET_SE_SE_SE_St26random_access_iterator_tag(ptr %.sroa.066.0, ptr %1, ptr %.sroa.0.0) ; 2 uses
  %.sroa.05.0.copyload = load ptr, ptr %8, align 8, !tbaa !558
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEEvT_SK_SK_T0_SL_T1_(ptr %0, ptr %.sroa.066.0, ptr %i.ao, i64 noundef %.0, i64 noundef %.049, ptr %.sroa.05.0.copyload)
  %i.ap = sub nsw i64 %3, %.0
  %i.aq = sub nsw i64 %4, %.049
  %.sroa.0.0.copyload = load ptr, ptr %8, align 8, !tbaa !558
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEEvT_SK_SK_T0_SL_T1_(ptr %i.ao, ptr %.sroa.0.0, ptr %2, i64 noundef %i.ap, i64 noundef %i.aq, ptr %.sroa.0.0.copyload)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS8_SaIS8_EEEEEET_SE_SE_SE_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, label %bb.c

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
  %.sroa.0.08.i = phi ptr [ %i.o, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.n, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  %i.l = load <2 x ptr>, ptr %.sroa.0.08.i, align 8, !tbaa !505
  %i.m = load <2 x ptr>, ptr %.sroa.04.07.i, align 8, !tbaa !505
  store <2 x ptr> %i.l, ptr %.sroa.04.07.i, align 8, !tbaa !505
  store <2 x ptr> %i.m, ptr %.sroa.0.08.i, align 8, !tbaa !505
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 16
  %.not.i = icmp eq ptr %i.n, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, label %.lr.ph.i, !llvm.loop !1733

bb.d:                                             ; preds = %bb.c
  %i.p = sub i64 %i.c, %i.g
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.056 = phi i64 [ %i.f, %bb.d ], [ %.056.be, %.backedge ] ; 5 uses
  %.0 = phi i64 [ %i.i, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %.sroa.026.0 = phi ptr [ %0, %bb.d ], [ %.sroa.026.0.be, %.backedge ] ; 7 uses
  %i.r = sub nsw i64 %.056, %.0                   ; 7 uses
  %i.s = icmp slt i64 %.0, %i.r
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = icmp sgt i64 %i.r, 0
  br i1 %i.t, label %.lr.ph66.preheader, label %._crit_edge67

.lr.ph66.preheader:                               ; preds = %bb.f
  %i.u = getelementptr inbounds [16 x i8], ptr %.sroa.026.0, i64 %.0 ; 2 uses
  %xtraiter83 = and i64 %i.r, 3                   ; 3 uses
  %3 = sub i64 %.0, %.056
  %4 = icmp ugt i64 %3, -4
  br i1 %4, label %.lr.ph66.epil.preheader, label %.lr.ph66.preheader.new

.lr.ph66.preheader.new:                           ; preds = %.lr.ph66.preheader
  %unroll_iter88 = and i64 %i.r, 9223372036854775804
  br label %.lr.ph66

._crit_edge67.loopexit.unr-lcssa:                 ; preds = %.lr.ph66
  %lcmp.mod85.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod85.not, label %._crit_edge67, label %.lr.ph66.epil.preheader

.lr.ph66.epil.preheader:                          ; preds = %._crit_edge67.loopexit.unr-lcssa, %.lr.ph66.preheader
  %.sroa.025.063.epil.init = phi ptr [ %i.u, %.lr.ph66.preheader ], [ %i.ap, %._crit_edge67.loopexit.unr-lcssa ]
  %.sroa.026.162.epil.init = phi ptr [ %.sroa.026.0, %.lr.ph66.preheader ], [ %i.ao, %._crit_edge67.loopexit.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter83, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %.lr.ph66.epil

.lr.ph66.epil:                                    ; preds = %.lr.ph66.epil, %.lr.ph66.epil.preheader
  %.sroa.025.063.epil = phi ptr [ %i.y, %.lr.ph66.epil ], [ %.sroa.025.063.epil.init, %.lr.ph66.epil.preheader ] ; 3 uses
  %.sroa.026.162.epil = phi ptr [ %i.x, %.lr.ph66.epil ], [ %.sroa.026.162.epil.init, %.lr.ph66.epil.preheader ] ; 3 uses
  %epil.iter84 = phi i64 [ %epil.iter84.next, %.lr.ph66.epil ], [ 0, %.lr.ph66.epil.preheader ]
  %i.v = load <2 x ptr>, ptr %.sroa.025.063.epil, align 8, !tbaa !505
  %i.w = load <2 x ptr>, ptr %.sroa.026.162.epil, align 8, !tbaa !505
  store <2 x ptr> %i.v, ptr %.sroa.026.162.epil, align 8, !tbaa !505
  store <2 x ptr> %i.w, ptr %.sroa.025.063.epil, align 8, !tbaa !505
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.026.162.epil, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.025.063.epil, i64 16
  %epil.iter84.next = add i64 %epil.iter84, 1     ; 2 uses
  %epil.iter84.cmp.not = icmp eq i64 %epil.iter84.next, %xtraiter83
  br i1 %epil.iter84.cmp.not, label %._crit_edge67, label %.lr.ph66.epil, !llvm.loop !1734

._crit_edge67:                                    ; preds = %._crit_edge67.loopexit.unr-lcssa, %.lr.ph66.epil, %bb.f
  %.sroa.026.1.lcssa = phi ptr [ %.sroa.026.0, %bb.f ], [ %i.ao, %._crit_edge67.loopexit.unr-lcssa ], [ %i.x, %.lr.ph66.epil ]
  %i.z = srem i64 %.056, %.0                      ; 2 uses
  %.not21 = icmp eq i64 %i.z, 0
  br i1 %.not21, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, label %bb.g

.lr.ph66:                                         ; preds = %.lr.ph66, %.lr.ph66.preheader.new
  %.sroa.025.063 = phi ptr [ %i.u, %.lr.ph66.preheader.new ], [ %i.ap, %.lr.ph66 ] ; 6 uses
  %.sroa.026.162 = phi ptr [ %.sroa.026.0, %.lr.ph66.preheader.new ], [ %i.ao, %.lr.ph66 ] ; 6 uses
  %niter89 = phi i64 [ 0, %.lr.ph66.preheader.new ], [ %niter89.next.3, %.lr.ph66 ]
  %i.aa = load <2 x ptr>, ptr %.sroa.025.063, align 8, !tbaa !505
  %i.ab = load <2 x ptr>, ptr %.sroa.026.162, align 8, !tbaa !505
  store <2 x ptr> %i.aa, ptr %.sroa.026.162, align 8, !tbaa !505
  store <2 x ptr> %i.ab, ptr %.sroa.025.063, align 8, !tbaa !505
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 16 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !505
  %i.af = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !505
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !505
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !505
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 32 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !505
  %i.aj = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !505
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !505
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !505
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 48 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !505
  %i.an = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !505
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !505
  store <2 x ptr> %i.an, ptr %i.al, align 8, !tbaa !505
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 64 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 64 ; 2 uses
  %niter89.next.3 = add i64 %niter89, 4           ; 2 uses
  %niter89.ncmp.3 = icmp eq i64 %niter89.next.3, %unroll_iter88
  br i1 %niter89.ncmp.3, label %._crit_edge67.loopexit.unr-lcssa, label %.lr.ph66, !llvm.loop !1735

bb.g:                                             ; preds = %._crit_edge67
  %i.aq = sub nsw i64 %.0, %i.z
  br label %.backedge

bb.h:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds [16 x i8], ptr %.sroa.026.0, i64 %.056 ; 3 uses
  %i.as = sub i64 0, %i.r
  %i.at = getelementptr inbounds [16 x i8], ptr %i.ar, i64 %i.as ; 3 uses
  %i.au = icmp sgt i64 %.0, 0
  br i1 %i.au, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %.0, 3                      ; 3 uses
  %i.av = icmp ult i64 %.0, 4
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.0, 9223372036854775804
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.060.epil.init = phi ptr [ %i.ar, %.lr.ph.preheader ], [ %i.bo, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.026.259.epil.init = phi ptr [ %i.at, %.lr.ph.preheader ], [ %i.bn, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod82 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.060.epil = phi ptr [ %i.ax, %.lr.ph.epil ], [ %.sroa.0.060.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.026.259.epil = phi ptr [ %i.aw, %.lr.ph.epil ], [ %.sroa.026.259.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.aw = getelementptr inbounds i8, ptr %.sroa.026.259.epil, i64 -16 ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0.060.epil, i64 -16 ; 3 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !505
  %i.az = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !505
  store <2 x ptr> %i.ay, ptr %i.aw, align 8, !tbaa !505
  store <2 x ptr> %i.az, ptr %i.ax, align 8, !tbaa !505
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !1736

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.h
  %.sroa.026.2.lcssa = phi ptr [ %i.at, %bb.h ], [ %.sroa.026.0, %.lr.ph.epil ], [ %.sroa.026.0, %._crit_edge.loopexit.unr-lcssa ]
  %i.ba = srem i64 %.056, %i.r                    ; 2 uses
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.g
  %.056.be = phi i64 [ %.0, %bb.g ], [ %i.r, %._crit_edge ]
  %.0.be = phi i64 [ %i.aq, %bb.g ], [ %i.ba, %._crit_edge ]
  %.sroa.026.0.be = phi ptr [ %.sroa.026.1.lcssa, %bb.g ], [ %.sroa.026.2.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !1737

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.060 = phi ptr [ %i.ar, %.lr.ph.preheader.new ], [ %i.bo, %.lr.ph ] ; 4 uses
  %.sroa.026.259 = phi ptr [ %i.at, %.lr.ph.preheader.new ], [ %i.bn, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.bb = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -16 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -16 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !505
  %i.be = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !505
  store <2 x ptr> %i.bd, ptr %i.bb, align 8, !tbaa !505
  store <2 x ptr> %i.be, ptr %i.bc, align 8, !tbaa !505
  %i.bf = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -32 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -32 ; 2 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !505
  %i.bi = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !505
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !505
  store <2 x ptr> %i.bi, ptr %i.bg, align 8, !tbaa !505
  %i.bj = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -48 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -48 ; 2 uses
  %i.bl = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !505
  %i.bm = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !505
  store <2 x ptr> %i.bl, ptr %i.bj, align 8, !tbaa !505
  store <2 x ptr> %i.bm, ptr %i.bk, align 8, !tbaa !505
  %i.bn = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -64 ; 4 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -64 ; 4 uses
  %i.bp = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !505
  %i.bq = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !505
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !505
  store <2 x ptr> %i.bq, ptr %i.bo, align 8, !tbaa !505
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1738

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit: ; preds = %._crit_edge, %._crit_edge67, %.lr.ph.i, %bb.b, %bb.a
  %.sroa.015.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %1, %.lr.ph.i ], [ %i.q, %._crit_edge67 ], [ %i.q, %._crit_edge ]
  ret ptr %.sroa.015.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEEvT_SK_SK_T0_SL_T1_SL_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8 ; 4 uses
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8 ; 4 uses
  %i.a = inttoptr i64 %7 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %6
  %.not64 = icmp sgt i64 %4, %6
  %or.cond = and i1 %.not, %.not64
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEEvT_SK_SK_T0_SL_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %7)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = icmp sgt i64 %3, %4
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit68

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.c = sdiv i64 %3, 2                           ; 2 uses
  %i.d = getelementptr inbounds [16 x i8], ptr %0, i64 %i.c ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.a, ptr %9, align 8
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS7_SH_E_EEET_SK_SK_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIP13AstAliasScopeP7VSymEntESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.j = lshr i64 %.016.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i, i64 %i.j ; 2 uses
  %i.l = call noundef zeroext i1 @_ZZN19LinkDotScopeVisitor26processDeferredAliasScopesEvENKUlRKSt4pairIP13AstAliasScopeP7VSymEntES7_E_clES7_S7_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.d) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
end_hunk_0
