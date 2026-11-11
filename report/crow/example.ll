Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example?download=true
inline.NumInlined: 14924
inline.NumDeleted: 5588
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN4crow8response10set_headerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_:bb.a
    i8 10, label %.lr.ph.i.i.i.1
  ]

bb.d:                                             ; preds = %.lr.ph.i.i.i
  store i8 %i.q, ptr %.sroa.012.017.i.i.i, align 1, !tbaa !114
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i.i.i, i64 1
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.d, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.1.i.i.i = phi ptr [ %.sroa.012.017.i.i.i, %.lr.ph.i.i.i ], [ %i.r, %bb.d ], [ %.sroa.012.017.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %.sroa.06.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i.i.i, i64 1
  %i.s = load i8, ptr %.sroa.06.0.i.i.i, align 1, !tbaa !114 ; 2 uses
  switch i8 %i.s, label %bb.e [
    i8 13, label %.lr.ph.i.i.i.2
    i8 10, label %.lr.ph.i.i.i.2
  ]

bb.e:                                             ; preds = %.lr.ph.i.i.i.1
  store i8 %i.s, ptr %.sroa.012.1.i.i.i, align 1, !tbaa !114
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i.i, i64 1
  br label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.e, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.1
  %.sroa.012.1.i.i.i.1 = phi ptr [ %.sroa.012.1.i.i.i, %.lr.ph.i.i.i.1 ], [ %i.t, %bb.e ], [ %.sroa.012.1.i.i.i, %.lr.ph.i.i.i.1 ] ; 4 uses
  %.sroa.06.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i.i.i, i64 2
  %i.u = load i8, ptr %.sroa.06.0.i.i.i.1, align 1, !tbaa !114 ; 2 uses
  switch i8 %i.u, label %bb.f [
    i8 13, label %.lr.ph.i.i.i.3
    i8 10, label %.lr.ph.i.i.i.3
  ]

bb.f:                                             ; preds = %.lr.ph.i.i.i.2
  store i8 %i.u, ptr %.sroa.012.1.i.i.i.1, align 1, !tbaa !114
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i.i.1, i64 1
  br label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.f, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.2
  %.sroa.012.1.i.i.i.2 = phi ptr [ %.sroa.012.1.i.i.i.1, %.lr.ph.i.i.i.2 ], [ %i.v, %bb.f ], [ %.sroa.012.1.i.i.i.1, %.lr.ph.i.i.i.2 ] ; 4 uses
  %.sroa.06.0.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i.i.i, i64 3
  %i.w = load i8, ptr %.sroa.06.0.i.i.i.2, align 1, !tbaa !114 ; 2 uses
  switch i8 %i.w, label %bb.g [
    i8 13, label %bb.h
    i8 10, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph.i.i.i.3
  store i8 %i.w, ptr %.sroa.012.1.i.i.i.2, align 1, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i.i.2, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.3
  %.sroa.012.1.i.i.i.3 = phi ptr [ %.sroa.012.1.i.i.i.2, %.lr.ph.i.i.i.3 ], [ %i.x, %bb.g ], [ %.sroa.012.1.i.i.i.2, %.lr.ph.i.i.i.3 ] ; 2 uses
  %.sroa.06.0.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %.sroa.06.0.i.i.i.3, %i.d
  br i1 %.not.i.i.i.3, label %_ZN4crow21sanitize_header_valueERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.i, !llvm.loop !19

_ZN4crow21sanitize_header_valueERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %bb.h, %bb.a
  %.sroa.012.2.i.i.i = phi ptr [ %i.e, %bb.a ], [ %.sroa.012.1.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.sroa.012.1.i.i.i.3, %bb.h ]
  %i.y = load ptr, ptr %1, align 8, !tbaa !113    ; 2 uses
  %i.z = ptrtoint ptr %.sroa.012.2.i.i.i to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !115
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  store i8 0, ptr %i.ac, align 1, !tbaa !114
  %i.ad = load ptr, ptr %2, align 8, !tbaa !113   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !115 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af ; 4 uses
  %i.ah = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN4crow21sanitize_header_valueERS8_EUlcE_EEET_SG_SG_T0_St26random_access_iterator_tag(ptr %i.ad, ptr %i.ag) ; 6 uses
  %i.ai = icmp eq ptr %i.ah, %i.ag
  %.sroa.06.015.i.i.i1 = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 3 uses
  %.not16.i.i.i2 = icmp eq ptr %.sroa.06.015.i.i.i1, %i.ag
  %or.cond.i.i.i3 = select i1 %i.ai, i1 true, i1 %.not16.i.i.i2
  br i1 %or.cond.i.i.i3, label %_ZN4crow21sanitize_header_valueERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit11, label %.lr.ph.i.i.i4.preheader

.lr.ph.i.i.i4.preheader:                          ; preds = %_ZN4crow21sanitize_header_valueERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aj = ptrtoaddr ptr %i.ah to i64              ; 2 uses
  %i.ak = ptrtoaddr ptr %i.ad to i64
  %i.al = add i64 %i.af, %i.ak                    ; 2 uses
  %i.am = xor i64 %i.aj, -1
  %i.an = add i64 %i.al, %i.am
  %i.ao = add i64 %i.al, -2
  %i.ap = sub i64 %i.ao, %i.aj
  %xtraiter15 = and i64 %i.an, 3                  ; 2 uses
  %lcmp.mod16.not = icmp eq i64 %xtraiter15, 0
  br i1 %lcmp.mod16.not, label %.lr.ph.i.i.i4.prol.loopexit, label %.lr.ph.i.i.i4.prol

.lr.ph.i.i.i4.prol:                               ; preds = %.lr.ph.i.i.i4.preheader, %bb.j
  %.sroa.06.018.i.i.i5.prol = phi ptr [ %.sroa.06.0.i.i.i8.prol, %bb.j ], [ %.sroa.06.015.i.i.i1, %.lr.ph.i.i.i4.preheader ] ; 2 uses
  %.sroa.012.017.i.i.i6.prol = phi ptr [ %.sroa.012.1.i.i.i7.prol, %bb.j ], [ %i.ah, %.lr.ph.i.i.i4.preheader ] ; 4 uses
  %prol.iter17 = phi i64 [ %prol.iter17.next, %bb.j ], [ 0, %.lr.ph.i.i.i4.preheader ]
  %i.aq = load i8, ptr %.sroa.06.018.i.i.i5.prol, align 1, !tbaa !114 ; 2 uses
  switch i8 %i.aq, label %bb.i [
    i8 13, label %bb.j
    i8 10, label %bb.j
  ]

bb.i:                                             ; preds = %.lr.ph.i.i.i4.prol
  store i8 %i.aq, ptr %.sroa.012.017.i.i.i6.prol, align 1, !tbaa !114
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i.i.i6.prol, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i4.prol, %.lr.ph.i.i.i4.prol
  %.sroa.012.1.i.i.i7.prol = phi ptr [ %.sroa.012.017.i.i.i6.prol, %.lr.ph.i.i.i4.prol ], [ %i.ar, %bb.i ], [ %.sroa.012.017.i.i.i6.prol, %.lr.ph.i.i.i4.prol ] ; 3 uses
  %.sroa.06.0.i.i.i8.prol = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i.i.i5.prol, i64 1 ; 2 uses
  %prol.iter17.next = add i64 %prol.iter17, 1     ; 2 uses
  %prol.iter17.cmp.not = icmp eq i64 %prol.iter17.next, %xtraiter15
  br i1 %prol.iter17.cmp.not, label %.lr.ph.i.i.i4.prol.loopexit, label %.lr.ph.i.i.i4.prol, !llvm.loop !1376

.lr.ph.i.i.i4.prol.loopexit:                      ; preds = %bb.j, %.lr.ph.i.i.i4.preheader
  %.sroa.012.1.i.i.i7.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i4.preheader ], [ %.sroa.012.1.i.i.i7.prol, %bb.j ]
  %.sroa.06.018.i.i.i5.unr = phi ptr [ %.sroa.06.015.i.i.i1, %.lr.ph.i.i.i4.preheader ], [ %.sroa.06.0.i.i.i8.prol, %bb.j ]
  %.sroa.012.017.i.i.i6.unr = phi ptr [ %i.ah, %.lr.ph.i.i.i4.preheader ], [ %.sroa.012.1.i.i.i7.prol, %bb.j ]
  %i.as = icmp ult i64 %i.ap, 3
  br i1 %i.as, label %_ZN4crow21sanitize_header_valueERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit11, label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %.lr.ph.i.i.i4.prol.loopexit, %bb.o
  %.sroa.06.018.i.i.i5 = phi ptr [ %.sroa.06.0.i.i.i8.3, %bb.o ], [ %.sroa.06.018.i.i.i5.unr, %.lr.ph.i.i.i4.prol.loopexit ] ; 5 uses
  %.sroa.012.017.i.i.i6 = phi ptr [ %.sroa.012.1.i.i.i7.3, %bb.o ], [ %.sroa.012.017.i.i.i6.unr, %.lr.ph.i.i.i4.prol.loopexit ] ; 4 uses
  %i.at = load i8, ptr %.sroa.06.018.i.i.i5, align 1, !tbaa !114 ; 2 uses
  switch i8 %i.at, label %bb.k [
    i8 13, label %.lr.ph.i.i.i4.1
    i8 10, label %.lr.ph.i.i.i4.1
  ]

bb.k:                                             ; preds = %.lr.ph.i.i.i4
  store i8 %i.at, ptr %.sroa.012.017.i.i.i6, align 1, !tbaa !114
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i.i.i6, i64 1
  br label %.lr.ph.i.i.i4.1

.lr.ph.i.i.i4.1:                                  ; preds = %bb.k, %.lr.ph.i.i.i4, %.lr.ph.i.i.i4
  %.sroa.012.1.i.i.i7 = phi ptr [ %.sroa.012.017.i.i.i6, %.lr.ph.i.i.i4 ], [ %i.au, %bb.k ], [ %.sroa.012.017.i.i.i6, %.lr.ph.i.i.i4 ] ; 4 uses
  %.sroa.06.0.i.i.i8 = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i.i.i5, i64 1
  %i.av = load i8, ptr %.sroa.06.0.i.i.i8, align 1, !tbaa !114 ; 2 uses
  switch i8 %i.av, label %bb.l [
    i8 13, label %.lr.ph.i.i.i4.2
    i8 10, label %.lr.ph.i.i.i4.2
  ]

bb.l:                                             ; preds = %.lr.ph.i.i.i4.1
  store i8 %i.av, ptr %.sroa.012.1.i.i.i7, align 1, !tbaa !114
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i.i7, i64 1
  br label %.lr.ph.i.i.i4.2

.lr.ph.i.i.i4.2:                                  ; preds = %bb.l, %.lr.ph.i.i.i4.1, %.lr.ph.i.i.i4.1
  %.sroa.012.1.i.i.i7.1 = phi ptr [ %.sroa.012.1.i.i.i7, %.lr.ph.i.i.i4.1 ], [ %i.aw, %bb.l ], [ %.sroa.012.1.i.i.i7, %.lr.ph.i.i.i4.1 ] ; 4 uses
  %.sroa.06.0.i.i.i8.1 = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i.i.i5, i64 2
  %i.ax = load i8, ptr %.sroa.06.0.i.i.i8.1, align 1, !tbaa !114 ; 2 uses
  switch i8 %i.ax, label %bb.m [
    i8 13, label %.lr.ph.i.i.i4.3
    i8 10, label %.lr.ph.i.i.i4.3
  ]

bb.m:                                             ; preds = %.lr.ph.i.i.i4.2
  store i8 %i.ax, ptr %.sroa.012.1.i.i.i7.1, align 1, !tbaa !114
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i.i7.1, i64 1
  br label %.lr.ph.i.i.i4.3

.lr.ph.i.i.i4.3:                                  ; preds = %bb.m, %.lr.ph.i.i.i4.2, %.lr.ph.i.i.i4.2
  %.sroa.012.1.i.i.i7.2 = phi ptr [ %.sroa.012.1.i.i.i7.1, %.lr.ph.i.i.i4.2 ], [ %i.ay, %bb.m ], [ %.sroa.012.1.i.i.i7.1, %.lr.ph.i.i.i4.2 ] ; 4 uses
  %.sroa.06.0.i.i.i8.2 = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i.i.i5, i64 3
  %i.az = load i8, ptr %.sroa.06.0.i.i.i8.2, align 1, !tbaa !114 ; 2 uses
  switch i8 %i.az, label %bb.n [
    i8 13, label %bb.o
    i8 10, label %bb.o
  ]

bb.n:                                             ; preds = %.lr.ph.i.i.i4.3
  store i8 %i.az, ptr %.sroa.012.1.i.i.i7.2, align 1, !tbaa !114
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i.i7.2, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i.i4.3, %.lr.ph.i.i.i4.3
  %.sroa.012.1.i.i.i7.3 = phi ptr [ %.sroa.012.1.i.i.i7.2, %.lr.ph.i.i.i4.3 ], [ %i.ba, %bb.n ], [ %.sroa.012.1.i.i.i7.2, %.lr.ph.i.i.i4.3 ] ; 2 uses
  %.sroa.06.0.i.i.i8.3 = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i.i.i5, i64 4 ; 2 uses
  %.not.i.i.i9.3 = icmp eq ptr %.sroa.06.0.i.i.i8.3, %i.ag
  br i1 %.not.i.i.i9.3, label %_ZN4crow21sanitize_header_valueERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit11, label %.lr.ph.i.i.i4, !llvm.loop !19

_ZN4crow21sanitize_header_valueERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit11: ; preds = %.lr.ph.i.i.i4.prol.loopexit, %bb.o, %_ZN4crow21sanitize_header_valueERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.sroa.012.2.i.i.i10 = phi ptr [ %i.ah, %_ZN4crow21sanitize_header_valueERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.sroa.012.1.i.i.i7.lcssa.unr, %.lr.ph.i.i.i4.prol.loopexit ], [ %.sroa.012.1.i.i.i7.3, %bb.o ]
  %i.bb = load ptr, ptr %2, align 8, !tbaa !113   ; 2 uses
  %i.bc = ptrtoint ptr %.sroa.012.2.i.i.i10 to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  store i64 %i.be, ptr %i.ae, align 8, !tbaa !115
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  store i8 0, ptr %i.bf, align 1, !tbaa !114
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bh = tail call noundef i64 @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE8_M_eraseESt17integral_constantIbLb0EERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  %i.bi = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE10_M_emplaceIJS5_S5_EEENSA_14_Node_iteratorIS8_Lb0ELb1EEENSA_20_Node_const_iteratorIS8_Lb0ELb1EEESt17integral_constantIbLb0EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN4crow21sanitize_header_valueERS8_EUlcE_EEET_SG_SG_T0_St26random_access_iterator_tag(ptr %0, ptr %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr i64 %i.c, 2                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = and i64 %i.c, -4
  %scevgep = getelementptr i8, ptr %0, i64 %i.f   ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.045 = phi i64 [ %i.o, %bb.e ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.sroa.025.044 = phi ptr [ %i.n, %bb.e ], [ %0, %.lr.ph.preheader ] ; 10 uses
  %i.g = load i8, ptr %.sroa.025.044, align 1, !tbaa !114
  switch i8 %i.g, label %bb.b [
    i8 13, label %.loopexit
    i8 10, label %.loopexit
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !114
  switch i8 %i.i, label %bb.c [
    i8 13, label %.loopexit.loopexit.split.loop.exit
    i8 10, label %.loopexit.loopexit.split.loop.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !114
  switch i8 %i.k, label %bb.d [
    i8 13, label %.loopexit.loopexit.split.loop.exit50
    i8 10, label %.loopexit.loopexit.split.loop.exit50
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !114
  switch i8 %i.m, label %bb.e [
    i8 13, label %.loopexit.loopexit.split.loop.exit52
    i8 10, label %.loopexit.loopexit.split.loop.exit52
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 4
  %i.o = add nsw i64 %.045, -1
  %i.p = icmp sgt i64 %.045, 1
  br i1 %i.p, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1377

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = ptrtoint ptr %scevgep to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  %.sroa.025.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 6 uses
  %i.q = sub i64 %i.a, %.pre-phi
  switch i64 %i.q, label %.loopexit [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.r = load i8, ptr %.sroa.025.0.lcssa, align 1, !tbaa !114
  switch i8 %i.r, label %bb.g [
    i8 13, label %.loopexit
    i8 10, label %.loopexit
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.025.1 = phi ptr [ %i.s, %bb.g ], [ %.sroa.025.0.lcssa, %._crit_edge ] ; 4 uses
  %i.t = load i8, ptr %.sroa.025.1, align 1, !tbaa !114
  switch i8 %i.t, label %bb.i [
    i8 13, label %.loopexit
    i8 10, label %.loopexit
  ]

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.025.1, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.025.2 = phi ptr [ %i.u, %bb.i ], [ %.sroa.025.0.lcssa, %._crit_edge ] ; 3 uses
  %i.v = load i8, ptr %.sroa.025.2, align 1, !tbaa !114
  switch i8 %i.v, label %bb.k [
    i8 13, label %.loopexit
    i8 10, label %.loopexit
  ]

bb.k:                                             ; preds = %bb.j
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.b, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 1
  br label %.loopexit

.loopexit.loopexit.split.loop.exit50:             ; preds = %bb.c, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 2
  br label %.loopexit

.loopexit.loopexit.split.loop.exit52:             ; preds = %bb.d, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 3
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit50, %.loopexit.loopexit.split.loop.exit52, %bb.j, %bb.j, %bb.h, %bb.h, %bb.f, %bb.f, %._crit_edge, %bb.k
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.025.1, %bb.h ], [ %1, %._crit_edge ], [ %.sroa.025.2, %bb.j ], [ %.sroa.025.0.lcssa, %bb.f ], [ %.sroa.025.2, %bb.j ], [ %.sroa.025.1, %bb.h ], [ %.sroa.025.0.lcssa, %bb.f ], [ %1, %bb.k ], [ %i.x, %.loopexit.loopexit.split.loop.exit50 ], [ %i.y, %.loopexit.loopexit.split.loop.exit52 ], [ %i.w, %.loopexit.loopexit.split.loop.exit ], [ %.sroa.025.044, %.lr.ph ], [ %.sroa.025.044, %.lr.ph ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE8_M_eraseESt17integral_constantIbLb0EERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !485
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !246  ; 5 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.critedge55, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !115
  %.fr23.i = freeze i64 %i.g                      ; 3 uses
  %i.h = icmp eq i64 %.fr23.i, 0
  br i1 %i.h, label %.preheader.split.us.i, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !115
  %.not.i.i.i.us21.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.us21.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeERS7_.exit.thread69, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i

bb.c:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !115
  %.not.i.i.i.us.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.us.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeERS7_.exit.thread69, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i, !llvm.loop !1378

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i: ; preds = %.preheader.split.us.i, %bb.c
  %.019.us22.i = phi ptr [ %i.m, %bb.c ], [ %i.d, %.preheader.split.us.i ] ; 2 uses
  %i.m = load ptr, ptr %.019.us22.i, align 8, !tbaa !246 ; 4 uses
  %.not14.us.i = icmp eq ptr %i.m, null
  br i1 %.not14.us.i, label %.critedge55, label %bb.c, !llvm.loop !1378

.preheader.split.i:                               ; preds = %.preheader.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i
  %.019.i = phi ptr [ %i.aa, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ], [ %i.d, %.preheader.i ] ; 5 uses
  %.01118.i = phi ptr [ %.019.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ], [ %i.c, %.preheader.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %.019.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !113
  %i.p = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !115
  %.not.i.i.i.i = icmp eq i64 %.fr23.i, %i.q
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.r = add nuw i64 %.0813.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.r, %.fr23.i
  br i1 %exitcond.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeERS7_.exit.thread69, label %.lr.ph.i.i.i.i, !llvm.loop !20

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.split.i, %bb.d
  %.0813.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ 0, %.preheader.split.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0813.i.i.i.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !114
  %i.u = sext i8 %i.t to i32
  %i.v = tail call i32 @toupper(i32 noundef %i.u) #45
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0813.i.i.i.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !114
  %i.y = sext i8 %i.x to i32
  %i.z = tail call i32 @toupper(i32 noundef %i.y) #45
  %.not10.i.i.i.i = icmp eq i32 %i.v, %i.z
  br i1 %.not10.i.i.i.i, label %bb.d, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i: ; preds = %.lr.ph.i.i.i.i, %.preheader.split.i
  %i.aa = load ptr, ptr %.019.i, align 8, !tbaa !246 ; 2 uses
  %.not14.i = icmp eq ptr %i.aa, null
  br i1 %.not14.i, label %.critedge55, label %.preheader.split.i, !llvm.loop !1378

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeERS7_.exit.thread69: ; preds = %bb.d, %bb.c, %.preheader.split.us.i
  %i.ab = phi ptr [ %i.m, %bb.c ], [ %i.d, %.preheader.split.us.i ], [ %.019.i, %bb.d ] ; 2 uses
  %.1.i72 = phi ptr [ %.019.us22.i, %bb.c ], [ %i.c, %.preheader.split.us.i ], [ %.01118.i, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !469 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !444
  %i.ag = urem i64 %i.af, %i.ad
  br label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeEmRS7_m.exit.thread75

bb.e:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr %1, align 8, !tbaa !113
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !115
  %i.ak = tail call noundef i64 @_ZNK4crow7ci_hashclESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.aj, ptr %i.ah) ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !469 ; 5 uses
  %i.an = urem i64 %i.ak, %i.am                   ; 5 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !468
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !442 ; 4 uses
  %.not.i57 = icmp eq ptr %i.aq, null
  br i1 %.not.i57, label %.critedge55, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !246 ; 3 uses
  %i.as = load ptr, ptr %1, align 8
  %i.at = load i64, ptr %i.ai, align 8
  %.fr25.i = freeze i64 %i.at                     ; 3 uses
  %i.au = icmp eq i64 %.fr25.i, 0
  %.phi.trans.insert29.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %.pre30.i = load i64, ptr %.phi.trans.insert29.i, align 8, !tbaa !444 ; 2 uses
  br i1 %i.au, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.f, %bb.i
  %i.av = phi i64 [ %i.bb, %bb.i ], [ %.pre30.i, %bb.f ]
  %.015.us.i = phi ptr [ %.0.us.i, %bb.i ], [ %i.aq, %bb.f ]
  %.0.us.i = phi ptr [ %i.az, %bb.i ], [ %i.ar, %bb.f ] ; 4 uses
  %i.aw = icmp eq i64 %i.ak, %i.av
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.us.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.us.i, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !115
  %.not.i.i.i.i.us.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i.i.us.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeEmRS7_m.exit.thread75, label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.us.i
  %i.az = load ptr, ptr %.0.us.i, align 8, !tbaa !246 ; 3 uses
  %.not18.us.i = icmp eq ptr %i.az, null
  br i1 %.not18.us.i, label %.critedge55, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !444 ; 2 uses
  %i.bc = urem i64 %i.bb, %i.am
  %.not19.us.i = icmp eq i64 %i.bc, %i.an
  br i1 %.not19.us.i, label %.split.us.i, label %.critedge55, !llvm.loop !21

.split.i:                                         ; preds = %bb.f, %bb.l
  %i.bd = phi i64 [ %i.bu, %bb.l ], [ %.pre30.i, %bb.f ]
  %.015.i = phi ptr [ %.0.i, %bb.l ], [ %i.aq, %bb.f ]
  %.0.i = phi ptr [ %i.bs, %bb.l ], [ %i.ar, %bb.f ] ; 5 uses
  %i.be = icmp eq i64 %i.ak, %i.bd
  br i1 %i.be, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %.split.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !113
end_hunk_0
begin_hunk_1_@_ZN4crow6Router11validate_bpESt6vectorIPNS_9BlueprintESaIS3_EERNS_6detail18middleware_indicesE:bb.a
_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit: ; preds = %bb.ac, %bb.ad
  %i.er = load ptr, ptr %i.m, align 8, !tbaa !195 ; 2 uses
  %i.es = load ptr, ptr %2, align 8, !tbaa !193   ; 2 uses
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = ashr exact i64 %i.ev, 2                 ; 2 uses
  %i.ex = load ptr, ptr %i.cq, align 8, !tbaa !195 ; 2 uses
  %i.ey = load ptr, ptr %i.cn, align 8, !tbaa !193 ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 2                 ; 3 uses
  %i.fd = sub nuw nsw i64 %i.ew, %i.fc
  %i.fe = icmp ugt i64 %i.fc, %i.ew
  br i1 %i.fe, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit
  %i.ff = sub nsw i64 0, %i.fc
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ff)
  br label %_ZN4crow6detail18middleware_indices8pop_backERKS1_.exit

bb.af:                                            ; preds = %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit
  %.not.i72 = icmp eq ptr %i.ex, %i.ey
  br i1 %.not.i72, label %_ZN4crow6detail18middleware_indices8pop_backERKS1_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.fd ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.er, %i.fg
  br i1 %.not.i.i.i73, label %_ZN4crow6detail18middleware_indices8pop_backERKS1_.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.ag
  store ptr %i.fg, ptr %i.m, align 8, !tbaa !195
  br label %_ZN4crow6detail18middleware_indices8pop_backERKS1_.exit

_ZN4crow6detail18middleware_indices8pop_backERKS1_.exit: ; preds = %bb.ae, %bb.af, %bb.ag, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  store i8 1, ptr %i.u, align 8, !tbaa !2026
  %.pre110 = load ptr, ptr %i.d, align 8, !tbaa !733
  %.pre111 = load ptr, ptr %1, align 8, !tbaa !249
  br label %bb.ah

bb.ah:                                            ; preds = %bb.b, %_ZN4crow6detail18middleware_indices8pop_backERKS1_.exit
  %i.fh = phi ptr [ %i.p, %bb.b ], [ %.pre111, %_ZN4crow6detail18middleware_indices8pop_backERKS1_.exit ] ; 2 uses
  %i.fi = phi ptr [ %i.q, %bb.b ], [ %.pre110, %_ZN4crow6detail18middleware_indices8pop_backERKS1_.exit ] ; 2 uses
  %i.fj = add i32 %.041104, 1                     ; 2 uses
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = ptrtoint ptr %i.fi to i64
  %i.fm = ptrtoint ptr %i.fh to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = ashr exact i64 %i.fn, 3
  %i.fp = icmp ugt i64 %i.fo, %i.fk
  br i1 %i.fp, label %bb.b, label %._crit_edge107, !llvm.loop !2024

bb.ai:                                            ; preds = %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EEC2ERKS4_.exit
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load ptr, ptr %6, align 8, !tbaa !249   ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i74, label %_ZNSt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS1_EED2Ev.exit70, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fs = load ptr, ptr %i.o, align 8, !tbaa !250
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fr to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fv) #41
  br label %_ZNSt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS1_EED2Ev.exit70

_ZNSt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS1_EED2Ev.exit70: ; preds = %bb.aj, %bb.ai, %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EED2Ev.exit63
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn, %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EED2Ev.exit63 ], [ %i.fq, %bb.aj ], [ %i.fq, %bb.ai ]
  resume { ptr, i32 } %.pn44.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(3656) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !737
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !737
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !657  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !657  ; 2 uses
  %.not26 = icmp eq ptr %i.j, %i.l
  br i1 %.not26, label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.sroa.021.027 = phi ptr [ %i.n, %.lr.ph ], [ %i.j, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.021.027, align 8, !tbaa !659
  tail call void @_ZN4crow6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(3656) %0, ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.021.027, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.l
  br i1 %.not, label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, label %.lr.ph

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2032 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !740
  %.not.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.p, align 1, !tbaa !742
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.s, ptr %i.o, align 8, !tbaa !2032
  br label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %2, align 8, !tbaa !739    ; 4 uses
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 8 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775807
  br i1 %i.x, label %bb.g, label %_ZNKSt6vectorIN4crow10HTTPMethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #39
  unreachable

_ZNKSt6vectorIN4crow10HTTPMethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.y = add i64 %.sroa.speculated.i.i.i, %i.w    ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.w
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 9223372036854775807)
  %i.ab = select i1 %i.z, i64 9223372036854775807, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #43 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.w ; 2 uses
  store i8 1, ptr %i.ad, align 1, !tbaa !742
  %i.ae = icmp sgt i64 %i.w, 0
  br i1 %i.ae, label %bb.h, label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIN4crow10HTTPMethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr align 1 %i.t, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIN4crow10HTTPMethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.not.i17.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.w) #41
  br label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ac, ptr %2, align 8, !tbaa !739
  store ptr %i.af, ptr %i.o, align 8, !tbaa !2032
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store ptr %i.ag, ptr %i.q, align 8, !tbaa !740
  br label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %.lr.ph, %bb.c, %bb.b, %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !737 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !737 ; 2 uses
  %.not2536 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not2536, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN4crow8BaseRule14foreach_methodIZNS_6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS6_EEEUljE_EEvT_.exit, %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  ret void

bb.j:                                             ; preds = %.lr.ph38, %_ZN4crow8BaseRule14foreach_methodIZNS_6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS6_EEEUljE_EEvT_.exit
  %.sroa.016.037 = phi ptr [ %i.ai, %.lr.ph38 ], [ %i.cp, %_ZN4crow8BaseRule14foreach_methodIZNS_6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS6_EEEUljE_EEvT_.exit ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.016.037, align 8, !tbaa !253
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  br label %bb.k

bb.k:                                             ; preds = %_ZZN4crow6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS4_EEENKUljE_clEj.exit, %bb.j
  %.07.i = phi i64 [ 1, %bb.j ], [ %i.co, %_ZZN4crow6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS4_EEENKUljE_clEj.exit ] ; 2 uses
  %.056.i = phi i64 [ 0, %bb.j ], [ %i.cn, %_ZZN4crow6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS4_EEENKUljE_clEj.exit ] ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !135
  %i.aq = and i64 %i.ap, %.07.i
  %.not.i15 = icmp eq i64 %i.aq, 0
  br i1 %.not.i15, label %_ZZN4crow6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS4_EEENKUljE_clEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = trunc i64 %.056.i to i8                 ; 9 uses
  %i.as = load ptr, ptr %2, align 8, !tbaa !119   ; 7 uses
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !119 ; 6 uses
  %i.au = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.av = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 10 uses
  %i.ax = ashr i64 %i.aw, 2                       ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l
  %i.az = and i64 %i.aw, -4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.as, i64 %i.az ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i ], [ %i.bm, %bb.q ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %i.bl, %bb.q ] ; 9 uses
  %i.ba = load i8, ptr %.sroa.032.051.i.i.i.i, align 1, !tbaa !742
  %i.bb = icmp eq i8 %i.ba, %i.ar
  br i1 %i.bb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !742
  %i.be = icmp eq i8 %i.bd, %i.ar
  br i1 %i.be, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !742
  %i.bh = icmp eq i8 %i.bg, %i.ar
  br i1 %i.bh, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit56, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !742
  %i.bk = icmp eq i8 %i.bj, %i.ar
  br i1 %i.bk, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit58, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 4
  %i.bm = add nsw i64 %.052.i.i.i.i, -1
  %i.bn = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.bn, label %bb.m, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !2030

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.q
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.l
  %.pre-phi.i.i.i.i = phi i64 [ %.pre59.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.av, %bb.l ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.as, %bb.l ] ; 5 uses
  %i.bo = sub i64 %i.au, %.pre-phi.i.i.i.i
  switch i64 %i.bo, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.thread.i [
    i64 3, label %bb.r
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bp = load i8, ptr %.sroa.032.0.lcssa.i.i.i.i, align 1, !tbaa !742
  %i.bq = icmp eq i8 %i.bp, %i.ar
  br i1 %i.bq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.s, %._crit_edge.i.i.i.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.br, %bb.s ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bs = load i8, ptr %.sroa.032.1.i.i.i.i, align 1, !tbaa !742
  %i.bt = icmp eq i8 %i.bs, %i.ar
  br i1 %i.bt, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %bb.t, %._crit_edge.i.i.i.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.bu, %bb.t ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bv = load i8, ptr %.sroa.032.2.i.i.i.i, align 1, !tbaa !742
  %i.bw = icmp eq i8 %i.bv, %i.ar
  %spec.select.i.i.i.i = select i1 %i.bw, ptr %.sroa.032.2.i.i.i.i, ptr %i.at
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 1
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit56: ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit58: ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 3
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i: ; preds = %bb.m, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit56, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit58, %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.r
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.r ], [ %i.bz, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit58 ], [ %i.bx, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.by, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit56 ], [ %.sroa.032.051.i.i.i.i, %bb.m ]
  %i.ca = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.at
  br i1 %i.ca, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.thread.i, label %_ZZN4crow6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS4_EEENKUljE_clEj.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.thread.i: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, %._crit_edge.i.i.i.i
  %i.cb = load ptr, ptr %i.am, align 8, !tbaa !740
  %.not.i.i = icmp eq ptr %i.at, %i.cb
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.thread.i
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !742
  %i.cc = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.cc, ptr %i.al, align 8, !tbaa !2032
  br label %_ZZN4crow6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS4_EEENKUljE_clEj.exit

bb.v:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.thread.i
  %i.cd = icmp eq i64 %i.aw, 9223372036854775807
  br i1 %i.cd, label %bb.w, label %_ZNKSt6vectorIN4crow10HTTPMethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #39
  unreachable

_ZNKSt6vectorIN4crow10HTTPMethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ce = add i64 %.sroa.speculated.i.i.i.i, %i.aw ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.aw
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 9223372036854775807)
  %i.ch = select i1 %i.cf, i64 9223372036854775807, i64 %i.cg ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ch, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ci = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #43 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.aw ; 2 uses
  store i8 %i.ar, ptr %i.cj, align 1, !tbaa !742
  %i.ck = icmp sgt i64 %i.aw, 0
  br i1 %i.ck, label %bb.x, label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.x:                                             ; preds = %_ZNKSt6vectorIN4crow10HTTPMethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr align 1 %i.as, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.x, %_ZNKSt6vectorIN4crow10HTTPMethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.aw) #41
  br label %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.y, %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.ci, ptr %2, align 8, !tbaa !739
  store ptr %i.cl, ptr %i.al, align 8, !tbaa !2032
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch
  store ptr %i.cm, ptr %i.am, align 8, !tbaa !740
  br label %_ZZN4crow6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS4_EEENKUljE_clEj.exit

_ZZN4crow6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS4_EEENKUljE_clEj.exit: ; preds = %_ZNSt6vectorIN4crow10HTTPMethodESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.u, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4crow10HTTPMethodESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, %bb.k
  %i.cn = add nuw nsw i64 %.056.i, 1              ; 2 uses
  %i.co = shl nuw nsw i64 %.07.i, 1
  %exitcond.not.i = icmp eq i64 %i.cn, 34
  br i1 %exitcond.not.i, label %_ZN4crow8BaseRule14foreach_methodIZNS_6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS6_EEEUljE_EEvT_.exit, label %bb.k, !llvm.loop !2031

_ZN4crow8BaseRule14foreach_methodIZNS_6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS6_EEEUljE_EEvT_.exit: ; preds = %_ZZN4crow6Router27get_recursive_child_methodsEPNS_9BlueprintERSt6vectorINS_10HTTPMethodESaIS4_EEENKUljE_clEj.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.016.037, i64 8 ; 2 uses
  %.not25 = icmp eq ptr %i.cp, %i.ak
  br i1 %.not25, label %._crit_edge, label %bb.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %7 = alloca %"class.std::allocator", align 1    ; 4 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  %9 = alloca %"class.std::allocator", align 1    ; 4 uses
  %10 = alloca %"class.std::allocator", align 1   ; 4 uses
  %11 = alloca %"class.std::allocator", align 1   ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = icmp ne i32 %3, 0
  %i.b = icmp ne i64 %4, -1
  %i.c = and i1 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !115
  %.not200 = icmp eq i64 %i.e, 0
  br i1 %.not200, label %._crit_edge198, label %.lr.ph197

._crit_edge198:                                   ; preds = %.loopexit161, %bb.a
  %.065.lcssa = phi ptr [ %0, %bb.a ], [ %.12, %.loopexit161 ] ; 2 uses
  %i.f = load i64, ptr %.065.lcssa, align 8, !tbaa !456
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.al, label %bb.ag

.lr.ph197:                                        ; preds = %bb.a, %.loopexit161
  %i.g = phi i64 [ %i.dw, %.loopexit161 ], [ 0, %bb.a ]
  %.065195 = phi ptr [ %.12, %.loopexit161 ], [ %0, %bb.a ] ; 10 uses
  %.098194 = phi i32 [ %.8106, %.loopexit161 ], [ 0, %bb.a ] ; 7 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g
  %i.j = load i8, ptr %i.i, align 1, !tbaa !114   ; 3 uses
  %i.k = icmp eq i8 %i.j, 60
  br i1 %i.k, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %.lr.ph197
  %i.l = load atomic i8, ptr @_ZGVZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjmE11paramTraits acquire, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.l, !prof !116

bb.c:                                             ; preds = %bb.b
  %i.n = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjmE11paramTraits) #40
  %.not113 = icmp eq i32 %i.n, 0
  br i1 %.not113, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr @_ZZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjmE11paramTraits, align 16, !tbaa !2035
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjmE11paramTraits, i64 8), ptr noundef nonnull @.str.463, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.e unwind label %.thread

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjmE11paramTraits, i64 40), align 8, !tbaa !2035
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjmE11paramTraits, i64 48), ptr noundef nonnull @.str.464, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.f unwind label %.thread239

