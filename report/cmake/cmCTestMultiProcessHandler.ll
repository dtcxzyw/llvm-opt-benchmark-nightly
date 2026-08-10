inline.NumInlined: 5003
inline.NumDeleted: 2132
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag:bb.a
  %.sroa.037.054 = phi ptr [ %0, %.lr.ph ], [ %i.an, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49 ] ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !122
  %i.o = icmp eq i64 %i.n, %i.g
  br i1 %i.o, label %bb.c, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit: ; preds = %bb.c
  %i.p = load ptr, ptr %2, align 8, !tbaa !140
  %i.q = load ptr, ptr %.sroa.037.054, align 8, !tbaa !140
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.p, i64 %i.g)
  %i.r = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !122
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %bb.d, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17: ; preds = %bb.d
  %i.w = load ptr, ptr %2, align 8, !tbaa !140
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !140
  %bcmp.i.i16 = tail call i32 @bcmp(ptr %i.x, ptr %i.w, i64 %i.g)
  %i.y = icmp eq i32 %bcmp.i.i16, 0
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 64 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 72
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !122
  %i.ac = icmp eq i64 %i.ab, %i.g
  br i1 %i.ac, label %bb.e, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19: ; preds = %bb.e
  %i.ad = load ptr, ptr %2, align 8, !tbaa !140
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !140
  %bcmp.i.i18 = tail call i32 @bcmp(ptr %i.ae, ptr %i.ad, i64 %i.g)
  %i.af = icmp eq i32 %bcmp.i.i18, 0
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 104
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !122
  %i.aj = icmp eq i64 %i.ai, %i.g
  br i1 %i.aj, label %bb.f, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21: ; preds = %bb.f
  %i.ak = load ptr, ptr %2, align 8, !tbaa !140
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !140
  %bcmp.i.i20 = tail call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %i.g)
  %i.am = icmp eq i32 %bcmp.i.i20, 0
  br i1 %i.am, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 128
  %i.ao = add nsw i64 %.055, -1
  %i.ap = icmp sgt i64 %.055, 1
  br i1 %i.ap, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !1001

._crit_edge.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49
  %.pre59 = ptrtoint ptr %scevgep to i64
  %.pre60 = sub i64 %i.a, %.pre59
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi61 = phi i64 [ %.pre60, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.037.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 7 uses
  %i.aq = ashr exact i64 %.pre-phi61, 5
  switch i64 %i.aq, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge56
  ]

._crit_edge._crit_edge56:                         ; preds = %._crit_edge
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre58 = load i64, ptr %.phi.trans.insert57, align 8, !tbaa !122
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !122
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !122 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !122 ; 2 uses
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.h, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp eq i64 %i.as, 0
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23: ; preds = %bb.h
  %i.ax = load ptr, ptr %2, align 8, !tbaa !140
  %i.ay = load ptr, ptr %.sroa.037.0.lcssa, align 8, !tbaa !140
  %bcmp.i.i22 = tail call i32 @bcmp(ptr %i.ay, ptr %i.ax, i64 %i.as)
  %i.az = icmp eq i32 %bcmp.i.i22, 0
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50: ; preds = %bb.g, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 32
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50
  %i.bb = phi i64 [ %i.au, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50 ], [ %.pre, %._crit_edge._crit_edge ] ; 4 uses
  %.sroa.037.1 = phi ptr [ %i.ba, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50 ], [ %.sroa.037.0.lcssa, %._crit_edge._crit_edge ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !122
  %i.be = icmp eq i64 %i.bd, %i.bb
  br i1 %i.be, label %bb.j, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25: ; preds = %bb.j
  %i.bg = load ptr, ptr %2, align 8, !tbaa !140
  %i.bh = load ptr, ptr %.sroa.037.1, align 8, !tbaa !140
  %bcmp.i.i24 = tail call i32 @bcmp(ptr %i.bh, ptr %i.bg, i64 %i.bb)
  %i.bi = icmp eq i32 %bcmp.i.i24, 0
  br i1 %i.bi, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51: ; preds = %bb.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 32
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge56, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51
  %i.bk = phi i64 [ %i.bb, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51 ], [ %.pre58, %._crit_edge._crit_edge56 ] ; 3 uses
  %.sroa.037.2 = phi ptr [ %i.bj, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51 ], [ %.sroa.037.0.lcssa, %._crit_edge._crit_edge56 ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.037.2, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !122
  %i.bn = icmp eq i64 %i.bm, %i.bk
  br i1 %i.bn, label %bb.l, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52

bb.l:                                             ; preds = %bb.k
  %i.bo = icmp eq i64 %i.bk, 0
  br i1 %i.bo, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27: ; preds = %bb.l
  %i.bp = load ptr, ptr %2, align 8, !tbaa !140
  %i.bq = load ptr, ptr %.sroa.037.2, align 8, !tbaa !140
  %bcmp.i.i26 = tail call i32 @bcmp(ptr %i.bq, ptr %i.bp, i64 %i.bk)
  %i.br = icmp eq i32 %bcmp.i.i26, 0
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit, %bb.l, %bb.j, %bb.h, %._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.037.1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25 ], [ %1, %._crit_edge ], [ %.sroa.037.1, %bb.j ], [ %.sroa.037.0.lcssa, %bb.h ], [ %.sroa.037.2, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27 ], [ %.sroa.037.2, %bb.l ], [ %.sroa.037.0.lcssa, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23 ], [ %1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52 ], [ %i.ag, %bb.f ], [ %i.z, %bb.e ], [ %i.s, %bb.d ], [ %.sroa.037.054, %bb.c ], [ %i.ag, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21 ], [ %i.z, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19 ], [ %i.s, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17 ], [ %.sroa.037.054, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE15_M_range_insertISt23_Rb_tree_const_iteratorIiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not82 = icmp eq ptr %2, %3
  br i1 %.not82, label %_ZSt4copyISt23_Rb_tree_const_iteratorIiEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi i64 [ %i.b, %.lr.ph.i ], [ 0, %bb.a ] ; 5 uses
  %.sroa.02.05.i = phi ptr [ %i.a, %.lr.ph.i ], [ %2, %bb.a ]
  %i.a = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i) #30 ; 2 uses
  %i.b = add nuw nsw i64 %.06.i, 1                ; 5 uses
  %.not.i = icmp eq ptr %i.a, %3
  br i1 %.not.i, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit, label %.lr.ph.i, !llvm.loop !1002

_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit: ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !610
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !612  ; 11 uses
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %.not.not = icmp ugt i64 %i.j, %.06.i
  br i1 %.not.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.h, %i.k                       ; 5 uses
  %i.m = ashr exact i64 %i.l, 2                   ; 5 uses
  %i.n = icmp ugt i64 %i.m, %i.b
  br i1 %i.n, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.o = xor i64 %.06.i, -1
  %i.p = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.o ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64
  %.neg = shl i64 %.06.i, 2                       ; 2 uses
  %.idx.neg = add i64 %.neg, 4                    ; 2 uses
  %i.r = icmp sgt i64 %.idx.neg, 4
  br i1 %i.r, label %bb.d, label %bb.e, !prof !297

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.f, ptr nonnull align 4 %i.p, i64 %.idx.neg, i1 false)
  %.pre93 = load ptr, ptr %i.e, align 8, !tbaa !612
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %.neg, 0
  br i1 %i.s, label %bb.f, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.p, align 4, !tbaa !150
  store i32 %i.t, ptr %i.f, align 4, !tbaa !150
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.u = phi ptr [ %.pre93, %bb.d ], [ %i.f, %bb.e ], [ %i.f, %bb.f ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.b
  store ptr %i.v, ptr %i.e, align 8, !tbaa !612
  %i.w = sub i64 %i.q, %i.k                       ; 3 uses
  %i.x = ashr exact i64 %i.w, 2                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 1
  br i1 %i.y, label %bb.g, label %bb.h, !prof !297

bb.g:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.z = sub nsw i64 0, %i.x
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %1, i64 %i.w, i1 false)
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.ab = icmp eq i64 %i.w, 4
  br i1 %i.ab, label %bb.i, label %.lr.ph.i.i.i.i.i.preheader

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.ad = load i32, ptr %1, align 4, !tbaa !150
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !150
  br label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g, %bb.h, %bb.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %2, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !150
  store i32 %i.af, ptr %.08.i.i.i.i.i, align 4, !tbaa !150
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4
  %i.ah = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %3
  br i1 %.not.i.i.i.i.i, label %_ZSt4copyISt23_Rb_tree_const_iteratorIiEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1003

bb.j:                                             ; preds = %bb.b
  %i.ai = icmp sgt i64 %i.m, 0
  br i1 %i.ai, label %.preheader.i.a, label %.preheader7.i

.preheader7.i:                                    ; preds = %bb.j
  %.not9.i = icmp eq ptr %i.f, %1
  br i1 %.not9.i, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIiElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i51

.preheader.i.a:                                   ; preds = %bb.j, %.preheader.i.a
  %.012.i = phi i64 [ %5, %.preheader.i.a ], [ %i.m, %bb.j ]
  %4 = phi ptr [ %6, %.preheader.i.a ], [ %2, %bb.j ]
  %5 = add nsw i64 %.012.i, -1                    ; 2 uses
  %6 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %4) #30 ; 2 uses
  %.not6.i = icmp eq i64 %5, 0
  br i1 %.not6.i, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIiElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.preheader.i.a, !llvm.loop !1004

.lr.ph.i51:                                       ; preds = %.preheader7.i, %.lr.ph.i51
  %.110.i = phi i64 [ %i.ak, %.lr.ph.i51 ], [ %i.m, %.preheader7.i ]
  %i.aj = phi ptr [ %i.al, %.lr.ph.i51 ], [ %2, %.preheader7.i ]
  %i.ak = add nsw i64 %.110.i, 1                  ; 2 uses
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %i.aj) #30 ; 2 uses
  %.not.i52 = icmp eq i64 %i.ak, 0
  br i1 %.not.i52, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIiElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i51, !llvm.loop !1005

_ZSt9__advanceISt23_Rb_tree_const_iteratorIiElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %.lr.ph.i51, %.preheader.i.a, %.preheader7.i
  %.sroa.0.0 = phi ptr [ %6, %.preheader.i.a ], [ %2, %.preheader7.i ], [ %i.al, %.lr.ph.i51 ] ; 4 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0, %3
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt9__advanceISt23_Rb_tree_const_iteratorIiElEvRT_T0_St26bidirectional_iterator_tag.exit, %.lr.ph.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.f, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIiElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.0, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIiElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i, i64 32
  %i.an = load i32, ptr %i.am, align 4, !tbaa !150
  store i32 %i.an, ptr %.08.i.i.i.i.i.i.i.i, align 4, !tbaa !150
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i, i64 4
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %3
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1003

_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIiElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.aq = sub nuw i64 %i.b, %i.m
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.aq ; 5 uses
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !612
  %7 = icmp sgt i64 %i.l, 4
  br i1 %7, label %bb.k, label %bb.l, !prof !297

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ar, ptr align 4 %1, i64 %i.l, i1 false)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !612
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit53

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit
  %i.as = icmp eq i64 %i.l, 4
  br i1 %i.as, label %bb.m, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit53

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %1, align 4, !tbaa !150
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !150
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit53

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit53: ; preds = %bb.k, %bb.l, %bb.m
  %i.au = phi ptr [ %.pre, %bb.k ], [ %i.ar, %bb.l ], [ %i.ar, %bb.m ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.l
  store ptr %i.av, ptr %i.e, align 8, !tbaa !612
  %.not6.i.i.i.i.i54 = icmp eq ptr %2, %.sroa.0.0
  br i1 %.not6.i.i.i.i.i54, label %_ZSt4copyISt23_Rb_tree_const_iteratorIiEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit53, %.lr.ph.i.i.i.i.i55
  %.08.i.i.i.i.i56 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i55 ], [ %1, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit53 ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i57 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i55 ], [ %2, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit53 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i57, i64 32
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !150
  store i32 %i.ax, ptr %.08.i.i.i.i.i56, align 4, !tbaa !150
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i56, i64 4
  %i.az = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i57) #30 ; 2 uses
  %.not.i.i.i.i.i58 = icmp eq ptr %i.az, %.sroa.0.0
  br i1 %.not.i.i.i.i.i58, label %_ZSt4copyISt23_Rb_tree_const_iteratorIiEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i55, !llvm.loop !1003

bb.n:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit
  %i.ba = load ptr, ptr %0, align 8, !tbaa !609   ; 5 uses
  %i.bb = ptrtoint ptr %i.ba to i64               ; 3 uses
  %i.bc = sub i64 %i.h, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2                 ; 4 uses
  %i.be = sub nsw i64 2305843009213693951, %i.bd
  %.not = icmp ugt i64 %i.be, %.06.i
  br i1 %.not, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #31
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.b)
  %i.bf = add nsw i64 %.sroa.speculated.i, %i.bd  ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.bd
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 2305843009213693951)
  %i.bi = select i1 %i.bg, i64 2305843009213693951, i64 %i.bh ; 3 uses
  %.not.i61 = icmp eq i64 %i.bi, 0
  br i1 %.not.i61, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #32
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, %bb.p
  %i.bl = phi ptr [ %i.bk, %bb.p ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bm = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bn = sub i64 %i.bm, %i.bb                    ; 4 uses
  %i.bo = icmp sgt i64 %i.bn, 4
  br i1 %i.bo, label %bb.q, label %bb.r, !prof !297

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bl, ptr align 4 %i.ba, i64 %i.bn, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  %i.bp = icmp eq i64 %i.bn, 4
  br i1 %i.bp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bq = load i32, ptr %i.ba, align 4, !tbaa !150
  store i32 %i.bq, ptr %i.bl, align 4, !tbaa !150
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.br = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn
  br label %.lr.ph.i.i.i.i.i.i.i.i63

.lr.ph.i.i.i.i.i.i.i.i63:                         ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i.i63
  %.08.i.i.i.i.i.i.i.i64 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i63 ], [ %i.br, %bb.t ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i65 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i63 ], [ %2, %bb.t ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i65, i64 32
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !150
  store i32 %i.bt, ptr %.08.i.i.i.i.i.i.i.i64, align 4, !tbaa !150
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i64, i64 4 ; 4 uses
  %i.bv = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i.i.i.i65) #30 ; 2 uses
  %.not.i.i.i.i.i.i.i.i66 = icmp eq ptr %i.bv, %3
  br i1 %.not.i.i.i.i.i.i.i.i66, label %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit68, label %.lr.ph.i.i.i.i.i.i.i.i63, !llvm.loop !1003

