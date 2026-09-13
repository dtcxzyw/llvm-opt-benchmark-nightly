Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/hbond?download=true
inline.NumInlined: 2770
inline.NumDeleted: 1065
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag:bb.a
  %i.j = icmp eq i64 %i.g, 0
  %i.k = icmp eq i64 %i.g, 0
  %i.l = icmp eq i64 %i.g, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49
  %.055 = phi i64 [ %i.d, %.lr.ph ], [ %i.ao, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49 ] ; 2 uses
  %.sroa.037.054 = phi ptr [ %0, %.lr.ph ], [ %i.an, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49 ] ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !29
  %i.o = icmp eq i64 %i.n, %i.g
  br i1 %i.o, label %bb.c, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit: ; preds = %bb.c
  %i.p = load ptr, ptr %2, align 8, !tbaa !99
  %i.q = load ptr, ptr %.sroa.037.054, align 8, !tbaa !99
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.p, i64 %i.g)
  %i.r = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !29
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %bb.d, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17: ; preds = %bb.d
  %i.w = load ptr, ptr %2, align 8, !tbaa !99
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !99
  %bcmp.i.i16 = tail call i32 @bcmp(ptr %i.x, ptr %i.w, i64 %i.g)
  %i.y = icmp eq i32 %bcmp.i.i16, 0
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 64 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 72
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !29
  %i.ac = icmp eq i64 %i.ab, %i.g
  br i1 %i.ac, label %bb.e, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19: ; preds = %bb.e
  %i.ad = load ptr, ptr %2, align 8, !tbaa !99
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !99
  %bcmp.i.i18 = tail call i32 @bcmp(ptr %i.ae, ptr %i.ad, i64 %i.g)
  %i.af = icmp eq i32 %bcmp.i.i18, 0
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 104
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !29
  %i.aj = icmp eq i64 %i.ai, %i.g
  br i1 %i.aj, label %bb.f, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21: ; preds = %bb.f
  %i.ak = load ptr, ptr %2, align 8, !tbaa !99
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !99
  %bcmp.i.i20 = tail call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %i.g)
  %i.am = icmp eq i32 %bcmp.i.i20, 0
  br i1 %i.am, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 128
  %i.ao = add nsw i64 %.055, -1
  %i.ap = icmp sgt i64 %.055, 1
  br i1 %i.ap, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !496

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
  %.pre58 = load i64, ptr %.phi.trans.insert57, align 8, !tbaa !29
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !29
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !29 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !29 ; 2 uses
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.h, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp eq i64 %i.as, 0
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23: ; preds = %bb.h
  %i.ax = load ptr, ptr %2, align 8, !tbaa !99
  %i.ay = load ptr, ptr %.sroa.037.0.lcssa, align 8, !tbaa !99
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
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !29
  %i.be = icmp eq i64 %i.bd, %i.bb
  br i1 %i.be, label %bb.j, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25: ; preds = %bb.j
  %i.bg = load ptr, ptr %2, align 8, !tbaa !99
  %i.bh = load ptr, ptr %.sroa.037.1, align 8, !tbaa !99
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
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !29
  %i.bn = icmp eq i64 %i.bm, %i.bk
  br i1 %i.bn, label %bb.l, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52