bb.f:                                             ; preds = %bb.e
  store i8 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjmE11paramTraits, i64 80), align 16, !tbaa !2035
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjmE11paramTraits, i64 88), ptr noundef nonnull @.str.465, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  store i8 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjmE11paramTraits, i64 120), align 8, !tbaa !2035
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjmE11paramTraits, i64 128), ptr noundef nonnull @.str.466, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  store i8 3, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjmE11paramTraits, i64 160), align 16, !tbaa !2035
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjmE11paramTraits, i64 168), ptr noundef nonnull @.str.467, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  store i8 3, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjmE11paramTraits, i64 200), align 8, !tbaa !2035
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjmE11paramTraits, i64 208), ptr noundef nonnull @.str.468, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  store i8 4, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjmE11paramTraits, i64 240), align 16, !tbaa !2035
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjmE11paramTraits, i64 248), ptr noundef nonnull @.str.469, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.k unwind label %bb.q
end_hunk_1
begin_hunk_2_@_ZN4asio6detail17executor_function8completeINS0_7binder1ISt5_BindIFMN4crow6detail10task_timerEFvRKSt10error_codeEPS7_St12_PlaceholderILi1EEEES8_EESaIvEEEvPNS1_9impl_baseEb:bb.a
  %.unpack.i.i = load i64, ptr %i.c, align 8, !tbaa !933 ; 4 uses
  %.elt3.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack4.i.i = load i64, ptr %.elt3.i.i, align 8, !tbaa !933 ; 2 uses
  store i64 %.unpack.i.i, ptr %4, align 8, !tbaa !933
  %.repack5.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.unpack4.i.i, ptr %.repack5.i.i, align 8, !tbaa !933
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !858  ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !858
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !746
  store ptr null, ptr %i.b, align 8, !tbaa !961
  %i.i = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !376  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  %i.k = inttoptr i64 %i.f to ptr
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !377  ; 4 uses
  %.not3.i = icmp eq ptr %i.m, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !119
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !119
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.lcssa.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load i8, ptr %i.u, align 8, !tbaa !114
  store i8 %i.v, ptr %0, align 8, !tbaa !114
  store ptr %0, ptr %i.t, align 8, !tbaa !119
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #40
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !962
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder1ISt5_BindIFMN4crow6detail10task_timerEFvRKSt10error_codeEPS7_St12_PlaceholderILi1EEEES8_EESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %.unpack4.i.i ; 2 uses
  %i.x = and i64 %.unpack.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !229
  %i.z = getelementptr i8, ptr %i.y, i64 %.unpack.i.i
  %i.aa = getelementptr i8, ptr %i.z, i64 -1
  %i.ab = load ptr, ptr %i.aa, align 8, !nosanitize !199
  br label %_ZN4asio6detail7binder1ISt5_BindIFMN4crow6detail10task_timerEFvRKSt10error_codeEPS5_St12_PlaceholderILi1EEEES6_EclEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = inttoptr i64 %.unpack.i.i to ptr
  br label %_ZN4asio6detail7binder1ISt5_BindIFMN4crow6detail10task_timerEFvRKSt10error_codeEPS5_St12_PlaceholderILi1EEEES6_EclEv.exit.i

_ZN4asio6detail7binder1ISt5_BindIFMN4crow6detail10task_timerEFvRKSt10error_codeEPS5_St12_PlaceholderILi1EEEES6_EclEv.exit.i: ; preds = %bb.f, %bb.e
  %i.ad = phi ptr [ %i.ab, %bb.e ], [ %i.ac, %bb.f ]
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(193) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder1ISt5_BindIFMN4crow6detail10task_timerEFvRKSt10error_codeEPS7_St12_PlaceholderILi1EEEES8_EESaIvEE3ptrD2Ev.exit unwind label %bb.g, !inline_history !2460