_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit68: ; preds = %.lr.ph.i.i.i.i.i.i.i.i63
  %i.bw = sub i64 %i.h, %i.bm                     ; 4 uses
  %i.bx = icmp sgt i64 %i.bw, 4
  br i1 %i.bx, label %bb.u, label %bb.v, !prof !297

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit68
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 4 %1, i64 %i.bw, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit68
  %i.by = icmp eq i64 %i.bw, 4
  br i1 %i.by, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bz = load i32, ptr %1, align 4, !tbaa !150
  store i32 %i.bz, ptr %i.bu, align 4, !tbaa !150
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.ca = getelementptr inbounds i8, ptr %i.bu, i64 %i.bw
  %.not.i70 = icmp eq ptr %i.ba, null
  br i1 %.not.i70, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = sub i64 %i.g, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.cb) #27
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.x, %bb.y
  store ptr %i.bl, ptr %0, align 8, !tbaa !609
  store ptr %i.ca, ptr %i.e, align 8, !tbaa !612
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bi
  store ptr %i.cc, ptr %i.c, align 8, !tbaa !610
  br label %_ZSt4copyISt23_Rb_tree_const_iteratorIiEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit

_ZSt4copyISt23_Rb_tree_const_iteratorIiEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i55, %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit53, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #33 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !1006

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !297

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_SC_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #28
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !151

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_SC_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_SC_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !1007

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !1008

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_SC_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = inttoptr i64 %6 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp sgt i64 %i.h, 4
  br i1 %i.i, label %bb.c, label %bb.d, !prof !297

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.h, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i64 %i.h, 4
  br i1 %i.j, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %0, align 4, !tbaa !150
  store i32 %i.k, ptr %5, align 4, !tbaa !150
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.l = getelementptr inbounds i8, ptr %5, i64 %i.h ; 2 uses
  %.not24.i = icmp eq ptr %1, %0
  br i1 %.not24.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.027.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 6 uses
  %.sroa.018.026.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.018.1.i, %bb.g ] ; 4 uses
  %.sroa.014.025.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %bb.g ] ; 4 uses
  %.not21.i = icmp eq ptr %.sroa.018.026.i, %2
  br i1 %.not21.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %.sroa.018.026.i, align 4, !tbaa !150
  %i.o = load i32, ptr %.027.i, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.n, ptr %i.c, align 4, !tbaa !150
  store i32 %i.o, ptr %i.d, align 4, !tbaa !150
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 452
  %i.s = load float, ptr %i.r, align 4, !tbaa !238
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !196
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 452
  %i.w = load float, ptr %i.v, align 4, !tbaa !238
  %i.x = fcmp ogt float %i.s, %i.w                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sink.in.i = select i1 %i.x, ptr %.sroa.018.026.i, ptr %.027.i
  %.sroa.018.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.018.1.i = getelementptr inbounds nuw i8, ptr %.sroa.018.026.i, i64 %.sroa.018.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.027.i, i64 %.1.idx.i ; 2 uses
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !150
  store i32 %.sink.i, ptr %.sroa.014.025.i, align 4, !tbaa !150
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.025.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.l
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit, label %bb.f, !llvm.loop !1009

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.l to i64
  %i.aa = ptrtoint ptr %.027.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.h, label %bb.i, !prof !297

bb.h:                                             ; preds = %.critedge.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.014.025.i, ptr align 4 %.027.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.i:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.j, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr %.027.i, align 4, !tbaa !150
  store i32 %i.ae, ptr %.sroa.014.025.i, align 4, !tbaa !150
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.k:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 7 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.l, label %bb.m, !prof !297

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.m:                                             ; preds = %bb.k
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.n, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.n:                                             ; preds = %bb.m
  %i.ak = load i32, ptr %1, align 4, !tbaa !150
  store i32 %i.ak, ptr %5, align 4, !tbaa !150
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.l, %bb.m, %bb.n
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  %i.am = icmp eq ptr %0, %1
  br i1 %i.am, label %bb.o, label %bb.s

bb.o:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  %i.an = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 1
  br i1 %i.ao, label %bb.p, label %bb.q, !prof !297

bb.p:                                             ; preds = %bb.o
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr align 4 %5, i64 %i.ah, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.q:                                             ; preds = %bb.o
  %i.ar = icmp eq i64 %i.ah, 4
  br i1 %i.ar, label %bb.r, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds i8, ptr %2, i64 -4
  %i.at = load i32, ptr %5, align 4, !tbaa !150
  store i32 %i.at, ptr %i.as, align 4, !tbaa !150
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.s:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  %i.au = icmp eq ptr %2, %1
  br i1 %i.au, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.v, %bb.t
  %.sroa.020.0.i.ph = phi ptr [ %2, %bb.t ], [ %i.bi, %bb.v ]
  %.sroa.024.0.i.ph.pn = phi ptr [ %1, %bb.t ], [ %.sroa.024.0.i.ph, %bb.v ]
  %.0.i.ph = phi ptr [ %i.av, %bb.t ], [ %.0.i, %bb.v ]
  %.sroa.024.0.i.ph = getelementptr inbounds i8, ptr %.sroa.024.0.i.ph.pn, i64 -4 ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %.outer, %bb.ab
  %.sroa.020.0.i = phi ptr [ %i.bi, %bb.ab ], [ %.sroa.020.0.i.ph, %.outer ] ; 2 uses
  %.0.i = phi ptr [ %i.by, %bb.ab ], [ %.0.i.ph, %.outer ] ; 6 uses
  %i.ax = load i32, ptr %.0.i, align 4, !tbaa !150
  %i.ay = load i32, ptr %.sroa.024.0.i.ph, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ax, ptr %i.a, align 4, !tbaa !150
  store i32 %i.ay, ptr %i.b, align 4, !tbaa !150
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !196
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 452
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !238
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !196
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 452
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !238
  %i.bh = fcmp ogt float %i.bc, %i.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds i8, ptr %.sroa.020.0.i, i64 -4 ; 5 uses
  br i1 %i.bh, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.bj = load i32, ptr %.sroa.024.0.i.ph, align 4, !tbaa !150
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !150
  %i.bk = icmp eq ptr %0, %.sroa.024.0.i.ph
  br i1 %i.bk, label %bb.w, label %.outer, !llvm.loop !1010

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %5 to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = ashr exact i64 %i.bo, 2                 ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, 1
  br i1 %i.bq, label %bb.x, label %bb.y, !prof !297

bb.x:                                             ; preds = %bb.w
  %i.br = sub nsw i64 0, %i.bp
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.br
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bs, ptr align 4 %5, i64 %i.bo, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.y:                                             ; preds = %bb.w
  %i.bt = icmp eq i64 %i.bo, 4
  br i1 %i.bt, label %bb.z, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.z:                                             ; preds = %bb.y
  %i.bu = getelementptr inbounds i8, ptr %.sroa.020.0.i, i64 -8
  %i.bv = load i32, ptr %5, align 4, !tbaa !150
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !150
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.aa:                                            ; preds = %bb.u
  %i.bw = load i32, ptr %.0.i, align 4, !tbaa !150
  store i32 %i.bw, ptr %i.bi, align 4, !tbaa !150
  %i.bx = icmp eq ptr %5, %.0.i
  br i1 %i.bx, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = getelementptr inbounds i8, ptr %.0.i, i64 -4
  br label %bb.u, !llvm.loop !1010

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit: ; preds = %bb.g, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.s, %bb.r, %bb.q, %bb.p, %bb.j, %bb.i, %bb.h, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = shl nsw i64 %3, 1                        ; 3 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 2 uses
  %.not87 = icmp slt i64 %i.g, %i.c
  br i1 %.not87, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 11 uses
  %.idx71 = shl i64 %3, 3                         ; 2 uses
  %.not72 = icmp eq i64 %.idx, %.idx71
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 448 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 464 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 456 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 488 ; 4 uses
  br i1 %.not72, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.l = icmp sgt i64 %.idx, 4
  %i.m = icmp eq i64 %.idx, 4
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us
  %.089.us = phi ptr [ %i.t, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.061.088.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.061.088.us, i64 %.idx ; 5 uses
  br i1 %i.l, label %bb.d, label %bb.b, !prof !297

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.m, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %.sroa.061.088.us, align 4, !tbaa !150
  store i32 %i.o, ptr %.089.us, align 4, !tbaa !150
  %i.p = getelementptr inbounds nuw i8, ptr %.089.us, i64 %.idx
  %i.q = load i32, ptr %i.n, align 4, !tbaa !150
  store i32 %i.q, ptr %i.p, align 4, !tbaa !150
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.089.us, ptr align 4 %.sroa.061.088.us, i64 %.idx, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.089.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 4 %i.n, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.s = getelementptr inbounds i8, ptr %.089.us, i64 %.idx
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %.idx ; 2 uses
  %i.u = ptrtoint ptr %i.n to i64
  %i.v = sub i64 %i.d, %i.u
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.w, %i.c
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !1011

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit
  %.089 = phi ptr [ %i.cu, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.061.088 = phi ptr [ %i.y, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.sroa.061.088, i64 %.idx ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.sroa.061.088, i64 %.idx71 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit, %.lr.ph.i
  %.022.i = phi ptr [ %.089, %.lr.ph.i ], [ %i.ce, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit ] ; 2 uses
  %.sroa.016.021.i = phi ptr [ %.sroa.061.088, %.lr.ph.i ], [ %.sroa.016.1.i, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit ] ; 3 uses
  %.sroa.012.020.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.sroa.012.1.i, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit ] ; 3 uses
  %i.z = load i32, ptr %.sroa.012.020.i, align 4, !tbaa !150 ; 3 uses
  %i.aa = load i32, ptr %.sroa.016.021.i, align 4, !tbaa !150 ; 3 uses
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !118 ; 2 uses
  %.not10.i.i.i.i34 = icmp eq ptr %i.ab, null
  br i1 %.not10.i.i.i.i34, label %.critedge.i46, label %.lr.ph.i.i.i.i36

.lr.ph.i.i.i.i36:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i36
  %.012.i.i.i.i37 = phi ptr [ %.1.i.i.i.i42, %.lr.ph.i.i.i.i36 ], [ %i.ab, %bb.e ] ; 3 uses
  %.0811.i.i.i.i38 = phi ptr [ %.19.i.i.i.i39, %.lr.ph.i.i.i.i36 ], [ %i.j, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i37, i64 32
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !150
  %i.ae = icmp slt i32 %i.ad, %i.z                ; 2 uses
  %.19.i.i.i.i39 = select i1 %i.ae, ptr %.0811.i.i.i.i38, ptr %.012.i.i.i.i37 ; 6 uses
  %.1.in.v.i.i.i.i40 = select i1 %i.ae, i64 24, i64 16
  %.1.in.i.i.i.i41 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i37, i64 %.1.in.v.i.i.i.i40
  %.1.i.i.i.i42 = load ptr, ptr %.1.in.i.i.i.i41, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i43 = icmp eq ptr %.1.i.i.i.i42, null
  br i1 %.not.i.i.i.i43, label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i44, label %.lr.ph.i.i.i.i36, !llvm.loop !287

_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i44: ; preds = %.lr.ph.i.i.i.i36
  %i.af = icmp eq ptr %.19.i.i.i.i39, %i.j
  br i1 %i.af, label %.critedge.i46, label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i44
  %i.ag = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i39, i64 32
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !150
  %i.ai = icmp slt i32 %i.z, %i.ah
  br i1 %i.ai, label %.critedge.i46, label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit53

.critedge.i46:                                    ; preds = %bb.f, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i44, %bb.e
  %.08.lcssa.i.i.i14.i47 = phi ptr [ %.19.i.i.i.i39, %bb.f ], [ %.19.i.i.i.i39, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i44 ], [ %i.j, %bb.e ]
  %i.aj = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 3 uses
  store i32 %i.z, ptr %i.ak, align 8, !tbaa !190
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store ptr null, ptr %i.al, align 8, !tbaa !187
  %i.am = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr %.08.lcssa.i.i.i14.i47, ptr noundef nonnull align 4 dereferenceable(4) %i.ak)
          to label %bb.g unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i48 ; 2 uses

bb.g:                                             ; preds = %.critedge.i46
  %i.an = extractvalue { ptr, ptr } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.am, 1      ; 4 uses
  %.not.i.i49 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i49, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i4.i50 = icmp ne ptr %i.an, null
  %i.ap = icmp eq ptr %i.ao, %i.j
  %or.cond.i.i.i.i51 = select i1 %.not.i.i.i4.i50, i1 true, i1 %i.ap
  br i1 %or.cond.i.i.i.i51, label %.thread.i.i52, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.ar = load i32, ptr %i.ak, align 8, !tbaa !150
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !150
  %i.at = icmp slt i32 %i.ar, %i.as
  br label %.thread.i.i52

.thread.i.i52:                                    ; preds = %bb.i, %bb.h
  %i.au = phi i1 [ %i.at, %bb.i ], [ true, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.au, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #28
  %i.av = load i64, ptr %i.k, align 8, !tbaa !127
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.k, align 8, !tbaa !127
  br label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit53

common.resume:                                    ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i48
  %.lcssa129.sink = phi ptr [ %i.bk, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.aj, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i48 ]
  %common.resume.op = phi { ptr, i32 } [ %i.by, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.ax, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i48 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa129.sink, i64 noundef 48) #27
  resume { ptr, i32 } %common.resume.op

_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i48: ; preds = %.critedge.i46
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 48) #27
  br label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit53

_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit53: ; preds = %bb.f, %.thread.i.i52, %bb.j
  %.sroa.09.0.i45 = phi ptr [ %.19.i.i.i.i39, %bb.f ], [ %i.aj, %.thread.i.i52 ], [ %i.an, %bb.j ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i45, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !196
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 452
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !238
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !118 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not10.i.i.i.i, label %.critedge.i33, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit53, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bc, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit53 ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.j, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit53 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !150
  %i.bf = icmp slt i32 %i.be, %i.aa               ; 2 uses
  %.19.i.i.i.i = select i1 %i.bf, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.bf, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !287

_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.bg = icmp eq ptr %.19.i.i.i.i, %i.j
  br i1 %i.bg, label %.critedge.i33, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !150
  %i.bj = icmp slt i32 %i.aa, %i.bi
  br i1 %i.bj, label %.critedge.i33, label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit

.critedge.i33:                                    ; preds = %bb.k, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit53
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.k ], [ %.19.i.i.i.i, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i ], [ %i.j, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit53 ]
  %i.bk = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 3 uses
  store i32 %i.aa, ptr %i.bl, align 8, !tbaa !190
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store ptr null, ptr %i.bm, align 8, !tbaa !187
  %i.bn = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 4 dereferenceable(4) %i.bl)
          to label %bb.l unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.l:                                             ; preds = %.critedge.i33
  %i.bo = extractvalue { ptr, ptr } %i.bn, 0      ; 2 uses
  %i.bp = extractvalue { ptr, ptr } %i.bn, 1      ; 4 uses
  %.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i4.i = icmp ne ptr %i.bo, null
  %i.bq = icmp eq ptr %i.bp, %i.j
  %or.cond.i.i.i.i = select i1 %.not.i.i.i4.i, i1 true, i1 %i.bq
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bs = load i32, ptr %i.bl, align 8, !tbaa !150
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !150
  %i.bu = icmp slt i32 %i.bs, %i.bt
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.n, %bb.m
  %i.bv = phi i1 [ %i.bu, %bb.n ], [ true, %bb.m ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bv, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #28
  %i.bw = load i64, ptr %i.k, align 8, !tbaa !127
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.k, align 8, !tbaa !127
  br label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit

_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.critedge.i33
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.o:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 48) #27
  br label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit

_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit: ; preds = %bb.k, %.thread.i.i, %bb.o
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i, %bb.k ], [ %i.bk, %.thread.i.i ], [ %i.bo, %bb.o ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !196
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 452
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !238
  %i.cd = fcmp ogt float %i.bb, %i.cc             ; 3 uses
  %.sink.in.i = select i1 %i.cd, ptr %.sroa.012.020.i, ptr %.sroa.016.021.i
  %.sroa.012.1.idx.i = select i1 %i.cd, i64 4, i64 0
  %.sroa.012.1.i = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i, i64 %.sroa.012.1.idx.i ; 5 uses
  %.sroa.016.1.idx.i = select i1 %i.cd, i64 0, i64 4
  %.sroa.016.1.i = getelementptr inbounds nuw i8, ptr %.sroa.016.021.i, i64 %.sroa.016.1.idx.i ; 5 uses
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !150
  store i32 %.sink.i, ptr %.022.i, align 4, !tbaa !150
  %i.ce = getelementptr inbounds nuw i8, ptr %.022.i, i64 4 ; 4 uses
  %i.cf = icmp ne ptr %.sroa.016.1.i, %i.x
  %i.cg = icmp ne ptr %.sroa.012.1.i, %i.y
  %or.cond.i = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !1012

.critedge.i.loopexit:                             ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit
  %i.ch = ptrtoint ptr %i.x to i64
  %i.ci = ptrtoint ptr %.sroa.016.1.i to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 4 uses
  %i.ck = icmp sgt i64 %i.cj, 4
  br i1 %i.ck, label %bb.p, label %bb.q, !prof !297

bb.p:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ce, ptr nonnull align 4 %.sroa.016.1.i, i64 %i.cj, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.q:                                             ; preds = %.critedge.i.loopexit
  %i.cl = icmp eq i64 %i.cj, 4
  br i1 %i.cl, label %bb.r, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.cm = load i32, ptr %.sroa.016.1.i, align 4, !tbaa !150
  store i32 %i.cm, ptr %i.ce, align 4, !tbaa !150
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.cn = getelementptr inbounds i8, ptr %i.ce, i64 %i.cj ; 3 uses
  %i.co = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.cp = ptrtoint ptr %.sroa.012.1.i to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 4 uses
  %i.cr = icmp sgt i64 %i.cq, 4
  br i1 %i.cr, label %bb.s, label %bb.t, !prof !297

bb.s:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cn, ptr nonnull align 4 %.sroa.012.1.i, i64 %i.cq, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit

bb.t:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.cs = icmp eq i64 %i.cq, 4
  br i1 %i.cs, label %bb.u, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit

bb.u:                                             ; preds = %bb.t
  %i.ct = load i32, ptr %.sroa.012.1.i, align 4, !tbaa !150
  store i32 %i.ct, ptr %i.cn, align 4, !tbaa !150
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit: ; preds = %bb.s, %bb.t, %bb.u
  %i.cu = getelementptr inbounds i8, ptr %i.cn, i64 %i.cq ; 2 uses
  %i.cv = sub i64 %i.d, %i.co
  %i.cw = ashr exact i64 %i.cv, 2                 ; 2 uses
  %.not = icmp slt i64 %i.cw, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !1011

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us, %bb.a
  %.sroa.061.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us ], [ %i.y, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.t, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us ], [ %i.cu, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit ] ; 2 uses
  %.lcssa77 = phi i64 [ %i.g, %bb.a ], [ %i.w, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us ], [ %i.cw, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa77) ; 2 uses
  %.idx73 = shl nsw i64 %.sroa.speculated, 2
  %i.cx = getelementptr inbounds i8, ptr %.sroa.061.0.lcssa, i64 %.idx73 ; 5 uses
  %i.cy = icmp ne i64 %.sroa.speculated, 0
  %i.cz = icmp ne ptr %i.cx, %1
  %or.cond19.i15 = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond19.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 448 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i21
  %.022.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.dm, %bb.v ] ; 2 uses
  %.sroa.016.021.i23 = phi ptr [ %.sroa.061.0.lcssa, %.lr.ph.i21 ], [ %.sroa.016.1.i29, %bb.v ] ; 3 uses
  %.sroa.012.020.i24 = phi ptr [ %i.cx, %.lr.ph.i21 ], [ %.sroa.012.1.i27, %bb.v ] ; 3 uses
  %i.db = load i32, ptr %.sroa.012.020.i24, align 4, !tbaa !150
  %i.dc = load i32, ptr %.sroa.016.021.i23, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.db, ptr %i.a, align 4, !tbaa !150
  store i32 %i.dc, ptr %i.b, align 4, !tbaa !150
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.da, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !196
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 452
  %i.dg = load float, ptr %i.df, align 4, !tbaa !238
  %i.dh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.da, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !196
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 452
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !238
  %i.dl = fcmp ogt float %i.dg, %i.dk             ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sink.in.i25 = select i1 %i.dl, ptr %.sroa.012.020.i24, ptr %.sroa.016.021.i23
  %.sroa.012.1.idx.i26 = select i1 %i.dl, i64 4, i64 0
  %.sroa.012.1.i27 = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i24, i64 %.sroa.012.1.idx.i26 ; 3 uses
  %.sroa.016.1.idx.i28 = select i1 %i.dl, i64 0, i64 4
  %.sroa.016.1.i29 = getelementptr inbounds nuw i8, ptr %.sroa.016.021.i23, i64 %.sroa.016.1.idx.i28 ; 3 uses
  %.sink.i30 = load i32, ptr %.sink.in.i25, align 4, !tbaa !150
  store i32 %.sink.i30, ptr %.022.i22, align 4, !tbaa !150
  %i.dm = getelementptr inbounds nuw i8, ptr %.022.i22, i64 4 ; 2 uses
  %i.dn = icmp ne ptr %.sroa.016.1.i29, %i.cx
  %i.do = icmp ne ptr %.sroa.012.1.i27, %1
  %or.cond.i31 = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond.i31, label %bb.v, label %.critedge.i16, !llvm.loop !1012