bb.l:                                             ; preds = %bb.k
  %i.bo = icmp eq i64 %i.bk, 0
  br i1 %i.bo, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27: ; preds = %bb.l
  %i.bp = load ptr, ptr %2, align 8, !tbaa !99
  %i.bq = load ptr, ptr %.sroa.037.2, align 8, !tbaa !99
  %bcmp.i.i26 = tail call i32 @bcmp(ptr %i.bq, ptr %i.bp, i64 %i.bk)
  %i.br = icmp eq i32 %bcmp.i.i26, 0
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit, %bb.l, %bb.j, %bb.h, %._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.037.1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25 ], [ %1, %._crit_edge ], [ %.sroa.037.1, %bb.j ], [ %.sroa.037.0.lcssa, %bb.h ], [ %.sroa.037.2, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27 ], [ %.sroa.037.2, %bb.l ], [ %.sroa.037.0.lcssa, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23 ], [ %1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52 ], [ %i.ag, %bb.f ], [ %i.z, %bb.e ], [ %i.s, %bb.d ], [ %.sroa.037.054, %bb.c ], [ %i.ag, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21 ], [ %i.z, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19 ], [ %i.s, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17 ], [ %.sroa.037.054, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #17 {
bb.a:
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr28, i64 8 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph47

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEET_SP_SP_T0_.exit"
  %i.h = icmp eq i64 %i.ch, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph47, !llvm.loop !497

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cz, %bb.b ] ; 3 uses
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.015.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i27.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i27.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_T0_SQ_T1_T2_.exit.us.i.i.i"
  %.010.us.i.i.i = phi i64 [ %i.ai, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_T0_SQ_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.010.us.i.i.i
  %.sroa.03.0.copyload.us.i.i.i = load i64, ptr %i.s, align 4 ; 2 uses
  %i.t = icmp slt i64 %.010.us.i.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_T0_SQ_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.040.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.010.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.u = shl i64 %.040.i.us.i.i.i, 1              ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.x
  %.sroa.01.0.copyload.i.i.us.i.i.i = load i64, ptr %i.w, align 4
  %.sroa.0.0.copyload.i.i.us.i.i.i = load i64, ptr %i.y, align 4
  %.sroa.01.0.extract.trunc.i.i.i.us.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.us.i.i.i to i32
  %.sroa.0.0.extract.trunc.i.i.i.us.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.us.i.i.i to i32
  %i.z = icmp slt i32 %.sroa.01.0.extract.trunc.i.i.i.us.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.z, i64 %i.x, i64 %i.v ; 4 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %spec.select.i.us.i.i.i
  %i.ab = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.040.i.us.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.ab, ptr noundef nonnull align 4 dereferenceable(5) %i.aa, i64 5, i1 false), !tbaa.struct !219
  %i.ac = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ac, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !498

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i.us.i.i.i = trunc i64 %.sroa.03.0.copyload.us.i.i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.08.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.099.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.099.in.i.i.us.i.i.i = add nsw i64 %.08.i.i.us.i.i.i, -1
  %.099.i.i.us.i.i.i = sdiv i64 %.099.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.099.i.i.us.i.i.i ; 2 uses
  %.sroa.01.0.copyload.i.i.i.us.i.i.i = load i64, ptr %i.ad, align 4
  %.sroa.01.0.extract.trunc.i.i.i.i.us.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.i.us.i.i.i to i32
  %i.ae = icmp slt i32 %.sroa.01.0.extract.trunc.i.i.i.i.us.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.us.i.i.i
  br i1 %i.ae, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_T0_SQ_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.08.i.i.us.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.af, ptr noundef nonnull align 4 dereferenceable(5) %i.ad, i64 5, i1 false), !tbaa.struct !219
  %i.ag = icmp sgt i64 %.099.i.i.us.i.i.i, %.010.us.i.i.i
  br i1 %i.ag, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_T0_SQ_T1_T2_.exit.us.i.i.i", !llvm.loop !499

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_T0_SQ_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.010.us.i.i.i, %.split.us.i.i.i ], [ %.099.i.i.us.i.i.i, %bb.d ], [ %.08.i.i.us.i.i.i, %bb.c ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.us.i.i.i
  %.sroa.03.0.extract.trunc.i.i.us.i.i.i = trunc i64 %.sroa.03.0.copyload.us.i.i.i to i40
  store i40 %.sroa.03.0.extract.trunc.i.i.us.i.i.i, ptr %i.ah, align 4
  %.not.us.i.i.i = icmp eq i64 %.010.us.i.i.i, 0
  %i.ai = add nsw i64 %.010.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !500

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_T0_SQ_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.010.i.i.i = phi i64 [ %i.bb, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_T0_SQ_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.aj, align 4 ; 2 uses
  %i.ak = icmp slt i64 %.010.i.i.i, %i.m
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.040.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.al = shl i64 %.040.i.i.i.i, 1                ; 2 uses
  %i.am = add i64 %i.al, 2                        ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.am
  %i.ao = or disjoint i64 %i.al, 1                ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.ao
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.an, align 4
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ap, align 4
  %.sroa.01.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.i.i.i to i32
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i to i32
  %i.aq = icmp slt i32 %.sroa.01.0.extract.trunc.i.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.aq, i64 %i.ao, i64 %i.am ; 4 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.as = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.040.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.as, ptr noundef nonnull align 4 dereferenceable(5) %i.ar, i64 5, i1 false), !tbaa.struct !219
  %i.at = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !498

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.au = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.r, ptr noundef nonnull align 4 dereferenceable(5) %i.q, i64 5, i1 false), !tbaa.struct !219
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.av = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.av, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_T0_SQ_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i.i to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.099.i.i.i.i.i, %bb.h ] ; 3 uses
  %.099.in.i.i.i.i.i = add nsw i64 %.08.i.i.i.i.i, -1
  %.099.i.i.i.i.i = sdiv i64 %.099.in.i.i.i.i.i, 2 ; 4 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.099.i.i.i.i.i ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %i.aw, align 4
  %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.i.i.i.i to i32
  %i.ax = icmp slt i32 %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i
  br i1 %i.ax, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_T0_SQ_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.08.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.ay, ptr noundef nonnull align 4 dereferenceable(5) %i.aw, i64 5, i1 false), !tbaa.struct !219
  %i.az = icmp sgt i64 %.099.i.i.i.i.i, %.010.i.i.i
  br i1 %i.az, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_T0_SQ_T1_T2_.exit.i.i.i", !llvm.loop !499

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_T0_SQ_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.08.i.i.i.i.i, %bb.g ], [ %.099.i.i.i.i.i, %bb.h ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i
  %.sroa.03.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i.i to i40
  store i40 %.sroa.03.0.extract.trunc.i.i.i.i.i, ptr %i.ba, align 4
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bb = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !500

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_T0_SQ_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_T0_SQ_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i27.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_RT0_.exit.i.i"
  %.sroa.0.02.i.i = phi ptr [ %i.bc, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_RT0_.exit.i.i" ], [ %storemerge25.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_RT0_.exit.i.i" ]
  %i.bc = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.bc, align 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.bc, ptr noundef nonnull align 4 dereferenceable(5) %.fr28, i64 5, i1 false), !tbaa.struct !219
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.a                     ; 3 uses
  %i.bf = ashr exact i64 %i.be, 3                 ; 3 uses
  %i.bg = add nsw i64 %i.bf, -1
  %i.bh = lshr i64 %i.bg, 1
  %i.bi = icmp sgt i64 %i.bf, 2
  br i1 %i.bi, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i22.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i22.i
  %.040.i.i.i23.i = phi i64 [ %spec.select.i.i.i28.i, %.lr.ph.i.i.i22.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bj = shl i64 %.040.i.i.i23.i, 1              ; 2 uses
  %i.bk = add i64 %i.bj, 2                        ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.bk
  %i.bm = or disjoint i64 %i.bj, 1                ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.bm
  %.sroa.01.0.copyload.i.i.i.i24.i = load i64, ptr %i.bl, align 4
  %.sroa.0.0.copyload.i.i.i.i25.i = load i64, ptr %i.bn, align 4
  %.sroa.01.0.extract.trunc.i.i.i.i.i26.i = trunc i64 %.sroa.01.0.copyload.i.i.i.i24.i to i32
  %.sroa.0.0.extract.trunc.i.i.i.i.i27.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i25.i to i32
  %i.bo = icmp slt i32 %.sroa.01.0.extract.trunc.i.i.i.i.i26.i, %.sroa.0.0.extract.trunc.i.i.i.i.i27.i
  %spec.select.i.i.i28.i = select i1 %i.bo, i64 %i.bm, i64 %i.bk ; 4 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %spec.select.i.i.i28.i
  %i.bq = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.040.i.i.i23.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.bq, ptr noundef nonnull align 4 dereferenceable(5) %i.bp, i64 5, i1 false), !tbaa.struct !219
  %i.br = icmp slt i64 %spec.select.i.i.i28.i, %i.bh
  br i1 %i.br, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i11.i, !llvm.loop !498

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i22.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i28.i, %.lr.ph.i.i.i22.i ] ; 5 uses
  %i.bs = and i64 %i.be, 8
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.bu = add nsw i64 %i.bf, -2
  %i.bv = ashr exact i64 %i.bu, 1
  %i.bw = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.bv
  br i1 %i.bw, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.bx = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.by = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %i.by
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i12.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.ca, ptr noundef nonnull align 4 dereferenceable(5) %i.bz, i64 5, i1 false), !tbaa.struct !219
  br label %.lr.ph.i.i.i.i14.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_RT0_.exit.i.i", label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i4.i.i.i = phi i64 [ %i.by, %.thread.i.i.i ], [ %.0.lcssa.i.i.i12.i, %bb.j ]
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i15.i = trunc i64 %.sroa.03.0.copyload.i.i10.i to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i14.i
  %.08.i.i.i.i16.i = phi i64 [ %.1.i4.i.i.i, %.lr.ph.i.i.i.i14.i ], [ %.099.i.i56.i.i.i, %bb.l ] ; 3 uses
  %.099.in.i.i.i.i17.i = add nsw i64 %.08.i.i.i.i16.i, -1
  %.099.i.i56.i.i.i = lshr i64 %.099.in.i.i.i.i17.i, 1 ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.099.i.i56.i.i.i ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i18.i = load i64, ptr %i.cb, align 4
  %.sroa.01.0.extract.trunc.i.i.i.i.i.i19.i = trunc i64 %.sroa.01.0.copyload.i.i.i.i.i18.i to i32
  %i.cc = icmp slt i32 %.sroa.01.0.extract.trunc.i.i.i.i.i.i19.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i15.i
  br i1 %i.cc, label %bb.l, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_RT0_.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.08.i.i.i.i16.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.cd, ptr noundef nonnull align 4 dereferenceable(5) %i.cb, i64 5, i1 false), !tbaa.struct !219
  %.not7.i.i.i = icmp eq i64 %.099.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_RT0_.exit.i.i", label %bb.k, !llvm.loop !499

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_RT0_.exit.i.i": ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.j ], [ %.08.i.i.i.i16.i, %bb.k ], [ 0, %bb.l ]
  %i.ce = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i20.i
  %.sroa.03.0.extract.trunc.i.i.i.i21.i = trunc i64 %.sroa.03.0.copyload.i.i10.i to i40
  store i40 %.sroa.03.0.extract.trunc.i.i.i.i21.i, ptr %i.ce, align 4
  %i.cf = icmp sgt i64 %i.be, 8
  br i1 %i.cf, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_T0_.exit", !llvm.loop !501