bb.g:                                             ; preds = %_ZN4asio6detail7binder1ISt5_BindIFMN4crow6detail10task_timerEFvRKSt10error_codeEPS5_St12_PlaceholderILi1EEEES6_EclEv.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @_ZN4asio6detail17executor_function4implINS0_7binder1ISt5_BindIFMN4crow6detail10task_timerEFvRKSt10error_codeEPS7_St12_PlaceholderILi1EEEES8_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.ae

_ZN4asio6detail17executor_function4implINS0_7binder1ISt5_BindIFMN4crow6detail10task_timerEFvRKSt10error_codeEPS7_St12_PlaceholderILi1EEEES8_EESaIvEE3ptrD2Ev.exit: ; preds = %_ZN4asio6detail7binder1ISt5_BindIFMN4crow6detail10task_timerEFvRKSt10error_codeEPS5_St12_PlaceholderILi1EEEES6_EclEv.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK14asio_prefer_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail16outstanding_work9tracked_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SE_SG_vvvvvvvE11result_typeEE4typeEOSE_OSF_(ptr dead_on_unwind noalias writable sret(%"class.asio::any_io_executor") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.asio::execution::bad_executor", align 8 ; 4 uses
  %5 = alloca %"struct.asio::execution::prefer_only.525", align 1 ; 3 uses
  %6 = alloca %"class.asio::execution::any_executor", align 8 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !278, !noalias !2468
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISG_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE.exit.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !2468
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %4, align 8, !tbaa !229, !noalias !2468
  %i.c = tail call ptr @__cxa_allocate_exception(i64 8) #40, !noalias !2468 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.c, align 8, !tbaa !229, !noalias !2468
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #39
          to label %.noexc.i.i unwind label %bb.c, !noalias !2468

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #40, !noalias !2468
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2468
  resume { ptr, i32 } %i.d

_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISG_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !687, !noalias !2468
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2469, !noalias !2468
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !279, !noalias !2468
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !964, !noalias !2468
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(56) %2), !noalias !2468, !inline_history !2466
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40, !noalias !2468
  call void %i.h(ptr dead_on_unwind nonnull writable sret(%"class.asio::execution::any_executor") align 8 %6, ptr noundef %i.m, ptr noundef nonnull %5), !noalias !2467, !inline_history !2466
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40, !noalias !2468
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !278, !noalias !2467
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISG_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !279, !noalias !2467 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !279, !alias.scope !2467
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !684, !noalias !2467
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.t, ptr %i.u, align 8, !tbaa !684, !alias.scope !2467
  store ptr null, ptr %i.p, align 8, !tbaa !279, !noalias !2467
  store ptr null, ptr %i.s, align 8, !tbaa !684, !noalias !2467
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !956, !noalias !2467
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %_ZNK4asio15any_io_executor6preferINS_9execution6detail16outstanding_work9tracked_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS3_8blocking7never_tILi0EEENS2_11prefer_onlyINSG_10possibly_tILi0EEEEENSJ_IS6_EENSJ_INS4_11untracked_tILi0EEEEENSJ_INS3_12relationship6fork_tILi0EEEEENSJ_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE.exit unwind label %bb.f

bb.e:                                             ; preds = %_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISG_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false), !alias.scope !2467
  br label %_ZNK4asio15any_io_executor6preferINS_9execution6detail16outstanding_work9tracked_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS3_8blocking7never_tILi0EEENS2_11prefer_onlyINSG_10possibly_tILi0EEEEENSJ_IS6_EENSJ_INS4_11untracked_tILi0EEEEENSJ_INS3_12relationship6fork_tILi0EEEEENSJ_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE.exit

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #42
  unreachable

_ZNK4asio15any_io_executor6preferINS_9execution6detail16outstanding_work9tracked_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS3_8blocking7never_tILi0EEENS2_11prefer_onlyINSG_10possibly_tILi0EEEEENSJ_IS6_EENSJ_INS4_11untracked_tILi0EEEEENSJ_INS3_12relationship6fork_tILi0EEEEENSJ_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE.exit: ; preds = %bb.d, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !687, !noalias !2467
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !687, !alias.scope !2467
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE13enqueue_timerERKNS3_10time_pointIS5_NS3_8durationIlSt5ratioILl1ELl1000000000EEEEEERNS9_14per_timer_dataEPNS0_7wait_opE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.asio::detail::timer_queue<asio::detail::chrono_time_traits<std::chrono::_V2::steady_clock, asio::wait_traits<std::chrono::_V2::steady_clock>>>::heap_entry", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !955
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !947
  %.not = icmp eq ptr %2, %i.e
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !952  ; 7 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !944  ; 6 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = ashr exact i64 %i.l, 4                   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !926
  %i.o = load i64, ptr %1, align 8, !tbaa !111    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !945
  %.not.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.o, ptr %i.h, align 8, !tbaa !111
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !953
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.g, align 8, !tbaa !952
  br label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.l, 9223372036854775792
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #39
  unreachable

_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.m
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487)
  %i.w = select i1 %i.u, i64 576460752303423487, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #43 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.l ; 2 uses
  store i64 %i.o, ptr %i.z, align 8, !tbaa !111
  %.sroa.5.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx22, align 8, !tbaa !953
  %.not10.i.i.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.y, %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.i, %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !954, !alias.scope !2474
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2473

_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #41
  br label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i

_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i
  store ptr %i.y, ptr %i.f, align 8, !tbaa !944
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !952
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ad, ptr %i.p, align 8, !tbaa !945
  %.pre = ptrtoint ptr %i.y to i64
  br label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit

_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit: ; preds = %bb.d, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i
  %.pre-phi = phi i64 [ %i.k, %bb.d ], [ %.pre, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i ]
  %i.ae = phi ptr [ %i.i, %bb.d ], [ %i.y, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i ]
  %i.af = phi ptr [ %i.r, %bb.d ], [ %i.ac, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i ]
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %.pre-phi
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = add nsw i64 %i.ai, -1                   ; 2 uses
  %.not11.i = icmp eq i64 %i.aj, 0
  br i1 %.not11.i, label %_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit, %bb.h
  %i.ak = phi ptr [ %i.as, %bb.h ], [ %i.ae, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit ] ; 2 uses
  %.0812.i = phi i64 [ %i.am, %bb.h ], [ %i.aj, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit ] ; 4 uses
  %i.al = add nsw i64 %.0812.i, -1
  %i.am = lshr i64 %i.al, 1                       ; 6 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %.0812.i ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.am ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.an, align 8, !tbaa !111
  %.sroa.0.0.copyload.i2.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !111
  %i.ap = icmp slt i64 %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i
  br i1 %i.ap, label %bb.h, label %_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit

bb.h:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !954
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !tbaa.struct !954
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !944
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !954
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !944 ; 3 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %.0812.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !950
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %.0812.i, ptr %i.aw, align 8, !tbaa !926
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.am
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !950
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.am, ptr %i.ba, align 8, !tbaa !926
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i19 = icmp eq i64 %i.am, 0
  br i1 %.not.i19, label %_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit, label %.lr.ph.i

_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit: ; preds = %bb.h, %.lr.ph.i, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !947 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !951
  store ptr null, ptr %i.a, align 8, !tbaa !955
  %.not18 = icmp eq ptr %i.bb, null
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %2, ptr %i.bd, align 8, !tbaa !955
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit
  store ptr %2, ptr %i.d, align 8, !tbaa !947
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b, %bb.a
  store ptr null, ptr %3, align 8, !tbaa !343
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !344 ; 2 uses
  %.not.i20 = icmp eq ptr %i.bf, null
  %..i = select i1 %.not.i20, ptr %2, ptr %i.bf
  store ptr %3, ptr %..i, align 8, !tbaa !119
  store ptr %3, ptr %i.be, align 8, !tbaa !344
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !926
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %2, align 8, !tbaa !340
  %i.bk = icmp eq ptr %i.bj, %3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bl = phi i1 [ false, %bb.k ], [ %i.bk, %bb.l ]
  ret i1 %i.bl
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow6detail10task_timer13process_tasksEv(ptr noundef nonnull align 8 dereferenceable(193) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.crow::logger", align 8      ; 14 uses
  %i.b = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !927  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %.not87 = icmp eq ptr %i.e, %i.f
  br i1 %.not87, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 4 uses
  br label %bb.b

.preheader:                                       ; preds = %bb.w
  %.not5594 = icmp eq ptr %.sroa.047.1, %.sroa.9.1
  br i1 %.not5594, label %._crit_edge, label %.lr.ph96

.lr.ph96:                                         ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.x

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.sroa.044.091 = phi ptr [ %i.e, %.lr.ph ], [ %i.ba, %bb.w ] ; 6 uses
  %.sroa.13.090 = phi ptr [ null, %.lr.ph ], [ %.sroa.13.1, %bb.w ] ; 5 uses
  %.sroa.9.089 = phi ptr [ null, %.lr.ph ], [ %.sroa.9.1, %bb.w ] ; 4 uses
  %.sroa.047.088 = phi ptr [ null, %.lr.ph ], [ %.sroa.047.1, %bb.w ] ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.044.091, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.044.091, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.j, align 8, !tbaa !111
  %i.k = icmp slt i64 %.sroa.0.0.copyload.i.i, %i.b
  br i1 %i.k, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.044.091, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !197
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #39
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.044.091, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.044.091, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !206
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZNKSt8functionIFvvEEclEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !18

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.e
  %.not.i = icmp eq ptr %.sroa.9.089, %.sroa.13.090
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8functionIFvvEEclEv.exit
  %i.q = load i64, ptr %i.i, align 8, !tbaa !111
  store i64 %i.q, ptr %.sroa.9.089, align 8, !tbaa !111
  br label %bb.k

bb.g:                                             ; preds = %_ZNKSt8functionIFvvEEclEv.exit
  %i.r = ptrtoint ptr %.sroa.13.090 to i64
  %i.s = ptrtoint ptr %.sroa.047.088 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 6 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.h, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #39
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc22:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #43
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  %i.ad = load i64, ptr %i.i, align 8, !tbaa !111
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !111
  %i.ae = icmp sgt i64 %i.t, 0
  br i1 %i.ae, label %bb.i, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc23
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %.sroa.047.088, i64 %i.t, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc23
  %.not.i17.i.i = icmp eq ptr %.sroa.047.088, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.047.088, i64 noundef %i.t) #41
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %.sroa.047.4 = phi ptr [ %i.ab, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.047.088, %bb.f ] ; 3 uses
  %.pn = phi ptr [ %i.ac, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.9.089, %bb.f ]
  %.sroa.13.4 = phi ptr [ %i.af, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.13.090, %bb.f ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder1IZN4crow6ServerINS6_4CrowIJ17ExampleMiddlewareEEENS6_18UnixSocketAcceptorENS6_17UnixSocketAdaptorEJS9_EE3runEvEUlRKSt10error_codeE_SE_EEEEvOT_:bb.a

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !229
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 8) #40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.ab, align 8, !tbaa !229
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #39
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.o

bb.n:                                             ; preds = %bb.c, %_ZN4asio6detail17executor_functionD2Ev.exit
  ret void

bb.o:                                             ; preds = %bb.m, %_ZN4asio6detail17executor_functionD2Ev.exit8
  %.pn = phi { ptr, i32 } [ %i.w, %_ZN4asio6detail17executor_functionD2Ev.exit8 ], [ %i.ac, %bb.m ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22executor_function_view8completeINS0_7binder1IZN4crow6ServerINS4_4CrowIJ17ExampleMiddlewareEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_EE3runEvEUlRKSt10error_codeE_SC_EEEEvPv(ptr noundef %0) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !209
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN4asio6detail7binder1IZN4crow6ServerINS2_4CrowIJ17ExampleMiddlewareEEENS2_18UnixSocketAcceptorENS2_17UnixSocketAdaptorEJS5_EE3runEvEUlRKSt10error_codeE_SA_EclEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !709
  tail call void @_ZN4crow6ServerINS_4CrowIJ17ExampleMiddlewareEEENS_18UnixSocketAcceptorENS_17UnixSocketAdaptorEJS2_EE7on_tickEv(ptr noundef nonnull align 8 dereferenceable(624) %i.c)
  br label %_ZN4asio6detail7binder1IZN4crow6ServerINS2_4CrowIJ17ExampleMiddlewareEEENS2_18UnixSocketAcceptorENS2_17UnixSocketAdaptorEJS5_EE3runEvEUlRKSt10error_codeE_SA_EclEv.exit

_ZN4asio6detail7binder1IZN4crow6ServerINS2_4CrowIJ17ExampleMiddlewareEEENS2_18UnixSocketAcceptorENS2_17UnixSocketAdaptorEJS5_EE3runEvEUlRKSt10error_codeE_SA_EclEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN4crow6ServerINS4_4CrowIJ17ExampleMiddlewareEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_EE3runEvEUlRKSt10error_codeE_SC_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !988
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !988
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !989  ; 5 uses
  %.not1.i = icmp eq ptr %i.d, null
  br i1 %.not1.i, label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN4crow6ServerINS4_4CrowIJ17ExampleMiddlewareEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_EE3runEvEUlRKSt10error_codeE_SC_EESaIvEE3ptr5resetEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !376  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !377  ; 4 uses
  %.not3.i = icmp eq ptr %i.h, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !119
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !119
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.q = load i8, ptr %i.p, align 1, !tbaa !114
  store i8 %i.q, ptr %i.d, align 1, !tbaa !114
  store ptr %i.d, ptr %i.o, align 8, !tbaa !119
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN4crow6ServerINS4_4CrowIJ17ExampleMiddlewareEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_EE3runEvEUlRKSt10error_codeE_SC_EESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #40
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN4crow6ServerINS4_4CrowIJ17ExampleMiddlewareEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_EE3runEvEUlRKSt10error_codeE_SC_EESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder1IZN4crow6ServerINS4_4CrowIJ17ExampleMiddlewareEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_EE3runEvEUlRKSt10error_codeE_SC_EESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder1IZN4crow6ServerINS4_4CrowIJ17ExampleMiddlewareEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_EE3runEvEUlRKSt10error_codeE_SC_EESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.518", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder1<(lambda at /opt-bench/work/crow/Crow/include/crow/http_server.h:197:19), std::error_code>, std::allocator<void>>::ptr", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store ptr %2, ptr %3, align 8, !tbaa !2497
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !205
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.8.copyload = load i32, ptr %i.f, align 8, !tbaa !200
  store ptr null, ptr %i.b, align 8, !tbaa !988
  %i.g = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !376  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !377  ; 4 uses
  %.not3.i = icmp eq ptr %i.j, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !119
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !119
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.lcssa.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i8, ptr %i.r, align 8, !tbaa !114
  store i8 %i.s, ptr %0, align 8, !tbaa !114
  store ptr %0, ptr %i.q, align 8, !tbaa !119
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #40
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !989
  %.not.i.i.i = icmp eq i32 %.sroa.5.8.copyload, 0
  %or.cond = select i1 %1, i1 %.not.i.i.i, i1 false
  br i1 %or.cond, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN4crow6ServerINS4_4CrowIJ17ExampleMiddlewareEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_EE3runEvEUlRKSt10error_codeE_SC_EESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4crow6ServerINS_4CrowIJ17ExampleMiddlewareEEENS_18UnixSocketAcceptorENS_17UnixSocketAdaptorEJS2_EE7on_tickEv(ptr noundef nonnull align 8 dereferenceable(624) %i.e)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN4crow6ServerINS4_4CrowIJ17ExampleMiddlewareEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_EE3runEvEUlRKSt10error_codeE_SC_EESaIvEE3ptrD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN4crow6ServerINS4_4CrowIJ17ExampleMiddlewareEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_EE3runEvEUlRKSt10error_codeE_SC_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.t

_ZN4asio6detail17executor_function4implINS0_7binder1IZN4crow6ServerINS4_4CrowIJ17ExampleMiddlewareEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_EE3runEvEUlRKSt10error_codeE_SC_EESaIvEE3ptrD2Ev.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS5_EEEEE13enqueue_timerERKNS3_10time_pointIS5_NS3_8durationIlSt5ratioILl1ELl1000000000EEEEEERNS9_14per_timer_dataEPNS0_7wait_opE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.asio::detail::timer_queue<asio::detail::chrono_time_traits<std::chrono::_V2::system_clock, asio::wait_traits<std::chrono::_V2::system_clock>>>::heap_entry", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !389
  %.not = icmp eq ptr %2, %i.e
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !383  ; 7 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !386  ; 6 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = ashr exact i64 %i.l, 4                   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !381
  %i.o = load i64, ptr %1, align 8, !tbaa !111    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !838
  %.not.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.o, ptr %i.h, align 8, !tbaa !111
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !384
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.g, align 8, !tbaa !383
  br label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.l, 9223372036854775792
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #39
  unreachable

_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.m
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487)
  %i.w = select i1 %i.u, i64 576460752303423487, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #43 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.l ; 2 uses
  store i64 %i.o, ptr %i.z, align 8, !tbaa !111
  %.sroa.5.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx22, align 8, !tbaa !384
  %.not10.i.i.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.y, %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.i, %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !385, !alias.scope !2502
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2501

_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #41
  br label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i

_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i.i
  store ptr %i.y, ptr %i.f, align 8, !tbaa !386
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !383
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ad, ptr %i.p, align 8, !tbaa !838
  %.pre = ptrtoint ptr %i.y to i64
  br label %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit

_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit: ; preds = %bb.d, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i
  %.pre-phi = phi i64 [ %i.k, %bb.d ], [ %.pre, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i ]
  %i.ae = phi ptr [ %i.i, %bb.d ], [ %i.y, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i ]
  %i.af = phi ptr [ %i.r, %bb.d ], [ %i.ac, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i ]
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %.pre-phi
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = add nsw i64 %i.ai, -1                   ; 2 uses
  %.not11.i = icmp eq i64 %i.aj, 0
  br i1 %.not11.i, label %_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit, %bb.h
  %i.ak = phi ptr [ %i.as, %bb.h ], [ %i.ae, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit ] ; 2 uses
  %.0812.i = phi i64 [ %i.am, %bb.h ], [ %i.aj, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit ] ; 4 uses
  %i.al = add nsw i64 %.0812.i, -1
  %i.am = lshr i64 %i.al, 1                       ; 6 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %.0812.i ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.am ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.an, align 8, !tbaa !111
  %.sroa.0.0.copyload.i2.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !111
  %i.ap = icmp slt i64 %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i
  br i1 %i.ap, label %bb.h, label %_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit

bb.h:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !385
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !tbaa.struct !385
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !386
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !385
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !386 ; 3 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %.0812.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !388
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %.0812.i, ptr %i.aw, align 8, !tbaa !381
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.am
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !388
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.am, ptr %i.ba, align 8, !tbaa !381
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i19 = icmp eq i64 %i.am, 0
  br i1 %.not.i19, label %_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit, label %.lr.ph.i

_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit: ; preds = %bb.h, %.lr.ph.i, %_ZNSt6vectorIN4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212system_clockENS0_11wait_traitsIS6_EEEEE10heap_entryESaISB_EE9push_backERKSB_.exit
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !389 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !390
  store ptr null, ptr %i.a, align 8, !tbaa !359
  %.not18 = icmp eq ptr %i.bb, null
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %2, ptr %i.bd, align 8, !tbaa !359
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS5_EEEEE7up_heapEm.exit
  store ptr %2, ptr %i.d, align 8, !tbaa !389
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b, %bb.a
  store ptr null, ptr %3, align 8, !tbaa !343
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !344 ; 2 uses
  %.not.i20 = icmp eq ptr %i.bf, null
  %..i = select i1 %.not.i20, ptr %2, ptr %i.bf
  store ptr %3, ptr %..i, align 8, !tbaa !119
  store ptr %3, ptr %i.be, align 8, !tbaa !344
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !381
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %2, align 8, !tbaa !340
  %i.bk = icmp eq ptr %i.bj, %3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bl = phi i1 [ false, %bb.k ], [ %i.bk, %bb.l ]
  ret i1 %i.bl
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail18signal_set_service10async_waitIZN4crow6ServerINS3_4CrowIJ17ExampleMiddlewareEEENS3_18UnixSocketAcceptorENS3_17UnixSocketAdaptorEJS6_EE3runEvEUlRKSt10error_codeiE_NS_15any_io_executorEEEvRNS1_19implementation_typeERT_RKT0_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.asio::detail::signal_handler<(lambda at /opt-bench/work/crow/Crow/include/crow/http_server.h:211:15), asio::any_io_executor>::ptr", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr %2, ptr %4, align 8, !tbaa !992
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !376  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail14signal_handlerIZN4crow6ServerINS2_4CrowIJ17ExampleMiddlewareEEENS2_18UnixSocketAcceptorENS2_17UnixSocketAdaptorEJS5_EE3runEvEUlRKSt10error_codeiE_NS_15any_io_executorEE3ptr8allocateERSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !377
  br label %_ZN4asio6detail14signal_handlerIZN4crow6ServerINS2_4CrowIJ17ExampleMiddlewareEEENS2_18UnixSocketAcceptorENS2_17UnixSocketAdaptorEJS5_EE3runEvEUlRKSt10error_codeiE_NS_15any_io_executorEE3ptr8allocateERSD_.exit