.critedge.i16:                                    ; preds = %bb.v, %._crit_edge
  %.sroa.012.0.lcssa.i17 = phi ptr [ %i.cx, %._crit_edge ], [ %.sroa.012.1.i27, %bb.v ] ; 3 uses
  %.sroa.016.0.lcssa.i18 = phi ptr [ %.sroa.061.0.lcssa, %._crit_edge ], [ %.sroa.016.1.i29, %bb.v ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.dm, %bb.v ] ; 3 uses
  %i.dp = ptrtoint ptr %i.cx to i64
  %i.dq = ptrtoint ptr %.sroa.016.0.lcssa.i18 to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 4 uses
  %i.ds = icmp sgt i64 %i.dr, 4
  br i1 %i.ds, label %bb.w, label %bb.x, !prof !297

bb.w:                                             ; preds = %.critedge.i16
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.016.0.lcssa.i18, i64 %i.dr, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.x:                                             ; preds = %.critedge.i16
  %i.dt = icmp eq i64 %i.dr, 4
  br i1 %i.dt, label %bb.y, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.y:                                             ; preds = %bb.x
  %i.du = load i32, ptr %.sroa.016.0.lcssa.i18, align 4, !tbaa !150
  store i32 %i.du, ptr %.0.lcssa.i19, align 4, !tbaa !150
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.y, %bb.x, %bb.w
  %i.dv = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.dr ; 2 uses
  %i.dw = ptrtoint ptr %.sroa.012.0.lcssa.i17 to i64
  %i.dx = sub i64 %i.d, %i.dw                     ; 3 uses
  %i.dy = icmp sgt i64 %i.dx, 4
  br i1 %i.dy, label %bb.z, label %bb.aa, !prof !297

bb.z:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.dv, ptr align 4 %.sroa.012.0.lcssa.i17, i64 %i.dx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit32

bb.aa:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20
  %i.dz = icmp eq i64 %i.dx, 4
  br i1 %i.dz, label %bb.ab, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit32

bb.ab:                                            ; preds = %bb.aa
  %i.ea = load i32, ptr %.sroa.012.0.lcssa.i17, align 4, !tbaa !150
  store i32 %i.ea, ptr %i.dv, align 4, !tbaa !150
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit32

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit32: ; preds = %bb.z, %bb.aa, %bb.ab
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, ptr %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = shl nsw i64 %3, 1                        ; 3 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 2 uses
  %.not82 = icmp slt i64 %i.g, %i.c
  br i1 %.not82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 10 uses
  %.idx66 = shl nsw i64 %3, 3                     ; 2 uses
  %.not67 = icmp eq i64 %.idx, %.idx66
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 448 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 464 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 456 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 488 ; 4 uses
  br i1 %.not67, label %._crit_edge.i.us.preheader, label %.lr.ph.i

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.l = icmp sgt i64 %3, 1
  %i.m = icmp eq i64 %3, 1
  %i.n = icmp sgt i64 %.idx, 4
  %i.o = icmp eq i64 %.idx, 4
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.i.us.preheader, %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us
  %.sroa.021.084.us = phi ptr [ %i.w, %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us ], [ %2, %._crit_edge.i.us.preheader ] ; 4 uses
  %.083.us = phi ptr [ %i.p, %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us ], [ %0, %._crit_edge.i.us.preheader ] ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.083.us, i64 %.idx ; 5 uses
  br i1 %i.l, label %bb.c, label %bb.b, !prof !297

bb.b:                                             ; preds = %._crit_edge.i.us
  br i1 %i.m, label %.thread, label %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit.i.us

.thread:                                          ; preds = %bb.b
  %i.q = load i32, ptr %.083.us, align 4, !tbaa !150
  store i32 %i.q, ptr %.sroa.021.084.us, align 4, !tbaa !150
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.021.084.us, i64 %.idx
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.021.084.us, ptr align 4 %.083.us, i64 %.idx, i1 false)
  br label %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit.i.us

_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit.i.us: ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds i8, ptr %.sroa.021.084.us, i64 %.idx ; 4 uses
  br i1 %i.n, label %bb.f, label %bb.d, !prof !1013

bb.d:                                             ; preds = %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit.i.us
  br i1 %i.o, label %bb.e, label %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us

bb.e:                                             ; preds = %.thread, %bb.d
  %i.t = phi ptr [ %i.r, %.thread ], [ %i.s, %bb.d ] ; 2 uses
  %i.u = load i32, ptr %i.p, align 4, !tbaa !150
  store i32 %i.u, ptr %i.t, align 4, !tbaa !150
  br label %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us

bb.f:                                             ; preds = %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 4 %i.p, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us

_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us: ; preds = %bb.f, %bb.e, %bb.d
  %i.v = phi ptr [ %i.s, %bb.f ], [ %i.t, %bb.e ], [ %i.s, %bb.d ]
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %.idx ; 2 uses
  %i.x = ptrtoint ptr %i.p to i64
  %i.y = sub i64 %i.d, %i.x
  %i.z = ashr exact i64 %i.y, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.z, %i.c
  br i1 %.not.us, label %._crit_edge, label %._crit_edge.i.us, !llvm.loop !1014

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit
  %.sroa.021.084 = phi ptr [ %i.cy, %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit ], [ %2, %.lr.ph ]
  %.083 = phi ptr [ %i.ab, %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %.083, i64 %.idx ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %.083, i64 %.idx66 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit, %.lr.ph.i
  %.025.i = phi ptr [ %.083, %.lr.ph.i ], [ %.1.i, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit ] ; 3 uses
  %.01624.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.117.i, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit ] ; 3 uses
  %.sroa.020.023.i = phi ptr [ %.sroa.021.084, %.lr.ph.i ], [ %i.ch, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit ] ; 2 uses
  %i.ac = load i32, ptr %.01624.i, align 4, !tbaa !150 ; 3 uses
  %i.ad = load i32, ptr %.025.i, align 4, !tbaa !150 ; 3 uses
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !118 ; 2 uses
  %.not10.i.i.i.i40 = icmp eq ptr %i.ae, null
  br i1 %.not10.i.i.i.i40, label %.critedge.i52, label %.lr.ph.i.i.i.i42

.lr.ph.i.i.i.i42:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i42
  %.012.i.i.i.i43 = phi ptr [ %.1.i.i.i.i48, %.lr.ph.i.i.i.i42 ], [ %i.ae, %bb.g ] ; 3 uses
  %.0811.i.i.i.i44 = phi ptr [ %.19.i.i.i.i45, %.lr.ph.i.i.i.i42 ], [ %i.j, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i43, i64 32
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !150
  %i.ah = icmp slt i32 %i.ag, %i.ac               ; 2 uses
  %.19.i.i.i.i45 = select i1 %i.ah, ptr %.0811.i.i.i.i44, ptr %.012.i.i.i.i43 ; 6 uses
  %.1.in.v.i.i.i.i46 = select i1 %i.ah, i64 24, i64 16
  %.1.in.i.i.i.i47 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i43, i64 %.1.in.v.i.i.i.i46
  %.1.i.i.i.i48 = load ptr, ptr %.1.in.i.i.i.i47, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i49 = icmp eq ptr %.1.i.i.i.i48, null
  br i1 %.not.i.i.i.i49, label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i50, label %.lr.ph.i.i.i.i42, !llvm.loop !287

_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i50: ; preds = %.lr.ph.i.i.i.i42
  %i.ai = icmp eq ptr %.19.i.i.i.i45, %i.j
  br i1 %i.ai, label %.critedge.i52, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i50
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i45, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !150
  %i.al = icmp slt i32 %i.ac, %i.ak
  br i1 %i.al, label %.critedge.i52, label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit59

.critedge.i52:                                    ; preds = %bb.h, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i50, %bb.g
  %.08.lcssa.i.i.i14.i53 = phi ptr [ %.19.i.i.i.i45, %bb.h ], [ %.19.i.i.i.i45, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i50 ], [ %i.j, %bb.g ]
  %i.am = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 3 uses
  store i32 %i.ac, ptr %i.an, align 8, !tbaa !190
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr null, ptr %i.ao, align 8, !tbaa !187
  %i.ap = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr %.08.lcssa.i.i.i14.i53, ptr noundef nonnull align 4 dereferenceable(4) %i.an)
          to label %bb.i unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i54 ; 2 uses