.lr.ph47:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2546 = phi ptr [ %.sroa.015.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02645 = phi i64 [ %i.ch, %bb.b ], [ %2, %.lr.ph ]
  %i.cg = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ch = add nsw i64 %.02645, -1                 ; 3 uses
  %i.ci = lshr i64 %i.cg, 1
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %i.ci ; 5 uses
  %i.ck = getelementptr inbounds i8, ptr %storemerge2546, i64 -8 ; 5 uses
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.f, align 4
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cj, align 4
  %.sroa.01.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.i to i32 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 3 uses
  %i.cl = icmp slt i32 %.sroa.01.0.extract.trunc.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load i64, ptr %i.ck, align 4
  %.sroa.0.0.extract.trunc.i.i29.i.i = trunc i64 %.sroa.0.0.copyload.i27.i.i to i32 ; 4 uses
  br i1 %i.cl, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph47
  %i.cm = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.0.0.extract.trunc.i.i29.i.i
  br i1 %i.cm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cn = load i64, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.fr28, ptr noundef nonnull align 4 dereferenceable(5) %i.cj, i64 5, i1 false), !tbaa.struct !219
  %.sroa.0.0.extract.trunc.i.i30.i.i = trunc i64 %i.cn to i40
  store i40 %.sroa.0.0.extract.trunc.i.i30.i.i, ptr %i.cj, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.co = icmp slt i32 %.sroa.01.0.extract.trunc.i.i.i.i, %.sroa.0.0.extract.trunc.i.i29.i.i
  %i.cp = load i64, ptr %.fr28, align 4
  %.sroa.0.0.extract.trunc.i.i35.i.i = trunc i64 %i.cp to i40 ; 2 uses
  br i1 %i.co, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.fr28, ptr noundef nonnull align 4 dereferenceable(5) %i.ck, i64 5, i1 false), !tbaa.struct !219
  store i40 %.sroa.0.0.extract.trunc.i.i35.i.i, ptr %i.ck, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.fr28, ptr noundef nonnull align 4 dereferenceable(5) %i.f, i64 5, i1 false), !tbaa.struct !219
  store i40 %.sroa.0.0.extract.trunc.i.i35.i.i, ptr %i.f, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph47
  %i.cq = icmp slt i32 %.sroa.01.0.extract.trunc.i.i.i.i, %.sroa.0.0.extract.trunc.i.i29.i.i
  br i1 %i.cq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cr = load i64, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.fr28, ptr noundef nonnull align 4 dereferenceable(5) %i.f, i64 5, i1 false), !tbaa.struct !219
  %.sroa.0.0.extract.trunc.i.i41.i.i = trunc i64 %i.cr to i40
  store i40 %.sroa.0.0.extract.trunc.i.i41.i.i, ptr %i.f, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.cs = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.0.0.extract.trunc.i.i29.i.i
  %i.ct = load i64, ptr %.fr28, align 4
  %.sroa.0.0.extract.trunc.i.i46.i.i = trunc i64 %i.ct to i40 ; 2 uses
  br i1 %i.cs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.fr28, ptr noundef nonnull align 4 dereferenceable(5) %i.ck, i64 5, i1 false), !tbaa.struct !219
  store i40 %.sroa.0.0.extract.trunc.i.i46.i.i, ptr %i.ck, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.fr28, ptr noundef nonnull align 4 dereferenceable(5) %i.cj, i64 5, i1 false), !tbaa.struct !219
  store i40 %.sroa.0.0.extract.trunc.i.i46.i.i, ptr %i.cj, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_SP_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_SP_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader", %bb.y
  %.sroa.015.0.i.i = phi ptr [ %i.cv, %bb.y ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2546, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader" ]
  %.sroa.0.0.copyload.i.i18.i = load i64, ptr %.fr28, align 4
  %.sroa.0.0.extract.trunc.i.i.i19.i = trunc i64 %.sroa.0.0.copyload.i.i18.i to i32 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_SP_T0_.exit.i"
  %.sroa.015.1.i.i = phi ptr [ %.sroa.015.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_SP_T0_.exit.i" ], [ %i.cv, %bb.w ] ; 8 uses
  %.sroa.01.0.copyload.i.i20.i = load i64, ptr %.sroa.015.1.i.i, align 4 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i21.i = trunc i64 %.sroa.01.0.copyload.i.i20.i to i32
  %i.cu = icmp slt i32 %.sroa.01.0.extract.trunc.i.i.i21.i, %.sroa.0.0.extract.trunc.i.i.i19.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 8 ; 2 uses
  br i1 %i.cu, label %bb.w, label %.preheader.i.i, !llvm.loop !502

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 6 uses
  %.sroa.0.0.copyload.i10.i.i = load i64, ptr %.sroa.0.1.i.i, align 4
  %.sroa.0.0.extract.trunc.i.i12.i.i = trunc i64 %.sroa.0.0.copyload.i10.i.i to i32
  %i.cw = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i19.i, %.sroa.0.0.extract.trunc.i.i12.i.i
  br i1 %i.cw, label %.preheader.i.i, label %bb.x, !llvm.loop !503

bb.x:                                             ; preds = %.preheader.i.i
  %i.cx = icmp ult ptr %.sroa.015.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cx, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEET_SP_SP_T0_.exit"

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.sroa.015.1.i.i, ptr noundef nonnull align 4 dereferenceable(5) %.sroa.0.1.i.i, i64 5, i1 false), !tbaa.struct !219
  %.sroa.0.0.extract.trunc.i.i13.i.i = trunc i64 %.sroa.01.0.copyload.i.i20.i to i40
  store i40 %.sroa.0.0.extract.trunc.i.i13.i.i, ptr %.sroa.0.1.i.i, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_SP_T0_.exit.i", !llvm.loop !504

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEET_SP_SP_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_T0_T1_"(ptr nonnull %.sroa.015.1.i.i, ptr %storemerge2546, i64 noundef %i.ch)
  %i.cy = ptrtoint ptr %.sroa.015.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a                     ; 2 uses
  %i.da = ashr exact i64 %i.cz, 3                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 16
  br i1 %i.db, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_T0_.exit", !llvm.loop !497

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEET_SP_SP_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_SP_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_110t_acceptorESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_5Hbond15searchAcceptorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKS7_IiSaIiEEE3$_0EEEvT_SP_RT0_.exit.i.i"
  ret void
}

