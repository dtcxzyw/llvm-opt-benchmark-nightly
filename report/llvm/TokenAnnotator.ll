Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TokenAnnotator?download=true
inline.NumInlined: 3440
inline.NumDeleted: 664
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag:bb.a
  %i.o = icmp eq i64 %i.n, %i.g
  br i1 %i.o, label %bb.c, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit: ; preds = %bb.c
  %i.p = load ptr, ptr %2, align 8, !tbaa !375
  %i.q = load ptr, ptr %.sroa.037.054, align 8, !tbaa !375
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.p, i64 %i.g)
  %i.r = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !376
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %bb.d, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17: ; preds = %bb.d
  %i.w = load ptr, ptr %2, align 8, !tbaa !375
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !375
  %bcmp.i.i16 = tail call i32 @bcmp(ptr %i.x, ptr %i.w, i64 %i.g)
  %i.y = icmp eq i32 %bcmp.i.i16, 0
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 64 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 72
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !376
  %i.ac = icmp eq i64 %i.ab, %i.g
  br i1 %i.ac, label %bb.e, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19: ; preds = %bb.e
  %i.ad = load ptr, ptr %2, align 8, !tbaa !375
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !375
  %bcmp.i.i18 = tail call i32 @bcmp(ptr %i.ae, ptr %i.ad, i64 %i.g)
  %i.af = icmp eq i32 %bcmp.i.i18, 0
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 104
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !376
  %i.aj = icmp eq i64 %i.ai, %i.g
  br i1 %i.aj, label %bb.f, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21: ; preds = %bb.f
  %i.ak = load ptr, ptr %2, align 8, !tbaa !375
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !375
  %bcmp.i.i20 = tail call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %i.g)
  %i.am = icmp eq i32 %bcmp.i.i20, 0
  br i1 %i.am, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 128
  %i.ao = add nsw i64 %.055, -1
  %i.ap = icmp sgt i64 %.055, 1
  br i1 %i.ap, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !683

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
  %.pre58 = load i64, ptr %.phi.trans.insert57, align 8, !tbaa !376
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !376
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !376 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !376 ; 2 uses
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.h, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp eq i64 %i.as, 0
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23: ; preds = %bb.h
  %i.ax = load ptr, ptr %2, align 8, !tbaa !375
  %i.ay = load ptr, ptr %.sroa.037.0.lcssa, align 8, !tbaa !375
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
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !376
  %i.be = icmp eq i64 %i.bd, %i.bb
  br i1 %i.be, label %bb.j, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25: ; preds = %bb.j
  %i.bg = load ptr, ptr %2, align 8, !tbaa !375
  %i.bh = load ptr, ptr %.sroa.037.1, align 8, !tbaa !375
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
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !376
  %i.bn = icmp eq i64 %i.bm, %i.bk
  br i1 %i.bn, label %bb.l, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52