bb.i:                                             ; preds = %.critedge.i52
  %i.aq = extractvalue { ptr, ptr } %i.ap, 0      ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.ap, 1      ; 4 uses
  %.not.i.i55 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i55, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i4.i56 = icmp ne ptr %i.aq, null
  %i.as = icmp eq ptr %i.ar, %i.j
  %or.cond.i.i.i.i57 = select i1 %.not.i.i.i4.i56, i1 true, i1 %i.as
  br i1 %or.cond.i.i.i.i57, label %.thread.i.i58, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.au = load i32, ptr %i.an, align 8, !tbaa !150
  %i.av = load i32, ptr %i.at, align 4, !tbaa !150
  %i.aw = icmp slt i32 %i.au, %i.av
  br label %.thread.i.i58

.thread.i.i58:                                    ; preds = %bb.k, %bb.j
  %i.ax = phi i1 [ %i.aw, %bb.k ], [ true, %bb.j ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ax, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #28
  %i.ay = load i64, ptr %i.k, align 8, !tbaa !127
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.k, align 8, !tbaa !127
  br label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit59

common.resume:                                    ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i54
  %.lcssa125.sink = phi ptr [ %i.bn, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.am, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i54 ]
  %common.resume.op = phi { ptr, i32 } [ %i.cb, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.ba, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i54 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa125.sink, i64 noundef 48) #27
  resume { ptr, i32 } %common.resume.op

_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i54: ; preds = %.critedge.i52
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.l:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 48) #27
  br label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit59

_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit59: ; preds = %bb.h, %.thread.i.i58, %bb.l
  %.sroa.09.0.i51 = phi ptr [ %.19.i.i.i.i45, %bb.h ], [ %i.am, %.thread.i.i58 ], [ %i.aq, %bb.l ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i51, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !196
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 452
  %i.be = load float, ptr %i.bd, align 4, !tbaa !238
  %i.bf = load ptr, ptr %i.i, align 8, !tbaa !118 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit59, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bf, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit59 ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.j, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit59 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !150
  %i.bi = icmp slt i32 %i.bh, %i.ad               ; 2 uses
  %.19.i.i.i.i = select i1 %i.bi, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.bi, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !287

_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.bj = icmp eq ptr %.19.i.i.i.i, %i.j
  br i1 %i.bj, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !150
  %i.bm = icmp slt i32 %i.ad, %i.bl
  br i1 %i.bm, label %.critedge.i, label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit

.critedge.i:                                      ; preds = %bb.m, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit59
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.m ], [ %.19.i.i.i.i, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i ], [ %i.j, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit59 ]
  %i.bn = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 3 uses
  store i32 %i.ad, ptr %i.bo, align 8, !tbaa !190
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store ptr null, ptr %i.bp, align 8, !tbaa !187
  %i.bq = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 4 dereferenceable(4) %i.bo)
          to label %bb.n unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.n:                                             ; preds = %.critedge.i
  %i.br = extractvalue { ptr, ptr } %i.bq, 0      ; 2 uses
  %i.bs = extractvalue { ptr, ptr } %i.bq, 1      ; 4 uses
  %.not.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i4.i = icmp ne ptr %i.br, null
  %i.bt = icmp eq ptr %i.bs, %i.j
  %or.cond.i.i.i.i = select i1 %.not.i.i.i4.i, i1 true, i1 %i.bt
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bv = load i32, ptr %i.bo, align 8, !tbaa !150
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !150
  %i.bx = icmp slt i32 %i.bv, %i.bw
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.p, %bb.o
  %i.by = phi i1 [ %i.bx, %bb.p ], [ true, %bb.o ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.by, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #28
  %i.bz = load i64, ptr %i.k, align 8, !tbaa !127
  %i.ca = add i64 %i.bz, 1
  store i64 %i.ca, ptr %i.k, align 8, !tbaa !127
  br label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit

_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.critedge.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.q:                                             ; preds = %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 48) #27
  br label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit

_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit: ; preds = %bb.m, %.thread.i.i, %bb.q
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i, %bb.m ], [ %i.bn, %.thread.i.i ], [ %i.br, %bb.q ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !196
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 452
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !238
  %i.cg = fcmp ogt float %i.be, %i.cf             ; 3 uses
  %.sink.in.i = select i1 %i.cg, ptr %.01624.i, ptr %.025.i
  %.117.idx.i = select i1 %i.cg, i64 4, i64 0
  %.117.i = getelementptr inbounds nuw i8, ptr %.01624.i, i64 %.117.idx.i ; 5 uses
  %.1.idx.i = select i1 %i.cg, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.025.i, i64 %.1.idx.i ; 5 uses
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !150
  store i32 %.sink.i, ptr %.sroa.020.023.i, align 4, !tbaa !150
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.020.023.i, i64 4 ; 4 uses
  %i.ci = icmp ne ptr %.1.i, %i.aa
  %i.cj = icmp ne ptr %.117.i, %i.ab
  %i.ck = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %i.ck, label %bb.g, label %._crit_edge.i.loopexit, !llvm.loop !1015

._crit_edge.i.loopexit:                           ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit
  %i.cl = ptrtoint ptr %i.aa to i64
  %i.cm = ptrtoint ptr %.1.i to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 4 uses
  %i.co = icmp sgt i64 %i.cn, 4
  br i1 %i.co, label %bb.r, label %bb.s, !prof !297

bb.r:                                             ; preds = %._crit_edge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ch, ptr nonnull align 4 %.1.i, i64 %i.cn, i1 false)
  br label %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit.i

bb.s:                                             ; preds = %._crit_edge.i.loopexit
  %i.cp = icmp eq i64 %i.cn, 4
  br i1 %i.cp, label %bb.t, label %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cq = load i32, ptr %.1.i, align 4, !tbaa !150
  store i32 %i.cq, ptr %i.ch, align 4, !tbaa !150
  br label %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit.i

_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.cr = getelementptr inbounds i8, ptr %i.ch, i64 %i.cn ; 3 uses
  %i.cs = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ct = ptrtoint ptr %.117.i to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 4 uses
  %i.cv = icmp sgt i64 %i.cu, 4
  br i1 %i.cv, label %bb.u, label %bb.v, !prof !297

bb.u:                                             ; preds = %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cr, ptr nonnull align 4 %.117.i, i64 %i.cu, i1 false)
  br label %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit

bb.v:                                             ; preds = %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit.i
  %i.cw = icmp eq i64 %i.cu, 4
  br i1 %i.cw, label %bb.w, label %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cx = load i32, ptr %.117.i, align 4, !tbaa !150
  store i32 %i.cx, ptr %i.cr, align 4, !tbaa !150
  br label %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit

_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit: ; preds = %bb.u, %bb.v, %bb.w
  %i.cy = getelementptr inbounds i8, ptr %i.cr, i64 %i.cu ; 2 uses
  %i.cz = sub i64 %i.d, %i.cs
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %.not = icmp slt i64 %i.da, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !1014

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit, %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.p, %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us ], [ %i.ab, %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit ] ; 3 uses
  %.sroa.021.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.w, %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us ], [ %i.cy, %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit ] ; 2 uses
  %.lcssa72 = phi i64 [ %i.g, %bb.a ], [ %i.z, %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us ], [ %i.da, %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa72) ; 2 uses
  %.idx68 = shl nsw i64 %.sroa.speculated, 2
  %i.db = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx68 ; 5 uses
  %i.dc = icmp ne i64 %.sroa.speculated, 0
  %i.dd = icmp ne ptr %i.db, %1
  %i.de = and i1 %i.dc, %i.dd
  br i1 %i.de, label %.lr.ph.i29, label %._crit_edge.i24

.lr.ph.i29:                                       ; preds = %._crit_edge
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 448 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i29
  %.025.i30 = phi ptr [ %.0.lcssa, %.lr.ph.i29 ], [ %.1.i37, %bb.x ] ; 3 uses
  %.01624.i31 = phi ptr [ %i.db, %.lr.ph.i29 ], [ %.117.i35, %bb.x ] ; 3 uses
  %.sroa.020.023.i32 = phi ptr [ %.sroa.021.0.lcssa, %.lr.ph.i29 ], [ %i.dr, %bb.x ] ; 2 uses
  %i.dg = load i32, ptr %.01624.i31, align 4, !tbaa !150
  %i.dh = load i32, ptr %.025.i30, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.dg, ptr %i.a, align 4, !tbaa !150
  store i32 %i.dh, ptr %i.b, align 4, !tbaa !150
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.df, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !196
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 452
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !238
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.df, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !196
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 452
  %i.dp = load float, ptr %i.do, align 4, !tbaa !238
  %i.dq = fcmp ogt float %i.dl, %i.dp             ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sink.in.i33 = select i1 %i.dq, ptr %.01624.i31, ptr %.025.i30
  %.117.idx.i34 = select i1 %i.dq, i64 4, i64 0
  %.117.i35 = getelementptr inbounds nuw i8, ptr %.01624.i31, i64 %.117.idx.i34 ; 3 uses
  %.1.idx.i36 = select i1 %i.dq, i64 0, i64 4
  %.1.i37 = getelementptr inbounds nuw i8, ptr %.025.i30, i64 %.1.idx.i36 ; 3 uses
  %.sink.i38 = load i32, ptr %.sink.in.i33, align 4, !tbaa !150
  store i32 %.sink.i38, ptr %.sroa.020.023.i32, align 4, !tbaa !150
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.020.023.i32, i64 4 ; 2 uses
  %i.ds = icmp ne ptr %.1.i37, %i.db
  %i.dt = icmp ne ptr %.117.i35, %1
  %i.du = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %i.du, label %bb.x, label %._crit_edge.i24, !llvm.loop !1015

._crit_edge.i24:                                  ; preds = %bb.x, %._crit_edge
  %.sroa.020.0.lcssa.i25 = phi ptr [ %.sroa.021.0.lcssa, %._crit_edge ], [ %i.dr, %bb.x ] ; 3 uses
  %.016.lcssa.i26 = phi ptr [ %i.db, %._crit_edge ], [ %.117.i35, %bb.x ] ; 3 uses
  %.0.lcssa.i27 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i37, %bb.x ] ; 3 uses
  %i.dv = ptrtoint ptr %i.db to i64
  %i.dw = ptrtoint ptr %.0.lcssa.i27 to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 4 uses
  %i.dy = icmp sgt i64 %i.dx, 4
  br i1 %i.dy, label %bb.y, label %bb.z, !prof !297

bb.y:                                             ; preds = %._crit_edge.i24
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.020.0.lcssa.i25, ptr align 4 %.0.lcssa.i27, i64 %i.dx, i1 false)
  br label %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit.i28

bb.z:                                             ; preds = %._crit_edge.i24
  %i.dz = icmp eq i64 %i.dx, 4
  br i1 %i.dz, label %bb.aa, label %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit.i28

bb.aa:                                            ; preds = %bb.z
  %i.ea = load i32, ptr %.0.lcssa.i27, align 4, !tbaa !150
  store i32 %i.ea, ptr %.sroa.020.0.lcssa.i25, align 4, !tbaa !150
  br label %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit.i28

_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit.i28: ; preds = %bb.aa, %bb.z, %bb.y
  %i.eb = getelementptr inbounds i8, ptr %.sroa.020.0.lcssa.i25, i64 %i.dx ; 2 uses
  %i.ec = ptrtoint ptr %.016.lcssa.i26 to i64
  %i.ed = sub i64 %i.d, %i.ec                     ; 3 uses
  %i.ee = icmp sgt i64 %i.ed, 4
  br i1 %i.ee, label %bb.ab, label %bb.ac, !prof !297

bb.ab:                                            ; preds = %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit.i28
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.eb, ptr align 4 %.016.lcssa.i26, i64 %i.ed, i1 false)
  br label %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit39

bb.ac:                                            ; preds = %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit.i28
  %i.ef = icmp eq i64 %i.ed, 4
  br i1 %i.ef, label %bb.ad, label %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit39

bb.ad:                                            ; preds = %bb.ac
  %i.eg = load i32, ptr %.016.lcssa.i26, align 4, !tbaa !150
  store i32 %i.eg, ptr %i.eb, align 4, !tbaa !150
  br label %_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit39