_ZN4asio6detail14signal_handlerIZN4crow6ServerINS2_4CrowIJ17ExampleMiddlewareEEENS2_18UnixSocketAcceptorENS2_17UnixSocketAdaptorEJS5_EE3runEvEUlRKSt10error_codeiE_NS_15any_io_executorEE3ptr8allocateERSD_.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.g = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_11default_tagEEEPvT_PS1_mm(ptr noundef %i.f, i64 noundef 120, i64 noundef 8) ; 17 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !993
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !343
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_ZN4asio6detail14signal_handlerIZN4crow6ServerINS2_4CrowIJ17ExampleMiddlewareEEENS2_18UnixSocketAcceptorENS2_17UnixSocketAdaptorEJS5_EE3runEvEUlRKSt10error_codeiE_NS_15any_io_executorEE11do_completeEPvPNS0_19scheduler_operationESC_m, ptr %i.i, align 8, !tbaa !345
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !773
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 0, ptr %i.k, align 8, !tbaa !209
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #44
  store ptr %i.m, ptr %i.l, align 8, !tbaa !210
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr null, ptr %i.n, align 8, !tbaa !994
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !835
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.q = load i64, ptr %2, align 8, !tbaa !205
  store i64 %i.q, ptr %i.p, align 8, !tbaa !205
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !278
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4asio6detail14signal_handlerIZN4crow6ServerINS2_4CrowIJ17ExampleMiddlewareEEENS2_18UnixSocketAcceptorENS2_17UnixSocketAdaptorEJS5_EE3runEvEUlRKSt10error_codeiE_NS_15any_io_executorEE3ptr8allocateERSD_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !684
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !797
  %i.x = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.w()
          to label %_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i unwind label %bb.e, !inline_history !69

_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i: ; preds = %bb.c, %_ZN4asio6detail14signal_handlerIZN4crow6ServerINS2_4CrowIJ17ExampleMiddlewareEEENS2_18UnixSocketAcceptorENS2_17UnixSocketAdaptorEJS5_EE3runEvEUlRKSt10error_codeiE_NS_15any_io_executorEE3ptr8allocateERSD_.exit
  %i.y = phi ptr [ @_ZTIv, %_ZN4asio6detail14signal_handlerIZN4crow6ServerINS2_4CrowIJ17ExampleMiddlewareEEENS2_18UnixSocketAcceptorENS2_17UnixSocketAdaptorEJS5_EE3runEvEUlRKSt10error_codeiE_NS_15any_io_executorEE3ptr8allocateERSD_.exit ], [ %i.x, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !758 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, @_ZTSN4asio10io_context19basic_executor_typeISaIvELm0EEE
  br i1 %i.ab, label %_ZNKSt9type_infoeqERKS_.exit.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !114
  %.not.i3.i.i.i = icmp eq i8 %i.ac, 42
  br i1 %.not.i3.i.i.i, label %_ZNKSt9type_infoeqERKS_.exit.thread5.i.i.i, label %_ZNKSt9type_infoeqERKS_.exit.i.i.i

_ZNKSt9type_infoeqERKS_.exit.i.i.i:               ; preds = %bb.d
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(52) @_ZTSN4asio10io_context19basic_executor_typeISaIvELm0EEE) #40
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZNKSt9type_infoeqERKS_.exit.thread.i.i.i, label %_ZNKSt9type_infoeqERKS_.exit.thread5.i.i.i

_ZNKSt9type_infoeqERKS_.exit.thread.i.i.i:        ; preds = %_ZNKSt9type_infoeqERKS_.exit.i.i.i, %_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.ag, align 8, !tbaa !687
  br label %bb.f

_ZNKSt9type_infoeqERKS_.exit.thread5.i.i.i:       ; preds = %_ZNKSt9type_infoeqERKS_.exit.i.i.i, %bb.d
  invoke void @_ZNK14asio_prefer_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail16outstanding_work9tracked_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SE_SG_vvvvvvvE11result_typeEE4typeEOSE_OSF_(ptr dead_on_unwind nonnull writable sret(%"class.asio::any_io_executor") align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 1 dereferenceable(1) @_ZN14asio_prefer_fn15static_instanceINS_4implEE8instanceE, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4asio9execution6detail18outstanding_work_tILi0EE7trackedE)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread5.i.i.i, %bb.c
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #42
  unreachable

bb.f:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread.i.i.i, %_ZNKSt9type_infoeqERKS_.exit.thread5.i.i.i
  store ptr %i.g, ptr %i.h, align 8, !tbaa !995
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !412, !nonnull !199, !align !339
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 216
  %i.am = atomicrmw add ptr %i.al, i64 1 seq_cst, align 8 ; 0 uses
  %i.an = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4asio6detail16get_signal_stateEvE5state) #40 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.020.i = load ptr, ptr %i.ao, align 8, !tbaa !406 ; 2 uses
  %.not21.i = icmp eq ptr %.020.i, null
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %.022.i = phi ptr [ %.0.i, %bb.h ], [ %.020.i, %bb.f ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.022.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !836 ; 2 uses
  %.not14.i = icmp eq i64 %i.aq, 0
  br i1 %.not14.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.022.i, i64 16
  %i.as = add i64 %i.aq, -1
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !836
  %i.at = load i32, ptr %.022.i, align 8, !tbaa !403
  store i32 %i.at, ptr %i.o, align 8, !tbaa !835
  %i.au = load ptr, ptr %i.aj, align 8, !tbaa !412, !nonnull !199, !align !339
  invoke void @_ZN4asio6detail9scheduler24post_deferred_completionEPNS0_19scheduler_operationE(ptr noundef nonnull align 8 dereferenceable(256) %i.au, ptr noundef nonnull %i.g)
          to label %_ZN4asio6detail14signal_handlerIZN4crow6ServerINS2_4CrowIJ17ExampleMiddlewareEEENS2_18UnixSocketAcceptorENS2_17UnixSocketAdaptorEJS5_EE3runEvEUlRKSt10error_codeiE_NS_15any_io_executorEE3ptrD2Ev.exit unwind label %_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEED2Ev.exit.i

_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEED2Ev.exit.i: ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE19on_headers_completeEPNS_11http_parserE:bb.a
  store i8 %i.l, ptr %i.m, align 1, !tbaa !2562
  %i.n = icmp eq i8 %i.i, 1                       ; 2 uses
  %i.o = icmp eq i8 %i.l, 0
  %or.cond.i = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %0, align 8                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.r = trunc i32 %i.p to i8
  %i.s = lshr i8 %i.r, 1
  %i.t = and i8 %i.s, 1
  store i8 %i.t, ptr %i.q, align 2, !tbaa !2563
  %i.u = and i32 %i.p, 2
  %.not.i = icmp eq i32 %i.u, 0
  br label %_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE25set_connection_parametersEv.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i8 %i.l, 1
  %i.w = select i1 %i.n, i1 %i.v, i1 false        ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.y = zext i1 %i.w to i8
  store i8 %i.y, ptr %i.x, align 2, !tbaa !2563
  br i1 %i.w, label %bb.f, label %_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE25set_connection_parametersEv.exit

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %0, align 8
  %i.aa = and i32 %i.z, 4
  %i.ab = icmp ne i32 %i.aa, 0
  br label %_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE25set_connection_parametersEv.exit

_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE25set_connection_parametersEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.ac = phi i1 [ %.not.i, %bb.d ], [ %i.ab, %bb.f ], [ false, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 291
  %i.ae = zext i1 %i.ac to i8
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !2564
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 292
  %.lobit.i = lshr i16 %i.ag, 15
  %i.ai = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.ai, ptr %i.ah, align 4, !tbaa !2565
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1038
  tail call void @_ZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE13handle_headerEv(ptr noundef nonnull align 8 dereferenceable(5176) %i.ak), !inline_history !2560
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE7on_bodyEPNS_11http_parserEPKcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPKcvEEN9__gnu_cxx17__normal_iteratorIPcS4_EENS9_IS7_S4_EET_SD_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.b, i64 noundef 0, ptr noundef %1, i64 noundef %2) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE19on_message_completeEPNS_11http_parserE(ptr noundef %0) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i8 1, ptr %i.a, align 4, !tbaa !1077
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1038
  tail call void @_ZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE6handleEv(ptr noundef nonnull align 8 dereferenceable(5176) %i.c), !inline_history !2566
  ret i32 0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4crow19http_parser_executeEPNS_11http_parserEPKNS_20http_parser_settingsEPKcm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %.fr = freeze i32 %i.a                          ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 76 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !2572 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 177 uses
  %i.e = load i16, ptr %i.d, align 2              ; 2 uses
  %i.f = and i16 %i.e, 32512
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.b, label %.thread1320

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %3, 0
  br i1 %i.g, label %bb.c, label %.lr.ph4843

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i32 %.fr, 7
  %trunc1257 = trunc i32 %i.h to i8
  switch i8 %trunc1257, label %bb.g [
    i8 45, label %bb.d
    i8 1, label %.thread1320
    i8 2, label %.thread1320
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2574 ; 2 uses
  %.not1258 = icmp eq ptr %i.j, null
  br i1 %.not1258, label %.thread1320, label %bb.e, !prof !117

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull %0)
  %.not1259 = icmp eq i32 %i.k, 0
  br i1 %.not1259, label %.thread1320, label %bb.f, !prof !501

bb.f:                                             ; preds = %bb.e
  store i32 %i.c, ptr %i.b, align 4, !tbaa !2572
  %i.l = load i16, ptr %i.d, align 2
  %i.m = and i16 %i.l, -32513
  %i.n = or disjoint i16 %i.m, 2048
  store i16 %i.n, ptr %i.d, align 2
  br label %.thread1320

bb.g:                                             ; preds = %bb.c
  %i.o = or disjoint i16 %i.e, 2560
  store i16 %i.o, ptr %i.d, align 2
  br label %.thread1320

.lr.ph4843:                                       ; preds = %bb.b
  %i.p = getelementptr i8, ptr %2, i64 %3         ; 14 uses
  %i.q = lshr i32 %.fr, 7
  %trunc = trunc i32 %i.q to i8
  %trunc.off = add i8 %trunc, -5
  %switch = icmp ult i8 %trunc.off, 9
  %spec.select1276 = select i1 %switch, ptr %2, ptr null
  %i.r = and i32 %.fr, 32640                      ; 2 uses
  %i.s = icmp eq i32 %i.r, 4096
  %.01020 = select i1 %i.s, ptr %2, ptr null
  %i.t = icmp eq i32 %i.r, 3456
  %spec.select = select i1 %i.t, ptr %2, ptr null
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.w = ptrtoint ptr %i.p to i64                 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.y = and i32 %.fr, 268435456
  %.not1182 = icmp eq i32 %i.y, 0
  %i.z = and i32 %.fr, 536870912
  %.not1181 = icmp eq i32 %i.z, 0                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = and i32 %.fr, 536870912
  %i.ac = icmp ne i32 %i.ab, 0                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.ae = getelementptr inbounds i8, ptr %i.p, i64 -1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph4843, %.thread1285
  %.09994841 = phi i32 [ %i.c, %.lr.ph4843 ], [ %.51004, %.thread1285 ] ; 2 uses
  %.010064840 = phi ptr [ null, %.lr.ph4843 ], [ %.7, %.thread1285 ] ; 2 uses
  %.010134804 = phi ptr [ null, %.lr.ph4843 ], [ %.21015, %.thread1285 ] ; 94 uses
  %.110174768 = phi ptr [ %spec.select1276, %.lr.ph4843 ], [ %.31019, %.thread1285 ] ; 92 uses
  %.110214767 = phi ptr [ %.01020, %.lr.ph4843 ], [ %.9, %.thread1285 ] ; 2 uses
  %.110294731 = phi ptr [ %spec.select, %.lr.ph4843 ], [ %.51033, %.thread1285 ] ; 88 uses
  %.010344730 = phi ptr [ %2, %.lr.ph4843 ], [ %i.ajy, %.thread1285 ] ; 4 uses
  %i.ak = load i8, ptr %.010344730, align 1, !tbaa !114
  %i.al = load i32, ptr %0, align 8
  %i.am = and i32 %i.al, 32640
  %i.an = icmp samesign ult i32 %i.am, 5248
  br i1 %i.an, label %bb.i, label %.outer

bb.i:                                             ; preds = %bb.h
  %i.ao = add i32 %.09994841, 1                   ; 3 uses
  %i.ap = icmp ugt i32 %i.ao, 81920
  br i1 %i.ap, label %bb.j, label %.outer, !prof !117

bb.j:                                             ; preds = %bb.i
  %i.aq = load i16, ptr %i.d, align 2
  %i.ar = and i16 %i.aq, -32513
  %i.as = or disjoint i16 %i.ar, 2816             ; 2 uses
  store i16 %i.as, ptr %i.d, align 2
  br label %.thread

.outer:                                           ; preds = %bb.i, %bb.h
  %.11000 = phi i32 [ %i.ao, %bb.i ], [ %.09994841, %bb.h ] ; 93 uses
  %i.at = freeze i8 %i.ak                         ; 79 uses
  switch i8 %i.at, label %.outer1361.preheader [
    i8 32, label %.outer1361.us.preheader
    i8 9, label %.outer1361.us.preheader
  ]

.outer1361.us.preheader:                          ; preds = %.outer, %.outer
  br label %.outer1361.us

.outer1361.preheader:                             ; preds = %bb.hj, %bb.hm, %bb.hi, %bb.ec, %bb.kc, %.outer
  %.11007.ph6779 = phi ptr [ %.010064840, %.outer ], [ %.us-phi2411, %bb.hi ], [ %.us-phi2411, %bb.hj ], [ %.us-phi2411, %bb.hm ], [ %.us-phi2387, %bb.ec ], [ %.us-phi2436, %bb.kc ]
  %.21022.ph6778 = phi ptr [ %.110214767, %.outer ], [ null, %bb.hi ], [ null, %bb.hj ], [ null, %bb.hm ], [ %.us-phi2388, %bb.ec ], [ %.us-phi2437, %bb.kc ]
  %.11035.ph6777 = phi ptr [ %.010344730, %.outer ], [ %.610404706, %bb.hi ], [ %.610404706, %bb.hj ], [ %.610404706, %bb.hm ], [ %.us-phi2386, %bb.ec ], [ %.us-phi2435, %bb.kc ]
  %.01044.ph6745 = phi i8 [ %i.at, %.outer ], [ 10, %bb.hi ], [ 10, %bb.hj ], [ 10, %bb.hm ], [ 10, %bb.ec ], [ 10, %bb.kc ] ; 77 uses
  %.21001.ph.ph6705 = phi i32 [ %.11000, %.outer ], [ %i.wg, %bb.hi ], [ %i.wg, %bb.hj ], [ %i.wg, %bb.hm ], [ %.21001.ph.ph6725, %bb.ec ], [ %.21001.ph.ph6733, %bb.kc ] ; 92 uses
  br label %.outer1361

.outer1361.us:                                    ; preds = %.outer1361.us.backedge, %.outer1361.us.preheader
  %.11035.ph1362.us = phi ptr [ %.010344730, %.outer1361.us.preheader ], [ %i.cb, %.outer1361.us.backedge ] ; 93 uses
  %.21022.ph1363.us = phi ptr [ %.110214767, %.outer1361.us.preheader ], [ %.us-phi3506.us, %.outer1361.us.backedge ] ; 46 uses
  %.11007.ph1364.us = phi ptr [ %.010064840, %.outer1361.us.preheader ], [ null, %.outer1361.us.backedge ] ; 89 uses
  %i.au = ptrtoint ptr %.11035.ph1362.us to i64   ; 5 uses
  switch i8 %i.at, label %.outer1366.us.us [
    i8 32, label %.outer1361.split.us.split.us.us
    i8 9, label %.outer1361.split.us.split.us.us
  ]

.outer1361.split.us.split.us.us:                  ; preds = %.outer1361.us, %.outer1361.us
  %.promoted.us.us.us = load i32, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %.backedge.us.us.us.us, %.outer1361.split.us.split.us.us
  %i.av = phi i32 [ %i.bd, %.backedge.us.us.us.us ], [ %.promoted.us.us.us, %.outer1361.split.us.split.us.us ] ; 42 uses
  %i.aw = lshr i32 %i.av, 7                       ; 10 uses
  %trunc1139.us.us.us.us = trunc i32 %i.aw to i8
  switch i8 %trunc1139.us.us.us.us, label %.split.us [
    i8 1, label %.split2241.us.split.us
    i8 2, label %.split2248.us.split.us
    i8 3, label %.split2256.us.split.us
    i8 4, label %.split2264.us.split.us
    i8 5, label %.split2272.us.split.us
    i8 6, label %.split2272.us.split.us
    i8 7, label %.split2272.us.split.us
    i8 8, label %.split2272.us.split.us
    i8 9, label %.split2280.us.split.us
    i8 10, label %.split2280.us.split.us
    i8 11, label %.split2280.us.split.us
    i8 12, label %.split2280.us.split.us
    i8 13, label %.split2280.us.split.us
    i8 14, label %.split2289.us.split.us
    i8 15, label %.split2297.us.split.us
    i8 16, label %.split2305.us.split.us
    i8 17, label %.split2313.us.split.us
    i8 19, label %.split2321.us.split.us
    i8 20, label %.split2329.us.split.us
    i8 18, label %.split2337.us.split.us
    i8 21, label %.split2345.us.split.us
    i8 22, label %.split2353.us.split.us
    i8 23, label %.split2361.us.split.us
    i8 24, label %.split2369.us.split.us
    i8 25, label %.split2377.us.split.us
    i8 26, label %.split2385.us.split.us
    i8 27, label %.preheader
    i8 28, label %.split2395.us.split.us
    i8 31, label %.loopexit1360
    i8 32, label %.split2409.us.split.us
    i8 34, label %.split2415.us.split.us
    i8 33, label %.backedge.us.us.us.us
    i8 29, label %.split2423.us.split.us
    i8 30, label %.split2431.us.us.us.split.us
    i8 39, label %.split2434.us.split.us
    i8 40, label %.split2440.us.split.us
    i8 44, label %.split2448.us.split.us.us
    i8 45, label %.split2452.us.split.us
    i8 46, label %.split2458.us.split.us
    i8 35, label %.split2464.us.split.us
    i8 36, label %.split2472.us.split.us
    i8 37, label %.split2480.us.split.us
    i8 38, label %.split2488.us.split.us
    i8 41, label %.split2496.us.split.us
    i8 42, label %.split2503.us.split.us
    i8 43, label %.split2511.us.split.us
  ]

.backedge.us.us.us.us:                            ; preds = %bb.k
  %i.ax = and i32 %i.av, 4161536
  %i.ay = icmp eq i32 %i.ax, 360448
  %i.az = and i32 %i.av, -4194177
  %i.ba = or disjoint i32 %i.az, 393216
  %i.bb = and i32 %i.av, -32641
  %i.bc = select i1 %i.ay, i32 %i.ba, i32 %i.bb
  %i.bd = or disjoint i32 %i.bc, 3968             ; 2 uses
  store i32 %i.bd, ptr %0, align 8
  br label %bb.k

.outer1366.us.us:                                 ; preds = %.outer1361.us, %.outer1366.us.us.backedge
  %.21022.ph1367.us.us = phi ptr [ null, %.outer1366.us.us.backedge ], [ %.21022.ph1363.us, %.outer1361.us ] ; 46 uses
  %.promoted.us.us4066 = load i32, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %.backedge.us.us.us4068, %.outer1366.us.us
  %i.be = phi i32 [ %i.bm, %.backedge.us.us.us4068 ], [ %.promoted.us.us4066, %.outer1366.us.us ] ; 42 uses
  %i.bf = lshr i32 %i.be, 7                       ; 10 uses
  %trunc1139.us.us.us4067 = trunc i32 %i.bf to i8
  switch i8 %trunc1139.us.us.us4067, label %.split.us [
    i8 1, label %.split2241.us.split.us
    i8 2, label %.split2248.us.split.us
    i8 3, label %.split2256.us.split.us
    i8 4, label %.split2264.us.split.us
    i8 5, label %.split2272.us.split.us
    i8 6, label %.split2272.us.split.us
    i8 7, label %.split2272.us.split.us
    i8 8, label %.split2272.us.split.us
    i8 9, label %.split2280.us.split.us
    i8 10, label %.split2280.us.split.us
    i8 11, label %.split2280.us.split.us
    i8 12, label %.split2280.us.split.us
    i8 13, label %.split2280.us.split.us
    i8 14, label %.split2289.us.split.us
    i8 15, label %.split2297.us.split.us
    i8 16, label %.split2305.us.split.us
    i8 17, label %.split2313.us.split.us
    i8 19, label %.split2321.us.split.us
    i8 20, label %.split2329.us.split.us
    i8 18, label %.split2337.us.split.us
    i8 21, label %.split2345.us.split.us
    i8 22, label %.split2353.us.split.us
    i8 23, label %.split2361.us.split.us
    i8 24, label %.split2369.us.split.us
    i8 25, label %.split2377.us.split.us
    i8 26, label %.split2385.us.split.us
    i8 27, label %.preheader
    i8 28, label %.split2395.us.split.us
    i8 31, label %.loopexit1360
    i8 32, label %.split2409.us.split.us
    i8 34, label %.split2415.us.split.us
    i8 33, label %.backedge.us.us.us4068
    i8 29, label %.split2423.us.split.us
    i8 30, label %.split2431.us.us.us4069
    i8 39, label %.split2434.us.split.us
    i8 40, label %.split2440.us.split.us
    i8 44, label %.split2448.us.split.us.us
    i8 45, label %.split2452.us.split.us
    i8 46, label %.split2458.us.split.us
    i8 35, label %.split2464.us.split.us
    i8 36, label %.split2472.us.split.us
    i8 37, label %.split2480.us.split.us
    i8 38, label %.split2488.us.split.us
    i8 41, label %.split2496.us.split.us
    i8 42, label %.split2503.us.split.us
    i8 43, label %.split2511.us.split.us
  ]

.backedge.us.us.us4068:                           ; preds = %bb.l
  %i.bg = and i32 %i.be, 4161536
  %i.bh = icmp eq i32 %i.bg, 360448
  %i.bi = and i32 %i.be, -4194177
  %i.bj = or disjoint i32 %i.bi, 393216
  %i.bk = and i32 %i.be, -32641
  %i.bl = select i1 %i.bh, i32 %i.bj, i32 %i.bk
  %i.bm = or disjoint i32 %i.bl, 3968             ; 2 uses
  store i32 %i.bm, ptr %0, align 8
  br label %bb.l

.split2431.us.us.us4069:                          ; preds = %bb.l
  %.not1189.us.us = icmp eq ptr %.21022.ph1367.us.us, null
  %spec.select1272.us.us = select i1 %.not1189.us.us, ptr %.11035.ph1362.us, ptr %.21022.ph1367.us.us ; 3 uses
  %i.bn = and i32 %i.be, -32641
  %i.bo = or disjoint i32 %i.bn, 3328
  store i32 %i.bo, ptr %0, align 8
  %.not1190.us.us = icmp eq ptr %spec.select1272.us.us, null
  br i1 %.not1190.us.us, label %.outer1366.us.us.backedge, label %bb.m

bb.m:                                             ; preds = %.split2431.us.us.us4069
  %i.bp = load ptr, ptr %i.u, align 8, !tbaa !2575 ; 2 uses
  %.not1191.us.us = icmp eq ptr %i.bp, null
  br i1 %.not1191.us.us, label %.outer1366.us.us.backedge, label %bb.n, !prof !117

bb.n:                                             ; preds = %bb.m
  %i.bq = ptrtoint ptr %spec.select1272.us.us to i64
  %i.br = sub i64 %i.au, %i.bq
  %i.bs = tail call noundef i32 %i.bp(ptr noundef nonnull %0, ptr noundef nonnull %spec.select1272.us.us, i64 noundef %i.br)
  %.not1192.us.us = icmp eq i32 %i.bs, 0
  %.pre6604 = load i16, ptr %i.d, align 2         ; 2 uses
  br i1 %.not1192.us.us, label %bb.p, label %bb.o, !prof !501

bb.o:                                             ; preds = %bb.n
  store i32 %.11000, ptr %i.b, align 4, !tbaa !2572
  %i.bt = and i16 %.pre6604, -32513
  %i.bu = or disjoint i16 %i.bt, 1280             ; 2 uses
  store i16 %i.bu, ptr %i.d, align 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bv = phi i16 [ %i.bu, %bb.o ], [ %.pre6604, %bb.n ]
  %i.bw = and i16 %i.bv, 32512
  %.not1193.us.us = icmp eq i16 %i.bw, 0
  br i1 %.not1193.us.us, label %.outer1366.us.us.backedge, label %.split2733.us, !prof !501

.outer1366.us.us.backedge:                        ; preds = %bb.p, %bb.m, %.split2431.us.us.us4069
  br label %.outer1366.us.us

.split2448.us.split.us.us:                        ; preds = %bb.k, %bb.l
  %.us-phi3506.us = phi ptr [ %.21022.ph1367.us.us, %bb.l ], [ %.21022.ph1363.us, %bb.k ] ; 2 uses
  %.us-phi3507.us = phi i32 [ %i.be, %bb.l ], [ %i.av, %bb.k ]
  %i.bx = load i64, ptr %i.v, align 8, !tbaa !2576 ; 3 uses
  %i.by = sub i64 %i.w, %i.au                     ; 2 uses
  %..us = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 %i.by) ; 2 uses
  %.not1152.us = icmp eq ptr %.11007.ph1364.us, null
  %.21008.us = select i1 %.not1152.us, ptr %.11035.ph1362.us, ptr %.11007.ph1364.us ; 4 uses
  %i.bz = sub nuw i64 %i.bx, %..us
  store i64 %i.bz, ptr %i.v, align 8, !tbaa !2576
  %i.ca = getelementptr i8, ptr %.11035.ph1362.us, i64 %..us
  %i.cb = getelementptr i8, ptr %i.ca, i64 -1     ; 3 uses
  %.not1346.us = icmp ugt i64 %i.bx, %i.by
  br i1 %.not1346.us, label %.thread1285, label %bb.q