bb.l:                                             ; preds = %bb.k
  %i.bo = icmp eq i64 %i.bk, 0
  br i1 %i.bo, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27: ; preds = %bb.l
  %i.bp = load ptr, ptr %2, align 8, !tbaa !375
  %i.bq = load ptr, ptr %.sroa.037.2, align 8, !tbaa !375
  %bcmp.i.i26 = tail call i32 @bcmp(ptr %i.bq, ptr %i.bp, i64 %i.bk)
  %i.br = icmp eq i32 %bcmp.i.i26, 0
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit, %bb.l, %bb.j, %bb.h, %._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.037.1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25 ], [ %1, %._crit_edge ], [ %.sroa.037.1, %bb.j ], [ %.sroa.037.0.lcssa, %bb.h ], [ %.sroa.037.2, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27 ], [ %.sroa.037.2, %bb.l ], [ %.sroa.037.0.lcssa, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23 ], [ %1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52 ], [ %i.ag, %bb.f ], [ %i.z, %bb.e ], [ %i.s, %bb.d ], [ %.sroa.037.054, %bb.c ], [ %i.ag, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21 ], [ %i.z, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19 ], [ %i.s, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17 ], [ %.sroa.037.054, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser11parseSquareEv(ptr noundef nonnull align 8 dereferenceable(1804) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.clang::format::(anonymous namespace)::AnnotatingParser::Context", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  %.not141 = icmp eq ptr %i.b, null
  br i1 %.not141, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !266  ; 45 uses
  %.val200 = load ptr, ptr %0, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %.val201 = load i32, ptr %i.e, align 8, !tbaa !21
  %i.f = zext i32 %.val201 to i64
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %.val200, i64 %i.f ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -56
  %i.i = load i16, ptr %i.h, align 8, !tbaa !250
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i16 %i.i, ptr %i.j, align 8, !tbaa !400
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.pn.i = phi ptr [ %i.d, %bb.b ], [ %.0.i, %bb.d ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 208
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !266 ; 18 uses
  %.not.i.not.not.not.not.not = icmp ne ptr %.0.i, null ; 9 uses
  br i1 %.not.i.not.not.not.not.not, label %bb.d, label %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit.thread

_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit.thread: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 489 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !243, !range !225, !noundef !122
  %i.m = trunc nuw i8 %i.l to i1
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.o = load i16, ptr %i.n, align 8, !tbaa !62
  %i.p = icmp eq i16 %i.o, 4
  br i1 %i.p, label %bb.c, label %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit, !llvm.loop !3

_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 489 ; 6 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !243, !range !225, !noundef !122
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 67
  %i.u = load i8, ptr %i.t, align 1, !tbaa !261
  %i.v = icmp eq i8 %i.u, -110
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds i8, ptr %i.g, i64 -16
  %i.x = load i8, ptr %i.w, align 8, !tbaa !253, !range !225, !noundef !122
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds i8, ptr %i.g, i64 -48
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !252, !range !225, !noundef !122
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !254
  %i.ae = icmp eq i32 %i.ad, 5
  br label %bb.i

bb.i:                                             ; preds = %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit.thread, %bb.f, %bb.g, %bb.h, %bb.e, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit
  %i.af = phi i1 [ true, %bb.e ], [ false, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.h ], [ %i.m, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit.thread ]
  %i.ag = phi ptr [ %i.q, %bb.e ], [ %i.q, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit ], [ %i.q, %bb.g ], [ %i.q, %bb.f ], [ %i.q, %bb.h ], [ %i.k, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit.thread ] ; 2 uses
  %i.ah = phi i1 [ false, %bb.e ], [ false, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit ], [ true, %bb.g ], [ true, %bb.f ], [ %i.ae, %bb.h ], [ false, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit.thread ] ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.g, i64 -14
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !687, !range !225, !noundef !122
  %i.ak = trunc nuw i8 %i.aj to i1                ; 3 uses
  %i.al = tail call fastcc noundef zeroext i1 @_ZN5clang6format12_GLOBAL__N_114isCppAttributeEbRKNS0_11FormatTokenE(i1 noundef zeroext %i.af, ptr noundef nonnull align 8 dereferenceable(305) %i.d) ; 2 uses
  %i.am = or i1 %i.al, %i.ak                      ; 4 uses
  %i.an = zext i1 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 8 uses
  %.val204 = load ptr, ptr %i.ao, align 8, !tbaa !270
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %.val205 = load ptr, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %i.d, i64 208     ; 2 uses
  %.val206 = load ptr, ptr %i.aq, align 8         ; 3 uses
  %i.ar = getelementptr i8, ptr %i.d, i64 216
  %.val207 = load ptr, ptr %i.ar, align 8         ; 4 uses
  %i.as = getelementptr i8, ptr %.val204, i64 527
  %.val204.val = load i8, ptr %i.as, align 1, !tbaa !242
  %i.at = icmp eq i8 %.val204.val, 3
  br i1 %i.at, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %.not.i209 = icmp eq ptr %.val206, null
  br i1 %.not.i209, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.val206, i64 16
  %i.av = load i16, ptr %i.au, align 8, !tbaa !62
  switch i16 %i.av, label %.thread.i [
    i16 5, label %.loopexit
    i16 21, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %.val206, i64 200
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !262 ; 2 uses
  %.not31.i = icmp eq ptr %i.ax, null
  br i1 %.not31.i, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 67
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !261
  %i.ba = icmp eq i8 %i.az, 2
  %.not32.i = icmp eq ptr %.val207, null
  %or.cond.i = select i1 %i.ba, i1 true, i1 %.not32.i
  br i1 %or.cond.i, label %.loopexit, label %bb.n

.thread.i:                                        ; preds = %bb.k, %bb.j
  %.not32.old.i = icmp eq ptr %.val207, null
  br i1 %.not32.old.i, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.thread.i, %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %.val207, i64 16
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !62
  %i.bd = icmp eq i16 %i.bc, 21
  br i1 %i.bd, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.o
  %.07.i = phi ptr [ %i.bh, %bb.o ], [ %.val207, %bb.n ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !62
  %.not4.i = icmp eq i16 %i.bf, 21
  %i.bg = getelementptr inbounds nuw i8, ptr %.07.i, i64 216
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63 ; 5 uses
  %.not34.i = icmp eq ptr %i.bh, null             ; 2 uses
  br i1 %.not4.i, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  br i1 %.not34.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !684

.critedge.i:                                      ; preds = %.lr.ph.i
  br i1 %.not34.i, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser26isCSharpAttributeSpecifierERKNS0_11FormatTokenE.exit, label %bb.p

bb.p:                                             ; preds = %.critedge.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !62 ; 4 uses
  %i.bk = add i16 %i.bj, -144
  %i.bl = icmp ult i16 %i.bk, 3
  br i1 %i.bl, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser26isCSharpAttributeSpecifierERKNS0_11FormatTokenE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.val205, i64 544
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !341 ; 2 uses
  switch i16 %i.bj, label %bb.r [
    i16 132, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser26isCSharpAttributeSpecifierERKNS0_11FormatTokenE.exit
    i16 4, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser26isCSharpAttributeSpecifierERKNS0_11FormatTokenE.exit
    i16 103, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser26isCSharpAttributeSpecifierERKNS0_11FormatTokenE.exit
    i16 20, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser26isCSharpAttributeSpecifierERKNS0_11FormatTokenE.exit
  ]

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_S4_PNS_14IdentifierInfoEEEEbT_T0_DpT1_.exit.thread3.i, label %_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_S4_PNS_14IdentifierInfoEEEEbT_T0_DpT1_.exit.i

_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_S4_PNS_14IdentifierInfoEEEEbT_T0_DpT1_.exit.i: ; preds = %bb.r
  %i.bo = add i16 %i.bj, -7
  %i.bp = icmp ult i16 %i.bo, 13
  %i.bq = icmp eq i16 %i.bj, 1
  %or.cond.i.i.i.i.i.i.i = or i1 %i.bq, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %.0.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i, ptr null, ptr %i.bs
  %i.bt = icmp eq ptr %i.bn, %.0.i.i.i.i.i.i.i
  br i1 %i.bt, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser26isCSharpAttributeSpecifierERKNS0_11FormatTokenE.exit, label %_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_S4_PNS_14IdentifierInfoEEEEbT_T0_DpT1_.exit.thread3.i

_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_S4_PNS_14IdentifierInfoEEEEbT_T0_DpT1_.exit.thread3.i: ; preds = %_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_S4_PNS_14IdentifierInfoEEEEbT_T0_DpT1_.exit.i, %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 216
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !63 ; 2 uses
  %.not35.i = icmp eq ptr %i.bv, null
  br i1 %.not35.i, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_S4_PNS_14IdentifierInfoEEEEbT_T0_DpT1_.exit.thread3.i
  %i.bw = tail call noundef zeroext i1 @_ZNK5clang6format11FormatToken14startsSequenceINS_3tok9TokenKindEJS4_EEEbT_DpT0_(ptr noundef nonnull align 8 dereferenceable(305) %i.bv, i16 noundef zeroext 5, i16 noundef zeroext 22)
  br i1 %i.bw, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser26isCSharpAttributeSpecifierERKNS0_11FormatTokenE.exit, label %.loopexit

.loopexit:                                        ; preds = %bb.o, %_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_S4_PNS_14IdentifierInfoEEEEbT_T0_DpT1_.exit.thread3.i, %bb.s, %bb.i, %bb.k, %bb.m, %.thread.i, %bb.l, %bb.n
  %.val190 = load ptr, ptr %0, align 8, !tbaa !20
  %.val191 = load i32, ptr %i.e, align 8, !tbaa !21
  %i.bx = zext i32 %.val191 to i64
  %i.by = getelementptr inbounds nuw [56 x i8], ptr %.val190, i64 %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -13
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !393, !range !225, !noundef !122
  %i.cb = trunc nuw i8 %i.ca to i1
  br label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser26isCSharpAttributeSpecifierERKNS0_11FormatTokenE.exit

_ZN5clang6format12_GLOBAL__N_116AnnotatingParser26isCSharpAttributeSpecifierERKNS0_11FormatTokenE.exit: ; preds = %bb.s, %_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_S4_PNS_14IdentifierInfoEEEEbT_T0_DpT1_.exit.i, %bb.q, %bb.q, %bb.q, %bb.q, %bb.p, %.critedge.i, %.loopexit
  %i.cc = phi i1 [ %i.cb, %.loopexit ], [ true, %.critedge.i ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.q ], [ true, %bb.q ], [ true, %bb.q ], [ true, %_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_S4_PNS_14IdentifierInfoEEEEbT_T0_DpT1_.exit.i ], [ true, %bb.s ] ; 4 uses
  %i.cd = zext i1 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !269, !nonnull !122, !align !123
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !33 ; 2 uses
  %.not.i210 = icmp eq ptr %i.cg, null
  br i1 %.not.i210, label %_ZNK5clang6format13AnnotatedLine10startsWithIJNS_3tok9TokenKindEEEEbDpT_.exit, label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser26isCSharpAttributeSpecifierERKNS0_11FormatTokenE.exit, %bb.t
  %.tr.i.i.i = phi ptr [ %i.cl, %bb.t ], [ %i.cg, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser26isCSharpAttributeSpecifierERKNS0_11FormatTokenE.exit ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 16
  %i.ci = load i16, ptr %i.ch, align 8, !tbaa !62 ; 2 uses
  %i.cj = icmp eq i16 %i.ci, 4
  br i1 %i.cj, label %bb.t, label %_ZNK5clang6format11FormatToken14startsSequenceINS_3tok9TokenKindEJEEEbT_DpT0_.exit.i

bb.t:                                             ; preds = %tailrecurse.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 216
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !63 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i, label %_ZNK5clang6format11FormatToken14startsSequenceINS_3tok9TokenKindEJEEEbT_DpT0_.exit.i, label %tailrecurse.i.i.i

_ZNK5clang6format11FormatToken14startsSequenceINS_3tok9TokenKindEJEEEbT_DpT0_.exit.i: ; preds = %bb.t, %tailrecurse.i.i.i
  %i.cm = icmp eq i16 %i.ci, 129
  br label %_ZNK5clang6format13AnnotatedLine10startsWithIJNS_3tok9TokenKindEEEEbDpT_.exit

_ZNK5clang6format13AnnotatedLine10startsWithIJNS_3tok9TokenKindEEEEbDpT_.exit: ; preds = %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser26isCSharpAttributeSpecifierERKNS0_11FormatTokenE.exit, %_ZNK5clang6format11FormatToken14startsSequenceINS_3tok9TokenKindEJEEEbT_DpT0_.exit.i
  %i.cn = phi i1 [ false, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser26isCSharpAttributeSpecifierERKNS0_11FormatTokenE.exit ], [ %i.cm, %_ZNK5clang6format11FormatToken14startsSequenceINS_3tok9TokenKindEJEEEbT_DpT0_.exit.i ] ; 2 uses
  %i.co = load i8, ptr %i.ag, align 1, !tbaa !243, !range !225, !noundef !122
  %i.cp = trunc nuw i8 %i.co to i1                ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cr = load i16, ptr %i.cq, align 8
  %i.cs = icmp eq i16 %i.cr, 20
  %or.cond.not.i = select i1 %i.cp, i1 %i.cs, i1 false
  br i1 %or.cond.not.i, label %.preheader.i, label %_ZNK5clang6format11FormatToken22isCppStructuredBindingEb.exit

.preheader.i:                                     ; preds = %_ZNK5clang6format13AnnotatedLine10startsWithIJNS_3tok9TokenKindEEEEbDpT_.exit, %.preheader.i.backedge
  %.pn.i.i = phi ptr [ %.0.i.i, %.preheader.i.backedge ], [ %i.d, %_ZNK5clang6format13AnnotatedLine10startsWithIJNS_3tok9TokenKindEEEEbDpT_.exit ]
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 208
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !266 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZNK5clang6format11FormatToken22isCppStructuredBindingEb.exit, label %bb.u

bb.u:                                             ; preds = %.preheader.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.cu = load i16, ptr %i.ct, align 8, !tbaa !62 ; 3 uses
  switch i16 %i.cu, label %.split.i [
    i16 4, label %.preheader.i.backedge
    i16 110, label %.preheader.i.backedge
    i16 81, label %.preheader.i.backedge
  ]

.preheader.i.backedge:                            ; preds = %bb.u, %bb.u, %bb.u, %.split.i
  br label %.preheader.i, !llvm.loop !685

.split.i:                                         ; preds = %bb.u
  %i.cv = and i16 %i.cu, -2
  %i.cw = icmp eq i16 %i.cv, 28
  br i1 %i.cw, label %.preheader.i.backedge, label %.critedge.i213

.critedge.i213:                                   ; preds = %.split.i
  %i.cx = icmp eq i16 %i.cu, 77
  br label %_ZNK5clang6format11FormatToken22isCppStructuredBindingEb.exit

_ZNK5clang6format11FormatToken22isCppStructuredBindingEb.exit: ; preds = %.preheader.i, %_ZNK5clang6format13AnnotatedLine10startsWithIJNS_3tok9TokenKindEEEEbDpT_.exit, %.critedge.i213
  %.07.i211 = phi i1 [ false, %_ZNK5clang6format13AnnotatedLine10startsWithIJNS_3tok9TokenKindEEEEbDpT_.exit ], [ %i.cx, %.critedge.i213 ], [ false, %.preheader.i ] ; 2 uses
  %or.cond3 = or i1 %i.cn, %.07.i211
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.ah
  br i1 %or.cond5, label %.critedge, label %bb.v

bb.v:                                             ; preds = %_ZNK5clang6format11FormatToken22isCppStructuredBindingEb.exit
  %.not = xor i1 %i.cp, true
  %or.cond7 = select i1 %.not, i1 true, i1 %i.am
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.cc
  br i1 %or.cond9, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val188 = load ptr, ptr %0, align 8, !tbaa !20
  %.val189 = load i32, ptr %i.e, align 8, !tbaa !21
  %i.cy = zext i32 %.val189 to i64
  %i.cz = getelementptr inbounds nuw [56 x i8], ptr %.val188, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -56
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 -16
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !253, !range !225, !noundef !122
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 67
  %i.df = load i8, ptr %i.de, align 1, !tbaa !261
  %.not293 = icmp eq i8 %i.df, 81
  br i1 %.not293, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !240
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i16, ptr %i.dh, align 8, !tbaa !62 ; 3 uses
  %i.dj = icmp ne i16 %i.di, 24
  %i.dk = icmp ne i16 %i.di, 21
  %spec.select.i.not.i.not.not298 = and i1 %i.dj, %i.dk ; 3 uses
  br i1 %.not.i.not.not.not.not.not, label %switch.early.test, label %.critedge

switch.early.test:                                ; preds = %bb.y
  switch i16 %i.di, label %bb.z [
    i16 24, label %.critedge
    i16 21, label %.critedge
  ]

bb.z:                                             ; preds = %switch.early.test
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 8, !tbaa !62
  switch i16 %i.dm, label %.thread.thread [
    i16 67, label %bb.aa
    i16 63, label %.critedge
    i16 22, label %.critedge
    i16 20, label %.critedge
    i16 151, label %.critedge
    i16 98, label %.critedge
  ]

bb.aa:                                            ; preds = %bb.z
  %i.dn = load i16, ptr %i.da, align 8, !tbaa !250
  %.not142 = icmp eq i16 %i.dn, 24
  br i1 %.not142, label %.critedge, label %.thread.thread

.thread.thread:                                   ; preds = %bb.z, %bb.aa
  %i.do = tail call noundef zeroext i1 @_ZNK5clang6format11FormatToken15isUnaryOperatorEv(ptr noundef nonnull align 8 dereferenceable(305) %.0.i)
  br i1 %i.do, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %.thread.thread
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i, i64 67
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !261
  switch i8 %i.dq, label %bb.ac [
    i8 97, label %.critedge
    i8 16, label %.critedge
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dr = load i16, ptr %i.dl, align 8, !tbaa !62
  %i.ds = tail call noundef i32 @_ZN5clang18getBinOpPrecedenceENS_3tok9TokenKindEbb(i16 noundef zeroext %i.dr, i1 noundef zeroext true, i1 noundef zeroext true) #19
  %i.dt = icmp sgt i32 %i.ds, 0
  br label %.critedge

.critedge:                                        ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %switch.early.test, %switch.early.test, %bb.y, %bb.ab, %bb.ab, %bb.aa, %.thread.thread, %bb.ac, %bb.x, %bb.w, %bb.v, %_ZNK5clang6format11FormatToken22isCppStructuredBindingEb.exit
  %i.du = phi i1 [ false, %bb.aa ], [ %spec.select.i.not.i.not.not298, %switch.early.test ], [ false, %bb.x ], [ false, %bb.w ], [ false, %_ZNK5clang6format11FormatToken22isCppStructuredBindingEb.exit ], [ false, %bb.v ], [ true, %bb.ab ], [ true, %.thread.thread ], [ true, %bb.z ], [ true, %bb.z ], [ %i.dt, %bb.ac ], [ true, %bb.z ], [ true, %bb.z ], [ true, %bb.z ], [ true, %bb.ab ], [ %spec.select.i.not.i.not.not298, %bb.y ], [ %spec.select.i.not.i.not.not298, %switch.early.test ] ; 3 uses
  %i.dv = zext i1 %i.du to i8
  br i1 %.07.i211, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.critedge
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !267, !range !225, !noundef !122
  %i.dz = trunc nuw i8 %i.dy to i1
  %i.ea = load i32, ptr %i.dw, align 8
  %i.eb = icmp eq i32 %i.ea, 1
  %or.cond.i214 = select i1 %i.dz, i1 %i.eb, i1 false
  br i1 %or.cond.i214, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 67
  store i8 125, ptr %i.ec, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit

bb.af:                                            ; preds = %.critedge
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 67 ; 12 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !261
  %i.ef = icmp eq i8 %i.ee, -84
  br i1 %i.ef, label %bb.ag, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit

bb.ag:                                            ; preds = %bb.af
  br i1 %i.du, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !267, !range !225, !noundef !122
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = load i32, ptr %i.eg, align 8
  %i.el = icmp eq i32 %i.ek, 1
  %or.cond.i215 = select i1 %i.ej, i1 %i.el, i1 false
  br i1 %or.cond.i215, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 98, ptr %i.ed, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit

bb.aj:                                            ; preds = %bb.ag
  br i1 %i.cn, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.em = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !267, !range !225, !noundef !122
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = load i32, ptr %i.em, align 8
  %i.er = icmp eq i32 %i.eq, 1
  %or.cond.i217 = select i1 %i.ep, i1 %i.er, i1 false
  br i1 %or.cond.i217, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i8 67, ptr %i.ed, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit

bb.am:                                            ; preds = %bb.aj
  br i1 %i.am, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  br i1 %i.ak, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.eu = load i8, ptr %i.et, align 8, !tbaa !267, !range !225, !noundef !122
  %i.ev = trunc nuw i8 %i.eu to i1
  %i.ew = load i32, ptr %i.es, align 8
  %i.ex = icmp eq i32 %i.ew, 1
  %or.cond.i219 = select i1 %i.ev, i1 %i.ex, i1 false
  br i1 %or.cond.i219, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit220, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i8 5, ptr %i.ed, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit220

_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit220: ; preds = %bb.ao, %bb.ap
  %i.ey = load ptr, ptr %i.aq, align 8, !tbaa !266 ; 2 uses
  %.not143 = icmp eq ptr %i.ey, null
  br i1 %.not143, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit220
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 64 ; 2 uses
  %i.fa = load i16, ptr %i.ez, align 8
  %i.fb = and i16 %i.fa, -16385
  store i16 %i.fb, ptr %i.ez, align 8
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit

bb.ar:                                            ; preds = %bb.am
  %i.fc = load ptr, ptr %i.ao, align 8, !tbaa !270, !nonnull !122, !align !123
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 527
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !242 ; 2 uses
  %2 = icmp eq i8 %i.fe, 5
  %or.cond11 = and i1 %.not.i.not.not.not.not.not, %2
  br i1 %or.cond11, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %.val184 = load ptr, ptr %0, align 8, !tbaa !20
  %.val185 = load i32, ptr %i.e, align 8, !tbaa !21
  %i.ff = zext i32 %.val185 to i64
  %i.fg = getelementptr inbounds nuw [56 x i8], ptr %.val184, i64 %i.ff
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -56
  %i.fi = load i16, ptr %i.fh, align 8, !tbaa !250
  %i.fj = icmp eq i16 %i.fi, 24
  br i1 %i.fj, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.fl = load i16, ptr %i.fk, align 8, !tbaa !62
  switch i16 %i.fl, label %bb.aw [
    i16 67, label %bb.au
    i16 24, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at, %bb.at
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !267, !range !225, !noundef !122
  %i.fp = trunc nuw i8 %i.fo to i1
  %i.fq = load i32, ptr %i.fm, align 8
  %i.fr = icmp eq i32 %i.fq, 1
  %or.cond.i222 = select i1 %i.fp, i1 %i.fr, i1 false
  br i1 %or.cond.i222, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i8 70, ptr %i.ed, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit

bb.aw:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %i.fs = load i8, ptr %i.ag, align 1, !tbaa !243, !range !225, !noundef !122
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %.val182 = load ptr, ptr %0, align 8, !tbaa !20
  %.val183 = load i32, ptr %i.e, align 8, !tbaa !21
  %i.fu = zext i32 %.val183 to i64
  %i.fv = getelementptr inbounds nuw [56 x i8], ptr %.val182, i64 %i.fu
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -56
  %i.fx = load i16, ptr %i.fw, align 8, !tbaa !250
  %3 = icmp eq i16 %i.fx, 24
  %or.cond13 = and i1 %.not.i.not.not.not.not.not, %3
  br i1 %or.cond13, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.fz = load i16, ptr %i.fy, align 8, !tbaa !62
  switch i16 %i.fz, label %bb.bb [
    i16 67, label %bb.az
    i16 24, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.gb = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !267, !range !225, !noundef !122
  %i.gd = trunc nuw i8 %i.gc to i1
  %i.ge = load i32, ptr %i.ga, align 8
  %i.gf = icmp eq i32 %i.ge, 1
  %or.cond.i225 = select i1 %i.gd, i1 %i.gf, i1 false
  br i1 %or.cond.i225, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 39, ptr %i.ed, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit

bb.bb:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  br i1 %i.cc, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.gg = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.gh = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !267, !range !225, !noundef !122
  %i.gj = trunc nuw i8 %i.gi to i1
  %i.gk = load i32, ptr %i.gg, align 8
  %i.gl = icmp eq i32 %i.gk, 1
  %or.cond.i227 = select i1 %i.gj, i1 %i.gl, i1 false
  br i1 %or.cond.i227, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i8 5, ptr %i.ed, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit

bb.be:                                            ; preds = %bb.bb
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !240
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load i16, ptr %i.gn, align 8, !tbaa !62
  %4 = icmp eq i16 %i.go, 21
  %or.cond15 = and i1 %.not.i.not.not.not.not.not, %4
  br i1 %or.cond15, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i, i64 67
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !261
  %i.gr = icmp eq i8 %i.gq, -110
  br i1 %i.gr, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.gs = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !267, !range !225, !noundef !122
  %i.gv = trunc nuw i8 %i.gu to i1
  %i.gw = load i32, ptr %i.gs, align 8
  %i.gx = icmp eq i32 %i.gw, 1
  %or.cond.i229 = select i1 %i.gv, i1 %i.gx, i1 false
  br i1 %or.cond.i229, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i8 2, ptr %i.ed, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit

bb.bi:                                            ; preds = %bb.bf, %bb.be
  %i.gy = and i8 %i.fe, -3
  %spec.select.i231 = icmp eq i8 %i.gy, 8
  br i1 %spec.select.i231, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 256 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.d, i64 296 ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 8, !tbaa !267, !range !225, !noundef !122
  %i.hc = trunc nuw i8 %i.hb to i1
  %i.hd = load i32, ptr %i.gz, align 8
  %i.he = icmp eq i32 %i.hd, 1
  %or.cond.i232 = select i1 %i.hc, i1 %i.he, i1 false
  br i1 %or.cond.i232, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit233, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i8 1, ptr %i.ed, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit233

_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit233: ; preds = %bb.bj, %bb.bk
  %i.hf = tail call noundef zeroext i1 @_ZNK5clang6format11FormatToken12endsSequenceINS_3tok9TokenKindEJS4_S4_EEEbT_DpT0_(ptr noundef nonnull align 8 dereferenceable(305) %i.d, i16 noundef zeroext 20, i16 noundef zeroext 7, i16 noundef zeroext 65)
  br i1 %i.hf, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit233
  %i.hg = tail call noundef zeroext i1 @_ZNK5clang6format11FormatToken12endsSequenceINS_3tok9TokenKindEJS4_S4_EEEbT_DpT0_(ptr noundef nonnull align 8 dereferenceable(305) %i.d, i16 noundef zeroext 20, i16 noundef zeroext 7, i16 noundef zeroext 5)
  br i1 %i.hg, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hh = tail call noundef zeroext i1 @_ZNK5clang6format11FormatToken12endsSequenceINS_3tok9TokenKindEJS4_NS0_9TokenTypeEEEEbT_DpT0_(ptr noundef nonnull align 8 dereferenceable(305) %i.d, i16 noundef zeroext 20, i16 noundef zeroext 63, i8 noundef zeroext 118)
  br i1 %i.hh, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hi = load i8, ptr %i.ha, align 8, !tbaa !267, !range !225, !noundef !122
  %i.hj = trunc nuw i8 %i.hi to i1
  %i.hk = load i32, ptr %i.gz, align 8
  %i.hl = icmp eq i32 %i.hk, 1
  %or.cond.i234 = select i1 %i.hj, i1 %i.hl, i1 false
  br i1 %or.cond.i234, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store i8 106, ptr %i.ed, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit

bb.bp:                                            ; preds = %bb.bi
  %.not16 = xor i1 %i.ah, true
  %or.cond18 = and i1 %.not.i.not.not.not.not.not, %.not16
  br i1 %or.cond18, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.i, i64 67
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !261
  switch i8 %i.hn, label %bb.br [
    i8 -110, label %_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit.thread
    i8 9, label %_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit.thread
  ]

bb.br:                                            ; preds = %bb.bq
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.hp = load i16, ptr %i.ho, align 8, !tbaa !62 ; 3 uses
  switch i16 %i.hp, label %bb.bs [
    i16 74, label %_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit.thread
    i16 67, label %_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit.thread
    i16 22, label %_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit.thread
    i16 20, label %_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit.thread
  ]

bb.bs:                                            ; preds = %bb.br
  %i.hq = and i16 %i.hp, -2
  %i.hr = icmp eq i16 %i.hq, 62
  br i1 %i.hr, label %_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit.thread, label %_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit

_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit: ; preds = %bb.bs
  switch i16 %i.hp, label %bb.bu [
    i16 98, label %_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit.thread
    i16 83, label %_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit.thread
  ]

_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit.thread: ; preds = %bb.br, %bb.br, %bb.br, %bb.br, %_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit, %_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit, %bb.bs, %bb.bq, %bb.bq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.ht = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !267, !range !225, !noundef !122
  %i.hv = trunc nuw i8 %i.hu to i1
  %i.hw = load i32, ptr %i.hs, align 8
  %i.hx = icmp eq i32 %i.hw, 1
  %or.cond.i238 = select i1 %i.hv, i1 %i.hx, i1 false
  br i1 %or.cond.i238, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit.thread
  store i8 1, ptr %i.ed, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit

bb.bu:                                            ; preds = %_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit, %bb.bp
  %i.hy = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.hz = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.ia = load i8, ptr %i.hz, align 8, !tbaa !267, !range !225, !noundef !122
  %i.ib = trunc nuw i8 %i.ia to i1
  %i.ic = load i32, ptr %i.hy, align 8
  %i.id = icmp eq i32 %i.ic, 1
  %or.cond.i240 = select i1 %i.ib, i1 %i.id, i1 false
  br i1 %or.cond.i240, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i8 2, ptr %i.ed, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit

_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit: ; preds = %bb.bv, %bb.bu, %bb.bt, %_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit.thread, %bb.bo, %bb.bn, %bb.bh, %bb.bg, %bb.bd, %bb.bc, %bb.ba, %bb.az, %bb.av, %bb.au, %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.ae, %bb.ad, %bb.af, %bb.bm, %bb.bl, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit233, %bb.an, %bb.aq, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit220
  %.0122 = phi i32 [ 1, %bb.af ], [ 1, %bb.ae ], [ 1, %bb.ai ], [ 1, %bb.an ], [ 1, %bb.aq ], [ 1, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit220 ], [ 1, %bb.al ], [ 1, %bb.av ], [ 1, %bb.ba ], [ 1, %bb.bd ], [ 1, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit233 ], [ 1, %bb.bl ], [ 1, %bb.bm ], [ 1, %bb.bh ], [ 10, %bb.bo ], [ 1, %bb.bt ], [ 1, %bb.ad ], [ 1, %bb.ah ], [ 1, %bb.ak ], [ 1, %bb.au ], [ 1, %bb.az ], [ 1, %bb.bc ], [ 1, %bb.bg ], [ 10, %bb.bn ], [ 1, %_ZNK5clang6format11FormatToken7isOneOfINS0_9TokenTypeES3_JNS_3tok9TokenKindES5_S5_S5_S5_S5_S5_S5_EEEbT_T0_DpT1_.exit.thread ], [ 10, %bb.bu ], [ 10, %bb.bv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !20
  %.val8.i = load i32, ptr %i.e, align 8, !tbaa !21 ; 2 uses
  %i.ie = zext i32 %.val8.i to i64
  %i.if = getelementptr inbounds nuw [56 x i8], ptr %.val7.i, i64 %i.ie ; 3 uses
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -52
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !251
  %i.ii = add i32 %i.ih, %.0122
  %i.ij = getelementptr inbounds i8, ptr %i.if, i64 -48
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !252, !range !225, !noundef !122
  store i16 20, ptr %1, align 8, !tbaa !250
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ii, ptr %i.il, align 4, !tbaa !251
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.ik, ptr %i.im, align 8, !tbaa !252
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.in, i8 0, i64 7, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.io, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.ip, align 8, !tbaa !253
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 0, ptr %i.ir, align 4, !tbaa !254
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.iq, i8 0, i64 9, i1 false)
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.it = load i32, ptr %i.is, align 4, !tbaa !227
  %.not.i.i242 = icmp ult i32 %.val8.i, %i.it
  br i1 %.not.i.i242, label %bb.bx, label %bb.bw, !prof !255

bb.bw:                                            ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6format12_GLOBAL__N_116AnnotatingParser7ContextELb1EE15growAndPushBackERKS5_(ptr noundef nonnull align 8 dereferenceable(1804) %0, ptr noundef nonnull readonly align 8 dereferenceable(56) %1)
  %.val181.pre = load i32, ptr %i.e, align 8, !tbaa !21
  br label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit

bb.bx:                                            ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.if, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.iu = load i32, ptr %i.e, align 8, !tbaa !21
  %i.iv = add i32 %i.iu, 1                        ; 2 uses
  store i32 %i.iv, ptr %i.e, align 8, !tbaa !21
  br label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit

_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit: ; preds = %bb.bw, %bb.bx
  %.val181 = phi i32 [ %.val181.pre, %bb.bw ], [ %i.iv, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %.val180 = load ptr, ptr %0, align 8, !tbaa !20
  %i.iw = zext i32 %.val181 to i64
  %i.ix = getelementptr inbounds nuw [56 x i8], ptr %.val180, i64 %i.iw ; 4 uses
  %i.iy = getelementptr inbounds i8, ptr %i.ix, i64 -48 ; 2 uses
  store i8 1, ptr %i.iy, align 8, !tbaa !252
  %i.iz = load ptr, ptr %i.ao, align 8, !tbaa !270, !nonnull !122, !align !123
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 527
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !242
  %5 = icmp eq i8 %i.jb, 5
  %or.cond20 = and i1 %.not.i.not.not.not.not.not, %5
  br i1 %or.cond20, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.i, i64 67
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !261
  %i.je = icmp eq i8 %i.jd, 75
  br i1 %i.je, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i8 0, ptr %i.iy, align 8, !tbaa !252
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit
  %i.jf = getelementptr inbounds i8, ptr %i.ix, i64 -38
  store i8 %i.dv, ptr %i.jf, align 2, !tbaa !396
  %i.jg = getelementptr inbounds i8, ptr %i.ix, i64 -14
  store i8 %i.an, ptr %i.jg, align 2, !tbaa !687
  %i.jh = getelementptr inbounds i8, ptr %i.ix, i64 -13
  store i8 %i.cd, ptr %i.jh, align 1, !tbaa !393
  %i.ji = load ptr, ptr %i.a, align 8, !tbaa !240 ; 2 uses
  %.not144323 = icmp eq ptr %i.ji, null
  br i1 %.not144323, label %.thread288, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ca
  %i.jj = getelementptr inbounds nuw i8, ptr %i.d, i64 67 ; 7 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.d, i64 256 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 296 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.i, i64 256 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.0.i, i64 296 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.i, i64 67 ; 3 uses
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph, %bb.dw
  %i.jq = phi ptr [ %i.ji, %.lr.ph ], [ %i.qj, %bb.dw ] ; 10 uses
  %.0123326 = phi i8 [ 0, %.lr.ph ], [ %.1, %bb.dw ] ; 2 uses
  %.0124324 = phi i1 [ %i.du, %.lr.ph ], [ %.3, %bb.dw ] ; 7 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = load i16, ptr %i.jr, align 8, !tbaa !62 ; 3 uses
  %i.jt = add i16 %i.js, -21                      ; 2 uses
  %i.ju = tail call i16 @llvm.fshl.i16(i16 %i.jt, i16 %i.jt, i16 15)
  switch i16 %i.ju, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit271 [
    i16 0, label %bb.cc
    i16 2, label %.thread288
    i16 1, label %.thread288
    i16 21, label %bb.de
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.jv = xor i1 %i.al, true
  %or.cond23 = or i1 %i.jv, %i.ak
  br i1 %or.cond23, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jq, i64 256
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 296
  %i.jy = load i8, ptr %i.jx, align 8, !tbaa !267, !range !225, !noundef !122
  %i.jz = trunc nuw i8 %i.jy to i1
  %i.ka = load i32, ptr %i.jw, align 8
  %i.kb = icmp eq i32 %i.ka, 1
  %or.cond.i243 = select i1 %i.jz, i1 %i.kb, i1 false
  br i1 %or.cond.i243, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit244, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jq, i64 67
  store i8 8, ptr %i.kc, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit244

_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit244: ; preds = %bb.cd, %bb.ce
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jq, i64 64 ; 2 uses
  %i.ke = load i16, ptr %i.kd, align 8
  %i.kf = or i16 %i.ke, 16384
  store i16 %i.kf, ptr %i.kd, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit244, %bb.cc
  %i.kg = load ptr, ptr %i.a, align 8, !tbaa !240 ; 16 uses
  br i1 %i.cc, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 256
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 296
  %i.kj = load i8, ptr %i.ki, align 8, !tbaa !267, !range !225, !noundef !122
  %i.kk = trunc nuw i8 %i.kj to i1
  %i.kl = load i32, ptr %i.kh, align 8
  %i.km = icmp eq i32 %i.kl, 1
  %or.cond.i245 = select i1 %i.kk, i1 %i.km, i1 false
  br i1 %or.cond.i245, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit246, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kg, i64 67
  store i8 8, ptr %i.kn, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit246

bb.ci:                                            ; preds = %bb.cf
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kg, i64 216
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !63 ; 2 uses
  %.not145 = icmp eq ptr %i.kp, null
  br i1 %.not145, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load i16, ptr %i.kq, align 8, !tbaa !62
  %i.ks = icmp eq i16 %i.kr, 22
  br i1 %i.ks, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kg, i64 208
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !266 ; 2 uses
  %.not146 = icmp eq ptr %i.ku, null
  br i1 %.not146, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit246, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 208
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !266
  %i.kx = icmp eq ptr %i.kw, %i.d
  br i1 %i.kx, label %bb.cm, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit246

bb.cm:                                            ; preds = %bb.cl, %bb.cj
  %i.ky = load i8, ptr %i.jj, align 1, !tbaa !261
  %i.kz = icmp eq i8 %i.ky, 98
  br i1 %i.kz, label %bb.cn, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit246

bb.cn:                                            ; preds = %bb.cm
  %i.la = load i8, ptr %i.jl, align 8, !tbaa !267, !range !225, !noundef !122
  %i.lb = trunc nuw i8 %i.la to i1
  %i.lc = load i32, ptr %i.jk, align 8
  %i.ld = icmp eq i32 %i.lc, 1
  %or.cond.i247 = select i1 %i.lb, i1 %i.ld, i1 false
  br i1 %or.cond.i247, label %_ZN5clang6format11FormatToken18overwriteFixedTypeENS0_9TokenTypeE.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i8 -84, ptr %i.jj, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken18overwriteFixedTypeENS0_9TokenTypeE.exit

_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit246: ; preds = %bb.ch, %bb.cg, %bb.ck, %bb.cl, %bb.cm
  br i1 %.0124324, label %bb.cp, label %_ZN5clang6format11FormatToken18overwriteFixedTypeENS0_9TokenTypeE.exit

bb.cp:                                            ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit246
  %i.le = getelementptr inbounds nuw i8, ptr %i.kg, i64 208
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !266 ; 7 uses
  %.not147 = icmp eq ptr %i.lf, %i.d
  br i1 %.not147, label %_ZN5clang6format11FormatToken18overwriteFixedTypeENS0_9TokenTypeE.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kg, i64 256
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kg, i64 296
  %i.li = load i8, ptr %i.lh, align 8, !tbaa !267, !range !225, !noundef !122
  %i.lj = trunc nuw i8 %i.li to i1
  %i.lk = load i32, ptr %i.lg, align 8
  %i.ll = icmp eq i32 %i.lk, 1
  %or.cond.i249 = select i1 %i.lj, i1 %i.ll, i1 false
  br i1 %or.cond.i249, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit250, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kg, i64 67
  store i8 98, ptr %i.lm, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit250

_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit250: ; preds = %bb.cq, %bb.cr
  %i.ln = trunc nuw i8 %.0123326 to i1
  %.not148 = icmp eq ptr %i.lf, null
  %or.cond292 = or i1 %.not148, %i.ln
  br i1 %or.cond292, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit252, label %bb.cs

bb.cs:                                            ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit250
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lf, i64 67 ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !261
  %i.lq = icmp eq i8 %i.lp, -84
  br i1 %i.lq, label %bb.ct, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit252

bb.ct:                                            ; preds = %bb.cs
  %i.lr = getelementptr i8, ptr %i.lf, i64 8
  %.val202 = load ptr, ptr %i.lr, align 8
  %i.ls = getelementptr i8, ptr %i.lf, i64 16
  %.val203 = load i16, ptr %i.ls, align 8, !tbaa !62 ; 2 uses
  %i.lt = add i16 %.val203, -20
  %i.lu = icmp ult i16 %i.lt, -13
  %i.lv = icmp ne i16 %.val203, 1
  %or.cond.i.not.i = and i1 %i.lv, %i.lu
  %i.lw = icmp ne ptr %.val202, null
  %i.lx = select i1 %or.cond.i.not.i, i1 %i.lw, i1 false
  br i1 %i.lx, label %bb.cu, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit252

bb.cu:                                            ; preds = %bb.ct
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lf, i64 256
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lf, i64 296
  %i.ma = load i8, ptr %i.lz, align 8, !tbaa !267, !range !225, !noundef !122
  %i.mb = trunc nuw i8 %i.ma to i1
  %i.mc = load i32, ptr %i.ly, align 8
  %i.md = icmp eq i32 %i.mc, 1
  %or.cond.i251 = select i1 %i.mb, i1 %i.md, i1 false
  br i1 %or.cond.i251, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit252, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store i8 118, ptr %i.lo, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit252

_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit252: ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit250
  br i1 %.not.i.not.not.not.not.not, label %bb.cw, label %_ZN5clang6format11FormatToken18overwriteFixedTypeENS0_9TokenTypeE.exit

bb.cw:                                            ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit252
  %i.me = load i8, ptr %i.jp, align 1, !tbaa !261
  %i.mf = icmp eq i8 %i.me, 105
  br i1 %i.mf, label %bb.cx, label %_ZN5clang6format11FormatToken18overwriteFixedTypeENS0_9TokenTypeE.exit

bb.cx:                                            ; preds = %bb.cw
  %i.mg = load i8, ptr %i.jo, align 8, !tbaa !267, !range !225, !noundef !122
  %i.mh = trunc nuw i8 %i.mg to i1
  %i.mi = load i32, ptr %i.jn, align 8
  %i.mj = icmp eq i32 %i.mi, 1
  %or.cond.i253 = select i1 %i.mh, i1 %i.mj, i1 false
  br i1 %or.cond.i253, label %_ZN5clang6format11FormatToken18overwriteFixedTypeENS0_9TokenTypeE.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mk = getelementptr inbounds nuw i8, ptr %.0.i, i64 66 ; 2 uses
  %i.ml = load i8, ptr %i.mk, align 2
  %i.mm = and i8 %i.ml, -65
  store i8 %i.mm, ptr %i.mk, align 2
  store i8 9, ptr %i.jp, align 1, !tbaa !261
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !240
  br label %_ZN5clang6format11FormatToken18overwriteFixedTypeENS0_9TokenTypeE.exit

_ZN5clang6format11FormatToken18overwriteFixedTypeENS0_9TokenTypeE.exit: ; preds = %bb.co, %bb.cn, %bb.cy, %bb.cx, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit252, %bb.cw, %bb.cp, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit246
  %i.mn = phi ptr [ %i.kg, %bb.co ], [ %i.kg, %bb.cn ], [ %.pre, %bb.cy ], [ %i.kg, %bb.cx ], [ %i.kg, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit252 ], [ %i.kg, %bb.cw ], [ %i.kg, %bb.cp ], [ %i.kg, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit246 ] ; 6 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  store ptr %i.mn, ptr %i.mo, align 8, !tbaa !262
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 200
  store ptr %i.d, ptr %i.mp, align 8, !tbaa !262
  %.val170 = load ptr, ptr %0, align 8, !tbaa !20
  %.val171 = load i32, ptr %i.e, align 8, !tbaa !21
  %i.mq = zext i32 %.val171 to i64
  %i.mr = getelementptr inbounds nuw [56 x i8], ptr %.val170, i64 %i.mq ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 -32 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !287 ; 3 uses
  %.not149 = icmp eq ptr %i.mt, null
  br i1 %.not149, label %.preheader, label %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit259.thread.thread

.preheader:                                       ; preds = %_ZN5clang6format11FormatToken18overwriteFixedTypeENS0_9TokenTypeE.exit, %bb.cz
  %.pn.i254 = phi ptr [ %.0.i256, %bb.cz ], [ %i.mn, %_ZN5clang6format11FormatToken18overwriteFixedTypeENS0_9TokenTypeE.exit ]
  %.0.in.i255 = getelementptr inbounds nuw i8, ptr %.pn.i254, i64 208
  %.0.i256 = load ptr, ptr %.0.in.i255, align 8, !tbaa !266 ; 7 uses
  %.not.i257 = icmp eq ptr %.0.i256, null
  br i1 %.not.i257, label %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit259.thread, label %bb.cz

bb.cz:                                            ; preds = %.preheader
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.i256, i64 16
  %i.mv = load i16, ptr %i.mu, align 8, !tbaa !62
  %i.mw = icmp eq i16 %i.mv, 4
  br i1 %i.mw, label %.preheader, label %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit259, !llvm.loop !3

_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit259: ; preds = %bb.cz
  %i.mx = getelementptr inbounds nuw i8, ptr %.0.i256, i64 67
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !261
  %i.mz = icmp eq i8 %i.my, 118
  br i1 %i.mz, label %.thread283, label %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit259.thread

.thread283:                                       ; preds = %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit259
  %i.na = getelementptr inbounds nuw i8, ptr %.0.i256, i64 144
  store i32 1, ptr %i.na, align 8, !tbaa !397
  store ptr %.0.i256, ptr %i.ms, align 8, !tbaa !287
  br label %bb.da

_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit259.thread.thread: ; preds = %_ZN5clang6format11FormatToken18overwriteFixedTypeENS0_9TokenTypeE.exit
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mt, i64 144
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !397
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i32 %i.nc, ptr %i.nd, align 8, !tbaa !320
  br label %bb.da

bb.da:                                            ; preds = %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit259.thread.thread, %.thread283
  %i.ne = phi ptr [ %.0.i256, %.thread283 ], [ %i.mt, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit259.thread.thread ]
  %i.nf = getelementptr inbounds i8, ptr %i.mr, i64 -44
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !288
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 140
  %i.ni = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !380
  %i.nk = icmp ugt i32 %i.nj, 1
  %spec.store.select = select i1 %i.nk, i32 0, i32 %i.ng
  store i32 %spec.store.select, ptr %i.nh, align 4, !tbaa !289
  br label %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit259.thread

_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit259.thread: ; preds = %.preheader, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit259, %bb.da
  %i.nl = load ptr, ptr %i.ao, align 8, !tbaa !270, !nonnull !122, !align !123
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 527
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !242
  %i.no = icmp eq i8 %i.nn, 9
  br i1 %i.no, label %bb.db, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit261

bb.db:                                            ; preds = %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit259.thread
  %i.np = load i8, ptr %i.jj, align 1, !tbaa !261
  %i.nq = icmp eq i8 %i.np, -114
  br i1 %i.nq, label %bb.dc, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit261

bb.dc:                                            ; preds = %bb.db
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mn, i64 256
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mn, i64 296
  %i.nt = load i8, ptr %i.ns, align 8, !tbaa !267, !range !225, !noundef !122
  %i.nu = trunc nuw i8 %i.nt to i1
  %i.nv = load i32, ptr %i.nr, align 8
  %i.nw = icmp eq i32 %i.nv, 1
  %or.cond.i260 = select i1 %i.nu, i1 %i.nw, i1 false
  br i1 %or.cond.i260, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit261, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mn, i64 67
  store i8 -115, ptr %i.nx, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit261

_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit261: ; preds = %bb.dd, %bb.dc, %bb.db, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit259.thread
  tail call fastcc void @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser4nextEv(ptr noundef nonnull align 8 dereferenceable(1804) %0)
  br label %.thread288

bb.de:                                            ; preds = %bb.cb
  br i1 %i.am, label %tailrecurse.i.i, label %_ZNK5clang6format11FormatToken12endsSequenceINS_3tok9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread286

tailrecurse.i.i:                                  ; preds = %bb.de, %bb.df
  %.tr.i.i = phi ptr [ %i.oc, %bb.df ], [ %i.jq, %bb.de ] ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 16
  %i.nz = load i16, ptr %i.ny, align 8, !tbaa !62 ; 2 uses
  %i.oa = icmp eq i16 %i.nz, 4
  %i.ob = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 208
  %i.oc = load ptr, ptr %i.ob, align 8            ; 4 uses
  br i1 %i.oa, label %bb.df, label %split.i.i

bb.df:                                            ; preds = %tailrecurse.i.i
  %.not.i.i269 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i269, label %_ZNK5clang6format11FormatToken12endsSequenceINS_3tok9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread286, label %tailrecurse.i.i

split.i.i:                                        ; preds = %tailrecurse.i.i
  %i.od = icmp ne i16 %i.nz, 63
  %.not9.i.i = icmp eq ptr %i.oc, null
  %or.cond.i.i263 = select i1 %i.od, i1 true, i1 %.not9.i.i
  br i1 %or.cond.i.i263, label %_ZNK5clang6format11FormatToken12endsSequenceINS_3tok9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread286, label %tailrecurse.i.i.i264

tailrecurse.i.i.i264:                             ; preds = %split.i.i, %bb.dg
  %.tr.i.i.i265 = phi ptr [ %i.oi, %bb.dg ], [ %i.oc, %split.i.i ] ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.tr.i.i.i265, i64 16
  %i.of = load i16, ptr %i.oe, align 8, !tbaa !62 ; 2 uses
  %i.og = icmp eq i16 %i.of, 4
  %i.oh = getelementptr inbounds nuw i8, ptr %.tr.i.i.i265, i64 208
  %i.oi = load ptr, ptr %i.oh, align 8            ; 4 uses
  br i1 %i.og, label %bb.dg, label %split.i.i.i

bb.dg:                                            ; preds = %tailrecurse.i.i.i264
  %.not.i.i.i268 = icmp eq ptr %i.oi, null
  br i1 %.not.i.i.i268, label %_ZNK5clang6format11FormatToken12endsSequenceINS_3tok9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread286, label %tailrecurse.i.i.i264

split.i.i.i:                                      ; preds = %tailrecurse.i.i.i264
  %i.oj = icmp ne i16 %i.of, 5
  %.not7.i.i.i = icmp eq ptr %i.oi, null
  %or.cond.i.i.i266 = select i1 %i.oj, i1 true, i1 %.not7.i.i.i
  br i1 %or.cond.i.i.i266, label %_ZNK5clang6format11FormatToken12endsSequenceINS_3tok9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread286, label %tailrecurse.i.i.i.i

tailrecurse.i.i.i.i:                              ; preds = %split.i.i.i, %bb.dh
  %.tr.i.i.i.i = phi ptr [ %i.on, %bb.dh ], [ %i.oi, %split.i.i.i ] ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i, i64 16
  %i.ol = load i16, ptr %i.ok, align 8, !tbaa !62
  switch i16 %i.ol, label %_ZNK5clang6format11FormatToken12endsSequenceINS_3tok9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread286 [
    i16 4, label %bb.dh
    i16 156, label %bb.di
  ]

bb.dh:                                            ; preds = %tailrecurse.i.i.i.i
  %i.om = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i, i64 208
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.on, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang6format11FormatToken12endsSequenceINS_3tok9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread286, label %tailrecurse.i.i.i.i

bb.di:                                            ; preds = %tailrecurse.i.i.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.jq, i64 256
  %i.op = getelementptr inbounds nuw i8, ptr %i.jq, i64 296
  %i.oq = load i8, ptr %i.op, align 8, !tbaa !267, !range !225, !noundef !122
  %i.or = trunc nuw i8 %i.oq to i1
  %i.os = load i32, ptr %i.oo, align 8
  %i.ot = icmp eq i32 %i.os, 1
  %or.cond.i270 = select i1 %i.or, i1 %i.ot, i1 false
  br i1 %or.cond.i270, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit271, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ou = getelementptr inbounds nuw i8, ptr %i.jq, i64 67
  store i8 3, ptr %i.ou, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit271

_ZNK5clang6format11FormatToken12endsSequenceINS_3tok9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread286: ; preds = %bb.df, %bb.dg, %tailrecurse.i.i.i.i, %bb.dh, %split.i.i, %split.i.i.i, %bb.de
  %i.ov = load ptr, ptr %i.ao, align 8, !tbaa !270, !nonnull !122, !align !123
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 527
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !242
  %i.oy = icmp eq i8 %i.ox, 11
  br i1 %i.oy, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit271, label %bb.dk

bb.dk:                                            ; preds = %_ZNK5clang6format11FormatToken12endsSequenceINS_3tok9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread286
  %i.oz = load ptr, ptr %i.ce, align 8, !tbaa !269, !nonnull !122, !align !123
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 65
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !387, !range !225, !noundef !122
  %i.pc = trunc nuw i8 %i.pb to i1
  br i1 %i.pc, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit271, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pd = load i8, ptr %i.jj, align 1, !tbaa !261
  switch i8 %i.pd, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit271 [
    i8 39, label %bb.dm
    i8 2, label %bb.dm
  ]

bb.dm:                                            ; preds = %bb.dl, %bb.dl
  %i.pe = load i8, ptr %i.jl, align 8, !tbaa !267, !range !225, !noundef !122
  %i.pf = trunc nuw i8 %i.pe to i1
  %i.pg = load i32, ptr %i.jk, align 8
  %i.ph = icmp eq i32 %i.pg, 1
  %or.cond.i273 = select i1 %i.pf, i1 %i.ph, i1 false
  br i1 %or.cond.i273, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit274, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  store i8 98, ptr %i.jj, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit274

_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit274: ; preds = %bb.dm, %bb.dn
  %.val = load ptr, ptr %0, align 8, !tbaa !20
  %.val157 = load i32, ptr %i.e, align 8, !tbaa !21
  %i.pi = zext i32 %.val157 to i64
  %i.pj = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %i.pi
  %i.pk = getelementptr inbounds i8, ptr %i.pj, i64 -38
  store i8 1, ptr %i.pk, align 2, !tbaa !396
  br i1 %.not.i.not.not.not.not.not, label %bb.do, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit271

bb.do:                                            ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit274
  %i.pl = load i16, ptr %i.jm, align 8, !tbaa !62
  %i.pm = icmp eq i16 %i.pl, 23
  br i1 %i.pm, label %bb.dp, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit271

bb.dp:                                            ; preds = %bb.do
  %i.pn = load i8, ptr %i.jo, align 8, !tbaa !267, !range !225, !noundef !122
  %i.po = trunc nuw i8 %i.pn to i1
  %i.pp = load i32, ptr %i.jn, align 8
  %i.pq = icmp eq i32 %i.pp, 1
  %or.cond.i275 = select i1 %i.po, i1 %i.pq, i1 false
  br i1 %or.cond.i275, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit271, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  store i8 16, ptr %i.jp, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit271

_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit271: ; preds = %bb.cb, %bb.dl, %bb.dq, %bb.dp, %bb.dj, %bb.di, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit274, %bb.do, %bb.dk, %_ZNK5clang6format11FormatToken12endsSequenceINS_3tok9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread286
  %.3 = phi i1 [ %.0124324, %bb.cb ], [ %.0124324, %bb.dl ], [ %.0124324, %_ZNK5clang6format11FormatToken12endsSequenceINS_3tok9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread286 ], [ %.0124324, %bb.dk ], [ %.0124324, %bb.dj ], [ true, %bb.do ], [ true, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit274 ], [ %.0124324, %bb.di ], [ true, %bb.dp ], [ true, %bb.dq ]
  %.1 = phi i8 [ %.0123326, %bb.cb ], [ 1, %bb.dl ], [ 1, %_ZNK5clang6format11FormatToken12endsSequenceINS_3tok9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread286 ], [ 1, %bb.dk ], [ 1, %bb.dj ], [ 1, %bb.do ], [ 1, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit274 ], [ 1, %bb.di ], [ 1, %bb.dp ], [ 1, %bb.dq ] ; 2 uses
  %i.pr = icmp eq i16 %i.js, 67
  br i1 %i.pr, label %bb.dr, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit278.thread

bb.dr:                                            ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit271
  %i.ps = load i8, ptr %i.jj, align 1, !tbaa !261
  %i.pt = icmp ne i8 %i.ps, 98
  %i.pu = trunc nuw i8 %.1 to i1
  %or.cond26 = select i1 %i.pt, i1 true, i1 %i.pu
  br i1 %or.cond26, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit278, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.pv = load i8, ptr %i.jl, align 8, !tbaa !267, !range !225, !noundef !122
  %i.pw = trunc nuw i8 %i.pv to i1
  %i.px = load i32, ptr %i.jk, align 8
  %i.py = icmp eq i32 %i.px, 1
  %or.cond.i277 = select i1 %i.pw, i1 %i.py, i1 false
  br i1 %or.cond.i277, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit278, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  store i8 1, ptr %i.jj, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit278

_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit278: ; preds = %bb.dt, %bb.ds, %bb.dr
  %i.pz = load ptr, ptr %i.ao, align 8, !tbaa !270, !nonnull !122, !align !123
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 527
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !242
  %i.qc = icmp eq i8 %i.qb, 9
  br i1 %i.qc, label %_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_EEEbT_T0_DpT1_.exit.thread, label %bb.dv

_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit278.thread: ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit271
  %i.qd = load ptr, ptr %i.ao, align 8, !tbaa !270, !nonnull !122, !align !123
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 527
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !242
  %i.qg = icmp eq i8 %i.qf, 9
  br i1 %i.qg, label %_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_EEEbT_T0_DpT1_.exit, label %bb.dv

_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_EEEbT_T0_DpT1_.exit: ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit278.thread
  switch i16 %i.js, label %bb.du [
    i16 36, label %_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_EEEbT_T0_DpT1_.exit.thread
    i16 27, label %_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_EEEbT_T0_DpT1_.exit.thread
  ]

_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_EEEbT_T0_DpT1_.exit.thread: ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit278, %_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_EEEbT_T0_DpT1_.exit, %_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_EEEbT_T0_DpT1_.exit
  tail call fastcc void @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser4nextEv(ptr noundef nonnull align 8 dereferenceable(1804) %0)
  br label %bb.dw, !llvm.loop !686

bb.du:                                            ; preds = %_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_EEEbT_T0_DpT1_.exit
  %i.qh = tail call fastcc noundef zeroext i1 @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser18parseTableGenValueEb(ptr noundef nonnull align 8 dereferenceable(1804) %0, i1 noundef zeroext false)
  br i1 %i.qh, label %bb.dw, label %.thread288, !llvm.loop !686

bb.dv:                                            ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit278.thread, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit278
  %i.qi = tail call fastcc noundef zeroext i1 @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser12consumeTokenEv(ptr noundef nonnull align 8 dereferenceable(1804) %0)
  br i1 %i.qi, label %bb.dw, label %.thread288

bb.dw:                                            ; preds = %bb.dv, %_ZNK5clang6format11FormatToken7isOneOfINS_3tok9TokenKindES4_JS4_EEEbT_T0_DpT1_.exit.thread, %bb.du
  tail call fastcc void @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20updateParameterCountEPNS0_11FormatTokenES4_(ptr noundef nonnull align 8 dereferenceable(1804) %0, ptr noundef %i.d, ptr noundef nonnull %i.jq)
  %i.qj = load ptr, ptr %i.a, align 8, !tbaa !240 ; 2 uses
  %.not144 = icmp eq ptr %i.qj, null
  br i1 %.not144, label %.thread288, label %bb.cb

.thread288:                                       ; preds = %bb.dw, %bb.du, %bb.dv, %bb.cb, %bb.cb, %bb.ca, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit261
  %.2128 = phi i1 [ true, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit261 ], [ false, %bb.ca ], [ false, %bb.cb ], [ false, %bb.cb ], [ false, %bb.dv ], [ false, %bb.du ], [ false, %bb.dw ] ; 2 uses
  %i.qk = load ptr, ptr %i.ao, align 8, !tbaa !270, !nonnull !122, !align !123
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 37
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !307
  %.not.i279 = icmp eq i8 %i.qm, 2
  br i1 %.not.i279, label %._crit_edge.i, label %bb.dx

._crit_edge.i:                                    ; preds = %.thread288
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !21
  br label %bb.dz

bb.dx:                                            ; preds = %.thread288
  %.val2.i = load ptr, ptr %0, align 8, !tbaa !20 ; 2 uses
  %.val3.i = load i32, ptr %i.e, align 8, !tbaa !21 ; 3 uses
  %i.qn = zext i32 %.val3.i to i64
  %i.qo = getelementptr inbounds nuw [56 x i8], ptr %.val2.i, i64 %i.qn
  %i.qp = getelementptr inbounds i8, ptr %i.qo, i64 -4
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !254
  %i.qr = icmp eq i32 %i.qq, 4
  br i1 %i.qr, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.qs = add i32 %.val3.i, -1                    ; 2 uses
  store i32 %i.qs, ptr %i.e, align 8, !tbaa !21
  %i.qt = zext i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw [56 x i8], ptr %.val2.i, i64 %i.qt
  %i.qv = getelementptr inbounds i8, ptr %i.qu, i64 -4
  store i32 4, ptr %i.qv, align 4, !tbaa !254
  br label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorD2Ev.exit

bb.dz:                                            ; preds = %bb.dx, %._crit_edge.i
  %i.qw = phi i32 [ %.pre.i, %._crit_edge.i ], [ %.val3.i, %bb.dx ]
  %i.qx = add i32 %i.qw, -1
  store i32 %i.qx, ptr %i.e, align 8, !tbaa !21
  br label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorD2Ev.exit

_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorD2Ev.exit: ; preds = %bb.dz, %bb.dy, %bb.a
  %.3129 = phi i1 [ false, %bb.a ], [ %.2128, %bb.dy ], [ %.2128, %bb.dz ]
  ret i1 %.3129
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser10parseBraceEv(ptr noundef nonnull align 8 dereferenceable(1804) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.clang::format::(anonymous namespace)::AnnotatingParser::Context", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !266  ; 15 uses
  %.val65 = load ptr, ptr %0, align 8, !tbaa !20  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %.val66 = load i32, ptr %i.e, align 8, !tbaa !21 ; 3 uses
  %i.f = zext i32 %.val66 to i64                  ; 3 uses
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %.val65, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -56
  %i.i = load i16, ptr %i.h, align 8, !tbaa !250
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 2 uses
  store i16 %i.i, ptr %i.j, align 8, !tbaa !400
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 -15
  %i.l = load i8, ptr %i.k, align 1, !tbaa !390, !range !225, !noundef !122
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZN5clang6format11FormatToken18overwriteFixedTypeENS0_9TokenTypeE.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.p = load i8, ptr %i.o, align 8, !tbaa !267, !range !225, !noundef !122
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = load i32, ptr %i.n, align 8
  %i.s = icmp eq i32 %i.r, 1
  %or.cond.i = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond.i, label %_ZN5clang6format11FormatToken18overwriteFixedTypeENS0_9TokenTypeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 66 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2
  %i.v = and i8 %i.u, -65
  store i8 %i.v, ptr %i.t, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 67
  store i8 94, ptr %i.w, align 1, !tbaa !261
  %.val61.pre = load ptr, ptr %0, align 8, !tbaa !20
  %.val62.pre = load i32, ptr %i.e, align 8, !tbaa !21 ; 2 uses
  %.pre152 = zext i32 %.val62.pre to i64
  br label %_ZN5clang6format11FormatToken18overwriteFixedTypeENS0_9TokenTypeE.exit

_ZN5clang6format11FormatToken18overwriteFixedTypeENS0_9TokenTypeE.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.pre-phi = phi i64 [ %.pre152, %bb.d ], [ %i.f, %bb.c ], [ %i.f, %bb.b ]
  %.val62 = phi i32 [ %.val62.pre, %bb.d ], [ %.val66, %bb.c ], [ %.val66, %bb.b ]
  %.val61 = phi ptr [ %.val61.pre, %bb.d ], [ %.val65, %bb.c ], [ %.val65, %bb.b ]
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %.val61, i64 %.pre-phi ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -15
  store i8 0, ptr %i.y, align 1, !tbaa !390
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -52
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !251
  %i.ab = add i32 %i.aa, 1
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 -48
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !252, !range !225, !noundef !122
  store i16 24, ptr %1, align 8, !tbaa !250
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ab, ptr %i.ae, align 4, !tbaa !251
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.ad, ptr %i.af, align 8, !tbaa !252
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.ag, i8 0, i64 7, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.ai, align 8, !tbaa !253
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 0, ptr %i.ak, align 4, !tbaa !254
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.aj, i8 0, i64 9, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
end_hunk_0
