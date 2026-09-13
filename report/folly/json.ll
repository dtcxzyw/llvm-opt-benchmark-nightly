Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/json?download=true
inline.NumInlined: 4901
inline.NumDeleted: 1765
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZNSt6vectorISt17reference_wrapperIKSt4pairIKN5folly7dynamicES3_EESaIS7_EE19_M_range_initializeINS3_19const_item_iteratorEEEvT_SC_St20forward_iterator_tag
define linkonce_odr void @_ZNSt6vectorISt17reference_wrapperIKSt4pairIKN5folly7dynamicES3_EESaIS7_EE19_M_range_initializeINS3_19const_item_iteratorEEEvT_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not10.i = icmp eq ptr %1, %3
  br i1 %.not10.i, label %_ZNSt12_Vector_baseISt17reference_wrapperIKSt4pairIKN5folly7dynamicES3_EESaIS7_EE11_M_allocateEm.exit.thread, label %.lr.ph.i

_ZNSt12_Vector_baseISt17reference_wrapperIKSt4pairIKN5folly7dynamicES3_EESaIS7_EE11_M_allocateEm.exit.thread: ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !93
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !100
  br label %_ZSt22__uninitialized_copy_aIN5folly7dynamic19const_item_iteratorEPSt17reference_wrapperIKSt4pairIKS1_S1_EES8_ET0_T_SB_SA_RSaIT1_E.exit

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i
  %.013.i = phi i64 [ %i.ab, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.5.012.i = phi i64 [ %.sroa.5.3.i, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i ], [ %2, %bb.a ] ; 3 uses
  %.sroa.02.011.i = phi ptr [ %.sroa.02.1.i, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i ], [ %1, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %.sroa.02.011.i, i64 -16
  %.neg.i.i.i.i.i.i = mul i64 %.sroa.5.012.i, -8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %.neg.i.i.i.i.i.i ; 2 uses
  %.not19.i5.i.i.i.i = icmp eq i64 %.sroa.5.012.i, 0
  br i1 %.not19.i5.i.i.i.i, label %.critedge.i.i.i.i.i.preheader, label %thread-pre-split.i.i.i.i

.critedge.i.i.i.i.i.preheader:                    ; preds = %bb.b, %.lr.ph.i
  br label %.critedge.i.i.i.i.i

bb.b:                                             ; preds = %thread-pre-split.i.i.i.i
  %.not19.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not19.i.i.i.i.i, label %.critedge.i.i.i.i.i.preheader, label %thread-pre-split.i.i.i.i

thread-pre-split.i.i.i.i:                         ; preds = %.lr.ph.i, %bb.b
  %i.d = phi i64 [ %i.f, %bb.b ], [ %.sroa.5.012.i, %.lr.ph.i ]
  %i.e = phi ptr [ %i.g, %bb.b ], [ %.sroa.02.011.i, %.lr.ph.i ]
  %i.f = add i64 %i.d, -1                         ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i, !prof !122, !llvm.loop !19

.critedge.i.i.i.i.i:                              ; preds = %.critedge.i.i.i.i.i.preheader, %bb.c
  %.017.i.i.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.c, %.critedge.i.i.i.i.i.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i, i64 14
  %i.k = load i8, ptr %i.j, align 1, !tbaa !37
  %i.l = and i8 %i.k, 15
  %.not2.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not2.i.i.i.i, label %bb.c, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i, !prof !82

bb.c:                                             ; preds = %.critedge.i.i.i.i.i
  %i.m = getelementptr inbounds i8, ptr %.017.i.i.i.i.i, i64 -128 ; 4 uses
  %i.n = load <16 x i8>, ptr %i.m, align 16, !tbaa !37
  %i.o = icmp eq <16 x i8> %i.n, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = and i16 %i.p, 16383                      ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.017.i.i.i.i.i, i64 -256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.r, i32 0, i32 3, i32 1)
  %.not3.i.i.i.i = icmp eq i16 %i.q, 16383
  br i1 %.not3.i.i.i.i, label %.critedge.i.i.i.i.i, label %bb.d, !prof !122, !llvm.loop !20

bb.d:                                             ; preds = %bb.c
  %i.s = xor i16 %i.q, 16383
  %i.t = zext nneg i16 %i.s to i32
  %i.u = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.t, i1 true)
  %i.v = xor i32 %i.u, 31
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = icmp ne ptr %i.m, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.x)
  %i.y = shl nuw nsw i64 %i.w, 3
  %i.z = getelementptr i8, ptr %i.m, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i: ; preds = %thread-pre-split.i.i.i.i, %.critedge.i.i.i.i.i, %bb.d
  %.sroa.02.1.i = phi ptr [ null, %.critedge.i.i.i.i.i ], [ %i.aa, %bb.d ], [ %i.g, %thread-pre-split.i.i.i.i ] ; 2 uses
  %.sroa.5.3.i = phi i64 [ 0, %.critedge.i.i.i.i.i ], [ %i.w, %bb.d ], [ %i.f, %thread-pre-split.i.i.i.i ]
  %i.ab = add nuw nsw i64 %.013.i, 1              ; 3 uses
  %.not.i = icmp eq ptr %.sroa.02.1.i, %3
  br i1 %.not.i, label %_ZSt10__distanceIN5folly7dynamic19const_item_iteratorEENSt15iterator_traitsIT_E15difference_typeES4_S4_St18input_iterator_tag.exit, label %.lr.ph.i, !llvm.loop !1037

_ZSt10__distanceIN5folly7dynamic19const_item_iteratorEENSt15iterator_traitsIT_E15difference_typeES4_S4_St18input_iterator_tag.exit: ; preds = %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i
  %i.ac = icmp samesign ugt i64 %.013.i, 1152921504606846974
  br i1 %i.ac, label %bb.e, label %_ZNSt12_Vector_baseISt17reference_wrapperIKSt4pairIKN5folly7dynamicES3_EESaIS7_EE11_M_allocateEm.exit

bb.e:                                             ; preds = %_ZSt10__distanceIN5folly7dynamic19const_item_iteratorEENSt15iterator_traitsIT_E15difference_typeES4_S4_St18input_iterator_tag.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
  unreachable

_ZNSt12_Vector_baseISt17reference_wrapperIKSt4pairIKN5folly7dynamicES3_EESaIS7_EE11_M_allocateEm.exit: ; preds = %_ZSt10__distanceIN5folly7dynamic19const_item_iteratorEENSt15iterator_traitsIT_E15difference_typeES4_S4_St18input_iterator_tag.exit
  %i.ad = shl nuw nsw i64 %i.ab, 3
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #38 ; 3 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !93
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !100
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIKSt4pairIKN5folly7dynamicES3_EESaIS7_EE11_M_allocateEm.exit, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i.i.i
  %.020.i.i.i.i = phi ptr [ %i.bi, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i.i.i ], [ %i.ae, %_ZNSt12_Vector_baseISt17reference_wrapperIKSt4pairIKN5folly7dynamicES3_EESaIS7_EE11_M_allocateEm.exit ] ; 2 uses
  %.sroa.6.019.i.i.i.i = phi i64 [ %.sroa.6.3.i.i.i.i, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseISt17reference_wrapperIKSt4pairIKN5folly7dynamicES3_EESaIS7_EE11_M_allocateEm.exit ] ; 3 uses
  %.sroa.08.018.i.i.i.i = phi ptr [ %.sroa.08.1.i.i.i.i, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseISt17reference_wrapperIKSt4pairIKN5folly7dynamicES3_EESaIS7_EE11_M_allocateEm.exit ] ; 3 uses
  %i.ah = load ptr, ptr %.sroa.08.018.i.i.i.i, align 8, !tbaa !96
  store ptr %i.ah, ptr %.020.i.i.i.i, align 8, !tbaa !99
  %i.ai = getelementptr inbounds i8, ptr %.sroa.08.018.i.i.i.i, i64 -16
  %.neg.i.i.i.i.i.i.i.i.i = mul i64 %.sroa.6.019.i.i.i.i, -8
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %.neg.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not19.i5.i.i.i.i.i.i.i = icmp eq i64 %.sroa.6.019.i.i.i.i, 0
  br i1 %.not19.i5.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.preheader, label %thread-pre-split.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.preheader:              ; preds = %bb.f, %.lr.ph.i.i.i.i
  br label %.critedge.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.not19.i.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not19.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.preheader, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i, %bb.f
  %i.ak = phi i64 [ %i.am, %bb.f ], [ %.sroa.6.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.al = phi ptr [ %i.an, %bb.f ], [ %.sroa.08.018.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.am = add i64 %i.ak, -1                       ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i.i.i, !prof !122, !llvm.loop !19

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %.critedge.i.i.i.i.i.i.i.i.preheader, %bb.g
  %.017.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %bb.g ], [ %i.aj, %.critedge.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i.i.i, i64 14
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !37
  %i.as = and i8 %i.ar, 15
  %.not2.i.i.i.i.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not2.i.i.i.i.i.i.i, label %bb.g, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i.i.i, !prof !82

bb.g:                                             ; preds = %.critedge.i.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds i8, ptr %.017.i.i.i.i.i.i.i.i, i64 -128 ; 4 uses
  %i.au = load <16 x i8>, ptr %i.at, align 16, !tbaa !37
  %i.av = icmp eq <16 x i8> %i.au, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = and i16 %i.aw, 16383                    ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.017.i.i.i.i.i.i.i.i, i64 -256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ay, i32 0, i32 3, i32 1)
  %.not3.i.i.i.i.i.i.i = icmp eq i16 %i.ax, 16383
  br i1 %.not3.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i, label %bb.h, !prof !122, !llvm.loop !20

bb.h:                                             ; preds = %bb.g
  %i.az = xor i16 %i.ax, 16383
  %i.ba = zext nneg i16 %i.az to i32
  %i.bb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ba, i1 true)
  %i.bc = xor i32 %i.bb, 31
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = icmp ne ptr %i.at, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = shl nuw nsw i64 %i.bd, 3
  %i.bg = getelementptr i8, ptr %i.at, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i.i.i

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i.i.i: ; preds = %thread-pre-split.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i, %bb.h
  %.sroa.08.1.i.i.i.i = phi ptr [ null, %.critedge.i.i.i.i.i.i.i.i ], [ %i.bh, %bb.h ], [ %i.an, %thread-pre-split.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.3.i.i.i.i = phi i64 [ 0, %.critedge.i.i.i.i.i.i.i.i ], [ %i.bd, %bb.h ], [ %i.am, %thread-pre-split.i.i.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %.sroa.08.1.i.i.i.i, %3
  br i1 %.not.i.i.i.i14, label %_ZSt22__uninitialized_copy_aIN5folly7dynamic19const_item_iteratorEPSt17reference_wrapperIKSt4pairIKS1_S1_EES8_ET0_T_SB_SA_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1038

_ZSt22__uninitialized_copy_aIN5folly7dynamic19const_item_iteratorEPSt17reference_wrapperIKSt4pairIKS1_S1_EES8_ET0_T_SB_SA_RSaIT1_E.exit: ; preds = %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i.i.i, %_ZNSt12_Vector_baseISt17reference_wrapperIKSt4pairIKN5folly7dynamicES3_EESaIS7_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt17reference_wrapperIKSt4pairIKN5folly7dynamicES3_EESaIS7_EE11_M_allocateEm.exit.thread ], [ %i.bi, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.bj, align 8, !tbaa !1039
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SQ_SR_(ptr %0, ptr %1, i64 noundef %2, ptr %3) unnamed_addr #3 {
bb.a:
  %.fr25 = freeze ptr %1                          ; 3 uses
  %.fr24 = freeze ptr %0                          ; 35 uses
  %i.a = ptrtoint ptr %.fr24 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr25 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SQ_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr24, i64 8 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 10 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph40

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEESP_SP_SP_SQ_.exit
  %i.i = icmp eq i64 %i.ce, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph40, !llvm.loop !1040

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i23.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.de, %bb.b ] ; 2 uses
  %storemerge21.lcssa = phi ptr [ %.fr25, %.lr.ph ], [ %.sroa.016.1.i.i, %bb.b ]
  %i.j = lshr i64 %.fr.i.i23.lcssa, 3             ; 2 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %.fr.i.i23.lcssa, 8
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %i.q
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ar, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i ] ; 8 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !96 ; 2 uses
  %i.u = icmp slt i64 %.010.i.i.i, %i.n
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.039.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.039.i.i.i.i, 1                 ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %i.y
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !96
  %i.aa = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1041
  %spec.select.i.i.i.i = select i1 %i.ab, i64 %i.y, i64 %i.w ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %spec.select.i.i.i.i
  %i.ad = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %.039.i.i.i.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !96
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !96
  %i.af = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1042

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.l
  %or.cond.i.i.i = select i1 %i.p, i1 %i.ag, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !96
  store i64 %i.ah, ptr %i.s, align 8, !tbaa !96
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %.0911.i.i.i.i.i ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !96
  %i.ak = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.al = tail call noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.03.0.copyload.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1043
  br i1 %i.al, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %.010.i.i.i.i.i
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !96
  store i64 %i.an, ptr %i.am, align 8, !tbaa !96
  %i.ao = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i, !llvm.loop !1044

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %.0.lcssa.i.i.i.i.i
  %i.aq = ptrtoint ptr %.sroa.03.0.copyload.i.i.i to i64
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !96
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.ar = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !1045