bb.q:                                             ; preds = %.split2448.us.split.us.us
  %i.cc = and i32 %.us-phi3507.us, -32641
  %i.cd = or disjoint i32 %i.cc, 5888
  store i32 %i.cd, ptr %0, align 8
  %.not1153.us = icmp eq ptr %.21008.us, null
  br i1 %.not1153.us, label %.outer1361.us.backedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = load ptr, ptr %i.x, align 8, !tbaa !2577 ; 2 uses
  %.not1154.us = icmp eq ptr %i.ce, null
  br i1 %.not1154.us, label %.outer1361.us.backedge, label %bb.s, !prof !117

bb.s:                                             ; preds = %bb.r
  %i.cf = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.cg = ptrtoint ptr %.21008.us to i64
  %reass.sub = sub i64 %i.cf, %i.cg
  %i.ch = add i64 %reass.sub, 1
  %i.ci = tail call noundef i32 %i.ce(ptr noundef nonnull %0, ptr noundef nonnull %.21008.us, i64 noundef %i.ch)
  %.not1155.us = icmp eq i32 %i.ci, 0
  %.pre = load i16, ptr %i.d, align 2             ; 2 uses
  br i1 %.not1155.us, label %bb.u, label %bb.t, !prof !501

bb.t:                                             ; preds = %bb.s
  store i32 %.11000, ptr %i.b, align 4, !tbaa !2572
  %i.cj = and i16 %.pre, -32513
  %i.ck = or disjoint i16 %i.cj, 1792             ; 2 uses
  store i16 %i.ck, ptr %i.d, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cl = phi i16 [ %i.ck, %bb.t ], [ %.pre, %bb.s ]
  %i.cm = and i16 %i.cl, 32512
  %.not1156.us = icmp eq i16 %i.cm, 0
  br i1 %.not1156.us, label %.outer1361.us.backedge, label %.thread1334, !prof !501

.outer1361.us.backedge:                           ; preds = %bb.u, %bb.r, %bb.q
  br label %.outer1361.us

.outer1361:                                       ; preds = %.outer1361.backedge, %.outer1361.preheader
  %.11035.ph1362 = phi ptr [ %.11035.ph6777, %.outer1361.preheader ], [ %i.agg, %.outer1361.backedge ] ; 93 uses
  %.21022.ph1363 = phi ptr [ %.21022.ph6778, %.outer1361.preheader ], [ %.us-phi2894, %.outer1361.backedge ] ; 46 uses
  %.11007.ph1364 = phi ptr [ %.11007.ph6779, %.outer1361.preheader ], [ null, %.outer1361.backedge ] ; 89 uses
  %i.cn = ptrtoint ptr %.11035.ph1362 to i64      ; 5 uses
  switch i8 %.01044.ph6745, label %.outer1366 [
    i8 32, label %.outer1361.split.split.us
    i8 9, label %.outer1361.split.split.us
  ]

.outer1361.split.split.us:                        ; preds = %.outer1361, %.outer1361
  %.promoted.us2737 = load i32, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %.backedge.us, %.outer1361.split.split.us
  %i.co = phi i32 [ %i.cx, %.backedge.us ], [ %.promoted.us2737, %.outer1361.split.split.us ] ; 44 uses
  %i.cp = lshr i32 %i.co, 7                       ; 10 uses
  %trunc1139.us = trunc i32 %i.cp to i8
  switch i8 %trunc1139.us, label %.split.us [
    i8 1, label %.split2241.us.split.us
    i8 2, label %.split2248.us.split.us
    i8 3, label %.split2256.us.split.us
    i8 4, label %.split2264.us.split.us
    i8 5, label %.split2272.us.split.us
    i8 6, label %.split2272.us.split.us
    i8 7, label %.split2272.us.split.us
    i8 8, label %.split2272.us.split.us
    i8 9, label %.split2280.us.split.us
    i8 10, label %.split2280.us.split.us
    i8 11, label %.split2280.us.split.us
    i8 12, label %.split2280.us.split.us
    i8 13, label %.split2280.us.split.us
    i8 14, label %.split2289.us.split.us
    i8 15, label %.split2297.us.split.us
    i8 16, label %.split2305.us.split.us
    i8 17, label %.split2313.us.split.us
    i8 19, label %.split2321.us.split.us
    i8 20, label %.split2329.us.split.us
    i8 18, label %.split2337.us.split.us
    i8 21, label %.split2345.us.split.us
    i8 22, label %.split2353.us.split.us
    i8 23, label %.split2361.us.split.us
    i8 24, label %.split2369.us.split.us
    i8 25, label %.split2377.us.split.us
    i8 26, label %.split2385.us.split.us
    i8 27, label %.preheader
    i8 28, label %.split2395.us.split.us
    i8 31, label %.loopexit1360
    i8 32, label %.split2409.us.split.us
    i8 34, label %.split2415.us.split.us
    i8 33, label %bb.w
    i8 29, label %.split2423.us.split.us
    i8 30, label %.split2431.us.us.us.split.us
    i8 39, label %.split2434.us.split.us
    i8 40, label %.split2440.us.split.us
    i8 44, label %.split2448
    i8 45, label %.split2452.us.split.us
    i8 46, label %.split2458.us.split.us
    i8 35, label %.split2464.us.split.us
    i8 36, label %.split2472.us.split.us
    i8 37, label %.split2480.us.split.us
    i8 38, label %.split2488.us.split.us
    i8 41, label %.split2496.us.split.us
    i8 42, label %.split2503.us.split.us
    i8 43, label %.split2511.us.split.us
  ]

