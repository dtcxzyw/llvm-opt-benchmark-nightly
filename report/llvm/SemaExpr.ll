Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaExpr?download=true
inline.NumInlined: 75953
inline.NumDeleted: 20715
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5clang11LangOptionsD2Ev:bb.a
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !2395 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !2396 ; 2 uses
  %.not4.i.i.i111 = icmp eq ptr %i.ho, %i.hq
  br i1 %.not4.i.i.i111, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i119, label %.lr.ph.i.i.i112

.lr.ph.i.i.i112:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit110, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i115
  %.05.i.i.i113 = phi ptr [ %i.hw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i115 ], [ %i.ho, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit110 ] ; 3 uses
  %i.hr = load ptr, ptr %.05.i.i.i113, align 8, !tbaa !843 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i.i.i113, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i114: ; preds = %.lr.ph.i.i.i112
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !788
  %i.hv = add i64 %i.hu, 1
  tail call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i115

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i115: ; preds = %.lr.ph.i.i.i112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i114
  %i.hw = getelementptr inbounds nuw i8, ptr %.05.i.i.i113, i64 32 ; 2 uses
  %.not.i.i.i116 = icmp eq ptr %i.hw, %i.hq
  br i1 %.not.i.i.i116, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i117, label %.lr.ph.i.i.i112, !llvm.loop !4209

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i117: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i115
  %.pr.i118 = load ptr, ptr %i.hn, align 8, !tbaa !2395
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i119

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i119: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i117, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit110
  %i.hx = phi ptr [ %.pr.i118, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i117 ], [ %i.ho, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit110 ] ; 3 uses
  %.not.i.i1.i120 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i1.i120, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit122, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i119
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !2397
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = ptrtoint ptr %i.hx to i64
  %i.ic = sub i64 %i.ia, %i.ib
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ic) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit122

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit122: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i119, %bb.j
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !2395 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !2396 ; 2 uses
  %.not4.i.i.i123 = icmp eq ptr %i.ie, %i.ig
  br i1 %.not4.i.i.i123, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i131, label %.lr.ph.i.i.i124