.lr.ph.i9.i:                                      ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.as, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i ], [ %storemerge21.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i ]
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load ptr, ptr %i.as, align 8, !tbaa !96 ; 2 uses
  %i.at = load i64, ptr %.fr24, align 8, !tbaa !96
  store i64 %i.at, ptr %i.as, align 8, !tbaa !96
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.au, %i.a                     ; 3 uses
  %i.aw = ashr exact i64 %i.av, 3                 ; 3 uses
  %i.ax = add nsw i64 %i.aw, -1
  %i.ay = lshr i64 %i.ax, 1
  %i.az = icmp sgt i64 %i.aw, 2
  br i1 %i.az, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.039.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ba = shl i64 %.039.i.i.i20.i, 1              ; 2 uses
  %i.bb = add i64 %i.ba, 2                        ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %i.bb
  %i.bd = or disjoint i64 %i.ba, 1                ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %i.bd
  %.sroa.01.0.copyload.i.i.i.i21.i = load ptr, ptr %i.bc, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.be, align 8, !tbaa !96
  %i.bf = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.bg = tail call noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.i21.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i.i.i22.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1046
  %spec.select.i.i.i23.i = select i1 %i.bg, i64 %i.bd, i64 %i.bb ; 4 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %spec.select.i.i.i23.i
  %i.bi = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %.039.i.i.i20.i
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !96
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !96
  %i.bk = icmp slt i64 %spec.select.i.i.i23.i, %i.ay
  br i1 %i.bk, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i, !llvm.loop !1042

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.bl = and i64 %i.av, 8
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.bn = add nsw i64 %i.aw, -2
  %i.bo = ashr exact i64 %i.bn, 1
  %i.bp = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.bo
  br i1 %i.bp, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bq = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.br = or disjoint i64 %i.bq, 1                ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %.0.lcssa.i.i.i12.i
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !96
  store i64 %i.bu, ptr %i.bt, align 8, !tbaa !96
  br label %.lr.ph.i.i.i.i14.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i, label %.lr.ph.i.i.i.i14.i.preheader