bb.w:                                             ; preds = %bb.v
  %i.cq = lshr i32 %i.co, 15
  %i.cr = and i32 %i.cq, 127
  switch i32 %i.cr, label %.backedge.us [
    i32 21, label %bb.z
    i32 22, label %bb.y
    i32 20, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.cs = or i32 %i.co, 1
  br label %.backedge.us

bb.y:                                             ; preds = %bb.w
  %i.ct = or i32 %i.co, 4
  br label %.backedge.us

bb.z:                                             ; preds = %bb.w
  %i.cu = or i32 %i.co, 2
  br label %.backedge.us

.backedge.us:                                     ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %i.cv = phi i32 [ %i.co, %bb.w ], [ %i.cs, %bb.x ], [ %i.ct, %bb.y ], [ %i.cu, %bb.z ]
  %i.cw = and i32 %i.cv, -32641
  %i.cx = or disjoint i32 %i.cw, 3328             ; 2 uses
  store i32 %i.cx, ptr %0, align 8
  br label %bb.v

.outer1366:                                       ; preds = %.outer1361, %.outer1366.backedge
  %.21022.ph1367 = phi ptr [ null, %.outer1366.backedge ], [ %.21022.ph1363, %.outer1361 ] ; 46 uses
  %.promoted = load i32, ptr %0, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %.backedge, %.outer1366
  %i.cy = phi i32 [ %i.abj, %.backedge ], [ %.promoted, %.outer1366 ] ; 44 uses
  %i.cz = lshr i32 %i.cy, 7                       ; 10 uses
  %trunc1139 = trunc i32 %i.cz to i8
  switch i8 %trunc1139, label %.split.us [
    i8 1, label %.split2241.us.split.us
    i8 2, label %.split2248.us.split.us
    i8 3, label %.split2256.us.split.us
    i8 4, label %.split2264.us.split.us
    i8 5, label %.split2272.us.split.us
    i8 6, label %.split2272.us.split.us
    i8 7, label %.split2272.us.split.us
    i8 8, label %.split2272.us.split.us
    i8 9, label %.split2280.us.split.us
    i8 10, label %.split2280.us.split.us
    i8 11, label %.split2280.us.split.us
    i8 12, label %.split2280.us.split.us
    i8 13, label %.split2280.us.split.us
    i8 14, label %.split2289.us.split.us
    i8 15, label %.split2297.us.split.us
    i8 16, label %.split2305.us.split.us
    i8 17, label %.split2313.us.split.us
    i8 19, label %.split2321.us.split.us
    i8 20, label %.split2329.us.split.us
    i8 18, label %.split2337.us.split.us
    i8 21, label %.split2345.us.split.us
    i8 22, label %.split2353.us.split.us
    i8 23, label %.split2361.us.split.us
    i8 24, label %.split2369.us.split.us
    i8 25, label %.split2377.us.split.us
    i8 26, label %.split2385.us.split.us
    i8 27, label %.preheader
    i8 28, label %.split2395.us.split.us
    i8 31, label %.loopexit1360
    i8 32, label %.split2409.us.split.us
    i8 34, label %.split2415.us.split.us
    i8 33, label %bb.ja
    i8 29, label %.split2423.us.split.us
    i8 30, label %.split2431
    i8 39, label %.split2434.us.split.us
    i8 40, label %.split2440.us.split.us
    i8 44, label %.split2448
    i8 45, label %.split2452.us.split.us
    i8 46, label %.split2458.us.split.us
    i8 35, label %.split2464.us.split.us
    i8 36, label %.split2472.us.split.us
    i8 37, label %.split2480.us.split.us
    i8 38, label %.split2488.us.split.us
    i8 41, label %.split2496.us.split.us
    i8 42, label %.split2503.us.split.us
    i8 43, label %.split2511.us.split.us
  ]

.preheader:                                       ; preds = %bb.k, %bb.v, %bb.l, %bb.aa
  %.21001.ph.ph6726 = phi i32 [ %.21001.ph.ph6705, %bb.v ], [ %.11000, %bb.l ], [ %.21001.ph.ph6705, %bb.aa ], [ %.11000, %bb.k ] ; 2 uses
  %i.da = phi i32 [ %i.co, %bb.v ], [ %i.be, %bb.l ], [ %i.cy, %bb.aa ], [ %i.av, %bb.k ]
  %.us-phi2391 = phi ptr [ %.11035.ph1362, %bb.v ], [ %.11035.ph1362.us, %bb.l ], [ %.11035.ph1362, %bb.aa ], [ %.11035.ph1362.us, %bb.k ] ; 5 uses
  %.us-phi2392 = phi ptr [ %.11007.ph1364, %bb.v ], [ %.11007.ph1364.us, %bb.l ], [ %.11007.ph1364, %bb.aa ], [ %.11007.ph1364.us, %bb.k ] ; 4 uses
  %.us-phi2393 = phi ptr [ %.21022.ph1363, %bb.v ], [ %.21022.ph1367.us.us, %bb.l ], [ %.21022.ph1367, %bb.aa ], [ %.21022.ph1363.us, %bb.k ] ; 4 uses
  %.not12174725 = icmp eq ptr %.us-phi2391, %i.p
  br i1 %.not12174725, label %._crit_edge, label %.lr.ph4727

.split2241.us.split.us:                           ; preds = %bb.k, %bb.v, %bb.l, %bb.aa
  %.01044.ph6746 = phi i8 [ %.01044.ph6745, %bb.v ], [ %i.at, %bb.l ], [ %.01044.ph6745, %bb.aa ], [ %i.at, %bb.k ]
  %.21001.ph.ph6707 = phi i32 [ %.21001.ph.ph6705, %bb.v ], [ %.11000, %bb.l ], [ %.21001.ph.ph6705, %bb.aa ], [ %.11000, %bb.k ] ; 3 uses
  %.us-phi2244 = phi ptr [ %.11035.ph1362, %bb.v ], [ %.11035.ph1362.us, %bb.l ], [ %.11035.ph1362, %bb.aa ], [ %.11035.ph1362.us, %bb.k ] ; 3 uses
  %.us-phi2245 = phi ptr [ %.11007.ph1364, %bb.v ], [ %.11007.ph1364.us, %bb.l ], [ %.11007.ph1364, %bb.aa ], [ %.11007.ph1364.us, %bb.k ] ; 2 uses
  %.us-phi2246 = phi ptr [ %.21022.ph1363, %bb.v ], [ %.21022.ph1367.us.us, %bb.l ], [ %.21022.ph1367, %bb.aa ], [ %.21022.ph1363.us, %bb.k ] ; 2 uses
  switch i8 %.01044.ph6746, label %bb.ab [
    i8 13, label %.thread1285
    i8 10, label %.thread1285
  ], !prof !2578

bb.ab:                                            ; preds = %.split2241.us.split.us
  %i.db = load i16, ptr %i.d, align 2
  %i.dc = and i16 %i.db, -32513
  %i.dd = or disjoint i16 %i.dc, 3072             ; 2 uses
  store i16 %i.dd, ptr %i.d, align 2
  br label %.thread

.split2248.us.split.us:                           ; preds = %bb.k, %bb.v, %bb.l, %bb.aa
  %.01044.ph6747 = phi i8 [ %.01044.ph6745, %bb.v ], [ %i.at, %bb.l ], [ %.01044.ph6745, %bb.aa ], [ %i.at, %bb.k ] ; 3 uses
  %.21001.ph.ph6708 = phi i32 [ %.21001.ph.ph6705, %bb.v ], [ %.11000, %bb.l ], [ %.21001.ph.ph6705, %bb.aa ], [ %.11000, %bb.k ] ; 7 uses
  %.us-phi2251 = phi ptr [ %.11035.ph1362, %bb.v ], [ %.11035.ph1362.us, %bb.l ], [ %.11035.ph1362, %bb.aa ], [ %.11035.ph1362.us, %bb.k ] ; 7 uses
  %.us-phi2252 = phi ptr [ %.11007.ph1364, %bb.v ], [ %.11007.ph1364.us, %bb.l ], [ %.11007.ph1364, %bb.aa ], [ %.11007.ph1364.us, %bb.k ] ; 4 uses
  %.us-phi2253 = phi ptr [ %.21022.ph1363, %bb.v ], [ %.21022.ph1367.us.us, %bb.l ], [ %.21022.ph1367, %bb.aa ], [ %.21022.ph1363.us, %bb.k ] ; 4 uses
  %.us-phi2254 = phi i32 [ %i.co, %bb.v ], [ %i.be, %bb.l ], [ %i.cy, %bb.aa ], [ %i.av, %bb.k ] ; 2 uses
  switch i8 %.01044.ph6747, label %bb.ac [
    i8 13, label %.thread1285
    i8 10, label %.thread1285
  ]

bb.ac:                                            ; preds = %.split2248.us.split.us
  %i.de = and i32 %.us-phi2254, -134217856
  store i32 %i.de, ptr %0, align 8
  store i64 -1, ptr %i.v, align 8, !tbaa !2576
  %i.df = or i8 %.01044.ph6747, 32
  %i.dg = add i8 %i.df, -123
  %i.dh = icmp ult i8 %i.dg, -26
  %i.di = load i16, ptr %i.d, align 2             ; 3 uses
  br i1 %i.dh, label %bb.ad, label %bb.ae, !prof !117

bb.ad:                                            ; preds = %bb.ac
  %i.dj = and i16 %i.di, -32513
  %i.dk = or disjoint i16 %i.dj, 3840             ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4crow19http_parser_executeEPNS_11http_parserEPKNS_20http_parser_settingsEPKcm:bb.a
  %i.agr = and i16 %i.agq, 32512
  %.not1156 = icmp eq i16 %i.agr, 0
  br i1 %.not1156, label %.outer1361.backedge, label %.thread1334, !prof !501

.thread1334:                                      ; preds = %bb.u, %bb.lo
  %.us-phi4698 = phi i64 [ %i.agk, %bb.lo ], [ %i.cf, %bb.u ]
  %i.ags = ptrtoint ptr %2 to i64
  %i.agt = sub i64 %.us-phi4698, %i.ags
  br label %.thread1320

.split2452.us.split.us:                           ; preds = %bb.k, %bb.v, %bb.l, %bb.aa
  %.21001.ph.ph6735 = phi i32 [ %.21001.ph.ph6705, %bb.v ], [ %.11000, %bb.l ], [ %.21001.ph.ph6705, %bb.aa ], [ %.11000, %bb.k ]
  %.us-phi2454 = phi ptr [ %.11035.ph1362, %bb.v ], [ %.11035.ph1362.us, %bb.l ], [ %.11035.ph1362, %bb.aa ], [ %.11035.ph1362.us, %bb.k ]
  %.us-phi2455 = phi ptr [ %.11007.ph1364, %bb.v ], [ %.11007.ph1364.us, %bb.l ], [ %.11007.ph1364, %bb.aa ], [ %.11007.ph1364.us, %bb.k ] ; 2 uses
  %.us-phi2456 = phi ptr [ %.21022.ph1363, %bb.v ], [ %.21022.ph1367.us.us, %bb.l ], [ %.21022.ph1367, %bb.aa ], [ %.21022.ph1363.us, %bb.k ]
  %.not1151 = icmp eq ptr %.us-phi2455, null
  %spec.select1273 = select i1 %.not1151, ptr %.us-phi2454, ptr %.us-phi2455
  br label %.thread1285

.split2458.us.split.us:                           ; preds = %bb.k, %bb.v, %bb.l, %bb.aa
  %.21001.ph.ph6736 = phi i32 [ %.21001.ph.ph6705, %bb.v ], [ %.11000, %bb.l ], [ %.21001.ph.ph6705, %bb.aa ], [ %.11000, %bb.k ] ; 3 uses
  %.us-phi2460 = phi ptr [ %.11035.ph1362, %bb.v ], [ %.11035.ph1362.us, %bb.l ], [ %.11035.ph1362, %bb.aa ], [ %.11035.ph1362.us, %bb.k ] ; 3 uses
  %.us-phi2461 = phi ptr [ %.11007.ph1364, %bb.v ], [ %.11007.ph1364.us, %bb.l ], [ %.11007.ph1364, %bb.aa ], [ %.11007.ph1364.us, %bb.k ] ; 2 uses
  %.us-phi2462 = phi ptr [ %.21022.ph1363, %bb.v ], [ %.21022.ph1367.us.us, %bb.l ], [ %.21022.ph1367, %bb.aa ], [ %.21022.ph1363.us, %bb.k ] ; 2 uses
  %i.agu = load ptr, ptr %i.ad, align 8, !tbaa !2574 ; 2 uses
  %.not1148 = icmp eq ptr %i.agu, null
  br i1 %.not1148, label %.thread1285, label %bb.lp, !prof !117

bb.lp:                                            ; preds = %.split2458.us.split.us
  %i.agv = tail call noundef i32 %i.agu(ptr noundef nonnull %0)
  %.not1149 = icmp eq i32 %i.agv, 0
  %.pre6606 = load i16, ptr %i.d, align 2         ; 2 uses
  br i1 %.not1149, label %bb.lr, label %bb.lq, !prof !501

bb.lq:                                            ; preds = %bb.lp
  store i32 %.21001.ph.ph6736, ptr %i.b, align 4, !tbaa !2572
  %i.agw = and i16 %.pre6606, -32513
  %i.agx = or disjoint i16 %i.agw, 2048           ; 2 uses
  store i16 %i.agx, ptr %i.d, align 2
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp
  %i.agy = phi i16 [ %i.agx, %bb.lq ], [ %.pre6606, %bb.lp ]
  %i.agz = and i16 %i.agy, 32512
  %.not1150 = icmp eq i16 %i.agz, 0
  br i1 %.not1150, label %.thread1285, label %bb.ls, !prof !501

bb.ls:                                            ; preds = %bb.lr
  %i.aha = ptrtoint ptr %.us-phi2460 to i64
  %i.ahb = ptrtoint ptr %2 to i64
  %reass.sub4853 = sub i64 %i.aha, %i.ahb
  %i.ahc = add i64 %reass.sub4853, 1
  br label %.thread1320

.split2464.us.split.us:                           ; preds = %bb.k, %bb.v, %bb.l, %bb.aa
  %.01044.ph6771 = phi i8 [ %.01044.ph6745, %bb.v ], [ %i.at, %bb.l ], [ %.01044.ph6745, %bb.aa ], [ %i.at, %bb.k ]
  %.21001.ph.ph6737 = phi i32 [ %.21001.ph.ph6705, %bb.v ], [ %.11000, %bb.l ], [ %.21001.ph.ph6705, %bb.aa ], [ %.11000, %bb.k ] ; 3 uses
  %.us-phi2467 = phi ptr [ %.11035.ph1362, %bb.v ], [ %.11035.ph1362.us, %bb.l ], [ %.11035.ph1362, %bb.aa ], [ %.11035.ph1362.us, %bb.k ] ; 2 uses
  %.us-phi2468 = phi ptr [ %.11007.ph1364, %bb.v ], [ %.11007.ph1364.us, %bb.l ], [ %.11007.ph1364, %bb.aa ], [ %.11007.ph1364.us, %bb.k ]
  %.us-phi2469 = phi ptr [ %.21022.ph1363, %bb.v ], [ %.21022.ph1367.us.us, %bb.l ], [ %.21022.ph1367, %bb.aa ], [ %.21022.ph1363.us, %bb.k ]
  %.us-phi2470 = phi i32 [ %i.co, %bb.v ], [ %i.be, %bb.l ], [ %i.cy, %bb.aa ], [ %i.av, %bb.k ]
  %i.ahd = zext i8 %.01044.ph6771 to i64
  %i.ahe = getelementptr inbounds nuw i8, ptr @_ZZN4crow19http_parser_executeEPNS_11http_parserEPKNS_20http_parser_settingsEPKcmE5unhex, i64 %i.ahd
  %i.ahf = load i8, ptr %i.ahe, align 1, !tbaa !114 ; 2 uses
  %i.ahg = icmp eq i8 %i.ahf, -1
  br i1 %i.ahg, label %bb.lt, label %bb.lu, !prof !117

bb.lt:                                            ; preds = %.split2464.us.split.us
  store i32 %.21001.ph.ph6737, ptr %i.b, align 4, !tbaa !2572
  %i.ahh = load i16, ptr %i.d, align 2
  %i.ahi = and i16 %i.ahh, -32513
  %i.ahj = or disjoint i16 %i.ahi, 6656           ; 2 uses
  store i16 %i.ahj, ptr %i.d, align 2
  br label %.thread

bb.lu:                                            ; preds = %.split2464.us.split.us
  %i.ahk = sext i8 %i.ahf to i64
  store i64 %i.ahk, ptr %i.v, align 8, !tbaa !2576
  %i.ahl = and i32 %.us-phi2470, -32641
  %i.ahm = or disjoint i32 %i.ahl, 4608
  store i32 %i.ahm, ptr %0, align 8
  br label %.thread1285

.split2472.us.split.us:                           ; preds = %bb.k, %bb.v, %bb.l, %bb.aa
  %.01044.ph6772 = phi i8 [ %.01044.ph6745, %bb.v ], [ %i.at, %bb.l ], [ %.01044.ph6745, %bb.aa ], [ %i.at, %bb.k ] ; 3 uses
  %.21001.ph.ph6738 = phi i32 [ %.21001.ph.ph6705, %bb.v ], [ %.11000, %bb.l ], [ %.21001.ph.ph6705, %bb.aa ], [ %.11000, %bb.k ] ; 7 uses
  %.us-phi2475 = phi ptr [ %.11035.ph1362, %bb.v ], [ %.11035.ph1362.us, %bb.l ], [ %.11035.ph1362, %bb.aa ], [ %.11035.ph1362.us, %bb.k ] ; 5 uses
  %.us-phi2476 = phi ptr [ %.11007.ph1364, %bb.v ], [ %.11007.ph1364.us, %bb.l ], [ %.11007.ph1364, %bb.aa ], [ %.11007.ph1364.us, %bb.k ] ; 3 uses
  %.us-phi2477 = phi ptr [ %.21022.ph1363, %bb.v ], [ %.21022.ph1367.us.us, %bb.l ], [ %.21022.ph1367, %bb.aa ], [ %.21022.ph1363.us, %bb.k ] ; 3 uses
  %.us-phi2478 = phi i32 [ %i.co, %bb.v ], [ %i.be, %bb.l ], [ %i.cy, %bb.aa ], [ %i.av, %bb.k ] ; 2 uses
  %i.ahn = icmp eq i8 %.01044.ph6772, 13
  br i1 %i.ahn, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %.split2472.us.split.us
  %i.aho = and i32 %.us-phi2478, -32641
  %i.ahp = or disjoint i32 %i.aho, 4864
  store i32 %i.ahp, ptr %0, align 8
  br label %.thread1285

bb.lw:                                            ; preds = %.split2472.us.split.us
  %i.ahq = zext i8 %.01044.ph6772 to i64
  %i.ahr = getelementptr inbounds nuw i8, ptr @_ZZN4crow19http_parser_executeEPNS_11http_parserEPKNS_20http_parser_settingsEPKcmE5unhex, i64 %i.ahq
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !114 ; 2 uses
  %i.aht = icmp eq i8 %i.ahs, -1
  br i1 %i.aht, label %bb.lx, label %bb.ma

bb.lx:                                            ; preds = %bb.lw
  switch i8 %.01044.ph6772, label %bb.lz [
    i8 59, label %bb.ly
    i8 32, label %bb.ly
  ]

bb.ly:                                            ; preds = %bb.lx, %bb.lx
  %i.ahu = and i32 %.us-phi2478, -32641
  %i.ahv = or disjoint i32 %i.ahu, 4736
  store i32 %i.ahv, ptr %0, align 8
  br label %.thread1285

bb.lz:                                            ; preds = %bb.lx
  store i32 %.21001.ph.ph6738, ptr %i.b, align 4, !tbaa !2572
  %i.ahw = load i16, ptr %i.d, align 2
  %i.ahx = and i16 %i.ahw, -32513
  %i.ahy = or disjoint i16 %i.ahx, 6656           ; 2 uses
  store i16 %i.ahy, ptr %i.d, align 2
  br label %.thread

bb.ma:                                            ; preds = %bb.lw
  %i.ahz = load i64, ptr %i.v, align 8, !tbaa !2576 ; 2 uses
  %i.aia = icmp ugt i64 %i.ahz, 1152921504606846974
  br i1 %i.aia, label %bb.mb, label %bb.mc, !prof !117

bb.mb:                                            ; preds = %bb.ma
  store i32 %.21001.ph.ph6738, ptr %i.b, align 4, !tbaa !2572
  %i.aib = load i16, ptr %i.d, align 2
  %i.aic = and i16 %i.aib, -32513
  %i.aid = or disjoint i16 %i.aic, 6144           ; 2 uses
  store i16 %i.aid, ptr %i.d, align 2
  br label %.thread

bb.mc:                                            ; preds = %bb.ma
  %i.aie = shl nuw i64 %i.ahz, 4
  %i.aif = sext i8 %i.ahs to i64
  %i.aig = add i64 %i.aie, %i.aif
  store i64 %i.aig, ptr %i.v, align 8, !tbaa !2576
  br label %.thread1285

.split2480.us.split.us:                           ; preds = %bb.k, %bb.v, %bb.l, %bb.aa
  %.01044.ph6773 = phi i8 [ %.01044.ph6745, %bb.v ], [ %i.at, %bb.l ], [ %.01044.ph6745, %bb.aa ], [ %i.at, %bb.k ]
  %.21001.ph.ph6739 = phi i32 [ %.21001.ph.ph6705, %bb.v ], [ %.11000, %bb.l ], [ %.21001.ph.ph6705, %bb.aa ], [ %.11000, %bb.k ] ; 2 uses
  %.us-phi2483 = phi ptr [ %.11035.ph1362, %bb.v ], [ %.11035.ph1362.us, %bb.l ], [ %.11035.ph1362, %bb.aa ], [ %.11035.ph1362.us, %bb.k ] ; 2 uses
  %.us-phi2484 = phi ptr [ %.11007.ph1364, %bb.v ], [ %.11007.ph1364.us, %bb.l ], [ %.11007.ph1364, %bb.aa ], [ %.11007.ph1364.us, %bb.k ] ; 2 uses
  %.us-phi2485 = phi ptr [ %.21022.ph1363, %bb.v ], [ %.21022.ph1367.us.us, %bb.l ], [ %.21022.ph1367, %bb.aa ], [ %.21022.ph1363.us, %bb.k ] ; 2 uses
  %.us-phi2486 = phi i32 [ %i.co, %bb.v ], [ %i.be, %bb.l ], [ %i.cy, %bb.aa ], [ %i.av, %bb.k ]
  %i.aih = icmp eq i8 %.01044.ph6773, 13
  br i1 %i.aih, label %bb.md, label %.thread1285

bb.md:                                            ; preds = %.split2480.us.split.us
  %i.aii = and i32 %.us-phi2486, -32641
  %i.aij = or disjoint i32 %i.aii, 4864
  store i32 %i.aij, ptr %0, align 8
  br label %.thread1285

.split2488.us.split.us:                           ; preds = %bb.k, %bb.v, %bb.l, %bb.aa
  %.01044.ph6774 = phi i8 [ %.01044.ph6745, %bb.v ], [ %i.at, %bb.l ], [ %.01044.ph6745, %bb.aa ], [ %i.at, %bb.k ]
  %.21001.ph.ph6740 = phi i32 [ %.21001.ph.ph6705, %bb.v ], [ %.11000, %bb.l ], [ %.21001.ph.ph6705, %bb.aa ], [ %.11000, %bb.k ] ; 2 uses
  %.us-phi2491 = phi ptr [ %.11035.ph1362, %bb.v ], [ %.11035.ph1362.us, %bb.l ], [ %.11035.ph1362, %bb.aa ], [ %.11035.ph1362.us, %bb.k ] ; 3 uses
  %.us-phi2492 = phi ptr [ %.11007.ph1364, %bb.v ], [ %.11007.ph1364.us, %bb.l ], [ %.11007.ph1364, %bb.aa ], [ %.11007.ph1364.us, %bb.k ] ; 2 uses
  %.us-phi2493 = phi ptr [ %.21022.ph1363, %bb.v ], [ %.21022.ph1367.us.us, %bb.l ], [ %.21022.ph1367, %bb.aa ], [ %.21022.ph1363.us, %bb.k ] ; 2 uses
  %.us-phi2494 = phi i32 [ %i.co, %bb.v ], [ %i.be, %bb.l ], [ %i.cy, %bb.aa ], [ %i.av, %bb.k ] ; 2 uses
  %.not1147 = icmp eq i8 %.01044.ph6774, 10
  br i1 %.not1147, label %bb.mf, label %bb.me

bb.me:                                            ; preds = %.split2488.us.split.us
  store i32 %.21001.ph.ph6740, ptr %i.b, align 4, !tbaa !2572
  %i.aik = load i16, ptr %i.d, align 2
  %i.ail = and i16 %i.aik, -32513
  %i.aim = or disjoint i16 %i.ail, 7424           ; 2 uses
  store i16 %i.aim, ptr %i.d, align 2
  br label %.thread

bb.mf:                                            ; preds = %.split2488.us.split.us
  store i32 0, ptr %i.b, align 4, !tbaa !2572
  %i.ain = load i64, ptr %i.v, align 8, !tbaa !2576
  %i.aio = icmp eq i64 %i.ain, 0
  br i1 %i.aio, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %bb.mf
  %i.aip = and i32 %.us-phi2494, -32649
  %i.aiq = or disjoint i32 %i.aip, 3336
  store i32 %i.aiq, ptr %0, align 8
  br label %.thread1285

bb.mh:                                            ; preds = %bb.mf
  %i.air = and i32 %.us-phi2494, -32641
  %i.ais = or disjoint i32 %i.air, 5248
  store i32 %i.ais, ptr %0, align 8
  br label %.thread1285

.split2496.us.split.us:                           ; preds = %bb.k, %bb.v, %bb.l, %bb.aa
  %.21001.ph.ph6741 = phi i32 [ %.21001.ph.ph6705, %bb.v ], [ %.11000, %bb.l ], [ %.21001.ph.ph6705, %bb.aa ], [ %.11000, %bb.k ] ; 2 uses
  %.pre-phi = phi i64 [ %i.cn, %bb.v ], [ %i.au, %bb.l ], [ %i.cn, %bb.aa ], [ %i.au, %bb.k ]
  %.us-phi2498 = phi ptr [ %.11035.ph1362, %bb.v ], [ %.11035.ph1362.us, %bb.l ], [ %.11035.ph1362, %bb.aa ], [ %.11035.ph1362.us, %bb.k ] ; 2 uses
  %.us-phi2499 = phi ptr [ %.11007.ph1364, %bb.v ], [ %.11007.ph1364.us, %bb.l ], [ %.11007.ph1364, %bb.aa ], [ %.11007.ph1364.us, %bb.k ] ; 2 uses
  %.us-phi2500 = phi ptr [ %.21022.ph1363, %bb.v ], [ %.21022.ph1367.us.us, %bb.l ], [ %.21022.ph1367, %bb.aa ], [ %.21022.ph1363.us, %bb.k ] ; 2 uses
  %.us-phi2501 = phi i32 [ %i.co, %bb.v ], [ %i.be, %bb.l ], [ %i.cy, %bb.aa ], [ %i.av, %bb.k ]
  %i.ait = load i64, ptr %i.v, align 8, !tbaa !2576 ; 3 uses
  %i.aiu = sub i64 %i.w, %.pre-phi                ; 2 uses
  %.1274 = tail call i64 @llvm.umin.i64(i64 %i.ait, i64 %i.aiu) ; 2 uses
  %.not1146 = icmp eq ptr %.us-phi2499, null
  %.61012 = select i1 %.not1146, ptr %.us-phi2498, ptr %.us-phi2499 ; 2 uses
  %i.aiv = sub nuw i64 %i.ait, %.1274
  store i64 %i.aiv, ptr %i.v, align 8, !tbaa !2576
  %i.aiw = getelementptr i8, ptr %.us-phi2498, i64 %.1274
  %i.aix = getelementptr i8, ptr %i.aiw, i64 -1   ; 2 uses
  %.not1345 = icmp ugt i64 %i.ait, %i.aiu
  br i1 %.not1345, label %.thread1285, label %bb.mi

bb.mi:                                            ; preds = %.split2496.us.split.us
  %i.aiy = and i32 %.us-phi2501, -32641
  %i.aiz = or disjoint i32 %i.aiy, 5376
  store i32 %i.aiz, ptr %0, align 8
  br label %.thread1285

.split2503.us.split.us:                           ; preds = %bb.k, %bb.v, %bb.l, %bb.aa
  %.01044.ph6775 = phi i8 [ %.01044.ph6745, %bb.v ], [ %i.at, %bb.l ], [ %.01044.ph6745, %bb.aa ], [ %i.at, %bb.k ]
  %.21001.ph.ph6742 = phi i32 [ %.21001.ph.ph6705, %bb.v ], [ %.11000, %bb.l ], [ %.21001.ph.ph6705, %bb.aa ], [ %.11000, %bb.k ] ; 6 uses
  %.us-phi2506 = phi ptr [ %.11035.ph1362, %bb.v ], [ %.11035.ph1362.us, %bb.l ], [ %.11035.ph1362, %bb.aa ], [ %.11035.ph1362.us, %bb.k ] ; 5 uses
  %.us-phi2507 = phi ptr [ %.11007.ph1364, %bb.v ], [ %.11007.ph1364.us, %bb.l ], [ %.11007.ph1364, %bb.aa ], [ %.11007.ph1364.us, %bb.k ] ; 3 uses
  %.us-phi2508 = phi ptr [ %.21022.ph1363, %bb.v ], [ %.21022.ph1367.us.us, %bb.l ], [ %.21022.ph1367, %bb.aa ], [ %.21022.ph1363.us, %bb.k ] ; 3 uses
  %.us-phi2509 = phi i32 [ %i.co, %bb.v ], [ %i.be, %bb.l ], [ %i.cy, %bb.aa ], [ %i.av, %bb.k ]
  %.not1141 = icmp eq i8 %.01044.ph6775, 13
  br i1 %.not1141, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %.split2503.us.split.us
  store i32 %.21001.ph.ph6742, ptr %i.b, align 4, !tbaa !2572
  %i.aja = load i16, ptr %i.d, align 2
  %i.ajb = and i16 %i.aja, -32513
  %i.ajc = or disjoint i16 %i.ajb, 7424           ; 2 uses
  store i16 %i.ajc, ptr %i.d, align 2
  br label %.thread

bb.mk:                                            ; preds = %.split2503.us.split.us
  %i.ajd = and i32 %.us-phi2509, -32641
  %i.aje = or disjoint i32 %i.ajd, 5504
  store i32 %i.aje, ptr %0, align 8
  %.not1142 = icmp eq ptr %.us-phi2507, null
  br i1 %.not1142, label %.thread1285, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.ajf = load ptr, ptr %i.x, align 8, !tbaa !2577 ; 2 uses
  %.not1143 = icmp eq ptr %i.ajf, null
  br i1 %.not1143, label %.thread1285, label %bb.mm, !prof !117

bb.mm:                                            ; preds = %bb.ml
  %i.ajg = ptrtoint ptr %.us-phi2506 to i64       ; 2 uses
  %i.ajh = ptrtoint ptr %.us-phi2507 to i64
  %i.aji = sub i64 %i.ajg, %i.ajh
  %i.ajj = tail call noundef i32 %i.ajf(ptr noundef nonnull %0, ptr noundef nonnull %.us-phi2507, i64 noundef %i.aji)
  %.not1144 = icmp eq i32 %i.ajj, 0
  %.pre6605 = load i16, ptr %i.d, align 2         ; 2 uses
  br i1 %.not1144, label %bb.mo, label %bb.mn, !prof !501

bb.mn:                                            ; preds = %bb.mm
  store i32 %.21001.ph.ph6742, ptr %i.b, align 4, !tbaa !2572
  %i.ajk = and i16 %.pre6605, -32513
  %i.ajl = or disjoint i16 %i.ajk, 1792           ; 2 uses
  store i16 %i.ajl, ptr %i.d, align 2
  br label %bb.mo

bb.mo:                                            ; preds = %bb.mn, %bb.mm
  %i.ajm = phi i16 [ %i.ajl, %bb.mn ], [ %.pre6605, %bb.mm ]
  %i.ajn = and i16 %i.ajm, 32512
  %.not1145 = icmp eq i16 %i.ajn, 0
  br i1 %.not1145, label %.thread1285, label %bb.mp, !prof !501

bb.mp:                                            ; preds = %bb.mo
  %i.ajo = ptrtoint ptr %2 to i64
  %reass.sub4852 = sub i64 %i.ajg, %i.ajo
  %i.ajp = add i64 %reass.sub4852, 1
  br label %.thread1320

.split2511.us.split.us:                           ; preds = %bb.k, %bb.v, %bb.l, %bb.aa
  %.01044.ph6776 = phi i8 [ %.01044.ph6745, %bb.v ], [ %i.at, %bb.l ], [ %.01044.ph6745, %bb.aa ], [ %i.at, %bb.k ]
  %.21001.ph.ph6743 = phi i32 [ %.21001.ph.ph6705, %bb.v ], [ %.11000, %bb.l ], [ %.21001.ph.ph6705, %bb.aa ], [ %.11000, %bb.k ] ; 2 uses
  %.us-phi2514 = phi ptr [ %.11035.ph1362, %bb.v ], [ %.11035.ph1362.us, %bb.l ], [ %.11035.ph1362, %bb.aa ], [ %.11035.ph1362.us, %bb.k ] ; 2 uses
  %.us-phi2515 = phi ptr [ %.11007.ph1364, %bb.v ], [ %.11007.ph1364.us, %bb.l ], [ %.11007.ph1364, %bb.aa ], [ %.11007.ph1364.us, %bb.k ]
  %.us-phi2516 = phi ptr [ %.21022.ph1363, %bb.v ], [ %.21022.ph1367.us.us, %bb.l ], [ %.21022.ph1367, %bb.aa ], [ %.21022.ph1363.us, %bb.k ]
  %.us-phi2517 = phi i32 [ %i.co, %bb.v ], [ %i.be, %bb.l ], [ %i.cy, %bb.aa ], [ %i.av, %bb.k ]
  %.not1140 = icmp eq i8 %.01044.ph6776, 10
  br i1 %.not1140, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %.split2511.us.split.us
  store i32 %.21001.ph.ph6743, ptr %i.b, align 4, !tbaa !2572
  %i.ajq = load i16, ptr %i.d, align 2
  %i.ajr = and i16 %i.ajq, -32513
  %i.ajs = or disjoint i16 %i.ajr, 7424           ; 2 uses
  store i16 %i.ajs, ptr %i.d, align 2
  br label %.thread

bb.mr:                                            ; preds = %.split2511.us.split.us
  store i32 0, ptr %i.b, align 4, !tbaa !2572
  %i.ajt = and i32 %.us-phi2517, -32641
  %i.aju = or disjoint i32 %i.ajt, 4480
  store i32 %i.aju, ptr %0, align 8
  br label %.thread1285

.split.us:                                        ; preds = %bb.k, %bb.v, %bb.l, %bb.aa
  %.21001.ph.ph6706 = phi i32 [ %.21001.ph.ph6705, %bb.v ], [ %.11000, %bb.l ], [ %.21001.ph.ph6705, %bb.aa ], [ %.11000, %bb.k ]
  %.us-phi2239 = phi ptr [ %.11035.ph1362, %bb.v ], [ %.11035.ph1362.us, %bb.l ], [ %.11035.ph1362, %bb.aa ], [ %.11035.ph1362.us, %bb.k ]
  %i.ajv = load i16, ptr %i.d, align 2
  %i.ajw = and i16 %i.ajv, -32513
  %i.ajx = or disjoint i16 %i.ajw, 7168           ; 2 uses
  store i16 %i.ajx, ptr %i.d, align 2
  br label %.thread

.thread1285:                                      ; preds = %.split2448.us.split.us.us, %.split2448, %bb.mc, %bb.ly, %bb.lv, %.loopexit, %bb.fz, %bb.gd, %bb.ga, %._crit_edge, %bb.cd, %bb.ml, %bb.mo, %.split2496.us.split.us, %bb.mi, %bb.gv, %.split2395.us.split.us, %.split2395.us.split.us, %bb.cu, %bb.cx, %bb.cm, %bb.cp, %.split2248.us.split.us, %.split2248.us.split.us, %.split2241.us.split.us, %.split2241.us.split.us, %bb.df, %bb.dh, %bb.dj, %bb.dl, %bb.dn, %bb.dp, %bb.dr, %bb.dt, %bb.dv, %bb.dw, %bb.dx, %bb.ea, %bb.eb, %bb.gg, %bb.gh, %bb.iz, %bb.jf, %.split2431.us.us.us.split.us, %.split2452.us.split.us, %bb.lu, %bb.md, %bb.mr, %bb.aw, %bb.at, %.split2264.us.split.us, %bb.cg, %bb.cj, %bb.cz, %bb.ct, %bb.cl, %bb.dd, %bb.db, %.split2289.us.split.us, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.gw, %bb.gy, %bb.gx, %bb.go, %bb.gp, %bb.gz, %bb.gu, %bb.gm, %.loopexit1360, %.loopexit1360, %bb.jp, %bb.jm, %bb.kt, %bb.lc, %bb.kz, %bb.lf, %bb.li, %bb.le, %bb.kx, %bb.kn, %bb.kq, %bb.lr, %.split2458.us.split.us, %.split2480.us.split.us, %bb.mh, %bb.mg, %bb.mk
  %.14 = phi ptr [ %.us-phi2244, %.split2241.us.split.us ], [ %.us-phi2251, %.split2248.us.split.us ], [ %.us-phi2251, %bb.aw ], [ %.us-phi2251, %bb.at ], [ %.us-phi2259, %bb.cd ], [ %.us-phi2267, %.split2264.us.split.us ], [ %.us-phi2267, %bb.cg ], [ %.us-phi2275, %bb.cj ], [ %.us-phi2283, %bb.cz ], [ %.us-phi2251, %.split2248.us.split.us ], [ %.us-phi2283, %bb.cl ], [ %.us-phi2283, %bb.cm ], [ %.us-phi2283, %bb.ct ], [ %.us-phi2292, %.split2289.us.split.us ], [ %.us-phi2292, %bb.db ], [ %.us-phi2292, %bb.dd ], [ %.us-phi2300, %bb.df ], [ %.us-phi2308, %bb.dh ], [ %.us-phi2316, %bb.dj ], [ %.us-phi2324, %bb.dl ], [ %.us-phi2332, %bb.dn ], [ %.us-phi2340, %bb.dp ], [ %.us-phi2348, %bb.dr ], [ %.us-phi2356, %bb.dt ], [ %.us-phi2364, %bb.dv ], [ %.us-phi2372, %bb.dw ], [ %.us-phi2372, %bb.dx ], [ %.us-phi2380, %bb.ea ], [ %.us-phi2386, %bb.eb ], [ %.us-phi2386, %bb.ek ], [ %.us-phi2386, %bb.eg ], [ %.us-phi2386, %bb.eh ], [ %.us-phi2386, %bb.ei ], [ %.us-phi2386, %bb.ej ], [ %.us-phi2506, %bb.ml ], [ %.us-phi2398, %.split2395.us.split.us ], [ %.us-phi2398, %bb.gg ], [ %.us-phi2398, %bb.gh ], [ %.11035.ph13621610, %bb.gz ], [ %.11035.ph13621610, %bb.gm ], [ %.11035.ph13621610, %bb.go ], [ %.11035.ph13621610, %bb.gp ], [ %.11035.ph13621610, %bb.gu ], [ %.11035.ph13621610, %.loopexit1360 ], [ %.11035.ph13621610, %.loopexit1360 ], [ %.11035.ph13621610, %bb.gw ], [ %.11035.ph13621610, %bb.gx ], [ %.11035.ph13621610, %bb.gv ], [ %.11035.ph13621610, %bb.gy ], [ %i.sk, %._crit_edge ], [ %.us-phi2418, %bb.iz ], [ %.us-phi2426, %bb.jf ], [ %.us-phi2728, %.split2431.us.us.us.split.us ], [ %.us-phi2435, %bb.jp ], [ %.us-phi2435, %bb.jm ], [ %.us-phi2443, %bb.kq ], [ %.us-phi2443, %bb.kn ], [ %.us-phi2443, %bb.kt ], [ %.us-phi2443, %bb.kx ], [ %.us-phi2443, %bb.lc ], [ %.us-phi2443, %bb.kz ], [ %.us-phi2443, %bb.le ], [ %.us-phi2443, %bb.li ], [ %.us-phi2443, %bb.lf ], [ %spec.select1271, %.loopexit ], [ %i.ae, %.split2452.us.split.us ], [ %.us-phi2460, %bb.lr ], [ %.us-phi2460, %.split2458.us.split.us ], [ %.us-phi2467, %bb.lu ], [ %.us-phi2475, %bb.mc ], [ %.us-phi2483, %bb.md ], [ %.us-phi2483, %.split2480.us.split.us ], [ %.us-phi2491, %bb.mg ], [ %.us-phi2491, %bb.mh ], [ %.us-phi2398, %.split2395.us.split.us ], [ %i.aix, %.split2496.us.split.us ], [ %.us-phi2506, %bb.mk ], [ %.us-phi2514, %bb.mr ], [ %.us-phi2244, %.split2241.us.split.us ], [ %.us-phi2283, %bb.cp ], [ %.us-phi2283, %bb.cx ], [ %.us-phi2283, %bb.cu ], [ %i.aix, %bb.mi ], [ %.us-phi2506, %bb.mo ], [ %.210364726, %bb.fz ], [ %.210364726, %bb.gd ], [ %.210364726, %bb.ga ], [ %.us-phi2475, %bb.lv ], [ %.us-phi2475, %bb.ly ], [ %i.agg, %.split2448 ], [ %i.cb, %.split2448.us.split.us.us ]
  %.51033 = phi ptr [ %.110294731, %.split2241.us.split.us ], [ %.110294731, %.split2248.us.split.us ], [ %.110294731, %bb.aw ], [ %.110294731, %bb.at ], [ %.110294731, %bb.cd ], [ %.110294731, %.split2264.us.split.us ], [ %.110294731, %bb.cg ], [ %.110294731, %bb.cj ], [ %.110294731, %bb.cz ], [ %.110294731, %.split2248.us.split.us ], [ %.110294731, %bb.cl ], [ %.110294731, %bb.cm ], [ %.110294731, %bb.ct ], [ %.110294731, %.split2289.us.split.us ], [ %.110294731, %bb.db ], [ %.110294731, %bb.dd ], [ %.110294731, %bb.df ], [ %.110294731, %bb.dh ], [ %.110294731, %bb.dj ], [ %.110294731, %bb.dl ], [ %.110294731, %bb.dn ], [ %.110294731, %bb.dp ], [ %.110294731, %bb.dr ], [ %.110294731, %bb.dt ], [ %.110294731, %bb.dv ], [ %.110294731, %bb.dw ], [ %.110294731, %bb.dx ], [ %.110294731, %bb.ea ], [ %.110294731, %bb.eb ], [ %spec.select1262, %bb.ek ], [ %spec.select1262, %bb.eg ], [ %spec.select1262, %bb.eh ], [ %spec.select1262, %bb.ei ], [ %spec.select1262, %bb.ej ], [ %.110294731, %bb.ml ], [ %.110294731, %.split2395.us.split.us ], [ %.110294731, %bb.gg ], [ %.110294731, %bb.gh ], [ %.110294731, %bb.gz ], [ %.110294731, %bb.gm ], [ %.110294731, %bb.go ], [ %.110294731, %bb.gp ], [ %.110294731, %bb.gu ], [ %.110294731, %.loopexit1360 ], [ %.110294731, %.loopexit1360 ], [ %.110294731, %bb.gw ], [ %.110294731, %bb.gx ], [ %.110294731, %bb.gv ], [ %.110294731, %bb.gy ], [ %.110294731, %._crit_edge ], [ %.110294731, %bb.iz ], [ %.110294731, %bb.jf ], [ %.110294731, %.split2431.us.us.us.split.us ], [ %.110294731, %bb.jp ], [ %.110294731, %bb.jm ], [ %.110294731, %bb.kq ], [ %.110294731, %bb.kn ], [ %.110294731, %bb.kt ], [ %.110294731, %bb.kx ], [ %.110294731, %bb.lc ], [ %.110294731, %bb.kz ], [ %.110294731, %bb.le ], [ %.110294731, %bb.li ], [ %.110294731, %bb.lf ], [ %.110294731, %.loopexit ], [ %.110294731, %.split2452.us.split.us ], [ %.110294731, %bb.lr ], [ %.110294731, %.split2458.us.split.us ], [ %.110294731, %bb.lu ], [ %.110294731, %bb.mc ], [ %.110294731, %bb.md ], [ %.110294731, %.split2480.us.split.us ], [ %.110294731, %bb.mg ], [ %.110294731, %bb.mh ], [ %.110294731, %.split2395.us.split.us ], [ %.110294731, %.split2496.us.split.us ], [ %.110294731, %bb.mk ], [ %.110294731, %bb.mr ], [ %.110294731, %.split2241.us.split.us ], [ %.110294731, %bb.cp ], [ %.110294731, %bb.cx ], [ %.110294731, %bb.cu ], [ %.110294731, %bb.mi ], [ %.110294731, %bb.mo ], [ null, %bb.fz ], [ null, %bb.gd ], [ null, %bb.ga ], [ %.110294731, %bb.lv ], [ %.110294731, %bb.ly ], [ %.110294731, %.split2448 ], [ %.110294731, %.split2448.us.split.us.us ] ; 4 uses
  %.9 = phi ptr [ %.us-phi2246, %.split2241.us.split.us ], [ %.us-phi2253, %.split2248.us.split.us ], [ %.us-phi2253, %bb.aw ], [ %.us-phi2253, %bb.at ], [ %.us-phi2261, %bb.cd ], [ %.us-phi2269, %.split2264.us.split.us ], [ %.us-phi2269, %bb.cg ], [ %.us-phi2277, %bb.cj ], [ %.us-phi2285, %bb.cz ], [ %.us-phi2253, %.split2248.us.split.us ], [ %.us-phi2285, %bb.cl ], [ %.us-phi2285, %bb.cm ], [ %.us-phi2285, %bb.ct ], [ %.us-phi2294, %.split2289.us.split.us ], [ %.us-phi2294, %bb.db ], [ %.us-phi2294, %bb.dd ], [ %.us-phi2302, %bb.df ], [ %.us-phi2310, %bb.dh ], [ %.us-phi2318, %bb.dj ], [ %.us-phi2326, %bb.dl ], [ %.us-phi2334, %bb.dn ], [ %.us-phi2342, %bb.dp ], [ %.us-phi2350, %bb.dr ], [ %.us-phi2358, %bb.dt ], [ %.us-phi2366, %bb.dv ], [ %.us-phi2374, %bb.dw ], [ %.us-phi2374, %bb.dx ], [ %.us-phi2382, %bb.ea ], [ %.us-phi2388, %bb.eb ], [ %.us-phi2388, %bb.ek ], [ %.us-phi2388, %bb.eg ], [ %.us-phi2388, %bb.eh ], [ %.us-phi2388, %bb.ei ], [ %.us-phi2388, %bb.ej ], [ %.us-phi2508, %bb.ml ], [ %.us-phi2400, %.split2395.us.split.us ], [ %.us-phi2400, %bb.gg ], [ %.us-phi2400, %bb.gh ], [ %spec.select1263, %bb.gz ], [ %spec.select1263, %bb.gm ], [ %spec.select1263, %bb.go ], [ %spec.select1263, %bb.gp ], [ %spec.select1263, %bb.gu ], [ %spec.select1263, %.loopexit1360 ], [ %spec.select1263, %.loopexit1360 ], [ %spec.select1263, %bb.gw ], [ %spec.select1263, %bb.gx ], [ %spec.select1263, %bb.gv ], [ %spec.select1263, %bb.gy ], [ %.us-phi2393, %._crit_edge ], [ %.us-phi2420, %bb.iz ], [ %.us-phi2428, %bb.jf ], [ %.us-phi2730, %.split2431.us.us.us.split.us ], [ %.us-phi2437, %bb.jp ], [ %.us-phi2437, %bb.jm ], [ %.us-phi2445, %bb.kq ], [ %.us-phi2445, %bb.kn ], [ %.us-phi2445, %bb.kt ], [ %.us-phi2445, %bb.kx ], [ %.us-phi2445, %bb.lc ], [ %.us-phi2445, %bb.kz ], [ %.us-phi2445, %bb.le ], [ %.us-phi2445, %bb.li ], [ %.us-phi2445, %bb.lf ], [ %.51025, %.loopexit ], [ %.us-phi2456, %.split2452.us.split.us ], [ %.us-phi2462, %bb.lr ], [ %.us-phi2462, %.split2458.us.split.us ], [ %.us-phi2469, %bb.lu ], [ %.us-phi2477, %bb.mc ], [ %.us-phi2485, %bb.md ], [ %.us-phi2485, %.split2480.us.split.us ], [ %.us-phi2493, %bb.mg ], [ %.us-phi2493, %bb.mh ], [ %.us-phi2400, %.split2395.us.split.us ], [ %.us-phi2500, %.split2496.us.split.us ], [ %.us-phi2508, %bb.mk ], [ %.us-phi2516, %bb.mr ], [ %.us-phi2246, %.split2241.us.split.us ], [ %.us-phi2285, %bb.cp ], [ %.us-phi2285, %bb.cx ], [ %.us-phi2285, %bb.cu ], [ %.us-phi2500, %bb.mi ], [ %.us-phi2508, %bb.mo ], [ %.us-phi2393, %bb.fz ], [ %.us-phi2393, %bb.gd ], [ %.us-phi2393, %bb.ga ], [ %.us-phi2477, %bb.lv ], [ %.us-phi2477, %bb.ly ], [ %.us-phi2894, %.split2448 ], [ %.us-phi3506.us, %.split2448.us.split.us.us ] ; 4 uses
  %.31019 = phi ptr [ %.110174768, %.split2241.us.split.us ], [ %.110174768, %.split2248.us.split.us ], [ %.110174768, %bb.aw ], [ %.110174768, %bb.at ], [ %.110174768, %bb.cd ], [ %.110174768, %.split2264.us.split.us ], [ %spec.select1261, %bb.cg ], [ %.110174768, %bb.cj ], [ %.110174768, %bb.cz ], [ %.110174768, %.split2248.us.split.us ], [ null, %bb.cl ], [ null, %bb.cm ], [ null, %bb.ct ], [ %.110174768, %.split2289.us.split.us ], [ %.110174768, %bb.db ], [ %.110174768, %bb.dd ], [ %.110174768, %bb.df ], [ %.110174768, %bb.dh ], [ %.110174768, %bb.dj ], [ %.110174768, %bb.dl ], [ %.110174768, %bb.dn ], [ %.110174768, %bb.dp ], [ %.110174768, %bb.dr ], [ %.110174768, %bb.dt ], [ %.110174768, %bb.dv ], [ %.110174768, %bb.dw ], [ %.110174768, %bb.dx ], [ %.110174768, %bb.ea ], [ %.110174768, %bb.eb ], [ %.110174768, %bb.ek ], [ %.110174768, %bb.eg ], [ %.110174768, %bb.eh ], [ %.110174768, %bb.ei ], [ %.110174768, %bb.ej ], [ %.110174768, %bb.ml ], [ %.110174768, %.split2395.us.split.us ], [ %.110174768, %bb.gg ], [ %.110174768, %bb.gh ], [ %.110174768, %bb.gz ], [ %.110174768, %bb.gm ], [ %.110174768, %bb.go ], [ %.110174768, %bb.gp ], [ %.110174768, %bb.gu ], [ %.110174768, %.loopexit1360 ], [ %.110174768, %.loopexit1360 ], [ %.110174768, %bb.gw ], [ %.110174768, %bb.gx ], [ %.110174768, %bb.gv ], [ %.110174768, %bb.gy ], [ %.110174768, %._crit_edge ], [ %.110174768, %bb.iz ], [ %.110174768, %bb.jf ], [ %.110174768, %.split2431.us.us.us.split.us ], [ %.110174768, %bb.jp ], [ %.110174768, %bb.jm ], [ %.110174768, %bb.kq ], [ %.110174768, %bb.kn ], [ %.110174768, %bb.kt ], [ %.110174768, %bb.kx ], [ %.110174768, %bb.lc ], [ %.110174768, %bb.kz ], [ %.110174768, %bb.le ], [ %.110174768, %bb.li ], [ %.110174768, %bb.lf ], [ %.110174768, %.loopexit ], [ %.110174768, %.split2452.us.split.us ], [ %.110174768, %bb.lr ], [ %.110174768, %.split2458.us.split.us ], [ %.110174768, %bb.lu ], [ %.110174768, %bb.mc ], [ %.110174768, %bb.md ], [ %.110174768, %.split2480.us.split.us ], [ %.110174768, %bb.mg ], [ %.110174768, %bb.mh ], [ %.110174768, %.split2395.us.split.us ], [ %.110174768, %.split2496.us.split.us ], [ %.110174768, %bb.mk ], [ %.110174768, %bb.mr ], [ %.110174768, %.split2241.us.split.us ], [ null, %bb.cp ], [ null, %bb.cx ], [ null, %bb.cu ], [ %.110174768, %bb.mi ], [ %.110174768, %bb.mo ], [ %.110174768, %bb.fz ], [ %.110174768, %bb.gd ], [ %.110174768, %bb.ga ], [ %.110174768, %bb.lv ], [ %.110174768, %bb.ly ], [ %.110174768, %.split2448 ], [ %.110174768, %.split2448.us.split.us.us ] ; 4 uses
  %.21015 = phi ptr [ %.010134804, %.split2241.us.split.us ], [ %.010134804, %.split2248.us.split.us ], [ %.010134804, %bb.aw ], [ %.010134804, %bb.at ], [ %.010134804, %bb.cd ], [ %.010134804, %.split2264.us.split.us ], [ %.11014, %bb.cg ], [ %.010134804, %bb.cj ], [ %.010134804, %bb.cz ], [ %.010134804, %.split2248.us.split.us ], [ %.010134804, %bb.cl ], [ %.010134804, %bb.cm ], [ %.010134804, %bb.ct ], [ %.010134804, %.split2289.us.split.us ], [ %.010134804, %bb.db ], [ %.010134804, %bb.dd ], [ %.010134804, %bb.df ], [ %.010134804, %bb.dh ], [ %.010134804, %bb.dj ], [ %.010134804, %bb.dl ], [ %.010134804, %bb.dn ], [ %.010134804, %bb.dp ], [ %.010134804, %bb.dr ], [ %.010134804, %bb.dt ], [ %.010134804, %bb.dv ], [ %.010134804, %bb.dw ], [ %.010134804, %bb.dx ], [ %.010134804, %bb.ea ], [ %.010134804, %bb.eb ], [ %.010134804, %bb.ek ], [ %.010134804, %bb.eg ], [ %.010134804, %bb.eh ], [ %.010134804, %bb.ei ], [ %.010134804, %bb.ej ], [ %.010134804, %bb.ml ], [ %.010134804, %.split2395.us.split.us ], [ %.010134804, %bb.gg ], [ %.010134804, %bb.gh ], [ %.010134804, %bb.gz ], [ %.010134804, %bb.gm ], [ %.010134804, %bb.go ], [ %.010134804, %bb.gp ], [ %.010134804, %bb.gu ], [ %.010134804, %.loopexit1360 ], [ %.010134804, %.loopexit1360 ], [ %.010134804, %bb.gw ], [ %.010134804, %bb.gx ], [ %.010134804, %bb.gv ], [ %.010134804, %bb.gy ], [ %.010134804, %._crit_edge ], [ %.010134804, %bb.iz ], [ %.010134804, %bb.jf ], [ %.010134804, %.split2431.us.us.us.split.us ], [ %.010134804, %bb.jp ], [ %.010134804, %bb.jm ], [ %.010134804, %bb.kq ], [ %.010134804, %bb.kn ], [ %.010134804, %bb.kt ], [ %.010134804, %bb.kx ], [ %.010134804, %bb.lc ], [ %.010134804, %bb.kz ], [ %.010134804, %bb.le ], [ %.010134804, %bb.li ], [ %.010134804, %bb.lf ], [ %.010134804, %.loopexit ], [ %.010134804, %.split2452.us.split.us ], [ %.010134804, %bb.lr ], [ %.010134804, %.split2458.us.split.us ], [ %.010134804, %bb.lu ], [ %.010134804, %bb.mc ], [ %.010134804, %bb.md ], [ %.010134804, %.split2480.us.split.us ], [ %.010134804, %bb.mg ], [ %.010134804, %bb.mh ], [ %.010134804, %.split2395.us.split.us ], [ %.010134804, %.split2496.us.split.us ], [ %.010134804, %bb.mk ], [ %.010134804, %bb.mr ], [ %.010134804, %.split2241.us.split.us ], [ %.010134804, %bb.cp ], [ %.010134804, %bb.cx ], [ %.010134804, %bb.cu ], [ %.010134804, %bb.mi ], [ %.010134804, %bb.mo ], [ %.010134804, %bb.fz ], [ %.010134804, %bb.gd ], [ %.010134804, %bb.ga ], [ %.010134804, %bb.lv ], [ %.010134804, %bb.ly ], [ %.010134804, %.split2448 ], [ %.010134804, %.split2448.us.split.us.us ]
  %.7 = phi ptr [ %.us-phi2245, %.split2241.us.split.us ], [ %.us-phi2252, %.split2248.us.split.us ], [ %.us-phi2252, %bb.aw ], [ %.us-phi2252, %bb.at ], [ %.us-phi2260, %bb.cd ], [ %.us-phi2268, %.split2264.us.split.us ], [ %.us-phi2268, %bb.cg ], [ %.us-phi2276, %bb.cj ], [ %.us-phi2284, %bb.cz ], [ %.us-phi2252, %.split2248.us.split.us ], [ %.us-phi2284, %bb.cl ], [ %.us-phi2284, %bb.cm ], [ %.us-phi2284, %bb.ct ], [ %.us-phi2293, %.split2289.us.split.us ], [ %.us-phi2293, %bb.db ], [ %.us-phi2293, %bb.dd ], [ %.us-phi2301, %bb.df ], [ %.us-phi2309, %bb.dh ], [ %.us-phi2317, %bb.dj ], [ %.us-phi2325, %bb.dl ], [ %.us-phi2333, %bb.dn ], [ %.us-phi2341, %bb.dp ], [ %.us-phi2349, %bb.dr ], [ %.us-phi2357, %bb.dt ], [ %.us-phi2365, %bb.dv ], [ %.us-phi2373, %bb.dw ], [ %.us-phi2373, %bb.dx ], [ %.us-phi2381, %bb.ea ], [ %.us-phi2387, %bb.eb ], [ %.us-phi2387, %bb.ek ], [ %.us-phi2387, %bb.eg ], [ %.us-phi2387, %bb.eh ], [ %.us-phi2387, %bb.ei ], [ %.us-phi2387, %bb.ej ], [ null, %bb.ml ], [ %.us-phi2399, %.split2395.us.split.us ], [ %.us-phi2399, %bb.gg ], [ %.us-phi2399, %bb.gh ], [ %.11007.ph13641553, %bb.gz ], [ %.11007.ph13641553, %bb.gm ], [ %.11007.ph13641553, %bb.go ], [ %.11007.ph13641553, %bb.gp ], [ %.11007.ph13641553, %bb.gu ], [ %.11007.ph13641553, %.loopexit1360 ], [ %.11007.ph13641553, %.loopexit1360 ], [ %.11007.ph13641553, %bb.gw ], [ %.11007.ph13641553, %bb.gx ], [ %.11007.ph13641553, %bb.gv ], [ %.11007.ph13641553, %bb.gy ], [ %.us-phi2392, %._crit_edge ], [ %.us-phi2419, %bb.iz ], [ %.us-phi2427, %bb.jf ], [ %.us-phi2729, %.split2431.us.us.us.split.us ], [ %.us-phi2436, %bb.jp ], [ %.us-phi2436, %bb.jm ], [ %.us-phi2444, %bb.kq ], [ %.us-phi2444, %bb.kn ], [ %.us-phi2444, %bb.kt ], [ %.us-phi2444, %bb.kx ], [ %.us-phi2444, %bb.lc ], [ %.us-phi2444, %bb.kz ], [ %.us-phi2444, %bb.le ], [ %.us-phi2444, %bb.li ], [ %.us-phi2444, %bb.lf ], [ %.us-phi2411, %.loopexit ], [ %spec.select1273, %.split2452.us.split.us ], [ %.us-phi2461, %bb.lr ], [ %.us-phi2461, %.split2458.us.split.us ], [ %.us-phi2468, %bb.lu ], [ %.us-phi2476, %bb.mc ], [ %.us-phi2484, %bb.md ], [ %.us-phi2484, %.split2480.us.split.us ], [ %.us-phi2492, %bb.mg ], [ %.us-phi2492, %bb.mh ], [ %.us-phi2399, %.split2395.us.split.us ], [ %.61012, %.split2496.us.split.us ], [ null, %bb.mk ], [ %.us-phi2515, %bb.mr ], [ %.us-phi2245, %.split2241.us.split.us ], [ %.us-phi2284, %bb.cp ], [ %.us-phi2284, %bb.cx ], [ %.us-phi2284, %bb.cu ], [ %.61012, %bb.mi ], [ null, %bb.mo ], [ %.us-phi2392, %bb.fz ], [ %.us-phi2392, %bb.gd ], [ %.us-phi2392, %bb.ga ], [ %.us-phi2476, %bb.lv ], [ %.us-phi2476, %bb.ly ], [ %.21008, %.split2448 ], [ %.21008.us, %.split2448.us.split.us.us ] ; 4 uses
  %.51004 = phi i32 [ %.21001.ph.ph6707, %.split2241.us.split.us ], [ %.21001.ph.ph6708, %.split2248.us.split.us ], [ %.21001.ph.ph6708, %bb.aw ], [ %.21001.ph.ph6708, %bb.at ], [ %.21001.ph.ph6709, %bb.cd ], [ %.21001.ph.ph6710, %.split2264.us.split.us ], [ %.21001.ph.ph6710, %bb.cg ], [ %.21001.ph.ph6711, %bb.cj ], [ %.21001.ph.ph6712, %bb.cz ], [ %.21001.ph.ph6708, %.split2248.us.split.us ], [ %.21001.ph.ph6712, %bb.cl ], [ %.21001.ph.ph6712, %bb.cm ], [ %.21001.ph.ph6712, %bb.ct ], [ %.21001.ph.ph6713, %.split2289.us.split.us ], [ %.21001.ph.ph6713, %bb.db ], [ %.21001.ph.ph6713, %bb.dd ], [ %.21001.ph.ph6714, %bb.df ], [ %.21001.ph.ph6715, %bb.dh ], [ %.21001.ph.ph6716, %bb.dj ], [ %.21001.ph.ph6717, %bb.dl ], [ %.21001.ph.ph6718, %bb.dn ], [ %.21001.ph.ph6719, %bb.dp ], [ %.21001.ph.ph6720, %bb.dr ], [ %.21001.ph.ph6721, %bb.dt ], [ %.21001.ph.ph6722, %bb.dv ], [ %.21001.ph.ph6723, %bb.dw ], [ %.21001.ph.ph6723, %bb.dx ], [ %.21001.ph.ph6724, %bb.ea ], [ %.21001.ph.ph6725, %bb.eb ], [ %.21001.ph.ph6725, %bb.ek ], [ %.21001.ph.ph6725, %bb.eg ], [ %.21001.ph.ph6725, %bb.eh ], [ %.21001.ph.ph6725, %bb.ei ], [ %.21001.ph.ph6725, %bb.ej ], [ %.21001.ph.ph6742, %bb.ml ], [ %.21001.ph.ph6727, %.split2395.us.split.us ], [ %.21001.ph.ph6727, %bb.gg ], [ %.21001.ph.ph6727, %bb.gh ], [ %.21001.ph.ph6728, %bb.gz ], [ %.21001.ph.ph6728, %bb.gm ], [ %.21001.ph.ph6728, %bb.go ], [ %.21001.ph.ph6728, %bb.gp ], [ %.21001.ph.ph6728, %bb.gu ], [ %.21001.ph.ph6728, %.loopexit1360 ], [ %.21001.ph.ph6728, %.loopexit1360 ], [ %.21001.ph.ph6728, %bb.gw ], [ %.21001.ph.ph6728, %bb.gx ], [ %.21001.ph.ph6728, %bb.gv ], [ %.21001.ph.ph6728, %bb.gy ], [ %i.sp, %._crit_edge ], [ %.21001.ph.ph6730, %bb.iz ], [ %.21001.ph.ph6731, %bb.jf ], [ %.21001.ph.ph6732, %.split2431.us.us.us.split.us ], [ %.21001.ph.ph6733, %bb.jp ], [ %.21001.ph.ph6733, %bb.jm ], [ 0, %bb.kq ], [ 0, %bb.kn ], [ 0, %bb.kt ], [ 0, %bb.kx ], [ 0, %bb.lc ], [ 0, %bb.kz ], [ 0, %bb.le ], [ 0, %bb.li ], [ 0, %bb.lf ], [ %i.aas, %.loopexit ], [ %.21001.ph.ph6735, %.split2452.us.split.us ], [ %.21001.ph.ph6736, %bb.lr ], [ %.21001.ph.ph6736, %.split2458.us.split.us ], [ %.21001.ph.ph6737, %bb.lu ], [ %.21001.ph.ph6738, %bb.mc ], [ %.21001.ph.ph6739, %bb.md ], [ %.21001.ph.ph6739, %.split2480.us.split.us ], [ 0, %bb.mg ], [ 0, %bb.mh ], [ %.21001.ph.ph6727, %.split2395.us.split.us ], [ %.21001.ph.ph6741, %.split2496.us.split.us ], [ %.21001.ph.ph6742, %bb.mk ], [ 0, %bb.mr ], [ %.21001.ph.ph6707, %.split2241.us.split.us ], [ %.21001.ph.ph6712, %bb.cp ], [ %.21001.ph.ph6712, %bb.cx ], [ %.21001.ph.ph6712, %bb.cu ], [ %.21001.ph.ph6741, %bb.mi ], [ %.21001.ph.ph6742, %bb.mo ], [ %i.sy, %bb.fz ], [ %i.sy, %bb.gd ], [ %i.sy, %bb.ga ], [ %.21001.ph.ph6738, %bb.lv ], [ %.21001.ph.ph6738, %bb.ly ], [ %.21001.ph.ph6705, %.split2448 ], [ %.11000, %.split2448.us.split.us.us ] ; 6 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %.14, i64 1 ; 2 uses
  %.not1122 = icmp eq ptr %i.ajy, %i.p
  br i1 %.not1122, label %._crit_edge4844, label %bb.h, !llvm.loop !2571

._crit_edge4844:                                  ; preds = %.thread1285
  %.not1123 = icmp eq ptr %.51033, null
  br i1 %.not1123, label %bb.mw, label %bb.ms

bb.ms:                                            ; preds = %._crit_edge4844
  %i.ajz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !2582 ; 2 uses
  %.not1124 = icmp eq ptr %i.aka, null
  br i1 %.not1124, label %bb.mw, label %bb.mt, !prof !117

bb.mt:                                            ; preds = %bb.ms
  %i.akb = ptrtoint ptr %i.p to i64
  %i.akc = ptrtoint ptr %.51033 to i64
  %i.akd = sub i64 %i.akb, %i.akc
  %i.ake = tail call noundef i32 %i.aka(ptr noundef nonnull %0, ptr noundef nonnull %.51033, i64 noundef %i.akd)
  %.not1125 = icmp eq i32 %i.ake, 0
  %.pre6626 = load i16, ptr %i.d, align 2         ; 2 uses
  br i1 %.not1125, label %bb.mv, label %bb.mu, !prof !501

bb.mu:                                            ; preds = %bb.mt
  store i32 %.51004, ptr %i.b, align 4, !tbaa !2572
  %i.akf = and i16 %.pre6626, -32513
  %i.akg = or disjoint i16 %i.akf, 1024           ; 2 uses
  store i16 %i.akg, ptr %i.d, align 2
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %bb.mt
  %i.akh = phi i16 [ %i.akg, %bb.mu ], [ %.pre6626, %bb.mt ]
  %i.aki = and i16 %i.akh, 32512
  %.not1126 = icmp eq i16 %i.aki, 0
  br i1 %.not1126, label %bb.mw, label %.thread1320, !prof !501

bb.mw:                                            ; preds = %bb.ms, %bb.mv, %._crit_edge4844
  %.not1127 = icmp eq ptr %.9, null
  br i1 %.not1127, label %bb.nb, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.akj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !2575 ; 2 uses
  %.not1128 = icmp eq ptr %i.akk, null
  br i1 %.not1128, label %bb.nb, label %bb.my, !prof !117

bb.my:                                            ; preds = %bb.mx
  %i.akl = ptrtoint ptr %i.p to i64
  %i.akm = ptrtoint ptr %.9 to i64
  %i.akn = sub i64 %i.akl, %i.akm
  %i.ako = tail call noundef i32 %i.akk(ptr noundef nonnull %0, ptr noundef nonnull %.9, i64 noundef %i.akn)
  %.not1129 = icmp eq i32 %i.ako, 0
  %.pre6627 = load i16, ptr %i.d, align 2         ; 2 uses
  br i1 %.not1129, label %bb.na, label %bb.mz, !prof !501

bb.mz:                                            ; preds = %bb.my
  store i32 %.51004, ptr %i.b, align 4, !tbaa !2572
  %i.akp = and i16 %.pre6627, -32513
  %i.akq = or disjoint i16 %i.akp, 1280           ; 2 uses
  store i16 %i.akq, ptr %i.d, align 2
  br label %bb.na

bb.na:                                            ; preds = %bb.mz, %bb.my
  %i.akr = phi i16 [ %i.akq, %bb.mz ], [ %.pre6627, %bb.my ]
  %i.aks = and i16 %i.akr, 32512
  %.not1130 = icmp eq i16 %i.aks, 0
  br i1 %.not1130, label %bb.nb, label %.thread1320, !prof !501

bb.nb:                                            ; preds = %bb.mx, %bb.na, %bb.mw
  %.not1131 = icmp eq ptr %.31019, null
  br i1 %.not1131, label %bb.ng, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.akt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !2581 ; 2 uses
  %.not1132 = icmp eq ptr %i.aku, null
  br i1 %.not1132, label %bb.ng, label %bb.nd, !prof !117

bb.nd:                                            ; preds = %bb.nc
  %i.akv = ptrtoint ptr %i.p to i64
  %i.akw = ptrtoint ptr %.31019 to i64
  %i.akx = sub i64 %i.akv, %i.akw
end_hunk_5