_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit39: ; preds = %bb.ab, %bb.ac, %bb.ad
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.042 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not43 = icmp eq ptr %.sroa.0.042, %1
  br i1 %.not43, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 448 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 464 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 456 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 488 ; 4 uses
  %i.j = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit
  %.sroa.0.045 = phi ptr [ %.sroa.0.042, %.lr.ph ], [ %.sroa.0.0, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 7 uses
  %.pn44 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.045, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 4 uses
  %i.k = load i32, ptr %.sroa.0.045, align 4, !tbaa !150
  %i.l = load i32, ptr %0, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.k, ptr %i.c, align 4, !tbaa !150
  store i32 %i.l, ptr %i.d, align 4, !tbaa !150
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !196
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 452
  %i.p = load float, ptr %i.o, align 4, !tbaa !238
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !196
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 452
  %i.t = load float, ptr %i.s, align 4, !tbaa !238
  %i.u = fcmp ogt float %i.p, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.v = load i32, ptr %.sroa.0.045, align 4, !tbaa !150 ; 6 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %.sroa.0.045 to i64
  %i.x = sub i64 %i.w, %i.j                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.d, label %bb.e, !prof !297

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn44, i64 8
  %i.ab = sub nsw i64 0, %i.y
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ab
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ac, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = icmp eq i64 %i.x, 4
  br i1 %i.ad, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn44, i64 4
  %i.af = load i32, ptr %0, align 4, !tbaa !150
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !150
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.ag = load i32, ptr %.pn44, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.v, ptr %i.a, align 4, !tbaa !150
  store i32 %i.ag, ptr %i.b, align 4, !tbaa !150
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !196
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 452
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !238
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !196
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 452
  %i.ao = load float, ptr %i.an, align 4, !tbaa !238
  %i.ap = fcmp ogt float %i.ak, %i.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ap, label %.lr.ph.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

.lr.ph.i:                                         ; preds = %bb.g, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit
  %.sroa.0.011.i = phi ptr [ %.sroa.0.0.i, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit ], [ %.pn44, %bb.g ] ; 4 uses
  %.sroa.06.010.i = phi ptr [ %.sroa.0.011.i, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit ], [ %.sroa.0.045, %bb.g ]
  %i.aq = load i32, ptr %.sroa.0.011.i, align 4, !tbaa !150
  store i32 %i.aq, ptr %.sroa.06.010.i, align 4, !tbaa !150
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.011.i, i64 -4 ; 2 uses
  %i.ar = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.v, ptr %i.a, align 4, !tbaa !150
  store i32 %i.ar, ptr %i.b, align 4, !tbaa !150
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !118 ; 2 uses
  %.not10.i.i.i.i9 = icmp eq ptr %i.as, null
  br i1 %.not10.i.i.i.i9, label %.critedge.i21, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %.lr.ph.i, %.lr.ph.i.i.i.i11
  %.012.i.i.i.i12 = phi ptr [ %.1.i.i.i.i17, %.lr.ph.i.i.i.i11 ], [ %i.as, %.lr.ph.i ] ; 3 uses
  %.0811.i.i.i.i13 = phi ptr [ %.19.i.i.i.i14, %.lr.ph.i.i.i.i11 ], [ %i.h, %.lr.ph.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i12, i64 32
  %i.au = load i32, ptr %i.at, align 4, !tbaa !150
  %i.av = icmp slt i32 %i.au, %i.v                ; 2 uses
  %.19.i.i.i.i14 = select i1 %i.av, ptr %.0811.i.i.i.i13, ptr %.012.i.i.i.i12 ; 6 uses
  %.1.in.v.i.i.i.i15 = select i1 %i.av, i64 24, i64 16
  %.1.in.i.i.i.i16 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i12, i64 %.1.in.v.i.i.i.i15
  %.1.i.i.i.i17 = load ptr, ptr %.1.in.i.i.i.i16, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %.1.i.i.i.i17, null
  br i1 %.not.i.i.i.i18, label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i19, label %.lr.ph.i.i.i.i11, !llvm.loop !287

_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i19: ; preds = %.lr.ph.i.i.i.i11
  %i.aw = icmp eq ptr %.19.i.i.i.i14, %i.h
  br i1 %i.aw, label %.critedge.i21, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i19
  %i.ax = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i14, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !150
  %i.az = icmp slt i32 %i.v, %i.ay
  br i1 %i.az, label %.critedge.i21, label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit28

.critedge.i21:                                    ; preds = %bb.h, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i19, %.lr.ph.i
  %.08.lcssa.i.i.i14.i22 = phi ptr [ %.19.i.i.i.i14, %bb.h ], [ %.19.i.i.i.i14, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i19 ], [ %i.h, %.lr.ph.i ]
  %i.ba = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 3 uses
  store i32 %i.v, ptr %i.bb, align 8, !tbaa !190
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store ptr null, ptr %i.bc, align 8, !tbaa !187
  %i.bd = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr %.08.lcssa.i.i.i14.i22, ptr noundef nonnull align 4 dereferenceable(4) %i.bb)
          to label %bb.i unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i23 ; 2 uses

bb.i:                                             ; preds = %.critedge.i21
  %i.be = extractvalue { ptr, ptr } %i.bd, 0      ; 2 uses
  %i.bf = extractvalue { ptr, ptr } %i.bd, 1      ; 4 uses
  %.not.i.i24 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i24, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i4.i25 = icmp ne ptr %i.be, null
  %i.bg = icmp eq ptr %i.bf, %i.h
  %or.cond.i.i.i.i26 = select i1 %.not.i.i.i4.i25, i1 true, i1 %i.bg
  br i1 %or.cond.i.i.i.i26, label %.thread.i.i27, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bi = load i32, ptr %i.bb, align 8, !tbaa !150
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !150
  %i.bk = icmp slt i32 %i.bi, %i.bj
  br label %.thread.i.i27

.thread.i.i27:                                    ; preds = %bb.k, %bb.j
  %i.bl = phi i1 [ %i.bk, %bb.k ], [ true, %bb.j ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bl, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #28
  %i.bm = load i64, ptr %i.i, align 8, !tbaa !127
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.i, align 8, !tbaa !127
  br label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit28

common.resume:                                    ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i23
  %.lcssa56.sink = phi ptr [ %i.cb, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.ba, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i23 ]
  %common.resume.op = phi { ptr, i32 } [ %i.cp, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.bo, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i23 ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa56.sink, i64 noundef 48) #27
  resume { ptr, i32 } %common.resume.op

_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i23: ; preds = %.critedge.i21
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.l:                                             ; preds = %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 48) #27
  br label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit28

_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit28: ; preds = %bb.h, %.thread.i.i27, %bb.l
  %.sroa.09.0.i20 = phi ptr [ %.19.i.i.i.i14, %bb.h ], [ %i.ba, %.thread.i.i27 ], [ %i.be, %bb.l ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i20, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !196
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 452
  %i.bs = load float, ptr %i.br, align 4, !tbaa !238
  %i.bt = load ptr, ptr %i.g, align 8, !tbaa !118 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bt, null
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !150 ; 3 uses
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit28, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bt, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit28 ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.h, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit28 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !150
  %i.bw = icmp slt i32 %i.bv, %.pre.i             ; 2 uses
  %.19.i.i.i.i = select i1 %i.bw, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.bw, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !287

_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.bx = icmp eq ptr %.19.i.i.i.i, %i.h
  br i1 %i.bx, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !150
  %i.ca = icmp slt i32 %.pre.i, %i.bz
  br i1 %i.ca, label %.critedge.i, label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit

.critedge.i:                                      ; preds = %bb.m, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit28
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.m ], [ %.19.i.i.i.i, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i ], [ %i.h, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit28 ]
  %i.cb = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 3 uses
  store i32 %.pre.i, ptr %i.cc, align 8, !tbaa !190
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store ptr null, ptr %i.cd, align 8, !tbaa !187
  %i.ce = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 4 dereferenceable(4) %i.cc)
          to label %bb.n unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.n:                                             ; preds = %.critedge.i
  %i.cf = extractvalue { ptr, ptr } %i.ce, 0      ; 2 uses
  %i.cg = extractvalue { ptr, ptr } %i.ce, 1      ; 4 uses
  %.not.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i4.i = icmp ne ptr %i.cf, null
  %i.ch = icmp eq ptr %i.cg, %i.h
  %or.cond.i.i.i.i = select i1 %.not.i.i.i4.i, i1 true, i1 %i.ch
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.cj = load i32, ptr %i.cc, align 8, !tbaa !150
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !150
  %i.cl = icmp slt i32 %i.cj, %i.ck
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.p, %bb.o
  %i.cm = phi i1 [ %i.cl, %bb.p ], [ true, %bb.o ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cm, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #28
  %i.cn = load i64, ptr %i.i, align 8, !tbaa !127
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.i, align 8, !tbaa !127
  br label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit

_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.critedge.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.q:                                             ; preds = %bb.n
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 48) #27
  br label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit

_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit: ; preds = %bb.m, %.thread.i.i, %bb.q
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i, %bb.m ], [ %i.cb, %.thread.i.i ], [ %i.cf, %bb.q ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !196
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 452
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !238
  %i.cu = fcmp ogt float %i.bs, %i.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.cu, label %.lr.ph.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, !llvm.loop !1016

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.045, %bb.g ], [ %.sroa.0.011.i, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit ]
  store i32 %i.v, ptr %.sink, align 4, !tbaa !150
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 4 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !1017

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_SC_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr %5) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = icmp eq i64 %3, 0
  %i.h = icmp eq i64 %4, 0
  %or.cond = or i1 %i.g, %i.h
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i64 %4, %3
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %1, align 4, !tbaa !150
  %i.l = load i32, ptr %0, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.k, ptr %i.e, align 4, !tbaa !150
  store i32 %i.l, ptr %i.f, align 4, !tbaa !150
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 448 ; 2 uses
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !196
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 452
  %i.q = load float, ptr %i.p, align 4, !tbaa !238
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !196
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 452
  %i.u = load float, ptr %i.t, align 4, !tbaa !238
  %i.v = fcmp ogt float %i.q, %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.v, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %0, align 4, !tbaa !150
  %i.x = load i32, ptr %1, align 4, !tbaa !150
  store i32 %i.x, ptr %0, align 4, !tbaa !150
  store i32 %i.w, ptr %1, align 4, !tbaa !150
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.y = icmp sgt i64 %3, %4
  br i1 %i.y, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit55

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.z = sdiv i64 %3, 2                           ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ab = ptrtoint ptr %2 to i64
  %i.ac = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 448 ; 2 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.018.i = phi i64 [ %i.ae, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.013.017.i = phi ptr [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.013.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.ah = lshr i64 %.018.i, 1                     ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.013.017.i, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !150
  %i.ak = load i32, ptr %i.aa, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.aj, ptr %i.c, align 4, !tbaa !150
  store i32 %i.ak, ptr %i.d, align 4, !tbaa !150
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !196
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 452
  %i.ao = load float, ptr %i.an, align 4, !tbaa !238
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !196
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 452
  %i.as = load float, ptr %i.ar, align 4, !tbaa !238
  %i.at = fcmp ogt float %i.ao, %i.as             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.av = xor i64 %i.ah, -1
  %i.aw = add nsw i64 %.018.i, %i.av
  %.sroa.013.1.i = select i1 %i.at, ptr %i.au, ptr %.sroa.013.017.i ; 3 uses
  %.1.i = select i1 %i.at, i64 %i.aw, i64 %i.ah   ; 2 uses
  %i.ax = icmp sgt i64 %.1.i, 0
  br i1 %i.ax, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !1018

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.013.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.ac, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.013.0.lcssa.i = phi ptr [ %.sroa.013.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ay = sub i64 %.pre-phi, %i.ac
  %i.az = ashr exact i64 %i.ay, 2
  br label %bb.f

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit55: ; preds = %bb.e
  %i.ba = sdiv i64 %4, 2                          ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ba ; 2 uses
  %i.bc = ptrtoint ptr %1 to i64
  %i.bd = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2                 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit55
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 448 ; 2 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57
  %.018.i59 = phi i64 [ %i.bf, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57 ], [ %.1.i64, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58 ] ; 2 uses
  %.sroa.013.017.i60 = phi ptr [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57 ], [ %.sroa.013.1.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58 ] ; 2 uses
  %i.bi = lshr i64 %.018.i59, 1                   ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.013.017.i60, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bb, align 4, !tbaa !150
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.bk, ptr %i.a, align 4, !tbaa !150
  store i32 %i.bl, ptr %i.b, align 4, !tbaa !150
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !196
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 452
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !238
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !196
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 452
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !238
  %i.bu = fcmp ogt float %i.bp, %i.bt             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bw = xor i64 %i.bi, -1
  %i.bx = add nsw i64 %.018.i59, %i.bw
  %.sroa.013.1.i63 = select i1 %i.bu, ptr %.sroa.013.017.i60, ptr %i.bv ; 3 uses
  %.1.i64 = select i1 %i.bu, i64 %i.bi, i64 %i.bx ; 2 uses
  %i.by = icmp sgt i64 %.1.i64, 0
  br i1 %i.by, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !1019

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58
  %.pre80 = ptrtoint ptr %.sroa.013.1.i63 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit55
  %.pre-phi81 = phi i64 [ %.pre80, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.bd, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %.sroa.013.0.lcssa.i56 = phi ptr [ %.sroa.013.1.i63, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %i.bz = sub i64 %.pre-phi81, %i.bd
  %i.ca = ashr exact i64 %i.bz, 2
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit
  %.sroa.067.0 = phi ptr [ %i.aa, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit ], [ %.sroa.013.0.lcssa.i56, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.013.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit ], [ %i.bb, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.049 = phi i64 [ %i.az, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit ], [ %i.ba, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.z, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit ], [ %i.ca, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.cb = call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %.sroa.067.0, ptr %1, ptr %.sroa.0.0) ; 2 uses
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_SC_T1_(ptr %0, ptr %.sroa.067.0, ptr %i.cb, i64 noundef %.0, i64 noundef %.049, ptr %5)
  %i.cc = sub nsw i64 %3, %.0
  %i.cd = sub nsw i64 %4, %.049
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_SC_T1_(ptr %i.cb, ptr %.sroa.0.0, ptr %2, i64 noundef %i.cc, i64 noundef %i.cd, ptr %5)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 2                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 2                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = sub i64 %i.g, %i.d
  %i.m = add i64 %i.l, -4                         ; 2 uses
  %i.n = lshr i64 %i.m, 2
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.m, 60
  br i1 %min.iters.check165, label %.lr.ph.i.preheader181, label %vector.memcheck158

vector.memcheck158:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -4
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -4
  %i.s = add i64 %i.r, 4                          ; 2 uses
  %scevgep159 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.s
  %bound0161 = icmp ult ptr %0, %scevgep160
  %bound1162 = icmp ult ptr %1, %scevgep159
  %found.conflict163 = and i1 %bound0161, %bound1162
  br i1 %found.conflict163, label %.lr.ph.i.preheader181, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck158
  %n.vec167 = and i64 %i.o, 9223372036854775800   ; 3 uses
  %i.t = shl i64 %n.vec167, 2                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next176, %vector.body168 ] ; 2 uses
  %i.w = shl i64 %index169, 2                     ; 2 uses
  %next.gep170 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep171 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep171, i64 16 ; 2 uses
  %wide.load172 = load <4 x i32>, ptr %next.gep171, align 4, !tbaa !150, !alias.scope !1020, !noalias !1023
  %wide.load173 = load <4 x i32>, ptr %i.x, align 4, !tbaa !150, !alias.scope !1020, !noalias !1023
  %i.y = getelementptr i8, ptr %next.gep170, i64 16 ; 2 uses
  %wide.load174 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !150, !alias.scope !1023
  %wide.load175 = load <4 x i32>, ptr %i.y, align 4, !tbaa !150, !alias.scope !1023
  store <4 x i32> %wide.load174, ptr %next.gep171, align 4, !tbaa !150, !alias.scope !1020, !noalias !1023
  store <4 x i32> %wide.load175, ptr %i.x, align 4, !tbaa !150, !alias.scope !1020, !noalias !1023
  store <4 x i32> %wide.load172, ptr %next.gep170, align 4, !tbaa !150, !alias.scope !1023
  store <4 x i32> %wide.load173, ptr %i.y, align 4, !tbaa !150, !alias.scope !1023
  %index.next176 = add nuw i64 %index169, 8       ; 2 uses
  %i.z = icmp eq i64 %index.next176, %n.vec167
  br i1 %i.z, label %middle.block177, label %vector.body168, !llvm.loop !1025

middle.block177:                                  ; preds = %vector.body168
  %cmp.n178 = icmp eq i64 %i.o, %n.vec167
  br i1 %cmp.n178, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.preheader181

.lr.ph.i.preheader181:                            ; preds = %vector.memcheck158, %.lr.ph.i.preheader, %middle.block177
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck158 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block177 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck158 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block177 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader181, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader181 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader181 ] ; 3 uses
  %i.aa = load i32, ptr %.sroa.04.07.i, align 4, !tbaa !150
  %i.ab = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !150
  store i32 %i.ab, ptr %.sroa.04.07.i, align 4, !tbaa !150
  store i32 %i.aa, ptr %.sroa.0.08.i, align 4, !tbaa !150
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !1028

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.042.0 = phi ptr [ %0, %bb.d ], [ %.sroa.042.0.be, %.backedge ] ; 22 uses
  %.085 = phi i64 [ %i.i, %bb.d ], [ %.085.be, %.backedge ] ; 18 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %i.ag = sub nsw i64 %.0, %.085                  ; 10 uses
  %i.ah = icmp slt i64 %.085, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.085, 1
  br i1 %i.ai, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.f
  %i.aj = load i32, ptr %.sroa.042.0, align 4, !tbaa !150
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 4
  %.idx87 = shl nsw i64 %.0, 2                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.042.0, i64 %.idx87
  %gepdiff = add nsw i64 %.idx87, -4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %.sroa.042.0, ptr nonnull align 4 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !150
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph100.preheader, label %._crit_edge101

.lr.ph100.preheader:                              ; preds = %bb.g
  %i.ao = getelementptr [4 x i8], ptr %.sroa.042.0, i64 %.085 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph100.preheader182, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph100.preheader
  %i.ap = shl i64 %.0, 2
  %i.aq = sub i64 %.0, %.085
  %i.ar = shl i64 %i.aq, 2
  %scevgep = getelementptr i8, ptr %.sroa.042.0, i64 %i.ar
  %scevgep128 = getelementptr i8, ptr %.sroa.042.0, i64 %i.ap
  %bound0 = icmp ult ptr %.sroa.042.0, %scevgep128
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph100.preheader182, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775800     ; 4 uses
  %i.as = shl i64 %n.vec, 2                       ; 2 uses
  %i.at = getelementptr i8, ptr %.sroa.042.0, i64 %i.as ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.042.0, i64 %i.av ; 3 uses
  %next.gep129 = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !150, !alias.scope !1029, !noalias !1032
  %wide.load130 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !150, !alias.scope !1029, !noalias !1032
  %i.ax = getelementptr i8, ptr %next.gep129, i64 16 ; 2 uses
  %wide.load131 = load <4 x i32>, ptr %next.gep129, align 4, !tbaa !150, !alias.scope !1032
  %wide.load132 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !150, !alias.scope !1032
  store <4 x i32> %wide.load131, ptr %next.gep, align 4, !tbaa !150, !alias.scope !1029, !noalias !1032
  store <4 x i32> %wide.load132, ptr %i.aw, align 4, !tbaa !150, !alias.scope !1029, !noalias !1032
  store <4 x i32> %wide.load, ptr %next.gep129, align 4, !tbaa !150, !alias.scope !1032
  store <4 x i32> %wide.load130, ptr %i.ax, align 4, !tbaa !150, !alias.scope !1032
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1034

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge101, label %.lr.ph100.preheader182

.lr.ph100.preheader182:                           ; preds = %vector.memcheck, %.lr.ph100.preheader, %middle.block
  %.02998.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph100.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.042.197.ph = phi ptr [ %.sroa.042.0, %vector.memcheck ], [ %.sroa.042.0, %.lr.ph100.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.sroa.039.096.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph100.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %i.az = sub i64 %.0, %.085
  %xtraiter190 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol

.lr.ph100.prol:                                   ; preds = %.lr.ph100.preheader182, %.lr.ph100.prol
  %.02998.prol = phi i64 [ %i.be, %.lr.ph100.prol ], [ %.02998.ph, %.lr.ph100.preheader182 ]
  %.sroa.042.197.prol = phi ptr [ %i.bc, %.lr.ph100.prol ], [ %.sroa.042.197.ph, %.lr.ph100.preheader182 ] ; 3 uses
  %.sroa.039.096.prol = phi ptr [ %i.bd, %.lr.ph100.prol ], [ %.sroa.039.096.ph, %.lr.ph100.preheader182 ] ; 3 uses
  %prol.iter192 = phi i64 [ %prol.iter192.next, %.lr.ph100.prol ], [ 0, %.lr.ph100.preheader182 ]
  %i.ba = load i32, ptr %.sroa.042.197.prol, align 4, !tbaa !150
  %i.bb = load i32, ptr %.sroa.039.096.prol, align 4, !tbaa !150
  store i32 %i.bb, ptr %.sroa.042.197.prol, align 4, !tbaa !150
  store i32 %i.ba, ptr %.sroa.039.096.prol, align 4, !tbaa !150
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.042.197.prol, i64 4 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.039.096.prol, i64 4 ; 2 uses
  %i.be = add nuw nsw i64 %.02998.prol, 1         ; 2 uses
  %prol.iter192.next = add i64 %prol.iter192, 1   ; 2 uses
  %prol.iter192.cmp.not = icmp eq i64 %prol.iter192.next, %xtraiter190
  br i1 %prol.iter192.cmp.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol, !llvm.loop !1035

.lr.ph100.prol.loopexit:                          ; preds = %.lr.ph100.prol, %.lr.ph100.preheader182
  %.lcssa.unr = phi ptr [ poison, %.lr.ph100.preheader182 ], [ %i.bc, %.lr.ph100.prol ]
  %.02998.unr = phi i64 [ %.02998.ph, %.lr.ph100.preheader182 ], [ %i.be, %.lr.ph100.prol ]
  %.sroa.042.197.unr = phi ptr [ %.sroa.042.197.ph, %.lr.ph100.preheader182 ], [ %i.bc, %.lr.ph100.prol ]
  %.sroa.039.096.unr = phi ptr [ %.sroa.039.096.ph, %.lr.ph100.preheader182 ], [ %i.bd, %.lr.ph100.prol ]
  %i.bf = sub i64 %.02998.ph, %.0
  %i.bg = add i64 %i.bf, %.085
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge101, label %.lr.ph100

._crit_edge101:                                   ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100, %middle.block, %bb.g
  %.sroa.042.1.lcssa = phi ptr [ %.sroa.042.0, %bb.g ], [ %i.at, %middle.block ], [ %.lcssa.unr, %.lr.ph100.prol.loopexit ], [ %i.bx, %.lr.ph100 ]
  %i.bi = srem i64 %.0, %.085                     ; 2 uses
  %.not32 = icmp eq i64 %i.bi, 0
  br i1 %.not32, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.h

.lr.ph100:                                        ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100
  %.02998 = phi i64 [ %i.bz, %.lr.ph100 ], [ %.02998.unr, %.lr.ph100.prol.loopexit ]
  %.sroa.042.197 = phi ptr [ %i.bx, %.lr.ph100 ], [ %.sroa.042.197.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %.sroa.039.096 = phi ptr [ %i.by, %.lr.ph100 ], [ %.sroa.039.096.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %i.bj = load i32, ptr %.sroa.042.197, align 4, !tbaa !150
  %i.bk = load i32, ptr %.sroa.039.096, align 4, !tbaa !150
  store i32 %i.bk, ptr %.sroa.042.197, align 4, !tbaa !150
  store i32 %i.bj, ptr %.sroa.039.096, align 4, !tbaa !150
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.042.197, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.039.096, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !150
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !150
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !150
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !150
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.042.197, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.039.096, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !150
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !150
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !150
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !150
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.042.197, i64 12 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.039.096, i64 12 ; 2 uses
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !150
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !150
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !150
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !150
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.042.197, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.039.096, i64 16
  %i.bz = add nuw nsw i64 %.02998, 4              ; 2 uses
  %exitcond109.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond109.not.3, label %._crit_edge101, label %.lr.ph100, !llvm.loop !1036

bb.h:                                             ; preds = %._crit_edge101
  %i.ca = sub nsw i64 %.085, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr [4 x i8], ptr %.sroa.042.0, i64 %.0 ; 8 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !150
  %.idx = shl nsw i64 %.0, 2
  %i.cf = add nsw i64 %.idx, -4                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 2                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !297

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cj, ptr nonnull align 4 %.sroa.042.0, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 4
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load i32, ptr %.sroa.042.0, align 4, !tbaa !150
  store i32 %i.cl, ptr %i.cd, align 4, !tbaa !150
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store i32 %i.ce, ptr %.sroa.042.0, align 4, !tbaa !150
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.n:                                             ; preds = %bb.i
  %i.cm = sub i64 0, %i.ag
  %i.cn = getelementptr [4 x i8], ptr %i.cc, i64 %i.cm ; 6 uses
  %i.co = icmp sgt i64 %.085, 0
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check141 = icmp ult i64 %.085, 8
  br i1 %min.iters.check141, label %.lr.ph.preheader183, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.lr.ph.preheader
  %i.cp = sub i64 %.0, %.085
  %i.cq = shl i64 %i.cp, 2
  %scevgep136 = getelementptr i8, ptr %.sroa.042.0, i64 %i.cq
  %bound0137 = icmp ult ptr %.sroa.042.0, %i.cc
  %bound1138 = icmp ult ptr %scevgep136, %i.cn
  %found.conflict139 = and i1 %bound0137, %bound1138
  br i1 %found.conflict139, label %.lr.ph.preheader183, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck135
  %n.vec143 = and i64 %.085, 9223372036854775800  ; 4 uses
  %i.cr = mul i64 %n.vec143, -4                   ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cc, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cn, i64 %i.cr
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next152, %vector.body144 ] ; 2 uses
  %i.cu = mul i64 %index145, -4                   ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.cc, i64 %i.cu ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.cn, i64 %i.cu ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %next.gep147, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep147, i64 -32 ; 2 uses
  %wide.load148 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !150, !alias.scope !1037, !noalias !1040
  %wide.load149 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !150, !alias.scope !1037, !noalias !1040
  %i.cx = getelementptr inbounds i8, ptr %next.gep146, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep146, i64 -32 ; 2 uses
  %wide.load150 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !150, !alias.scope !1040
  %wide.load151 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !150, !alias.scope !1040
  store <4 x i32> %wide.load150, ptr %i.cv, align 4, !tbaa !150, !alias.scope !1037, !noalias !1040
  store <4 x i32> %wide.load151, ptr %i.cw, align 4, !tbaa !150, !alias.scope !1037, !noalias !1040
  store <4 x i32> %wide.load148, ptr %i.cx, align 4, !tbaa !150, !alias.scope !1040
  store <4 x i32> %wide.load149, ptr %i.cy, align 4, !tbaa !150, !alias.scope !1040
  %index.next152 = add nuw i64 %index145, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next152, %n.vec143
  br i1 %i.cz, label %middle.block153, label %vector.body144, !llvm.loop !1042

middle.block153:                                  ; preds = %vector.body144
  %cmp.n154 = icmp eq i64 %.085, %n.vec143
  br i1 %cmp.n154, label %._crit_edge, label %.lr.ph.preheader183

.lr.ph.preheader183:                              ; preds = %vector.memcheck135, %.lr.ph.preheader, %middle.block153
  %.02895.ph = phi i64 [ 0, %vector.memcheck135 ], [ 0, %.lr.ph.preheader ], [ %n.vec143, %middle.block153 ] ; 3 uses
  %.sroa.0.094.ph = phi ptr [ %i.cc, %vector.memcheck135 ], [ %i.cc, %.lr.ph.preheader ], [ %i.cs, %middle.block153 ] ; 2 uses
  %.sroa.042.293.ph = phi ptr [ %i.cn, %vector.memcheck135 ], [ %i.cn, %.lr.ph.preheader ], [ %i.ct, %middle.block153 ] ; 2 uses
  %xtraiter = and i64 %.085, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader183, %.lr.ph.prol
  %.02895.prol = phi i64 [ %i.de, %.lr.ph.prol ], [ %.02895.ph, %.lr.ph.preheader183 ]
  %.sroa.0.094.prol = phi ptr [ %i.db, %.lr.ph.prol ], [ %.sroa.0.094.ph, %.lr.ph.preheader183 ]
  %.sroa.042.293.prol = phi ptr [ %i.da, %.lr.ph.prol ], [ %.sroa.042.293.ph, %.lr.ph.preheader183 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader183 ]
  %i.da = getelementptr inbounds i8, ptr %.sroa.042.293.prol, i64 -4 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.094.prol, i64 -4 ; 4 uses
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !150
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !150
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !150
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !150
  %i.de = add nuw nsw i64 %.02895.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1043

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader183
  %.02895.unr = phi i64 [ %.02895.ph, %.lr.ph.preheader183 ], [ %i.de, %.lr.ph.prol ]
  %.sroa.0.094.unr = phi ptr [ %.sroa.0.094.ph, %.lr.ph.preheader183 ], [ %i.db, %.lr.ph.prol ]
  %.sroa.042.293.unr = phi ptr [ %.sroa.042.293.ph, %.lr.ph.preheader183 ], [ %i.da, %.lr.ph.prol ]
  %i.df = sub nsw i64 %.02895.ph, %.085
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block153, %bb.n
  %.sroa.042.2.lcssa = phi ptr [ %i.cn, %bb.n ], [ %.sroa.042.0, %middle.block153 ], [ %.sroa.042.0, %.lr.ph ], [ %.sroa.042.0, %.lr.ph.prol.loopexit ]
  %i.dh = srem i64 %.0, %i.ag                     ; 2 uses
  %.not = icmp eq i64 %i.dh, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.042.0.be = phi ptr [ %.sroa.042.1.lcssa, %bb.h ], [ %.sroa.042.2.lcssa, %._crit_edge ]
  %.085.be = phi i64 [ %i.ca, %bb.h ], [ %i.dh, %._crit_edge ]
  %.0.be = phi i64 [ %.085, %bb.h ], [ %i.ag, %._crit_edge ]
  br label %bb.e, !llvm.loop !1044

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02895 = phi i64 [ %i.dy, %.lr.ph ], [ %.02895.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.094 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.0.094.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.042.293 = phi ptr [ %i.du, %.lr.ph ], [ %.sroa.042.293.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -4 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -4 ; 2 uses
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !150
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !150
  store i32 %i.dl, ptr %i.di, align 4, !tbaa !150
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !150
  %i.dm = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -8 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -8 ; 2 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !150
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !150
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !150
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !150
  %i.dq = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -12 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -12 ; 2 uses
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !150
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !150
  store i32 %i.dt, ptr %i.dq, align 4, !tbaa !150
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !150
  %i.du = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -16 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -16 ; 3 uses
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !150
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !150
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !150
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !150
  %i.dy = add nuw nsw i64 %.02895, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dy, %.085
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1045

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %._crit_edge, %._crit_edge101, %.lr.ph.i, %middle.block177, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %bb.b, %bb.a
  %.sroa.025.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %i.af, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %1, %middle.block177 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge101 ], [ %i.af, %._crit_edge ]
  ret ptr %.sroa.025.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 %7) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = inttoptr i64 %7 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %6
  %.not64 = icmp sgt i64 %4, %6
  %or.cond = and i1 %.not, %.not64
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_SC_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %7)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = icmp sgt i64 %3, %4
  br i1 %i.f, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit68

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.g = sdiv i64 %3, 2                           ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = ptrtoint ptr %2 to i64
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.018.i = phi i64 [ %i.l, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.013.017.i = phi ptr [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.013.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.o = lshr i64 %.018.i, 1                      ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.sroa.013.017.i, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !150
  %i.r = load i32, ptr %i.h, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.q, ptr %i.c, align 4, !tbaa !150
  store i32 %i.r, ptr %i.d, align 4, !tbaa !150
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !196
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 452
  %i.v = load float, ptr %i.u, align 4, !tbaa !238
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !196
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 452
  %i.z = load float, ptr %i.y, align 4, !tbaa !238
  %i.aa = fcmp ogt float %i.v, %i.z               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ac = xor i64 %i.o, -1
  %i.ad = add nsw i64 %.018.i, %i.ac
  %.sroa.013.1.i = select i1 %i.aa, ptr %i.ab, ptr %.sroa.013.017.i ; 3 uses
  %.1.i = select i1 %i.aa, i64 %i.ad, i64 %i.o    ; 2 uses
  %i.ae = icmp sgt i64 %.1.i, 0
  br i1 %i.ae, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !1018

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.013.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.j, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.013.0.lcssa.i = phi ptr [ %.sroa.013.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.af = sub i64 %.pre-phi, %i.j
  %i.ag = ashr exact i64 %i.af, 2
  br label %bb.d

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit68: ; preds = %bb.c
  %i.ah = sdiv i64 %4, 2                          ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ah ; 2 uses
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i70, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i70: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit68
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i71

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i71: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i71, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i70
  %.018.i72 = phi i64 [ %i.am, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i70 ], [ %.1.i77, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i71 ] ; 2 uses
  %.sroa.013.017.i73 = phi ptr [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i70 ], [ %.sroa.013.1.i76, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i71 ] ; 2 uses
  %i.ap = lshr i64 %.018.i72, 1                   ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.013.017.i73, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.ai, align 4, !tbaa !150
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !150
  store i32 %i.as, ptr %i.b, align 4, !tbaa !150
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !196
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 452
  %i.aw = load float, ptr %i.av, align 4, !tbaa !238
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !196
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 452
  %i.ba = load float, ptr %i.az, align 4, !tbaa !238
  %i.bb = fcmp ogt float %i.aw, %i.ba             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.bd = xor i64 %i.ap, -1
  %i.be = add nsw i64 %.018.i72, %i.bd
  %.sroa.013.1.i76 = select i1 %i.bb, ptr %.sroa.013.017.i73, ptr %i.bc ; 3 uses
  %.1.i77 = select i1 %i.bb, i64 %i.ap, i64 %i.be ; 2 uses
  %i.bf = icmp sgt i64 %.1.i77, 0
  br i1 %i.bf, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i71, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !1019

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i71
  %.pre91 = ptrtoint ptr %.sroa.013.1.i76 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit68
  %.pre-phi92 = phi i64 [ %.pre91, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.ak, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit68 ]
  %.sroa.013.0.lcssa.i69 = phi ptr [ %.sroa.013.1.i76, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit68 ]
  %i.bg = sub i64 %.pre-phi92, %i.ak
  %i.bh = ashr exact i64 %i.bg, 2
  br label %bb.d

bb.d:                                             ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit
  %.sroa.080.0 = phi ptr [ %i.h, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit ], [ %.sroa.013.0.lcssa.i69, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.013.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit ], [ %i.ai, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.060 = phi i64 [ %i.ag, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit ], [ %i.ah, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.g, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valI14TestComparatorEEET_SB_SB_RKT0_T1_.exit ], [ %i.bh, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterI14TestComparatorEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.bi = sub nsw i64 %3, %.0                     ; 2 uses
  %i.bj = call ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lET_S7_S7_S7_T1_S8_T0_S8_(ptr %.sroa.080.0, ptr %1, ptr %.sroa.0.0, i64 noundef %i.bi, i64 noundef %.060, ptr noundef %5, i64 noundef %6) ; 2 uses
  call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr %0, ptr %.sroa.080.0, ptr %i.bj, i64 noundef %.0, i64 noundef %.060, ptr noundef %5, i64 noundef %6, i64 %7)
  %i.bk = sub nsw i64 %4, %.060
  call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr %i.bj, ptr %.sroa.0.0, ptr %2, i64 noundef %i.bi, i64 noundef %i.bk, ptr noundef %5, i64 noundef %6, i64 %7)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lET_S7_S7_S7_T1_S8_T0_S8_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq i64 %4, 0
  br i1 %.not36, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 4                     ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !297

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.f, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr %1, align 4, !tbaa !150
  store i32 %i.g, ptr %5, align 4, !tbaa !150
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.c, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !297

bb.g:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [4 x i8], ptr %2, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %0, i64 %i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.n = icmp eq i64 %i.i, 4
  br i1 %i.n, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds i8, ptr %2, i64 -4
  %i.p = load i32, ptr %0, align 4, !tbaa !150
  store i32 %i.p, ptr %i.o, align 4, !tbaa !150
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !297

bb.j:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit

bb.k:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit
  %i.q = icmp eq i64 %i.d, 4
  br i1 %i.q, label %bb.l, label %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit

bb.l:                                             ; preds = %bb.k
  %i.r = load i32, ptr %5, align 4, !tbaa !150
  store i32 %i.r, ptr %0, align 4, !tbaa !150
  br label %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit

_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not34 = icmp sgt i64 %3, %6
  br i1 %.not34, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not35 = icmp eq i64 %3, 0
  br i1 %.not35, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp sgt i64 %i.v, 4
  br i1 %i.w, label %bb.p, label %bb.q, !prof !297

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.v, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit37

bb.q:                                             ; preds = %bb.o
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %bb.r, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit37

bb.r:                                             ; preds = %bb.q
  %i.y = load i32, ptr %0, align 4, !tbaa !150
  store i32 %i.y, ptr %5, align 4, !tbaa !150
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit37

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 4
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !297

bb.s:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 %i.aa, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.t:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit37
  %i.ac = icmp eq i64 %i.aa, 4
  br i1 %i.ac, label %bb.u, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.u:                                             ; preds = %bb.t
  %i.ad = load i32, ptr %1, align 4, !tbaa !150
  store i32 %i.ad, ptr %0, align 4, !tbaa !150
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.s, %bb.t, %bb.u
  %i.ae = ashr exact i64 %i.v, 2                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.v, label %bb.w, !prof !297

bb.v:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %5, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit

bb.w:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit
  %i.ai = icmp eq i64 %i.v, 4
  br i1 %i.ai, label %bb.x, label %_ZSt13move_backwardIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -4
  %i.ak = load i32, ptr %5, align 4, !tbaa !150
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !150
  br label %_ZSt13move_backwardIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit

_ZSt13move_backwardIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.w, %bb.x
  %i.al = sub nsw i64 0, %i.ae
  %i.am = getelementptr inbounds [4 x i8], ptr %2, i64 %i.al
  br label %bb.z

bb.y:                                             ; preds = %bb.m
  %i.an = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.b, %bb.y, %_ZSt13move_backwardIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit, %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit
  %.sroa.032.0 = phi ptr [ %i.s, %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit ], [ %i.an, %bb.y ], [ %i.am, %_ZSt13move_backwardIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit ], [ %0, %bb.b ], [ %2, %bb.n ]
  ret ptr %.sroa.032.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !857
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !623
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !613
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #28 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !857
  invoke void @__cxa_rethrow() #31
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #29
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !623
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !624    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !625  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !619
  store ptr %i.w, ptr %3, align 8, !tbaa !619
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !625
  store ptr %3, ptr %i.x, align 8, !tbaa !619
  br label %_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !641
  store ptr %i.z, ptr %3, align 8, !tbaa !619
  store ptr %3, ptr %i.y, align 8, !tbaa !641
  %i.aa = load ptr, ptr %3, align 8, !tbaa !619   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !623
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !620
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !625
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !625
  br label %_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit

_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !613
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !613
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !151

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1046
  br label %_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPK17cmListFileContextjELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !151

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPK17cmListFileContextjELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPK17cmListFileContextjELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPK17cmListFileContextjELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !641
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !619 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !620
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !625  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !641
  store ptr %i.p, ptr %.031, align 8, !tbaa !619
  store ptr %.031, ptr %i.g, align 8, !tbaa !641
  store ptr %i.g, ptr %i.n, align 8, !tbaa !625
  %i.q = load ptr, ptr %.031, align 8, !tbaa !619
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.r, align 8, !tbaa !625
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !619
  store ptr %i.s, ptr %.031, align 8, !tbaa !619
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !625
  store ptr %.031, ptr %i.t, align 8, !tbaa !619
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1047

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !624    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !623
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #27
  br label %_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPK17cmListFileContextSt4pairIKS2_jESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !623
  store ptr %.0.i, ptr %0, align 8, !tbaa !624
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !121
  %i.d = load ptr, ptr %2, align 8, !tbaa !140    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !122  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.f, ptr %i.a, align 8, !tbaa !160
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !140
  %i.i = load i64, ptr %i.a, align 8, !tbaa !160
  store i64 %i.i, ptr %i.c, align 8, !tbaa !123
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !123
  store i8 %i.k, ptr %i.j, align 1, !tbaa !123
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #28 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #27
  invoke void @__cxa_rethrow() #31
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !160  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !122
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !140
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #29
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 7                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !295
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #32 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !296
  %i.g = sub nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #32
          to label %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !271
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_.exit, !llvm.loop !1048

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #28 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !271
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #27
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i, !llvm.loop !300

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #31
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #29
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #28 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !296
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !295
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #31
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ac

_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_.exit: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !270
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !271 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !266
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !273
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !270
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !271 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !266
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !273
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !1049
  %i.aq = and i64 %1, 127
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !259
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #29
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !270  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !270
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !265
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !266
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !273
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !265
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 2305843009213693951
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !295
  %i.ag = load ptr, ptr %0, align 8, !tbaa !296
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #32 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !272
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !271
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !259
  %i.aq = load i32, ptr %1, align 4, !tbaa !150
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !150
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !270
  store ptr %i.am, ptr %i.o, align 8, !tbaa !266
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !273
  store ptr %i.am, ptr %i.a, align 8, !tbaa !259
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !272  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !299  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !295  ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !296
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !297

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !271
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !271
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !297

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !271
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !271
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit, !prof !151

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #32 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !297

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
end_hunk_0
begin_hunk_1_@llvm.usub.sat.i64
!812 = !{!810, !811, i64 8}
!813 = distinct !{!813, !139}
!814 = !{!810, !811, i64 16}
!815 = distinct !{!815, !139}
!816 = distinct !{!816, !139}
!817 = distinct !{!817, !139}
!818 = distinct !{!818, !139}
!819 = !{!820, !820, i64 0}
!820 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN26cmCTestMultiProcessHandler18ResourceAllocationESaISA_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE", !14, i64 0}
!821 = distinct !{!821, !139}
!822 = !{!25, !26, i64 0}
!823 = distinct !{!823, !139}
!824 = distinct !{!824, !139}
!825 = !{!826, !27, i64 0}
!826 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN26cmCTestMultiProcessHandler18ResourceAllocationESaISA_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeE", !27, i64 0, !27, i64 8, !820, i64 16}
!827 = !{!826, !27, i64 8}
!828 = !{!826, !820, i64 16}
!829 = !{i64 8}
!830 = distinct !{!830, !139}
!831 = distinct !{!831, !139}
!832 = distinct !{!832, !139}
!833 = distinct !{!833, !139}
!834 = distinct !{!834, !139}
!835 = !{!836, !14, i64 0}
!836 = !{!"_ZTS9uv_idle_s", !14, i64 0, !99, i64 8, !837, i64 16, !14, i64 24, !838, i64 32, !7, i64 48, !840, i64 80, !6, i64 88, !14, i64 96, !838, i64 104}
!837 = !{!"_ZTS14uv_handle_type", !7, i64 0}
!838 = !{!"_ZTS9uv__queue", !839, i64 0, !839, i64 8}
!839 = !{!"p1 _ZTS9uv__queue", !14, i64 0}
!840 = !{!"p1 _ZTS11uv_handle_s", !14, i64 0}
!841 = distinct !{null}
!842 = !{!843, !14, i64 0}
!843 = !{!"_ZTS10uv_timer_s", !14, i64 0, !99, i64 8, !837, i64 16, !14, i64 24, !838, i64 32, !7, i64 48, !840, i64 80, !6, i64 88, !14, i64 96, !7, i64 104, !28, i64 128, !28, i64 136, !28, i64 144}
!844 = distinct !{!844, !139}
!845 = distinct !{!845, !139}
!846 = !{!637, !28, i64 24}
!847 = distinct !{!847, !139}
!848 = !{!849, !28, i64 0}
!849 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !28, i64 0}
!850 = distinct !{!850, !139}
!851 = !{!852, !853, i64 0}
!852 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !853, i64 0, !854, i64 8}
!853 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEEEEE", !14, i64 0}
!854 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEE", !14, i64 0}
!855 = !{!852, !854, i64 8}
!856 = distinct !{!856, !139}
!857 = !{!618, !28, i64 8}
!858 = !{!637, !617, i64 48}
!859 = distinct !{!859, !139}
!860 = !{!861}
!861 = distinct !{!861, !862, !"_ZL15DumpToJsonArrayRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE: argument 0"}
!862 = distinct !{!862, !"_ZL15DumpToJsonArrayRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE"}
!863 = !{!864}
!864 = distinct !{!864, !865, !"_ZL15DumpToJsonArrayRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE: argument 0"}
!865 = distinct !{!865, !"_ZL15DumpToJsonArrayRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE"}
!866 = !{!867}
!867 = distinct !{!867, !868, !"_ZL15DumpToJsonArrayRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE: argument 0"}
!868 = distinct !{!868, !"_ZL15DumpToJsonArrayRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE"}
!869 = !{!870}
!870 = distinct !{!870, !871, !"_ZL15DumpToJsonArrayRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE: argument 0"}
!871 = distinct !{!871, !"_ZL15DumpToJsonArrayRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE"}
!872 = !{!873}
!873 = distinct !{!873, !874, !"_ZL15DumpToJsonArrayRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE: argument 0"}
!874 = distinct !{!874, !"_ZL15DumpToJsonArrayRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE"}
!875 = !{!208, !208, i64 0}
!876 = !{!877}
!877 = distinct !{!877, !878, !"_ZL20DumpRegExToJsonArrayRKSt6vectorISt4pairIN5cmsys17RegularExpressionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE: argument 0"}
!878 = distinct !{!878, !"_ZL20DumpRegExToJsonArrayRKSt6vectorISt4pairIN5cmsys17RegularExpressionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE"}
!879 = !{!880}
!880 = distinct !{!880, !881, !"_ZL20DumpRegExToJsonArrayRKSt6vectorISt4pairIN5cmsys17RegularExpressionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE: argument 0"}
!881 = distinct !{!881, !"_ZL20DumpRegExToJsonArrayRKSt6vectorISt4pairIN5cmsys17RegularExpressionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE"}
!882 = !{!883}
!883 = distinct !{!883, !884, !"_ZL15DumpToJsonArrayRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE: argument 0"}
!884 = distinct !{!884, !"_ZL15DumpToJsonArrayRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE"}
!885 = !{!886}
!886 = distinct !{!886, !887, !"_ZL26DumpMeasurementToJsonArrayRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE: argument 0"}
!887 = distinct !{!887, !"_ZL26DumpMeasurementToJsonArrayRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE"}
!888 = !{!889}
!889 = distinct !{!889, !890, !"_ZL20DumpRegExToJsonArrayRKSt6vectorISt4pairIN5cmsys17RegularExpressionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE: argument 0"}
!890 = distinct !{!890, !"_ZL20DumpRegExToJsonArrayRKSt6vectorISt4pairIN5cmsys17RegularExpressionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE"}
!891 = !{!892}
!892 = distinct !{!892, !893, !"_ZL29DumpResourceGroupsToJsonArrayRKSt6vectorIS_IN18cmCTestTestHandler30cmCTestTestResourceRequirementESaIS1_EESaIS3_EE: argument 0"}
!893 = distinct !{!893, !"_ZL29DumpResourceGroupsToJsonArrayRKSt6vectorIS_IN18cmCTestTestHandler30cmCTestTestResourceRequirementESaIS1_EESaIS3_EE"}
!894 = !{!895}
!895 = distinct !{!895, !896, !"_ZL15DumpToJsonArrayRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE: argument 0"}
!896 = distinct !{!896, !"_ZL15DumpToJsonArrayRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE"}
!897 = !{!198, !6, i64 592}
!898 = !{!215, !16, i64 8}
!899 = !{!221, !222, i64 0}
!900 = !{!220, !16, i64 40}
!901 = !{!902}
!902 = distinct !{!902, !903, !"_ZL21DumpTimeoutAfterMatchRN18cmCTestTestHandler21cmCTestTestPropertiesE: argument 0"}
!903 = distinct !{!903, !"_ZL21DumpTimeoutAfterMatchRN18cmCTestTestHandler21cmCTestTestPropertiesE"}
!904 = !{!905, !902}
!905 = distinct !{!905, !906, !"_ZL20DumpRegExToJsonArrayRKSt6vectorISt4pairIN5cmsys17RegularExpressionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE: argument 0"}
!906 = distinct !{!906, !"_ZL20DumpRegExToJsonArrayRKSt6vectorISt4pairIN5cmsys17RegularExpressionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE"}
!907 = !{!198, !16, i64 449}
!908 = distinct !{!908, !139}
!909 = distinct !{!909, !139}
!910 = distinct !{!910, !139}
!911 = distinct !{!911, !139}
!912 = !{!913}
!913 = distinct !{!913, !914, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!914 = distinct !{!914, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!915 = !{!916}
!916 = distinct !{!916, !914, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!917 = !{!913, !916}
!918 = !{!919}
!919 = distinct !{!919, !920, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!920 = distinct !{!920, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!921 = !{!922}
!922 = distinct !{!922, !920, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!923 = !{!919, !922}
!924 = distinct !{!924, !139}
!925 = !{!926, !368, i64 0}
!926 = !{!"_ZTSZN26cmCTestMultiProcessHandler14InitializeLoopEvE3$_0", !368, i64 0}
!927 = !{!928, !928, i64 0}
!928 = !{!"p1 _ZTSSt9type_info", !14, i64 0}
!929 = !{!14, !14, i64 0}
!930 = !{!931, !931, i64 0}
!931 = !{!"p1 _ZTSSt8_Rb_treeIiSt4pairIKiSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_IN26cmCTestMultiProcessHandler18ResourceAllocationESaISB_EESt4lessIS9_ESaIS0_IKS9_SD_EEESaISJ_EEESt10_Select1stISM_ESE_IiESaISM_EE", !14, i64 0}
!932 = !{!933, !6, i64 0}
!933 = !{!"_ZTSSt4pairIKiSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_IN26cmCTestMultiProcessHandler18ResourceAllocationESaISA_EESt4lessIS8_ESaIS_IKS8_SC_EEESaISI_EEE", !6, i64 0, !463, i64 8}
!934 = !{!935, !936, i64 8}
!935 = !{!"_ZTSNSt8_Rb_treeIiSt4pairIKiSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_IN26cmCTestMultiProcessHandler18ResourceAllocationESaISB_EESt4lessIS9_ESaIS0_IKS9_SD_EEESaISJ_EEESt10_Select1stISM_ESE_IiESaISM_EE10_Auto_nodeE", !931, i64 0, !936, i64 8}
!936 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKiSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_IN26cmCTestMultiProcessHandler18ResourceAllocationESaISB_EESt4lessIS9_ESaIS0_IKS9_SD_EEESaISJ_EEEE", !14, i64 0}
!937 = distinct !{!937, !139}
!938 = !{!939, !939, i64 0}
!939 = !{!"p1 _ZTSSt8_Rb_treeIiSt4pairIKiSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN26cmCTestMultiProcessHandler25ResourceAvailabilityErrorESt4lessIS8_ESaIS0_IKS8_SA_EEEESt10_Select1stISH_ESB_IiESaISH_EE", !14, i64 0}
!940 = !{!941, !6, i64 0}
!941 = !{!"_ZTSSt4pairIKiSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN26cmCTestMultiProcessHandler25ResourceAvailabilityErrorESt4lessIS7_ESaIS_IKS7_S9_EEEE", !6, i64 0, !942, i64 8}
!942 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN26cmCTestMultiProcessHandler25ResourceAvailabilityErrorESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !943, i64 0}
!943 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N26cmCTestMultiProcessHandler25ResourceAvailabilityErrorEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !944, i64 0}
!944 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N26cmCTestMultiProcessHandler25ResourceAvailabilityErrorEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !22, i64 0, !24, i64 8}
!945 = !{!946, !947, i64 8}
!946 = !{!"_ZTSNSt8_Rb_treeIiSt4pairIKiSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN26cmCTestMultiProcessHandler25ResourceAvailabilityErrorESt4lessIS8_ESaIS0_IKS8_SA_EEEESt10_Select1stISH_ESB_IiESaISH_EE10_Auto_nodeE", !939, i64 0, !947, i64 8}
!947 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKiSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN26cmCTestMultiProcessHandler25ResourceAvailabilityErrorESt4lessIS8_ESaIS0_IKS8_SA_EEEEE", !14, i64 0}
!948 = distinct !{!948, !139}
!949 = distinct !{!949, !950}
!950 = !{!"llvm.loop.unroll.disable"}
!951 = distinct !{!951, !139}
!952 = distinct !{!952, !950}
!953 = !{!954}
!954 = distinct !{!954, !955, !"_ZSt19__relocate_object_aISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN26cmCTestMultiProcessHandler18ResourceAllocationESaIS9_EESt4lessIS6_ESaISt4pairIKS6_SB_EEESI_SaISI_EEvPT_PT0_RT1_: argument 0"}
!955 = distinct !{!955, !"_ZSt19__relocate_object_aISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN26cmCTestMultiProcessHandler18ResourceAllocationESaIS9_EESt4lessIS6_ESaISt4pairIKS6_SB_EEESI_SaISI_EEvPT_PT0_RT1_"}
!956 = !{!957}
!957 = distinct !{!957, !955, !"_ZSt19__relocate_object_aISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN26cmCTestMultiProcessHandler18ResourceAllocationESaIS9_EESt4lessIS6_ESaISt4pairIKS6_SB_EEESI_SaISI_EEvPT_PT0_RT1_: argument 1"}
!958 = !{!954, !957}
!959 = distinct !{!959, !139}
!960 = !{!961, !962, i64 8}
!961 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN26cmCTestMultiProcessHandler18ResourceAllocationESaISA_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE10_Auto_nodeE", !820, i64 0, !962, i64 8}
!962 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN26cmCTestMultiProcessHandler18ResourceAllocationESaISA_EEEE", !14, i64 0}
!963 = distinct !{!963, !139}
!964 = !{!965}
!965 = distinct !{!965, !966, !"_ZSt19__relocate_object_aIN26cmCTestMultiProcessHandler18ResourceAllocationES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!966 = distinct !{!966, !"_ZSt19__relocate_object_aIN26cmCTestMultiProcessHandler18ResourceAllocationES1_SaIS1_EEvPT_PT0_RT1_"}
!967 = !{!968}
!968 = distinct !{!968, !966, !"_ZSt19__relocate_object_aIN26cmCTestMultiProcessHandler18ResourceAllocationES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!969 = !{!965, !968}
!970 = distinct !{!970, !139}
!971 = !{!972}
!972 = distinct !{!972, !973, !"_ZSt19__relocate_object_aIN26cmCTestMultiProcessHandler18ResourceAllocationES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!973 = distinct !{!973, !"_ZSt19__relocate_object_aIN26cmCTestMultiProcessHandler18ResourceAllocationES1_SaIS1_EEvPT_PT0_RT1_"}
!974 = !{!975}
!975 = distinct !{!975, !973, !"_ZSt19__relocate_object_aIN26cmCTestMultiProcessHandler18ResourceAllocationES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!976 = !{!972, !975}
!977 = !{!978, !978, i64 0}
!978 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI26cmCTestBinPackerAllocationSaIS9_EEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !14, i64 0}
!979 = !{!980, !981, i64 8}
!980 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI26cmCTestBinPackerAllocationSaIS9_EEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeE", !978, i64 0, !981, i64 8}
!981 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorI26cmCTestBinPackerAllocationSaIS9_EEEE", !14, i64 0}
!982 = distinct !{!982, !139}
!983 = !{!984, !984, i64 0}
!984 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N26cmCTestMultiProcessHandler25ResourceAvailabilityErrorEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !14, i64 0}
!985 = !{!986, !987, i64 8}
!986 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N26cmCTestMultiProcessHandler25ResourceAvailabilityErrorEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeE", !984, i64 0, !987, i64 8}
!987 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN26cmCTestMultiProcessHandler25ResourceAvailabilityErrorEEE", !14, i64 0}
!988 = distinct !{!988, !139}
!989 = distinct !{!989, !139}
!990 = !{!991, !541, i64 0}
!991 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_Alloc_nodeE", !541, i64 0}
!992 = distinct !{!992, !139}
!993 = distinct !{!993, !139}
!994 = distinct !{!994, !139}
!995 = distinct !{!995, !139}
!996 = distinct !{!996, !139}
!997 = distinct !{!997, !139}
!998 = distinct !{!998, !139}
!999 = distinct !{!999, !139}
!1000 = distinct !{!1000, !139}
!1001 = distinct !{!1001, !139}
!1002 = distinct !{!1002, !139}
!1003 = distinct !{!1003, !139}
!1004 = distinct !{!1004, !139}
!1005 = distinct !{!1005, !139}
!1006 = distinct !{!1006, !139}
!1007 = distinct !{!1007, !139}
!1008 = distinct !{!1008, !139}
!1009 = distinct !{!1009, !139}
!1010 = distinct !{!1010, !139}
!1011 = distinct !{!1011, !139}
!1012 = distinct !{!1012, !139}
!1013 = !{!"branch_weights", !"expected", i32 2146946911, i32 536737}
!1014 = distinct !{!1014, !139}
!1015 = distinct !{!1015, !139}
!1016 = distinct !{!1016, !139}
!1017 = distinct !{!1017, !139}
!1018 = distinct !{!1018, !139}
!1019 = distinct !{!1019, !139}
!1020 = !{!1021}
!1021 = distinct !{!1021, !1022}
!1022 = distinct !{!1022, !"LVerDomain"}
!1023 = !{!1024}
!1024 = distinct !{!1024, !1022}
!1025 = distinct !{!1025, !139, !1026, !1027}
!1026 = !{!"llvm.loop.isvectorized", i32 1}
!1027 = !{!"llvm.loop.unroll.runtime.disable"}
!1028 = distinct !{!1028, !139, !1026}
!1029 = !{!1030}
!1030 = distinct !{!1030, !1031}
!1031 = distinct !{!1031, !"LVerDomain"}
!1032 = !{!1033}
!1033 = distinct !{!1033, !1031}
!1034 = distinct !{!1034, !139, !1026, !1027}
!1035 = distinct !{!1035, !950}
!1036 = distinct !{!1036, !139, !1026}
!1037 = !{!1038}
!1038 = distinct !{!1038, !1039}
!1039 = distinct !{!1039, !"LVerDomain"}
!1040 = !{!1041}
!1041 = distinct !{!1041, !1039}
!1042 = distinct !{!1042, !139, !1026, !1027}
!1043 = distinct !{!1043, !950}
!1044 = distinct !{!1044, !139}
!1045 = distinct !{!1045, !139, !1026}
!1046 = !{!614, !617, i64 48}
!1047 = distinct !{!1047, !139}
!1048 = distinct !{!1048, !139}
!1049 = !{!260, !181, i64 16}
end_hunk_1