.lr.ph.i.i.i.i14.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.010.i.i.i.i15.i.ph = phi i64 [ %.0.lcssa.i.i.i12.i, %bb.h ], [ %i.br, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %.lr.ph.i.i.i.i14.i.preheader, %bb.i
  %.010.i.i.i.i15.i = phi i64 [ %.0911.i.i78.i.i.i, %bb.i ], [ %.010.i.i.i.i15.i.ph, %.lr.ph.i.i.i.i14.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %.0911.i.i78.i.i.i ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i17.i = load ptr, ptr %i.bv, align 8, !tbaa !96
  %i.bw = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.bx = tail call noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.i.i17.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.03.0.copyload.i.i10.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1047
  br i1 %i.bx, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i14.i
  %i.by = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %.010.i.i.i.i15.i
  %i.bz = load i64, ptr %i.bv, align 8, !tbaa !96
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !96
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i, label %.lr.ph.i.i.i.i14.i, !llvm.loop !1044

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i14.i, %bb.h
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i15.i, %.lr.ph.i.i.i.i14.i ], [ 0, %bb.i ]
  %i.ca = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %.0.lcssa.i.i.i.i18.i
  %i.cb = ptrtoint ptr %.sroa.03.0.copyload.i.i10.i to i64
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !96
  %i.cc = icmp sgt i64 %i.av, 8
  br i1 %i.cc, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SQ_.exit, !llvm.loop !1048

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2139 = phi ptr [ %.sroa.016.1.i.i, %bb.b ], [ %.fr25, %.lr.ph ] ; 3 uses
  %.02238 = phi i64 [ %i.ce, %bb.b ], [ %2, %.lr.ph ]
  %i.cd = phi i64 [ %i.df, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ce = add nsw i64 %.02238, -1                 ; 3 uses
  %i.cf = lshr i64 %i.cd, 1
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %i.cf ; 7 uses
  %i.ch = getelementptr inbounds i8, ptr %storemerge2139, i64 -8 ; 7 uses
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.cg, align 8, !tbaa !96
  %i.ci = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.cj = tail call noundef zeroext i1 %i.ci(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1049
  %.sroa.0.0.copyload.i31.i.i = load ptr, ptr %i.ch, align 8, !tbaa !96 ; 2 uses
  %i.ck = load ptr, ptr %i.g, align 16, !tbaa !97 ; 2 uses
  br i1 %i.cj, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph40
  %.sroa.01.0.copyload.i30.i.i = load ptr, ptr %i.cg, align 8, !tbaa !96
  %i.cl = tail call noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i30.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i31.i.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1049
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.fr24, align 8, !tbaa !96
  %i.cm = load i64, ptr %i.cg, align 8, !tbaa !96
  store i64 %i.cm, ptr %.fr24, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.cg, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %.sroa.01.0.copyload.i32.i.i = load ptr, ptr %i.f, align 8, !tbaa !96
  %.sroa.0.0.copyload.i33.i.i = load ptr, ptr %i.ch, align 8, !tbaa !96
  %i.cn = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.co = tail call noundef zeroext i1 %i.cn(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i32.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i33.i.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1049
  %.sroa.0.0.copyload.i.i34.i.i = load ptr, ptr %.fr24, align 8, !tbaa !96 ; 2 uses
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cp = load i64, ptr %i.ch, align 8, !tbaa !96
  store i64 %i.cp, ptr %.fr24, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i34.i.i, ptr %i.ch, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.cq = load i64, ptr %i.f, align 8, !tbaa !96
  store i64 %i.cq, ptr %.fr24, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i34.i.i, ptr %i.f, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph40
  %.sroa.01.0.copyload.i36.i.i = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.cr = tail call noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i36.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i31.i.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1049
  br i1 %i.cr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i.i38.i.i = load ptr, ptr %.fr24, align 8, !tbaa !96
  %i.cs = load i64, ptr %i.f, align 8, !tbaa !96
  store i64 %i.cs, ptr %.fr24, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i38.i.i, ptr %i.f, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %.sroa.01.0.copyload.i39.i.i = load ptr, ptr %i.cg, align 8, !tbaa !96
  %.sroa.0.0.copyload.i40.i.i = load ptr, ptr %i.ch, align 8, !tbaa !96
  %i.ct = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.cu = tail call noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i39.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i40.i.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1049
  %.sroa.0.0.copyload.i.i41.i.i = load ptr, ptr %.fr24, align 8, !tbaa !96 ; 2 uses
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cv = load i64, ptr %i.ch, align 8, !tbaa !96
  store i64 %i.cv, ptr %.fr24, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i41.i.i, ptr %i.ch, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.cw = load i64, ptr %i.cg, align 8, !tbaa !96
  store i64 %i.cw, ptr %.fr24, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i41.i.i, ptr %i.cg, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader, %bb.v
  %.sroa.013.0.i.i = phi ptr [ %.sroa.013.1.i.i, %bb.v ], [ %storemerge2139, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader ]
  %.sroa.016.0.i.i = phi ptr [ %i.cz, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i
  %.sroa.016.1.i.i = phi ptr [ %.sroa.016.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i ], [ %i.cz, %bb.t ] ; 9 uses
  %.sroa.01.0.copyload.i.i12.i = load ptr, ptr %.sroa.016.1.i.i, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i13.i = load ptr, ptr %.fr24, align 8, !tbaa !96
  %i.cx = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.cy = tail call noundef zeroext i1 %i.cx(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i12.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i13.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1050
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 8 ; 2 uses
  br i1 %i.cy, label %bb.t, label %.preheader.i.i, !llvm.loop !1051

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.013.0.pn.i.i = phi ptr [ %.sroa.013.1.i.i, %.preheader.i.i ], [ %.sroa.013.0.i.i, %bb.t ]
  %.sroa.013.1.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -8 ; 6 uses
  %.sroa.01.0.copyload.i11.i.i = load ptr, ptr %.fr24, align 8, !tbaa !96
  %.sroa.0.0.copyload.i12.i.i = load ptr, ptr %.sroa.013.1.i.i, align 8, !tbaa !96
  %i.da = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.db = tail call noundef zeroext i1 %i.da(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i11.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i12.i.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1050
  br i1 %i.db, label %.preheader.i.i, label %bb.u, !llvm.loop !1052

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.016.1.i.i, %.sroa.013.1.i.i
  br i1 %.not.i.i, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEESP_SP_SP_SQ_.exit

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.copyload.i.i.i14.i = load ptr, ptr %.sroa.016.1.i.i, align 8, !tbaa !96
  %i.dc = load i64, ptr %.sroa.013.1.i.i, align 8, !tbaa !96
  store i64 %i.dc, ptr %.sroa.016.1.i.i, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i.i14.i, ptr %.sroa.013.1.i.i, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i, !llvm.loop !1053

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEESP_SP_SP_SQ_.exit: ; preds = %bb.u
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SQ_SR_(ptr nonnull %.sroa.016.1.i.i, ptr %storemerge2139, i64 noundef %i.ce, ptr nonnull %3)
  %i.dd = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.de = sub i64 %i.dd, %i.a                     ; 2 uses
  %i.df = ashr exact i64 %i.de, 3                 ; 2 uses
  %i.dg = icmp sgt i64 %i.df, 16
  br i1 %i.dg, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SQ_.exit, !llvm.loop !1040

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SQ_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEESP_SP_SP_SQ_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SQ_SR_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %.fr13 = freeze ptr %1                          ; 3 uses
  %.fr12 = freeze ptr %0                          ; 43 uses
  %i.a = ptrtoint ptr %.fr12 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr13 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SQ_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr12, i64 8 ; 8 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph31

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEESP_SP_SP_SQ_.exit
  %i.h = icmp eq i64 %i.ct, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph31, !llvm.loop !1054

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i11.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.dn, %bb.b ] ; 2 uses
  %storemerge9.lcssa = phi ptr [ %.fr13, %.lr.ph ], [ %.sroa.015.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i11.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i11.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.us.i.i.i
  %.010.us.i.i.i = phi i64 [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.us.i.i.i ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %.010.us.i.i.i
  %.sroa.03.0.copyload.us.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !96 ; 2 uses
  %i.t = icmp slt i64 %.010.us.i.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.037.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.010.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.u = shl i64 %.037.i.us.i.i.i, 1              ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %i.x
  %.sroa.01.0.copyload.i.i.us.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i.us.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !96
  %i.z = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i.us.i.i.i)
  %spec.select.i.us.i.i.i = select i1 %i.z, i64 %i.x, i64 %i.v ; 4 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %spec.select.i.us.i.i.i
  %i.ab = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %.037.i.us.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !96
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !96
  %i.ad = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ad, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i, !llvm.loop !1055

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.us.i.i.i, %bb.c
  %.010.i.i.us.i.i.i = phi i64 [ %.0911.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %.0911.i.i.us.i.i.i ; 2 uses
  %.sroa.01.0.copyload.i.i.i.us.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !96
  %i.af = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.03.0.copyload.us.i.i.i)
  br i1 %i.af, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.us.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %.010.i.i.us.i.i.i
  %i.ah = load i64, ptr %i.ae, align 8, !tbaa !96
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !96
  %i.ai = icmp sgt i64 %.0911.i.i.us.i.i.i, %.010.us.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.us.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.us.i.i.i, !llvm.loop !1056

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.us.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.010.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.c ], [ %.010.i.i.us.i.i.i, %.lr.ph.i.i.us.i.i.i ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %.0.lcssa.i.i.us.i.i.i
  %i.ak = ptrtoint ptr %.sroa.03.0.copyload.us.i.i.i to i64
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !96
  %.not.us.i.i.i = icmp eq i64 %.010.us.i.i.i, 0
  %i.al = add nsw i64 %.010.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_RSQ_.exit.i.i, label %.split.us.i.i.i, !llvm.loop !1057

.split.i.i.i:                                     ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i, %.split.preheader.i.i.i
  %.010.i.i.i = phi i64 [ %i.bi, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !96 ; 2 uses
  %i.an = icmp slt i64 %.010.i.i.i, %i.m
  br i1 %i.an, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.ao = shl i64 %.037.i.i.i.i, 1                ; 2 uses
  %i.ap = add i64 %i.ao, 2                        ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %i.ap
  %i.ar = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %i.ar
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !96
  %i.at = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i.i.i.i)
  %spec.select.i.i.i.i = select i1 %i.at, i64 %i.ar, i64 %i.ap ; 4 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %spec.select.i.i.i.i
  %i.av = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %.037.i.i.i.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !96
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !96
  %i.ax = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1055

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ay = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.az = load i64, ptr %i.q, align 8, !tbaa !96
  store i64 %i.az, ptr %i.r, align 8, !tbaa !96
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ba = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %.0911.i.i.i.i.i ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !96
  %i.bc = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.03.0.copyload.i.i.i)
  br i1 %i.bc, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %.010.i.i.i.i.i
  %i.be = load i64, ptr %i.bb, align 8, !tbaa !96
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !96
  %i.bf = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i, !llvm.loop !1056

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %.0.lcssa.i.i.i.i.i
  %i.bh = ptrtoint ptr %.sroa.03.0.copyload.i.i.i to i64
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !96
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bi = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_RSQ_.exit.i.i, label %.split.i.i.i, !llvm.loop !1057

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_RSQ_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.us.i.i.i, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_RSQ_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.bj, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i ], [ %storemerge9.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_RSQ_.exit.i.i ]
  %i.bj = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load ptr, ptr %i.bj, align 8, !tbaa !96 ; 2 uses
  %i.bk = load i64, ptr %.fr12, align 8, !tbaa !96
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !96
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bl, %i.a                     ; 3 uses
  %i.bn = ashr exact i64 %i.bm, 3                 ; 3 uses
  %i.bo = add nsw i64 %i.bn, -1
  %i.bp = lshr i64 %i.bo, 1
  %i.bq = icmp sgt i64 %i.bn, 2
  br i1 %i.bq, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.037.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.br = shl i64 %.037.i.i.i20.i, 1              ; 2 uses
  %i.bs = add i64 %i.br, 2                        ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %i.bs
  %i.bu = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %i.bu
  %.sroa.01.0.copyload.i.i.i.i21.i = load ptr, ptr %i.bt, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.bv, align 8, !tbaa !96
  %i.bw = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.i21.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i.i.i22.i)
  %spec.select.i.i.i23.i = select i1 %i.bw, i64 %i.bu, i64 %i.bs ; 4 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %spec.select.i.i.i23.i
  %i.by = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %.037.i.i.i20.i
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !96
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !96
  %i.ca = icmp slt i64 %spec.select.i.i.i23.i, %i.bp
  br i1 %i.ca, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i, !llvm.loop !1055

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.cb = and i64 %i.bm, 8
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.cd = add nsw i64 %i.bn, -2
  %i.ce = ashr exact i64 %i.cd, 1
  %i.cf = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.ce
  br i1 %i.cf, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.cg = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.ch = or disjoint i64 %i.cg, 1                ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %.0.lcssa.i.i.i12.i
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !96
  store i64 %i.ck, ptr %i.cj, align 8, !tbaa !96
  br label %.lr.ph.i.i.i.i14.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i, label %.lr.ph.i.i.i.i14.i.preheader

.lr.ph.i.i.i.i14.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.010.i.i.i.i15.i.ph = phi i64 [ %.0.lcssa.i.i.i12.i, %bb.h ], [ %i.ch, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %.lr.ph.i.i.i.i14.i.preheader, %bb.i
  %.010.i.i.i.i15.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.010.i.i.i.i15.i.ph, %.lr.ph.i.i.i.i14.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %.0911.i.i56.i.i.i ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i17.i = load ptr, ptr %i.cl, align 8, !tbaa !96
  %i.cm = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.i.i17.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.03.0.copyload.i.i10.i)
  br i1 %i.cm, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i14.i
  %i.cn = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %.010.i.i.i.i15.i
  %i.co = load i64, ptr %i.cl, align 8, !tbaa !96
  store i64 %i.co, ptr %i.cn, align 8, !tbaa !96
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i, label %.lr.ph.i.i.i.i14.i, !llvm.loop !1056

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i14.i, %bb.h
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i15.i, %.lr.ph.i.i.i.i14.i ], [ 0, %bb.i ]
  %i.cp = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %.0.lcssa.i.i.i.i18.i
  %i.cq = ptrtoint ptr %.sroa.03.0.copyload.i.i10.i to i64
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !96
  %i.cr = icmp sgt i64 %i.bm, 8
  br i1 %i.cr, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SQ_.exit, !llvm.loop !1058

.lr.ph31:                                         ; preds = %.lr.ph, %bb.b
  %storemerge930 = phi ptr [ %.sroa.015.1.i.i, %bb.b ], [ %.fr13, %.lr.ph ] ; 3 uses
  %.01029 = phi i64 [ %i.ct, %bb.b ], [ %2, %.lr.ph ]
  %i.cs = phi i64 [ %i.do, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ct = add nsw i64 %.01029, -1                 ; 3 uses
  %i.cu = lshr i64 %i.cs, 1
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %i.cu ; 7 uses
  %i.cw = getelementptr inbounds i8, ptr %storemerge930, i64 -8 ; 7 uses
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.cv, align 8, !tbaa !96
  %i.cx = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i.i)
  %.sroa.0.0.copyload.i27.i.i = load ptr, ptr %i.cw, align 8, !tbaa !96 ; 2 uses
  br i1 %i.cx, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph31
  %.sroa.01.0.copyload.i26.i.i = load ptr, ptr %i.cv, align 8, !tbaa !96
  %i.cy = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i26.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i27.i.i)
  br i1 %i.cy, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.fr12, align 8, !tbaa !96
  %i.cz = load i64, ptr %i.cv, align 8, !tbaa !96
  store i64 %i.cz, ptr %.fr12, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.cv, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %.sroa.01.0.copyload.i28.i.i = load ptr, ptr %i.f, align 8, !tbaa !96
  %.sroa.0.0.copyload.i29.i.i = load ptr, ptr %i.cw, align 8, !tbaa !96
  %i.da = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i28.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i29.i.i)
  %.sroa.0.0.copyload.i.i30.i.i = load ptr, ptr %.fr12, align 8, !tbaa !96 ; 2 uses
  br i1 %i.da, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.db = load i64, ptr %i.cw, align 8, !tbaa !96
  store i64 %i.db, ptr %.fr12, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i30.i.i, ptr %i.cw, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.dc = load i64, ptr %i.f, align 8, !tbaa !96
  store i64 %i.dc, ptr %.fr12, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i30.i.i, ptr %i.f, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph31
  %.sroa.01.0.copyload.i32.i.i = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.dd = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i32.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i27.i.i)
  br i1 %i.dd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i.i34.i.i = load ptr, ptr %.fr12, align 8, !tbaa !96
  %i.de = load i64, ptr %i.f, align 8, !tbaa !96
  store i64 %i.de, ptr %.fr12, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i34.i.i, ptr %i.f, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %.sroa.01.0.copyload.i35.i.i = load ptr, ptr %i.cv, align 8, !tbaa !96
  %.sroa.0.0.copyload.i36.i.i = load ptr, ptr %i.cw, align 8, !tbaa !96
  %i.df = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i35.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i36.i.i)
  %.sroa.0.0.copyload.i.i37.i.i = load ptr, ptr %.fr12, align 8, !tbaa !96 ; 2 uses
  br i1 %i.df, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dg = load i64, ptr %i.cw, align 8, !tbaa !96
  store i64 %i.dg, ptr %.fr12, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i37.i.i, ptr %i.cw, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.dh = load i64, ptr %i.cv, align 8, !tbaa !96
  store i64 %i.dh, ptr %.fr12, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i37.i.i, ptr %i.cv, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader, %bb.v
  %.sroa.012.0.i.i = phi ptr [ %.sroa.012.1.i.i, %bb.v ], [ %storemerge930, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader ]
  %.sroa.015.0.i.i = phi ptr [ %i.dj, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i
  %.sroa.015.1.i.i = phi ptr [ %.sroa.015.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i ], [ %i.dj, %bb.t ] ; 9 uses
  %.sroa.01.0.copyload.i.i12.i = load ptr, ptr %.sroa.015.1.i.i, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i13.i = load ptr, ptr %.fr12, align 8, !tbaa !96
  %i.di = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i12.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i13.i)
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 8 ; 2 uses
  br i1 %i.di, label %bb.t, label %.preheader.i.i, !llvm.loop !1059

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.012.0.pn.i.i = phi ptr [ %.sroa.012.1.i.i, %.preheader.i.i ], [ %.sroa.012.0.i.i, %bb.t ]
  %.sroa.012.1.i.i = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -8 ; 6 uses
  %.sroa.01.0.copyload.i10.i.i = load ptr, ptr %.fr12, align 8, !tbaa !96
  %.sroa.0.0.copyload.i11.i.i = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !96
  %i.dk = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i10.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i11.i.i)
  br i1 %i.dk, label %.preheader.i.i, label %bb.u, !llvm.loop !1060

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.015.1.i.i, %.sroa.012.1.i.i
  br i1 %.not.i.i, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEESP_SP_SP_SQ_.exit

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.copyload.i.i.i14.i = load ptr, ptr %.sroa.015.1.i.i, align 8, !tbaa !96
  %i.dl = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !96
  store i64 %i.dl, ptr %.sroa.015.1.i.i, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i.i14.i, ptr %.sroa.012.1.i.i, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i, !llvm.loop !1061

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEESP_SP_SP_SQ_.exit: ; preds = %bb.u
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SQ_SR_(ptr nonnull %.sroa.015.1.i.i, ptr %storemerge930, i64 noundef %i.ct)
  %i.dm = ptrtoint ptr %.sroa.015.1.i.i to i64
  %i.dn = sub i64 %i.dm, %i.a                     ; 2 uses
  %i.do = ashr exact i64 %i.dn, 3                 ; 2 uses
  %i.dp = icmp sgt i64 %i.do, 16
  br i1 %i.dp, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SQ_.exit, !llvm.loop !1054

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SQ_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEESP_SP_SP_SQ_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb1EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK5folly4json12_GLOBAL__N_111PrinterImplILb1EE7printKVERKNS_7dynamicERKSt4pairIS5_S4_EPKNS1_7ContextE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8 ; 5 uses
  %5 = alloca %"class.folly::Range", align 8      ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"struct.folly::dynamic", align 8   ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.folly::json::(anonymous namespace)::Context", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.folly::json::(anonymous namespace)::Context", align 8 ; 6 uses
  %19 = alloca %"class.folly::json::(anonymous namespace)::Context", align 8 ; 6 uses
  %20 = alloca %"class.folly::json::(anonymous namespace)::Context", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65, !nonnull !52, !align !66 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !391, !range !51, !noundef !52
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = load i32, ptr %2, align 8                ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 4
  %or.cond = select i1 %i.f, i1 %.not.i.i.i, i1 false
  br i1 %or.cond, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @_ZNK5folly7dynamic6asImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.h = load ptr, ptr %6, align 8, !tbaa !61     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.h, ptr %5, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = load i32, ptr %1, align 8, !tbaa !64
  %.not.i.i.i57 = icmp eq i32 %i.m, 1
  br i1 %.not.i.i.i57, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !102  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !102  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %5, ptr %4, align 8
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %.thread, label %.lr.ph.i.i.i