.lr.ph.i.i.i124:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit122, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i127
  %.05.i.i.i125 = phi ptr [ %i.im, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i127 ], [ %i.ie, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit122 ] ; 3 uses
  %i.ih = load ptr, ptr %.05.i.i.i125, align 8, !tbaa !843 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.05.i.i.i125, i64 16 ; 2 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i126: ; preds = %.lr.ph.i.i.i124
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !788
  %i.il = add i64 %i.ik, 1
  tail call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.il) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i127

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i127: ; preds = %.lr.ph.i.i.i124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i126
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i125, i64 32 ; 2 uses
  %.not.i.i.i128 = icmp eq ptr %i.im, %i.ig
  br i1 %.not.i.i.i128, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i129, label %.lr.ph.i.i.i124, !llvm.loop !4209

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i129: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i127
  %.pr.i130 = load ptr, ptr %i.id, align 8, !tbaa !2395
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i131

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i131: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i129, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit122
  %i.in = phi ptr [ %.pr.i130, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i129 ], [ %i.ie, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit122 ] ; 3 uses
  %.not.i.i1.i132 = icmp eq ptr %i.in, null
  br i1 %.not.i.i1.i132, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit134, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i131
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !2397
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.in to i64
  %i.is = sub i64 %i.iq, %i.ir
  tail call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.is) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit134

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit134: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i131, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2396 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !2395   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.c, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i, !prof !851

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #34
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !2395
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !2396
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !2397
  %i.n = load ptr, ptr %1, align 8, !tbaa !2403   ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !2403 ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit ] ; 7 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ac, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.p, ptr %.09.i.i.i.i, align 8, !tbaa !845
  %i.q = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !843 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !846  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.s, ptr %i.a, align 8, !tbaa !815
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.d, label %._crit_edge.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #30 ; 2 uses
  store ptr %i.u, ptr %.09.i.i.i.i, align 8, !tbaa !843
  %i.v = load i64, ptr %i.a, align 8, !tbaa !815
  store i64 %i.v, ptr %i.p, align 8, !tbaa !788
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.w = phi ptr [ %i.u, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !788
  store i8 %i.x, ptr %i.w, align 1, !tbaa !788
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !815  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !846
  %i.aa = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !843
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4211

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit ], [ %i.ad, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.k, align 8, !tbaa !2396
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvm6TripleESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2401 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !2400   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN4llvm6TripleESaIS1_EEC2EmRKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.g, 56
  %i.h = icmp ugt i64 %2, 164703072086692425
  br i1 %i.h, label %bb.c, label %_ZNSt15__new_allocatorIN4llvm6TripleEE8allocateEmPKv.exit.i.i.i, !prof !851

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

_ZNSt15__new_allocatorIN4llvm6TripleEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #34
  br label %_ZNSt12_Vector_baseIN4llvm6TripleESaIS1_EEC2EmRKS2_.exit

_ZNSt12_Vector_baseIN4llvm6TripleESaIS1_EEC2EmRKS2_.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN4llvm6TripleEE8allocateEmPKv.exit.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNSt15__new_allocatorIN4llvm6TripleEE8allocateEmPKv.exit.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !2400
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !2401
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !2402
  %i.n = load ptr, ptr %1, align 8, !tbaa !4213   ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !4213 ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4llvm6TripleESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4llvm6TripleESaIS1_EEC2EmRKS2_.exit, %_ZSt10_ConstructIN4llvm6TripleEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.af, %_ZSt10_ConstructIN4llvm6TripleEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.j, %_ZNSt12_Vector_baseIN4llvm6TripleESaIS1_EEC2EmRKS2_.exit ] ; 8 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ae, %_ZSt10_ConstructIN4llvm6TripleEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.n, %_ZNSt12_Vector_baseIN4llvm6TripleESaIS1_EEC2EmRKS2_.exit ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.p, ptr %.09.i.i.i.i, align 8, !tbaa !845
  %i.q = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !843 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !846  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.s, ptr %i.a, align 8, !tbaa !815
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.d, label %._crit_edge.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #30 ; 2 uses
  store ptr %i.u, ptr %.09.i.i.i.i, align 8, !tbaa !843
  %i.v = load i64, ptr %i.a, align 8, !tbaa !815
  store i64 %i.v, ptr %i.p, align 8, !tbaa !788
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.w = phi ptr [ %i.u, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt10_ConstructIN4llvm6TripleEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !788
  store i8 %i.x, ptr %i.w, align 1, !tbaa !788
  br label %_ZSt10_ConstructIN4llvm6TripleEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZSt10_ConstructIN4llvm6TripleEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4llvm6TripleEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !815  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !846
  %i.aa = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !843
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4llvm6TripleESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4212

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4llvm6TripleESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN4llvm6TripleEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN4llvm6TripleESaIS1_EEC2EmRKS2_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.j, %_ZNSt12_Vector_baseIN4llvm6TripleESaIS1_EEC2EmRKS2_.exit ], [ %i.af, %_ZSt10_ConstructIN4llvm6TripleEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.k, align 8, !tbaa !2401
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt7greaterIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  %i.d = load i32, ptr %1, align 8, !tbaa !4215
  store i32 %i.d, ptr %i.b, align 8, !tbaa !4215
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !4216
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2394 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt7greaterIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !2394
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.in30 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.031 = load ptr, ptr %.0.in30, align 8, !tbaa !2393 ; 2 uses
  %.not2832 = icmp eq ptr %.031, null
  br i1 %.not2832, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.034 = phi ptr [ %.0, %bb.e ], [ %.031, %bb.c ] ; 4 uses
  %.02733 = phi ptr [ %i.l, %bb.e ], [ %i.b, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.034, i64 32
  %i.l = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.k)
  %i.n = load i32, ptr %.034, align 8, !tbaa !4215
  store i32 %i.n, ptr %i.l, align 8, !tbaa !4215
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.02733, i64 16
  store ptr %i.l, ptr %i.p, align 8, !tbaa !2393
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.02733, ptr %i.q, align 8, !tbaa !4216
  %i.r = getelementptr inbounds nuw i8, ptr %.034, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2394 ; 2 uses
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt7greaterIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.s, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !2394
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.0.in = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !2393 ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !4214

._crit_edge:                                      ; preds = %bb.e, %bb.c
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !845
  %i.d = load ptr, ptr %1, align 8, !tbaa !843    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !846  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.f, ptr %i.b, align 8, !tbaa !815
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #30 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !843
  %i.i = load i64, ptr %i.b, align 8, !tbaa !815
  store i64 %i.i, ptr %i.c, align 8, !tbaa !788
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !788
  store i8 %i.k, ptr %i.j, align 1, !tbaa !788
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.l = load i64, ptr %i.b, align 8, !tbaa !815  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !846
  %i.n = load ptr, ptr %0, align 8, !tbaa !843
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !845
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !843  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !846  ; 4 uses
end_hunk_0