declare noundef ptr @_ZNK3gmx19TopologyInformation16expandedTopologyEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #17 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 27 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.fr27, i64 4 ; 3 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph49

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEET_SQ_SQ_T0_.exit"
  %i.i = icmp eq i64 %i.cx, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph49, !llvm.loop !505

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ep, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.019.1.i.i, %bb.b ]
  %i.j = lshr i64 %.fr.i26.lcssa, 3               ; 2 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %.fr.i26.lcssa, 8
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.q
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.az, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.t, align 4 ; 3 uses
  %i.u = icmp slt i64 %.010.i.i.i, %i.n
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.037.i.i.i.i = phi i64 [ %i.af, %bb.d ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.y
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.x, align 4 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.z, align 4 ; 2 uses
  %.sroa.02.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.i.i.i to i32 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i to i32 ; 3 uses
  %i.aa = icmp slt i32 %.sroa.02.0.extract.trunc.i.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i
  br i1 %i.aa, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i.i.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i
  %.sroa.3.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i.i.i.i to i32
  %.sroa.34.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.01.0.copyload.i.i.i.i.i, 32
  %.sroa.34.0.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.34.0.extract.shift.i.i.i.i.i.i to i32
  %i.ab = icmp eq i32 %.sroa.02.0.extract.trunc.i.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i
  %i.ac = icmp slt i32 %.sroa.34.0.extract.trunc.i.i.i.i.i.i, %.sroa.3.0.extract.trunc.i.i.i.i.i.i
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  %cond.fr.i.i.i.i = freeze i1 %i.ad
  br i1 %cond.fr.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i.i.i", label %bb.d

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i.i.i.i", %.lr.ph.i.i.i.i
  br label %bb.d

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i.i.i.i"
  %i.ae = phi i32 [ %.sroa.0.0.extract.trunc.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i.i.i" ], [ %.sroa.02.0.extract.trunc.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i.i.i.i" ]
  %i.af = phi i64 [ %i.y, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i.i.i" ], [ %i.w, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i.i.i.i" ] ; 4 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.037.i.i.i.i ; 2 uses
  store i32 %i.ae, ptr %i.ah, align 4, !tbaa !222
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !110
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !223
  %i.al = icmp slt i64 %i.af, %i.n
  br i1 %i.al, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !506

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %i.af, %bb.d ] ; 2 uses
  %i.am = icmp eq i64 %.0.lcssa.i.i.i.i, %i.l
  %or.cond.i.i.i = select i1 %i.p, i1 %i.am, i1 false
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.an = load <2 x i32>, ptr %i.r, align 4, !tbaa !110
  store <2 x i32> %i.an, ptr %i.s, align 4, !tbaa !110
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.q, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ao = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i.i to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i.i.i.i.i to i32
  br label %bb.g

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.thread.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.thread.i.i.i.i.i" ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ap, align 4 ; 3 uses
  %.sroa.02.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.i.i.i.i to i32 ; 2 uses
  %i.aq = icmp slt i32 %.sroa.02.0.extract.trunc.i.i.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i
  br i1 %i.aq, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.thread.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.i.i.i.i.i": ; preds = %bb.g
  %i.ar = lshr i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 32
  %i.as = trunc nuw i64 %i.ar to i32
  %i.at = icmp eq i32 %.sroa.02.0.extract.trunc.i.i.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i
  %i.au = icmp slt i32 %i.as, %.sroa.3.0.extract.trunc.i.i.i.i.i.i.i
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.thread.i.i.i.i.i", label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.i.i.i.i.i", %bb.g
  %i.aw = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i, ptr %i.aw, align 4
  %i.ax = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.ax, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i", !llvm.loop !507

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.thread.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.i.i.i.i.i", %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.i.i.i.i.i" ], [ %.0911.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.thread.i.i.i.i.i" ]
  %i.ay = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.ay, align 4
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.az = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_RT0_.exit.i.i", label %bb.c, !llvm.loop !508

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i26.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_RT0_.exit.i14.i"
  %.sroa.0.03.i.i = phi ptr [ %i.ba, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_RT0_.exit.i14.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_RT0_.exit.i.i" ] ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.ba, align 4 ; 3 uses
  %i.bb = load i32, ptr %.fr27, align 4, !tbaa !110
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !222
  %i.bc = load i32, ptr %i.g, align 4, !tbaa !110
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -4
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !223
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.be, %i.a                     ; 3 uses
  %i.bg = ashr exact i64 %i.bf, 3                 ; 3 uses
  %i.bh = add nsw i64 %i.bg, -1
  %i.bi = sdiv i64 %i.bh, 2
  %i.bj = icmp sgt i64 %i.bg, 2
  br i1 %i.bj, label %.lr.ph.i.i.i28.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i28.i:                                 ; preds = %.lr.ph.i9.i, %bb.h
  %.037.i.i.i29.i = phi i64 [ %i.bu, %bb.h ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bk = shl i64 %.037.i.i.i29.i, 1              ; 2 uses
  %i.bl = add i64 %i.bk, 2                        ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.bl
  %i.bn = or disjoint i64 %i.bk, 1                ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.bn
  %.sroa.01.0.copyload.i.i.i.i30.i = load i64, ptr %i.bm, align 4 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i31.i = load i64, ptr %i.bo, align 4 ; 2 uses
  %.sroa.02.0.extract.trunc.i.i.i.i.i32.i = trunc i64 %.sroa.01.0.copyload.i.i.i.i30.i to i32 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i33.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i31.i to i32 ; 3 uses
  %i.bp = icmp slt i32 %.sroa.02.0.extract.trunc.i.i.i.i.i32.i, %.sroa.0.0.extract.trunc.i.i.i.i.i33.i
  br i1 %i.bp, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i.i40.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i.i.i34.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i.i.i34.i": ; preds = %.lr.ph.i.i.i28.i
  %.sroa.3.0.extract.shift.i.i.i.i.i35.i = lshr i64 %.sroa.0.0.copyload.i.i.i.i31.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i.i36.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i.i.i35.i to i32
  %.sroa.34.0.extract.shift.i.i.i.i.i37.i = lshr i64 %.sroa.01.0.copyload.i.i.i.i30.i, 32
  %.sroa.34.0.extract.trunc.i.i.i.i.i38.i = trunc nuw i64 %.sroa.34.0.extract.shift.i.i.i.i.i37.i to i32
  %i.bq = icmp eq i32 %.sroa.02.0.extract.trunc.i.i.i.i.i32.i, %.sroa.0.0.extract.trunc.i.i.i.i.i33.i
  %i.br = icmp slt i32 %.sroa.34.0.extract.trunc.i.i.i.i.i38.i, %.sroa.3.0.extract.trunc.i.i.i.i.i36.i
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  %cond.fr.i.i.i39.i = freeze i1 %i.bs
  br i1 %cond.fr.i.i.i39.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i.i40.i", label %bb.h

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i.i40.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i.i.i34.i", %.lr.ph.i.i.i28.i
  br label %bb.h

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i.i40.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i.i.i34.i"
  %i.bt = phi i32 [ %.sroa.0.0.extract.trunc.i.i.i.i.i33.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i.i40.i" ], [ %.sroa.02.0.extract.trunc.i.i.i.i.i32.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i.i.i34.i" ]
  %i.bu = phi i64 [ %i.bn, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i.i40.i" ], [ %i.bl, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i.i.i34.i" ] ; 4 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.bu
  %i.bw = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.037.i.i.i29.i ; 2 uses
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !222
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !110
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !223
  %i.ca = icmp slt i64 %i.bu, %i.bi
  br i1 %i.ca, label %.lr.ph.i.i.i28.i, label %._crit_edge.i.i.i11.i, !llvm.loop !506

._crit_edge.i.i.i11.i:                            ; preds = %bb.h, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %i.bu, %bb.h ] ; 5 uses
  %i.cb = and i64 %i.bf, 8
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.i, label %bb.k

bb.i:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.cd = add nsw i64 %i.bg, -2
  %i.ce = ashr exact i64 %i.cd, 1
  %i.cf = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.ce
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cg = shl nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.ch = or disjoint i64 %i.cg, 1                ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.ch
  %i.cj = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i12.i
  %i.ck = load <2 x i32>, ptr %i.ci, align 4, !tbaa !110
  store <2 x i32> %i.ck, ptr %i.cj, align 4, !tbaa !110
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i11.i
  %.1.i.i.i13.i = phi i64 [ %i.ch, %bb.j ], [ %.0.lcssa.i.i.i12.i, %bb.i ], [ %.0.lcssa.i.i.i12.i, %._crit_edge.i.i.i11.i ] ; 3 uses
  %i.cl = icmp sgt i64 %.1.i.i.i13.i, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i16.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_RT0_.exit.i14.i"

.lr.ph.i.i.i.i16.i:                               ; preds = %bb.k
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i17.i = trunc i64 %.sroa.03.0.copyload.i.i10.i to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i.i.i.i18.i = lshr i64 %.sroa.03.0.copyload.i.i10.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i.i.i19.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i.i.i.i18.i to i32
  br label %bb.l

bb.l:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.thread.i.i.i.i26.i", %.lr.ph.i.i.i.i16.i
  %.010.i.i.i.i20.i = phi i64 [ %.1.i.i.i13.i, %.lr.ph.i.i.i.i16.i ], [ %.0911.i.i56.i.i22.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.thread.i.i.i.i26.i" ] ; 3 uses
  %.0911.in.i.i.i.i21.i = add nsw i64 %.010.i.i.i.i20.i, -1
  %.0911.i.i56.i.i22.i = lshr i64 %.0911.in.i.i.i.i21.i, 1 ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i56.i.i22.i
  %.sroa.01.0.copyload.i.i.i.i.i23.i = load i64, ptr %i.cm, align 4 ; 3 uses
  %.sroa.02.0.extract.trunc.i.i.i.i.i.i24.i = trunc i64 %.sroa.01.0.copyload.i.i.i.i.i23.i to i32 ; 2 uses
  %i.cn = icmp slt i32 %.sroa.02.0.extract.trunc.i.i.i.i.i.i24.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i17.i
  br i1 %i.cn, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.thread.i.i.i.i26.i", label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.i.i.i.i25.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.i.i.i.i25.i": ; preds = %bb.l
  %i.co = lshr i64 %.sroa.01.0.copyload.i.i.i.i.i23.i, 32
  %i.cp = trunc nuw i64 %i.co to i32
  %i.cq = icmp eq i32 %.sroa.02.0.extract.trunc.i.i.i.i.i.i24.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i17.i
  %i.cr = icmp slt i32 %i.cp, %.sroa.3.0.extract.trunc.i.i.i.i.i.i19.i
  %i.cs = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %i.cs, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.thread.i.i.i.i26.i", label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_RT0_.exit.i14.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.thread.i.i.i.i26.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.i.i.i.i25.i", %bb.l
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i20.i
  store i64 %.sroa.01.0.copyload.i.i.i.i.i23.i, ptr %i.ct, align 4
  %.not.i.i27.i = icmp eq i64 %.0911.i.i56.i.i22.i, 0
  br i1 %.not.i.i27.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_RT0_.exit.i14.i", label %bb.l, !llvm.loop !507

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_RT0_.exit.i14.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.thread.i.i.i.i26.i", %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.i.i.i.i25.i", %bb.k
  %.0.lcssa.i.i.i.i15.i = phi i64 [ %.1.i.i.i13.i, %bb.k ], [ %.010.i.i.i.i20.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.i.i.i.i25.i" ], [ 0, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESL_EEbT_RT0_.exit.thread.i.i.i.i26.i" ]
  %i.cu = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i15.i
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.cu, align 4
  %i.cv = icmp sgt i64 %i.bf, 8
  br i1 %i.cv, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_T0_.exit", !llvm.loop !509

.lr.ph49:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2448 = phi ptr [ %.sroa.019.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02547 = phi i64 [ %i.cx, %bb.b ], [ %2, %.lr.ph ]
  %i.cw = phi i64 [ %i.eq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cx = add nsw i64 %.02547, -1                 ; 3 uses
  %i.cy = lshr i64 %i.cw, 1
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.cy ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %storemerge2448, i64 -8 ; 6 uses
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.f, align 4 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cz, align 4 ; 3 uses
  %.sroa.02.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.i to i32 ; 9 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 9 uses
  %i.db = icmp slt i32 %.sroa.02.0.extract.trunc.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i
  br i1 %i.db, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i.i": ; preds = %.lr.ph49
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %.sroa.34.0.extract.shift.i.i.i.i = lshr i64 %.sroa.01.0.copyload.i.i.i, 32
  %.sroa.34.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.34.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %i.dc = icmp eq i32 %.sroa.02.0.extract.trunc.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i
  %i.dd = icmp slt i32 %.sroa.34.0.extract.trunc.i.i.i.i, %.sroa.3.0.extract.trunc.i.i.i.i
  %i.de = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %i.de, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i", label %bb.n

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i.i", %.lr.ph49
  %.sroa.0.0.copyload.i27.i.i = load i64, ptr %i.da, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i29.i.i = trunc i64 %.sroa.0.0.copyload.i27.i.i to i32 ; 6 uses
  %i.df = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.0.0.extract.trunc.i.i29.i.i
  br i1 %i.df, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit34.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit34.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i"
  %.sroa.3.0.extract.shift.i.i30.i.i = lshr i64 %.sroa.0.0.copyload.i27.i.i, 32
  %.sroa.3.0.extract.trunc.i.i31.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i30.i.i to i32 ; 2 uses
  %.sroa.34.0.extract.shift.i.i32.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %.sroa.34.0.extract.trunc.i.i33.i.i = trunc nuw i64 %.sroa.34.0.extract.shift.i.i32.i.i to i32
  %i.dg = icmp eq i32 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.0.0.extract.trunc.i.i29.i.i
  %i.dh = icmp slt i32 %.sroa.34.0.extract.trunc.i.i33.i.i, %.sroa.3.0.extract.trunc.i.i31.i.i
  %i.di = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %i.di, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i", label %bb.m

bb.m:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit34.i.i"
  %i.dj = icmp slt i32 %.sroa.02.0.extract.trunc.i.i.i.i, %.sroa.0.0.extract.trunc.i.i29.i.i
  br i1 %i.dj, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit43.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit43.i.i": ; preds = %bb.m
  %.sroa.34.0.extract.shift.i.i41.i.i = lshr i64 %.sroa.01.0.copyload.i.i.i, 32
  %.sroa.34.0.extract.trunc.i.i42.i.i = trunc nuw i64 %.sroa.34.0.extract.shift.i.i41.i.i to i32
  %i.dk = icmp eq i32 %.sroa.02.0.extract.trunc.i.i.i.i, %.sroa.0.0.extract.trunc.i.i29.i.i
  %i.dl = icmp slt i32 %.sroa.34.0.extract.trunc.i.i42.i.i, %.sroa.3.0.extract.trunc.i.i31.i.i
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false     ; 2 uses
  %spec.select.i.i = select i1 %i.dm, i32 %.sroa.0.0.extract.trunc.i.i29.i.i, i32 %.sroa.02.0.extract.trunc.i.i.i.i
  %spec.select69.i.i = select i1 %i.dm, ptr %i.da, ptr %i.f
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i"

bb.n:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i.i"
  %.sroa.0.0.copyload.i45.i.i = load i64, ptr %i.da, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i47.i.i = trunc i64 %.sroa.0.0.copyload.i45.i.i to i32 ; 6 uses
  %i.dn = icmp slt i32 %.sroa.02.0.extract.trunc.i.i.i.i, %.sroa.0.0.extract.trunc.i.i47.i.i
  br i1 %i.dn, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit52.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit52.i.i": ; preds = %bb.n
  %.sroa.3.0.extract.shift.i.i48.i.i = lshr i64 %.sroa.0.0.copyload.i45.i.i, 32
  %.sroa.3.0.extract.trunc.i.i49.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i48.i.i to i32 ; 2 uses
  %i.do = icmp eq i32 %.sroa.02.0.extract.trunc.i.i.i.i, %.sroa.0.0.extract.trunc.i.i47.i.i
  %i.dp = icmp slt i32 %.sroa.34.0.extract.trunc.i.i.i.i, %.sroa.3.0.extract.trunc.i.i49.i.i
  %i.dq = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %i.dq, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i", label %bb.o

bb.o:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit52.i.i"
  %i.dr = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.0.0.extract.trunc.i.i47.i.i
  br i1 %i.dr, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit61.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit61.i.i": ; preds = %bb.o
  %i.ds = icmp eq i32 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.0.0.extract.trunc.i.i47.i.i
  %i.dt = icmp slt i32 %.sroa.3.0.extract.trunc.i.i.i.i, %.sroa.3.0.extract.trunc.i.i49.i.i
  %i.du = select i1 %i.ds, i1 %i.dt, i1 false     ; 2 uses
  %spec.select70.i.i = select i1 %i.du, i32 %.sroa.0.0.extract.trunc.i.i47.i.i, i32 %.sroa.0.0.extract.trunc.i.i.i.i
  %spec.select71.i.i = select i1 %i.du, ptr %i.da, ptr %i.cz
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit61.i.i", %bb.o, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit52.i.i", %bb.n, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit43.i.i", %bb.m, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit34.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i"
  %.sroa.02.0.extract.trunc.i.i.sink.i.i = phi i32 [ %.sroa.0.0.extract.trunc.i.i47.i.i, %bb.o ], [ %spec.select.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit43.i.i" ], [ %.sroa.02.0.extract.trunc.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit52.i.i" ], [ %.sroa.0.0.extract.trunc.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit34.i.i" ], [ %spec.select70.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit61.i.i" ], [ %.sroa.0.0.extract.trunc.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i" ], [ %.sroa.0.0.extract.trunc.i.i29.i.i, %bb.m ], [ %.sroa.02.0.extract.trunc.i.i.i.i, %bb.n ]
  %.sink68.i.i = phi ptr [ %i.da, %bb.o ], [ %spec.select69.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit43.i.i" ], [ %i.f, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit52.i.i" ], [ %i.cz, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit34.i.i" ], [ %spec.select71.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit61.i.i" ], [ %i.cz, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i.i" ], [ %i.da, %bb.m ], [ %i.f, %bb.n ] ; 2 uses
  %i.dv = load i32, ptr %.fr27, align 4, !tbaa !110
  store i32 %.sroa.02.0.extract.trunc.i.i.sink.i.i, ptr %.fr27, align 4, !tbaa !110
  store i32 %i.dv, ptr %.sink68.i.i, align 4, !tbaa !110
  %i.dw = getelementptr inbounds nuw i8, ptr %.sink68.i.i, i64 4 ; 2 uses
  %i.dx = load i32, ptr %i.g, align 4, !tbaa !110
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !110
  store i32 %i.dy, ptr %i.g, align 4, !tbaa !110
  store i32 %i.dx, ptr %i.dw, align 4, !tbaa !110
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i"
  %.sroa.019.0.i.i = phi ptr [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i" ], [ %i.en, %bb.s ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge2448, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i" ], [ %.sroa.0.1.i.i, %bb.s ]
  %.sroa.0.0.copyload.i.i13.i = load i64, ptr %.fr27, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i14.i = trunc i64 %.sroa.0.0.copyload.i.i13.i to i32 ; 4 uses
  %.sroa.3.0.extract.shift.i.i.i15.i = lshr i64 %.sroa.0.0.copyload.i.i13.i, 32
  %.sroa.3.0.extract.trunc.i.i.i16.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i15.i to i32 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i22.i", %bb.p
  %.sroa.019.1.i.i = phi ptr [ %.sroa.019.0.i.i, %bb.p ], [ %i.ed, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i22.i" ] ; 10 uses
  %.sroa.01.0.copyload.i.i17.i = load i64, ptr %.sroa.019.1.i.i, align 4 ; 2 uses
  %.sroa.02.0.extract.trunc.i.i.i18.i = trunc i64 %.sroa.01.0.copyload.i.i17.i to i32 ; 3 uses
  %i.dz = icmp slt i32 %.sroa.02.0.extract.trunc.i.i.i18.i, %.sroa.0.0.extract.trunc.i.i.i14.i
  br i1 %i.dz, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i22.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i19.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i19.i": ; preds = %bb.q
  %.sroa.34.0.extract.shift.i.i.i20.i = lshr i64 %.sroa.01.0.copyload.i.i17.i, 32
  %.sroa.34.0.extract.trunc.i.i.i21.i = trunc nuw i64 %.sroa.34.0.extract.shift.i.i.i20.i to i32
  %i.ea = icmp eq i32 %.sroa.02.0.extract.trunc.i.i.i18.i, %.sroa.0.0.extract.trunc.i.i.i14.i
  %i.eb = icmp slt i32 %.sroa.34.0.extract.trunc.i.i.i21.i, %.sroa.3.0.extract.trunc.i.i.i16.i
  %i.ec = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %i.ec, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i22.i", label %.preheader.i.i

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.thread.i22.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i19.i", %bb.q
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 8
  br label %bb.q, !llvm.loop !510

.preheader.i.i:                                   ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i19.i", %.preheader.i.i.backedge
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i.backedge ], [ %.sroa.0.0.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit.i19.i" ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %.sroa.0.0.copyload.i9.i.i = load i64, ptr %.sroa.0.1.i.i, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i11.i.i = trunc i64 %.sroa.0.0.copyload.i9.i.i to i32 ; 3 uses
  %i.ee = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i14.i, %.sroa.0.0.extract.trunc.i.i11.i.i
  br i1 %i.ee, label %.preheader.i.i.backedge, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit16.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit16.i.i": ; preds = %.preheader.i.i
  %.sroa.3.0.extract.shift.i.i12.i.i = lshr i64 %.sroa.0.0.copyload.i9.i.i, 32
  %.sroa.3.0.extract.trunc.i.i13.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i12.i.i to i32
  %i.ef = icmp eq i32 %.sroa.0.0.extract.trunc.i.i.i14.i, %.sroa.0.0.extract.trunc.i.i11.i.i
  %i.eg = icmp slt i32 %.sroa.3.0.extract.trunc.i.i.i16.i, %.sroa.3.0.extract.trunc.i.i13.i.i
  %i.eh = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %i.eh, label %.preheader.i.i.backedge, label %bb.r

.preheader.i.i.backedge:                          ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit16.i.i", %.preheader.i.i
  br label %.preheader.i.i, !llvm.loop !511

bb.r:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS2_19TopologyInformationEPNS4_6t_infoEPKSt6vectorIiSaIiEEE3$_0EclINS_17__normal_iteratorIPSt4pairIiiESB_ISL_SaISL_EEEESP_EEbT_T0_.exit16.i.i"
  %i.ei = icmp ult ptr %.sroa.019.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ei, label %bb.s, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEET_SQ_SQ_T0_.exit"

bb.s:                                             ; preds = %bb.r
  store i32 %.sroa.0.0.extract.trunc.i.i11.i.i, ptr %.sroa.019.1.i.i, align 4, !tbaa !110
  store i32 %.sroa.02.0.extract.trunc.i.i.i18.i, ptr %.sroa.0.1.i.i, align 4, !tbaa !110
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 4 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 2 uses
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !110
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !110
  store i32 %i.em, ptr %i.ej, align 4, !tbaa !110
  store i32 %i.el, ptr %i.ek, align 4, !tbaa !110
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 8
  br label %bb.p, !llvm.loop !512

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEET_SQ_SQ_T0_.exit": ; preds = %bb.r
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_T0_T1_"(ptr nonnull %.sroa.019.1.i.i, ptr %storemerge2448, i64 noundef %i.cx)
  %i.eo = ptrtoint ptr %.sroa.019.1.i.i to i64
  %i.ep = sub i64 %i.eo, %i.a                     ; 2 uses
  %i.eq = ashr exact i64 %i.ep, 3                 ; 2 uses
  %i.er = icmp sgt i64 %i.eq, 16
  br i1 %i.er, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_T0_.exit", !llvm.loop !505

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEET_SQ_SQ_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_SQ_RT0_.exit.i14.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNSB_19TopologyInformationEPNSD_6t_infoEPKS5_IiSaIiEEE3$_0EEEvT_SQ_RT0_.exit.i.i"
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !99     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !99
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !26
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !99   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !29   ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !99
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !30
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !29
  store ptr %i.v, ptr %i.s, align 8, !tbaa !99
  store i64 0, ptr %i.ac, align 8, !tbaa !29
  store i8 0, ptr %i.v, align 8, !tbaa !30
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8, !tbaa !99
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !26
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !99 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !29 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8, !tbaa !99
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !30
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !29
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !99
  store i64 0, ptr %i.as, align 8, !tbaa !29
  store i8 0, ptr %i.al, align 8, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !26
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !99
  %i.k = load i64, ptr %i.e, align 8, !tbaa !30
  store i64 %i.k, ptr %i.c, align 8, !tbaa !30
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !29
  store ptr %i.e, ptr %i.b, align 8, !tbaa !99
  store i64 0, ptr %i.m, align 8, !tbaa !29
  store i8 0, ptr %i.e, align 8, !tbaa !30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx119to_stringEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @llvm.abs.i32(i32 %1, i1 false) ; 5 uses
  %i.b = icmp ult i32 %i.a, 10
  br i1 %i.b, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.g
  %.030.i = phi i32 [ %i.j, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02329.i = phi i32 [ %i.i, %bb.g ], [ %i.a, %bb.a ] ; 5 uses
  %i.c = icmp ult i32 %.02329.i, 100
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = add i32 %.030.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = icmp ult i32 %.02329.i, 1000
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add i32 %.030.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit

bb.e:                                             ; preds = %bb.c
  %i.g = icmp ult i32 %.02329.i, 10000
  br i1 %i.g, label %bb.f, label %bb.g
end_hunk_0