.thread:                                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.l

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.noexc
  %.05.i.i.i = phi i64 [ %spec.select.i.i9.i, %.noexc ], [ 0, %bb.c ]
  %.sroa.02.04.i.i.i = phi ptr [ %i.u, %.noexc ], [ %i.o, %bb.c ] ; 2 uses
  %i.s = invoke noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN5folly5RangeIPKcEEEclINS_17__normal_iteratorIPKNS2_7dynamicESt6vectorISB_SaISB_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr %.sroa.02.04.i.i.i)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i.i.i
  %i.t = zext i1 %i.s to i64
  %spec.select.i.i9.i = add nuw nsw i64 %.05.i.i.i, %i.t ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i.i, i64 40 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.q
  br i1 %i.v, label %bb.f, label %.lr.ph.i.i.i, !llvm.loop !21

bb.d:                                             ; preds = %bb.b
  %i.w = invoke { ptr, i64 } @_ZNK5folly7dynamic4findENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %i.h, ptr %i.k)
          to label %.noexc58 unwind label %.loopexit.split-lp

.noexc58:                                         ; preds = %bb.d
  %i.x = load i32, ptr %1, align 8, !tbaa !64     ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i32 %i.x, 5
  br i1 %.not.i.not.i.i.i.i, label %_ZNK5folly7dynamic5itemsEv.exit.i, label %bb.e

bb.e:                                             ; preds = %.noexc58
  %i.y = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE, align 8, !tbaa !88
  invoke void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.y, i32 noundef %i.x) #7
          to label %.noexc59 unwind label %.loopexit.split-lp

.noexc59:                                         ; preds = %bb.e
  unreachable

_ZNK5folly7dynamic5itemsEv.exit.i:                ; preds = %.noexc58
  %i.z = extractvalue { ptr, i64 } %i.w, 0
  %.not = icmp eq ptr %i.z, null
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %.not, label %bb.l, label %bb.g

bb.f:                                             ; preds = %.noexc
  %i.aa = icmp eq i64 %spec.select.i.i9.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %i.aa, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNK5folly7dynamic5itemsEv.exit.i, %bb.f
  %i.ab = call ptr @__cxa_allocate_exception(i64 16) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.ac = invoke noundef i64 @_ZNK5folly7dynamic6asImplIlEET_v(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZNK5folly7dynamic5asIntEv.exit unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNK5folly7dynamic5asIntEv.exit:                  ; preds = %bb.g
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !39
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA87_clETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(87) @.str.54, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.h:                                             ; preds = %_ZNK5folly7dynamic5asIntEv.exit
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4json11print_errorE, i64 16), ptr %i.ab, align 8, !tbaa !69
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN5folly4json11print_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ao unwind label %bb.j

.loopexit:                                        ; preds = %.lr.ph.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.d, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNK5folly7dynamic5asIntEv.exit, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.i
  %.021 = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.af = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br i1 %.021, label %bb.k, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br i1 %.021, label %bb.k, label %bb.q

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn53103 = phi { ptr, i32 } [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ab) #34
  br label %bb.q

bb.l:                                             ; preds = %.thread, %_ZNK5folly7dynamic5itemsEv.exit.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  invoke void @_ZNK5folly7dynamic6asImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit unwind label %bb.o

_ZNK5folly7dynamic8asStringB5cxx11Ev.exit:        ; preds = %bb.l
  store i32 6, ptr %8, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !43
  %i.am = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

bb.m:                                             ; preds = %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !45 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !61
  %i.at = load i64, ptr %i.an, align 8, !tbaa !37
end_hunk_0
begin_hunk_1_@_ZNK5folly4json12_GLOBAL__N_111PrinterImplILb0EE29appendShortestTrailingDotZeroIfEEvT_:bb.a
bb.l:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK5folly4json12_GLOBAL__N_111PrinterImplILb0EE12printKVPairsINS_7dynamic19const_item_iteratorEEEvRKS5_T_S9_PKNS1_7ContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nofree readonly captures(address) %2, i64 %3, ptr nofree readnone captures(address) %4, ptr noundef %5) unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !96
  tail call fastcc void @_ZNK5folly4json12_GLOBAL__N_111PrinterImplILb0EE7printKVERKNS_7dynamicERKSt4pairIS5_S4_EPKNS1_7ContextE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef %5)
  %i.b = getelementptr inbounds i8, ptr %2, i64 -16
  %.neg.i.i.i.i.i = mul i64 %3, -8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %.neg.i.i.i.i.i ; 2 uses
  %.not19.i5.i.i.i = icmp eq i64 %3, 0
  br i1 %.not19.i5.i.i.i, label %.critedge.i.i.i.i.preheader, label %thread-pre-split.i.i.i

.critedge.i.i.i.i.preheader:                      ; preds = %bb.b, %bb.a
  br label %.critedge.i.i.i.i

bb.b:                                             ; preds = %thread-pre-split.i.i.i
  %.not19.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not19.i.i.i.i, label %.critedge.i.i.i.i.preheader, label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.f, %bb.b ], [ %3, %bb.a ]
  %i.e = phi ptr [ %i.g, %bb.b ], [ %2, %bb.a ]
  %i.f = add i64 %i.d, -1                         ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37
  %.not.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit, !prof !122, !llvm.loop !19

.critedge.i.i.i.i:                                ; preds = %.critedge.i.i.i.i.preheader, %bb.c
  %.017.i.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.c, %.critedge.i.i.i.i.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 14
  %i.k = load i8, ptr %i.j, align 1, !tbaa !37
  %i.l = and i8 %i.k, 15
  %.not2.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not2.i.i.i, label %bb.c, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit, !prof !82

bb.c:                                             ; preds = %.critedge.i.i.i.i
  %i.m = getelementptr inbounds i8, ptr %.017.i.i.i.i, i64 -128 ; 4 uses
  %i.n = load <16 x i8>, ptr %i.m, align 16, !tbaa !37
  %i.o = icmp eq <16 x i8> %i.n, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = and i16 %i.p, 16383                      ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.017.i.i.i.i, i64 -256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.r, i32 0, i32 3, i32 1)
  %.not3.i.i.i = icmp eq i16 %i.q, 16383
  br i1 %.not3.i.i.i, label %.critedge.i.i.i.i, label %bb.d, !prof !122, !llvm.loop !20

bb.d:                                             ; preds = %bb.c
  %i.s = xor i16 %i.q, 16383
  %i.t = zext nneg i16 %i.s to i32
  %i.u = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.t, i1 true)
  %i.v = xor i32 %i.u, 31
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = icmp ne ptr %i.m, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.x)
  %i.y = shl nuw nsw i64 %i.w, 3
  %i.z = getelementptr i8, ptr %i.m, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit: ; preds = %thread-pre-split.i.i.i, %.critedge.i.i.i.i, %bb.d
  %.sroa.018.1 = phi ptr [ null, %.critedge.i.i.i.i ], [ %i.aa, %bb.d ], [ %i.g, %thread-pre-split.i.i.i ] ; 2 uses
  %.sroa.10.3 = phi i64 [ 0, %.critedge.i.i.i.i ], [ %i.w, %bb.d ], [ %i.f, %thread-pre-split.i.i.i ]
  %.not37 = icmp eq ptr %.sroa.018.1, %4
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit17
  %.sroa.10.039 = phi i64 [ %.sroa.10.6, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit17 ], [ %.sroa.10.3, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit ] ; 3 uses
  %.sroa.018.038 = phi ptr [ %.sroa.018.2, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit17 ], [ %.sroa.018.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit ] ; 3 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !52, !align !71 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !45 ; 4 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !61 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.lr.ph
  %i.ai = icmp ult i64 %i.ad, 16
  tail call void @llvm.assume(i1 %i.ai)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph
  %i.aj = load i64, ptr %i.ag, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ak = phi i64 [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.al = icmp ugt i64 %i.ae, %i.ak
  br i1 %i.al, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 noundef %i.ad, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.e
  %i.am = phi ptr [ %.pre.i, %bb.e ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ad
  store i8 44, ptr %i.an, align 1, !tbaa !37
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !45
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ae
  store i8 0, ptr %i.ap, align 1, !tbaa !37
  %i.aq = load ptr, ptr %.sroa.018.038, align 8, !tbaa !96
  tail call fastcc void @_ZNK5folly4json12_GLOBAL__N_111PrinterImplILb0EE7printKVERKNS_7dynamicERKSt4pairIS5_S4_EPKNS1_7ContextE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noundef %5)
  %i.ar = getelementptr inbounds i8, ptr %.sroa.018.038, i64 -16
  %.neg.i.i.i.i.i5 = mul i64 %.sroa.10.039, -8
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %.neg.i.i.i.i.i5 ; 2 uses
  %.not19.i5.i.i.i6 = icmp eq i64 %.sroa.10.039, 0
  br i1 %.not19.i5.i.i.i6, label %.critedge.i.i.i.i11.preheader, label %thread-pre-split.i.i.i7

.critedge.i.i.i.i11.preheader:                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  br label %.critedge.i.i.i.i11

bb.f:                                             ; preds = %thread-pre-split.i.i.i7
  %.not19.i.i.i.i9 = icmp eq i64 %i.av, 0
  br i1 %.not19.i.i.i.i9, label %.critedge.i.i.i.i11.preheader, label %thread-pre-split.i.i.i7

thread-pre-split.i.i.i7:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.f
  %i.at = phi i64 [ %i.av, %bb.f ], [ %.sroa.10.039, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ]
  %i.au = phi ptr [ %i.aw, %bb.f ], [ %.sroa.018.038, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ]
  %i.av = add i64 %i.at, -1                       ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !37
  %.not.i.i.i8 = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i8, label %bb.f, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit17, !prof !122, !llvm.loop !19

.critedge.i.i.i.i11:                              ; preds = %.critedge.i.i.i.i11.preheader, %bb.g
  %.017.i.i.i.i12 = phi ptr [ %i.bc, %bb.g ], [ %i.as, %.critedge.i.i.i.i11.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i12, i64 14
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !37
  %i.bb = and i8 %i.ba, 15
  %.not2.i.i.i13 = icmp eq i8 %i.bb, 0
  br i1 %.not2.i.i.i13, label %bb.g, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit17, !prof !82

bb.g:                                             ; preds = %.critedge.i.i.i.i11
  %i.bc = getelementptr inbounds i8, ptr %.017.i.i.i.i12, i64 -128 ; 4 uses
  %i.bd = load <16 x i8>, ptr %i.bc, align 16, !tbaa !37
  %i.be = icmp eq <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.017.i.i.i.i12, i64 -256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bh, i32 0, i32 3, i32 1)
  %.not3.i.i.i16 = icmp eq i16 %i.bg, 16383
  br i1 %.not3.i.i.i16, label %.critedge.i.i.i.i11, label %bb.h, !prof !122, !llvm.loop !20

bb.h:                                             ; preds = %bb.g
  %i.bi = xor i16 %i.bg, 16383
  %i.bj = zext nneg i16 %i.bi to i32
  %i.bk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bj, i1 true)
  %i.bl = xor i32 %i.bk, 31
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = icmp ne ptr %i.bc, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = shl nuw nsw i64 %i.bm, 3
  %i.bp = getelementptr i8, ptr %i.bc, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit17

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit17: ; preds = %thread-pre-split.i.i.i7, %.critedge.i.i.i.i11, %bb.h
  %.sroa.018.2 = phi ptr [ null, %.critedge.i.i.i.i11 ], [ %i.bq, %bb.h ], [ %i.aw, %thread-pre-split.i.i.i7 ] ; 2 uses
  %.sroa.10.6 = phi i64 [ 0, %.critedge.i.i.i.i11 ], [ %i.bm, %bb.h ], [ %i.av, %thread-pre-split.i.i.i7 ]
  %.not = icmp eq ptr %.sroa.018.2, %4
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1104

._crit_edge:                                      ; preds = %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit17, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SQ_SR_(ptr %0, ptr %1, i64 noundef %2, ptr %3) unnamed_addr #3 {
bb.a:
  %.fr25 = freeze ptr %1                          ; 3 uses
  %.fr24 = freeze ptr %0                          ; 35 uses
  %i.a = ptrtoint ptr %.fr24 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr25 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SQ_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr24, i64 8 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 10 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph40

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEESP_SP_SP_SQ_.exit
  %i.i = icmp eq i64 %i.ce, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph40, !llvm.loop !1105

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i23.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.de, %bb.b ] ; 2 uses
  %storemerge21.lcssa = phi ptr [ %.fr25, %.lr.ph ], [ %.sroa.016.1.i.i, %bb.b ]
  %i.j = lshr i64 %.fr.i.i23.lcssa, 3             ; 2 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %.fr.i.i23.lcssa, 8
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %i.q
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ar, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i ] ; 8 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !96 ; 2 uses
  %i.u = icmp slt i64 %.010.i.i.i, %i.n
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.039.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.039.i.i.i.i, 1                 ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %i.y
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !96
  %i.aa = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1106
  %spec.select.i.i.i.i = select i1 %i.ab, i64 %i.y, i64 %i.w ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %spec.select.i.i.i.i
  %i.ad = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %.039.i.i.i.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !96
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !96
  %i.af = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1107

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.l
  %or.cond.i.i.i = select i1 %i.p, i1 %i.ag, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !96
  store i64 %i.ah, ptr %i.s, align 8, !tbaa !96
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %.0911.i.i.i.i.i ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !96
  %i.ak = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.al = tail call noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.03.0.copyload.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1108
  br i1 %i.al, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %.010.i.i.i.i.i
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !96
  store i64 %i.an, ptr %i.am, align 8, !tbaa !96
  %i.ao = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i, !llvm.loop !1109

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %.0.lcssa.i.i.i.i.i
  %i.aq = ptrtoint ptr %.sroa.03.0.copyload.i.i.i to i64
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !96
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.ar = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !1110

.lr.ph.i9.i:                                      ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.as, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i ], [ %storemerge21.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i ]
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load ptr, ptr %i.as, align 8, !tbaa !96 ; 2 uses
  %i.at = load i64, ptr %.fr24, align 8, !tbaa !96
  store i64 %i.at, ptr %i.as, align 8, !tbaa !96
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.au, %i.a                     ; 3 uses
  %i.aw = ashr exact i64 %i.av, 3                 ; 3 uses
  %i.ax = add nsw i64 %i.aw, -1
  %i.ay = lshr i64 %i.ax, 1
  %i.az = icmp sgt i64 %i.aw, 2
  br i1 %i.az, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.039.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ba = shl i64 %.039.i.i.i20.i, 1              ; 2 uses
  %i.bb = add i64 %i.ba, 2                        ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %i.bb
  %i.bd = or disjoint i64 %i.ba, 1                ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %i.bd
  %.sroa.01.0.copyload.i.i.i.i21.i = load ptr, ptr %i.bc, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.be, align 8, !tbaa !96
  %i.bf = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.bg = tail call noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.i21.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i.i.i22.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1111
  %spec.select.i.i.i23.i = select i1 %i.bg, i64 %i.bd, i64 %i.bb ; 4 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %spec.select.i.i.i23.i
  %i.bi = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %.039.i.i.i20.i
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !96
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !96
  %i.bk = icmp slt i64 %spec.select.i.i.i23.i, %i.ay
  br i1 %i.bk, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i, !llvm.loop !1107

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.bl = and i64 %i.av, 8
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.bn = add nsw i64 %i.aw, -2
  %i.bo = ashr exact i64 %i.bn, 1
  %i.bp = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.bo
  br i1 %i.bp, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bq = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.br = or disjoint i64 %i.bq, 1                ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %.0.lcssa.i.i.i12.i
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !96
  store i64 %i.bu, ptr %i.bt, align 8, !tbaa !96
  br label %.lr.ph.i.i.i.i14.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i, label %.lr.ph.i.i.i.i14.i.preheader

.lr.ph.i.i.i.i14.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.010.i.i.i.i15.i.ph = phi i64 [ %.0.lcssa.i.i.i12.i, %bb.h ], [ %i.br, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %.lr.ph.i.i.i.i14.i.preheader, %bb.i
  %.010.i.i.i.i15.i = phi i64 [ %.0911.i.i78.i.i.i, %bb.i ], [ %.010.i.i.i.i15.i.ph, %.lr.ph.i.i.i.i14.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %.0911.i.i78.i.i.i ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i17.i = load ptr, ptr %i.bv, align 8, !tbaa !96
  %i.bw = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.bx = tail call noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.i.i17.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.03.0.copyload.i.i10.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1112
  br i1 %i.bx, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i14.i
  %i.by = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %.010.i.i.i.i15.i
  %i.bz = load i64, ptr %i.bv, align 8, !tbaa !96
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !96
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i, label %.lr.ph.i.i.i.i14.i, !llvm.loop !1109

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i14.i, %bb.h
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i15.i, %.lr.ph.i.i.i.i14.i ], [ 0, %bb.i ]
  %i.ca = getelementptr inbounds [8 x i8], ptr %.fr24, i64 %.0.lcssa.i.i.i.i18.i
  %i.cb = ptrtoint ptr %.sroa.03.0.copyload.i.i10.i to i64
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !96
  %i.cc = icmp sgt i64 %i.av, 8
  br i1 %i.cc, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SQ_.exit, !llvm.loop !1113

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2139 = phi ptr [ %.sroa.016.1.i.i, %bb.b ], [ %.fr25, %.lr.ph ] ; 3 uses
  %.02238 = phi i64 [ %i.ce, %bb.b ], [ %2, %.lr.ph ]
  %i.cd = phi i64 [ %i.df, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ce = add nsw i64 %.02238, -1                 ; 3 uses
  %i.cf = lshr i64 %i.cd, 1
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.fr24, i64 %i.cf ; 7 uses
  %i.ch = getelementptr inbounds i8, ptr %storemerge2139, i64 -8 ; 7 uses
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.cg, align 8, !tbaa !96
  %i.ci = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.cj = tail call noundef zeroext i1 %i.ci(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1114
  %.sroa.0.0.copyload.i31.i.i = load ptr, ptr %i.ch, align 8, !tbaa !96 ; 2 uses
  %i.ck = load ptr, ptr %i.g, align 16, !tbaa !97 ; 2 uses
  br i1 %i.cj, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph40
  %.sroa.01.0.copyload.i30.i.i = load ptr, ptr %i.cg, align 8, !tbaa !96
  %i.cl = tail call noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i30.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i31.i.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1114
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.fr24, align 8, !tbaa !96
  %i.cm = load i64, ptr %i.cg, align 8, !tbaa !96
  store i64 %i.cm, ptr %.fr24, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.cg, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %.sroa.01.0.copyload.i32.i.i = load ptr, ptr %i.f, align 8, !tbaa !96
  %.sroa.0.0.copyload.i33.i.i = load ptr, ptr %i.ch, align 8, !tbaa !96
  %i.cn = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.co = tail call noundef zeroext i1 %i.cn(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i32.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i33.i.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1114
  %.sroa.0.0.copyload.i.i34.i.i = load ptr, ptr %.fr24, align 8, !tbaa !96 ; 2 uses
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cp = load i64, ptr %i.ch, align 8, !tbaa !96
  store i64 %i.cp, ptr %.fr24, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i34.i.i, ptr %i.ch, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.cq = load i64, ptr %i.f, align 8, !tbaa !96
  store i64 %i.cq, ptr %.fr24, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i34.i.i, ptr %i.f, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph40
  %.sroa.01.0.copyload.i36.i.i = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.cr = tail call noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i36.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i31.i.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1114
  br i1 %i.cr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i.i38.i.i = load ptr, ptr %.fr24, align 8, !tbaa !96
  %i.cs = load i64, ptr %i.f, align 8, !tbaa !96
  store i64 %i.cs, ptr %.fr24, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i38.i.i, ptr %i.f, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %.sroa.01.0.copyload.i39.i.i = load ptr, ptr %i.cg, align 8, !tbaa !96
  %.sroa.0.0.copyload.i40.i.i = load ptr, ptr %i.ch, align 8, !tbaa !96
  %i.ct = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.cu = tail call noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i39.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i40.i.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1114
  %.sroa.0.0.copyload.i.i41.i.i = load ptr, ptr %.fr24, align 8, !tbaa !96 ; 2 uses
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cv = load i64, ptr %i.ch, align 8, !tbaa !96
  store i64 %i.cv, ptr %.fr24, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i41.i.i, ptr %i.ch, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.cw = load i64, ptr %i.cg, align 8, !tbaa !96
  store i64 %i.cw, ptr %.fr24, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i41.i.i, ptr %i.cg, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader, %bb.v
  %.sroa.013.0.i.i = phi ptr [ %.sroa.013.1.i.i, %bb.v ], [ %storemerge2139, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader ]
  %.sroa.016.0.i.i = phi ptr [ %i.cz, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i
  %.sroa.016.1.i.i = phi ptr [ %.sroa.016.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i ], [ %i.cz, %bb.t ] ; 9 uses
  %.sroa.01.0.copyload.i.i12.i = load ptr, ptr %.sroa.016.1.i.i, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i13.i = load ptr, ptr %.fr24, align 8, !tbaa !96
  %i.cx = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.cy = tail call noundef zeroext i1 %i.cx(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i12.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i13.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1115
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 8 ; 2 uses
  br i1 %i.cy, label %bb.t, label %.preheader.i.i, !llvm.loop !1116

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.013.0.pn.i.i = phi ptr [ %.sroa.013.1.i.i, %.preheader.i.i ], [ %.sroa.013.0.i.i, %bb.t ]
  %.sroa.013.1.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -8 ; 6 uses
  %.sroa.01.0.copyload.i11.i.i = load ptr, ptr %.fr24, align 8, !tbaa !96
  %.sroa.0.0.copyload.i12.i.i = load ptr, ptr %.sroa.013.1.i.i, align 8, !tbaa !96
  %i.da = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.db = tail call noundef zeroext i1 %i.da(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i11.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i12.i.i, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1115
  br i1 %i.db, label %.preheader.i.i, label %bb.u, !llvm.loop !1117

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.016.1.i.i, %.sroa.013.1.i.i
  br i1 %.not.i.i, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEESP_SP_SP_SQ_.exit

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.copyload.i.i.i14.i = load ptr, ptr %.sroa.016.1.i.i, align 8, !tbaa !96
  %i.dc = load i64, ptr %.sroa.013.1.i.i, align 8, !tbaa !96
  store i64 %i.dc, ptr %.sroa.016.1.i.i, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i.i14.i, ptr %.sroa.013.1.i.i, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i, !llvm.loop !1118

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEESP_SP_SP_SQ_.exit: ; preds = %bb.u
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SQ_SR_(ptr nonnull %.sroa.016.1.i.i, ptr %storemerge2139, i64 noundef %i.ce, ptr nonnull %3)
  %i.dd = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.de = sub i64 %i.dd, %i.a                     ; 2 uses
  %i.df = ashr exact i64 %i.de, 3                 ; 2 uses
  %i.dg = icmp sgt i64 %i.df, 16
  br i1 %i.dg, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SQ_.exit, !llvm.loop !1105

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SQ_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEESP_SP_SP_SQ_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_NS4_8FunctionIKFbSL_SL_EEEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SQ_SR_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %.fr13 = freeze ptr %1                          ; 3 uses
  %.fr12 = freeze ptr %0                          ; 43 uses
  %i.a = ptrtoint ptr %.fr12 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr13 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SQ_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr12, i64 8 ; 8 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph31

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEESP_SP_SP_SQ_.exit
  %i.h = icmp eq i64 %i.ct, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph31, !llvm.loop !1119

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i11.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.dn, %bb.b ] ; 2 uses
  %storemerge9.lcssa = phi ptr [ %.fr13, %.lr.ph ], [ %.sroa.015.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i11.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i11.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.us.i.i.i
  %.010.us.i.i.i = phi i64 [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.us.i.i.i ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %.010.us.i.i.i
  %.sroa.03.0.copyload.us.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !96 ; 2 uses
  %i.t = icmp slt i64 %.010.us.i.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.037.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.010.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.u = shl i64 %.037.i.us.i.i.i, 1              ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %i.x
  %.sroa.01.0.copyload.i.i.us.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i.us.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !96
  %i.z = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i.us.i.i.i)
  %spec.select.i.us.i.i.i = select i1 %i.z, i64 %i.x, i64 %i.v ; 4 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %spec.select.i.us.i.i.i
  %i.ab = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %.037.i.us.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !96
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !96
  %i.ad = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ad, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i, !llvm.loop !1120

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.us.i.i.i, %bb.c
  %.010.i.i.us.i.i.i = phi i64 [ %.0911.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %.0911.i.i.us.i.i.i ; 2 uses
  %.sroa.01.0.copyload.i.i.i.us.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !96
  %i.af = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.03.0.copyload.us.i.i.i)
  br i1 %i.af, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.us.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %.010.i.i.us.i.i.i
  %i.ah = load i64, ptr %i.ae, align 8, !tbaa !96
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !96
  %i.ai = icmp sgt i64 %.0911.i.i.us.i.i.i, %.010.us.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.us.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.us.i.i.i, !llvm.loop !1121

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.us.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.010.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.c ], [ %.010.i.i.us.i.i.i, %.lr.ph.i.i.us.i.i.i ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %.0.lcssa.i.i.us.i.i.i
  %i.ak = ptrtoint ptr %.sroa.03.0.copyload.us.i.i.i to i64
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !96
  %.not.us.i.i.i = icmp eq i64 %.010.us.i.i.i, 0
  %i.al = add nsw i64 %.010.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_RSQ_.exit.i.i, label %.split.us.i.i.i, !llvm.loop !1122

.split.i.i.i:                                     ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i, %.split.preheader.i.i.i
  %.010.i.i.i = phi i64 [ %i.bi, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !96 ; 2 uses
  %i.an = icmp slt i64 %.010.i.i.i, %i.m
  br i1 %i.an, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.ao = shl i64 %.037.i.i.i.i, 1                ; 2 uses
  %i.ap = add i64 %i.ao, 2                        ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %i.ap
  %i.ar = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %i.ar
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !96
  %i.at = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i.i.i.i)
  %spec.select.i.i.i.i = select i1 %i.at, i64 %i.ar, i64 %i.ap ; 4 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %spec.select.i.i.i.i
  %i.av = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %.037.i.i.i.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !96
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !96
  %i.ax = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1120

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ay = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.az = load i64, ptr %i.q, align 8, !tbaa !96
  store i64 %i.az, ptr %i.r, align 8, !tbaa !96
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ba = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %.0911.i.i.i.i.i ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !96
  %i.bc = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.03.0.copyload.i.i.i)
  br i1 %i.bc, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %.010.i.i.i.i.i
  %i.be = load i64, ptr %i.bb, align 8, !tbaa !96
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !96
  %i.bf = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i, !llvm.loop !1121

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %.0.lcssa.i.i.i.i.i
  %i.bh = ptrtoint ptr %.sroa.03.0.copyload.i.i.i to i64
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !96
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bi = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_RSQ_.exit.i.i, label %.split.i.i.i, !llvm.loop !1122

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_RSQ_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.us.i.i.i, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SQ_SQ_SR_T2_.exit.i.i.i
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_RSQ_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.bj, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i ], [ %storemerge9.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_RSQ_.exit.i.i ]
  %i.bj = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load ptr, ptr %i.bj, align 8, !tbaa !96 ; 2 uses
  %i.bk = load i64, ptr %.fr12, align 8, !tbaa !96
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !96
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bl, %i.a                     ; 3 uses
  %i.bn = ashr exact i64 %i.bm, 3                 ; 3 uses
  %i.bo = add nsw i64 %i.bn, -1
  %i.bp = lshr i64 %i.bo, 1
  %i.bq = icmp sgt i64 %i.bn, 2
  br i1 %i.bq, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.037.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.br = shl i64 %.037.i.i.i20.i, 1              ; 2 uses
  %i.bs = add i64 %i.br, 2                        ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %i.bs
  %i.bu = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %i.bu
  %.sroa.01.0.copyload.i.i.i.i21.i = load ptr, ptr %i.bt, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.bv, align 8, !tbaa !96
  %i.bw = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.i21.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i.i.i22.i)
  %spec.select.i.i.i23.i = select i1 %i.bw, i64 %i.bu, i64 %i.bs ; 4 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %spec.select.i.i.i23.i
  %i.by = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %.037.i.i.i20.i
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !96
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !96
  %i.ca = icmp slt i64 %spec.select.i.i.i23.i, %i.bp
  br i1 %i.ca, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i, !llvm.loop !1120

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.cb = and i64 %i.bm, 8
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.cd = add nsw i64 %i.bn, -2
  %i.ce = ashr exact i64 %i.cd, 1
  %i.cf = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.ce
  br i1 %i.cf, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.cg = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.ch = or disjoint i64 %i.cg, 1                ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %.0.lcssa.i.i.i12.i
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !96
  store i64 %i.ck, ptr %i.cj, align 8, !tbaa !96
  br label %.lr.ph.i.i.i.i14.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i, label %.lr.ph.i.i.i.i14.i.preheader

.lr.ph.i.i.i.i14.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.010.i.i.i.i15.i.ph = phi i64 [ %.0.lcssa.i.i.i12.i, %bb.h ], [ %i.ch, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %.lr.ph.i.i.i.i14.i.preheader, %bb.i
  %.010.i.i.i.i15.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.010.i.i.i.i15.i.ph, %.lr.ph.i.i.i.i14.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %.0911.i.i56.i.i.i ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i17.i = load ptr, ptr %i.cl, align 8, !tbaa !96
  %i.cm = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i.i.i17.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.03.0.copyload.i.i10.i)
  br i1 %i.cm, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i14.i
  %i.cn = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %.010.i.i.i.i15.i
  %i.co = load i64, ptr %i.cl, align 8, !tbaa !96
  store i64 %i.co, ptr %i.cn, align 8, !tbaa !96
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i, label %.lr.ph.i.i.i.i14.i, !llvm.loop !1121

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i14.i, %bb.h
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i15.i, %.lr.ph.i.i.i.i14.i ], [ 0, %bb.i ]
  %i.cp = getelementptr inbounds [8 x i8], ptr %.fr12, i64 %.0.lcssa.i.i.i.i18.i
  %i.cq = ptrtoint ptr %.sroa.03.0.copyload.i.i10.i to i64
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !96
  %i.cr = icmp sgt i64 %i.bm, 8
  br i1 %i.cr, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SQ_.exit, !llvm.loop !1123

.lr.ph31:                                         ; preds = %.lr.ph, %bb.b
  %storemerge930 = phi ptr [ %.sroa.015.1.i.i, %bb.b ], [ %.fr13, %.lr.ph ] ; 3 uses
  %.01029 = phi i64 [ %i.ct, %bb.b ], [ %2, %.lr.ph ]
  %i.cs = phi i64 [ %i.do, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ct = add nsw i64 %.01029, -1                 ; 3 uses
  %i.cu = lshr i64 %i.cs, 1
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.fr12, i64 %i.cu ; 7 uses
  %i.cw = getelementptr inbounds i8, ptr %storemerge930, i64 -8 ; 7 uses
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.cv, align 8, !tbaa !96
  %i.cx = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i.i)
  %.sroa.0.0.copyload.i27.i.i = load ptr, ptr %i.cw, align 8, !tbaa !96 ; 2 uses
  br i1 %i.cx, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph31
  %.sroa.01.0.copyload.i26.i.i = load ptr, ptr %i.cv, align 8, !tbaa !96
  %i.cy = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i26.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i27.i.i)
  br i1 %i.cy, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.fr12, align 8, !tbaa !96
  %i.cz = load i64, ptr %i.cv, align 8, !tbaa !96
  store i64 %i.cz, ptr %.fr12, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.cv, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %.sroa.01.0.copyload.i28.i.i = load ptr, ptr %i.f, align 8, !tbaa !96
  %.sroa.0.0.copyload.i29.i.i = load ptr, ptr %i.cw, align 8, !tbaa !96
  %i.da = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i28.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i29.i.i)
  %.sroa.0.0.copyload.i.i30.i.i = load ptr, ptr %.fr12, align 8, !tbaa !96 ; 2 uses
  br i1 %i.da, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.db = load i64, ptr %i.cw, align 8, !tbaa !96
  store i64 %i.db, ptr %.fr12, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i30.i.i, ptr %i.cw, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.dc = load i64, ptr %i.f, align 8, !tbaa !96
  store i64 %i.dc, ptr %.fr12, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i30.i.i, ptr %i.f, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph31
  %.sroa.01.0.copyload.i32.i.i = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.dd = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i32.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i27.i.i)
  br i1 %i.dd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i.i34.i.i = load ptr, ptr %.fr12, align 8, !tbaa !96
  %i.de = load i64, ptr %i.f, align 8, !tbaa !96
  store i64 %i.de, ptr %.fr12, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i34.i.i, ptr %i.f, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %.sroa.01.0.copyload.i35.i.i = load ptr, ptr %i.cv, align 8, !tbaa !96
  %.sroa.0.0.copyload.i36.i.i = load ptr, ptr %i.cw, align 8, !tbaa !96
  %i.df = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i35.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i36.i.i)
  %.sroa.0.0.copyload.i.i37.i.i = load ptr, ptr %.fr12, align 8, !tbaa !96 ; 2 uses
  br i1 %i.df, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dg = load i64, ptr %i.cw, align 8, !tbaa !96
  store i64 %i.dg, ptr %.fr12, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i37.i.i, ptr %i.cw, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.dh = load i64, ptr %i.cv, align 8, !tbaa !96
  store i64 %i.dh, ptr %.fr12, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i37.i.i, ptr %i.cv, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader, %bb.v
  %.sroa.012.0.i.i = phi ptr [ %.sroa.012.1.i.i, %bb.v ], [ %storemerge930, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader ]
  %.sroa.015.0.i.i = phi ptr [ %i.dj, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i.preheader ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i
  %.sroa.015.1.i.i = phi ptr [ %.sroa.015.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i ], [ %i.dj, %bb.t ] ; 9 uses
  %.sroa.01.0.copyload.i.i12.i = load ptr, ptr %.sroa.015.1.i.i, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i13.i = load ptr, ptr %.fr12, align 8, !tbaa !96
  %i.di = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i.i12.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i.i13.i)
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 8 ; 2 uses
  br i1 %i.di, label %bb.t, label %.preheader.i.i, !llvm.loop !1124

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.012.0.pn.i.i = phi ptr [ %.sroa.012.1.i.i, %.preheader.i.i ], [ %.sroa.012.0.i.i, %bb.t ]
  %.sroa.012.1.i.i = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -8 ; 6 uses
  %.sroa.01.0.copyload.i10.i.i = load ptr, ptr %.fr12, align 8, !tbaa !96
  %.sroa.0.0.copyload.i11.i.i = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !96
  %i.dk = tail call noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.copyload.i10.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i11.i.i)
  br i1 %i.dk, label %.preheader.i.i, label %bb.u, !llvm.loop !1125

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.015.1.i.i, %.sroa.012.1.i.i
  br i1 %.not.i.i, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEESP_SP_SP_SQ_.exit

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.copyload.i.i.i14.i = load ptr, ptr %.sroa.015.1.i.i, align 8, !tbaa !96
  %i.dl = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !96
  store i64 %i.dl, ptr %.sroa.015.1.i.i, align 8, !tbaa !96
  store ptr %.sroa.0.0.copyload.i.i.i14.i, ptr %.sroa.012.1.i.i, align 8, !tbaa !96
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SP_SQ_.exit.i, !llvm.loop !1126

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEESP_SP_SP_SQ_.exit: ; preds = %bb.u
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SQ_SR_(ptr nonnull %.sroa.015.1.i.i, ptr %storemerge930, i64 noundef %i.ct)
  %i.dm = ptrtoint ptr %.sroa.015.1.i.i to i64
  %i.dn = sub i64 %i.dm, %i.a                     ; 2 uses
  %i.do = ashr exact i64 %i.dn, 3                 ; 2 uses
  %i.dp = icmp sgt i64 %i.do, 16
  br i1 %i.dp, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SQ_.exit, !llvm.loop !1119

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_SQ_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEESP_SP_SP_SQ_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKSt4pairIKN5folly7dynamicES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_4json12_GLOBAL__N_111PrinterImplILb0EE11printObjectERS6_PKNSI_7ContextEENKUlT_T0_RKT1_E_clISE_SE_St4lessIvEEEDaSP_SQ_ST_EUlS9_S9_E_EEEvSP_SP_SP_RSQ_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK5folly4json12_GLOBAL__N_111PrinterImplILb0EE7printKVERKNS_7dynamicERKSt4pairIS5_S4_EPKNS1_7ContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8 ; 5 uses
  %5 = alloca %"class.folly::Range", align 8      ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"struct.folly::dynamic", align 8   ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.folly::json::(anonymous namespace)::Context", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.folly::json::(anonymous namespace)::Context", align 8 ; 6 uses
  %19 = alloca %"class.folly::json::(anonymous namespace)::Context", align 8 ; 6 uses
  %20 = alloca %"class.folly::json::(anonymous namespace)::Context", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !107, !nonnull !52, !align !66 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !391, !range !51, !noundef !52
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = load i32, ptr %2, align 8                ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 4
  %or.cond = select i1 %i.f, i1 %.not.i.i.i, i1 false
  br i1 %or.cond, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @_ZNK5folly7dynamic6asImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.h = load ptr, ptr %6, align 8, !tbaa !61     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.h, ptr %5, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = load i32, ptr %1, align 8, !tbaa !64
  %.not.i.i.i57 = icmp eq i32 %i.m, 1
  br i1 %.not.i.i.i57, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !102  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !102  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %5, ptr %4, align 8
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %.thread, label %.lr.ph.i.i.i

.thread:                                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.l

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.noexc
  %.05.i.i.i = phi i64 [ %spec.select.i.i9.i, %.noexc ], [ 0, %bb.c ]
  %.sroa.02.04.i.i.i = phi ptr [ %i.u, %.noexc ], [ %i.o, %bb.c ] ; 2 uses
  %i.s = invoke noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN5folly5RangeIPKcEEEclINS_17__normal_iteratorIPKNS2_7dynamicESt6vectorISB_SaISB_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr %.sroa.02.04.i.i.i)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i.i.i
  %i.t = zext i1 %i.s to i64
  %spec.select.i.i9.i = add nuw nsw i64 %.05.i.i.i, %i.t ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i.i, i64 40 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.q
  br i1 %i.v, label %bb.f, label %.lr.ph.i.i.i, !llvm.loop !21

bb.d:                                             ; preds = %bb.b
  %i.w = invoke { ptr, i64 } @_ZNK5folly7dynamic4findENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %i.h, ptr %i.k)
          to label %.noexc58 unwind label %.loopexit.split-lp

.noexc58:                                         ; preds = %bb.d
  %i.x = load i32, ptr %1, align 8, !tbaa !64     ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i32 %i.x, 5
  br i1 %.not.i.not.i.i.i.i, label %_ZNK5folly7dynamic5itemsEv.exit.i, label %bb.e

bb.e:                                             ; preds = %.noexc58
  %i.y = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE, align 8, !tbaa !88
  invoke void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.y, i32 noundef %i.x) #7
          to label %.noexc59 unwind label %.loopexit.split-lp

.noexc59:                                         ; preds = %bb.e
  unreachable

_ZNK5folly7dynamic5itemsEv.exit.i:                ; preds = %.noexc58
  %i.z = extractvalue { ptr, i64 } %i.w, 0
  %.not = icmp eq ptr %i.z, null
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %.not, label %bb.l, label %bb.g

bb.f:                                             ; preds = %.noexc
  %i.aa = icmp eq i64 %spec.select.i.i9.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %i.aa, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNK5folly7dynamic5itemsEv.exit.i, %bb.f
  %i.ab = call ptr @__cxa_allocate_exception(i64 16) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.ac = invoke noundef i64 @_ZNK5folly7dynamic6asImplIlEET_v(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZNK5folly7dynamic5asIntEv.exit unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNK5folly7dynamic5asIntEv.exit:                  ; preds = %bb.g
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !39
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA87_clETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(87) @.str.54, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.h:                                             ; preds = %_ZNK5folly7dynamic5asIntEv.exit
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4json11print_errorE, i64 16), ptr %i.ab, align 8, !tbaa !69
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN5folly4json11print_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ao unwind label %bb.j

.loopexit:                                        ; preds = %.lr.ph.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.d, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNK5folly7dynamic5asIntEv.exit, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.i
  %.021 = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.af = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br i1 %.021, label %bb.k, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br i1 %.021, label %bb.k, label %bb.q

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn53103 = phi { ptr, i32 } [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ab) #34
  br label %bb.q

bb.l:                                             ; preds = %.thread, %_ZNK5folly7dynamic5itemsEv.exit.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  invoke void @_ZNK5folly7dynamic6asImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit unwind label %bb.o

_ZNK5folly7dynamic8asStringB5cxx11Ev.exit:        ; preds = %bb.l
  store i32 6, ptr %8, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !43
  %i.am = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

bb.m:                                             ; preds = %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !45 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !61
  %i.at = load i64, ptr %i.an, align 8, !tbaa !37
  store i64 %i.at, ptr %i.al, align 8, !tbaa !37
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
end_hunk_1
