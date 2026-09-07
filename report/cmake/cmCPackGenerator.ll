Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCPackGenerator?download=true
inline.NumInlined: 4821
inline.NumDeleted: 1020
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt12__move_mergeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_less_iterEET0_T_SG_SG_SG_SF_T1_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.ae = phi ptr [ %i.n, %bb.g ], [ %i.r, %bb.h ], [ %i.q, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.d, align 8, !tbaa !29
  store i8 0, ptr %i.ae, align 1, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %.01648, i64 32
  br label %bb.p

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEbT_T0_.exit
  %i.ag = load ptr, ptr %.049, align 8, !tbaa !75 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.049, i64 16 ; 6 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah                ; 2 uses
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i24: ; preds = %bb.i
  br i1 %i.ai, label %bb.j, label %.thread.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i18: ; preds = %bb.i
  br i1 %i.ai, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i19

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i24
  %i.aj = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.aj)
  %.not21.i21 = icmp eq ptr %.049, %.sroa.0.045
  br i1 %.not21.i21, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26, label %bb.k, !prof !110

bb.k:                                             ; preds = %bb.j
  switch i64 %i.g, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i22
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !30
  store i8 %i.ak, ptr %i.n, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i22

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.ag, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i22: ; preds = %bb.m, %bb.l, %bb.k
  %i.al = load i64, ptr %i.f, align 8, !tbaa !29  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !29
  %i.an = load ptr, ptr %.sroa.0.045, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !30
  %.pre.i23 = load ptr, ptr %.049, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26

.thread.i25:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i24
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 8
  store ptr %i.ag, ptr %.sroa.0.045, align 8, !tbaa !75
  store i64 %i.g, ptr %i.ap, align 8, !tbaa !29
  %i.aq = load i64, ptr %i.ah, align 8, !tbaa !30
  store i64 %i.aq, ptr %i.o, align 8, !tbaa !30
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i18
  %i.ar = load i64, ptr %i.o, align 8, !tbaa !30
  store ptr %i.ag, ptr %.sroa.0.045, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 8
  store i64 %i.g, ptr %i.as, align 8, !tbaa !29
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !30
  store i64 %i.at, ptr %i.o, align 8, !tbaa !30
  %.not.i20 = icmp eq ptr %i.n, null
  br i1 %.not.i20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i19
  store ptr %i.n, ptr %.049, align 8, !tbaa !75
  store i64 %i.ar, ptr %i.ah, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i19, %.thread.i25
  store ptr %i.ah, ptr %.049, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i22, %bb.n, %bb.o
  %i.au = phi ptr [ %i.n, %bb.n ], [ %i.ah, %bb.o ], [ %i.ag, %bb.j ], [ %.pre.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i22 ]
  store i64 0, ptr %i.f, align 8, !tbaa !29
  store i8 0, ptr %i.au, align 1, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %.049, i64 32
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.117 = phi ptr [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %.01648, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26 ] ; 3 uses
  %.1 = phi ptr [ %.049, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 32 ; 2 uses
  %i.ax = icmp ne ptr %.1, %1
  %i.ay = icmp ne ptr %.117, %3
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !1720

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.aw, %bb.p ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.p ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.p ] ; 2 uses
  %i.ba = ptrtoint ptr %1 to i64
  %i.bb = ptrtoint ptr %.0.lcssa to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 5                 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.013.i.i.i.i.i = phi i64 [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.bd, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 10 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 11 uses
  %i.bf = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !75 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 4 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  %i.bi = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !75 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16 ; 6 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj                ; 2 uses
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.bk, label %bb.q, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.bk, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !29 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  tail call void @llvm.assume(i1 %i.bn)
  %.not21.i.i.i.i.i.i = icmp eq ptr %.0910.i.i.i.i.i, %.0811.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, label %bb.r, !prof !110

bb.r:                                             ; preds = %bb.q
  switch i64 %i.bm, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.bo = load i8, ptr %i.bi, align 1, !tbaa !30
  store i8 %i.bo, ptr %i.bf, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.bi, i64 %i.bm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.bp = load i64, ptr %i.bl, align 8, !tbaa !29 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !29
  %i.br = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !75
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 0, ptr %i.bs, align 1, !tbaa !30
  %.pre.i.i.i.i.i.i = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.bi, ptr %.0811.i.i.i.i.i, align 8, !tbaa !75
  %i.bu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !29
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !29
  %i.bw = load i64, ptr %i.bj, align 8, !tbaa !30
  store i64 %i.bw, ptr %i.bg, align 8, !tbaa !30
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.bx = load i64, ptr %i.bg, align 8, !tbaa !30
  store ptr %i.bi, ptr %.0811.i.i.i.i.i, align 8, !tbaa !75
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !29
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !29
  %i.cb = load i64, ptr %i.bj, align 8, !tbaa !30
  store i64 %i.cb, ptr %i.bg, align 8, !tbaa !30
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.bf, ptr %.0910.i.i.i.i.i, align 8, !tbaa !75
  store i64 %i.bx, ptr %i.bj, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.bj, ptr %.0910.i.i.i.i.i, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i, %bb.q
  %i.cc = phi ptr [ %i.bf, %bb.u ], [ %i.bj, %bb.v ], [ %i.bi, %bb.q ], [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  store i64 0, ptr %i.cd, align 8, !tbaa !29
  store i8 0, ptr %i.cc, align 1, !tbaa !30
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.cg = add nsw i64 %.013.i.i.i.i.i, -1
  %i.ch = icmp sgt i64 %.013.i.i.i.i.i, 1
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit, !llvm.loop !8

_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ]
  %i.ci = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.cj = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.ck ; 3 uses
  %i.cm = ptrtoint ptr %3 to i64
  %i.cn = ptrtoint ptr %.016.lcssa to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 5                 ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, 0
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i28, label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit41

.lr.ph.i.i.i.i.i28:                               ; preds = %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35
  %.013.i.i.i.i.i29 = phi i64 [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35 ], [ %i.cp, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ] ; 2 uses
  %.0811.i.i.i.i.i30 = phi ptr [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35 ], [ %i.cl, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ] ; 10 uses
  %.0910.i.i.i.i.i31 = phi ptr [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35 ], [ %.016.lcssa, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ] ; 11 uses
  %i.cr = load ptr, ptr %.0811.i.i.i.i.i30, align 8, !tbaa !75 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 16 ; 4 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  %i.cu = load ptr, ptr %.0910.i.i.i.i.i31, align 8, !tbaa !75 ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 16 ; 6 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv                ; 2 uses
  br i1 %i.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i39: ; preds = %.lr.ph.i.i.i.i.i28
  br i1 %i.cw, label %bb.w, label %.thread.i.i.i.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i28
  br i1 %i.cw, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i33

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i39
  %i.cx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 8 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !29 ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 16
  tail call void @llvm.assume(i1 %i.cz)
  %.not21.i.i.i.i.i.i36 = icmp eq ptr %.0910.i.i.i.i.i31, %.0811.i.i.i.i.i30
  br i1 %.not21.i.i.i.i.i.i36, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35, label %bb.x, !prof !110

bb.x:                                             ; preds = %bb.w
  switch i64 %i.cy, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i37
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.da = load i8, ptr %i.cu, align 1, !tbaa !30
  store i8 %i.da, ptr %i.cr, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i37

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr align 1 %i.cu, i64 %i.cy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i37: ; preds = %bb.z, %bb.y, %bb.x
  %i.db = load i64, ptr %i.cx, align 8, !tbaa !29 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !29
  %i.dd = load ptr, ptr %.0811.i.i.i.i.i30, align 8, !tbaa !75
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.db
  store i8 0, ptr %i.de, align 1, !tbaa !30
  %.pre.i.i.i.i.i.i38 = load ptr, ptr %.0910.i.i.i.i.i31, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35

.thread.i.i.i.i.i.i40:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i39
  %i.df = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 8
  store ptr %i.cu, ptr %.0811.i.i.i.i.i30, align 8, !tbaa !75
  %i.dg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !29
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !29
  %i.di = load i64, ptr %i.cv, align 8, !tbaa !30
  store i64 %i.di, ptr %i.cs, align 8, !tbaa !30
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i32
  %i.dj = load i64, ptr %i.cs, align 8, !tbaa !30
  store ptr %i.cu, ptr %.0811.i.i.i.i.i30, align 8, !tbaa !75
  %i.dk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !29
  %i.dm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 8
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !29
  %i.dn = load i64, ptr %i.cv, align 8, !tbaa !30
  store i64 %i.dn, ptr %i.cs, align 8, !tbaa !30
  %.not.i.i.i.i.i.i34 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i.i34, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i33
  store ptr %i.cr, ptr %.0910.i.i.i.i.i31, align 8, !tbaa !75
  store i64 %i.dj, ptr %i.cv, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i33, %.thread.i.i.i.i.i.i40
  store ptr %i.cv, ptr %.0910.i.i.i.i.i31, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35: ; preds = %bb.ab, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i37, %bb.w
  %i.do = phi ptr [ %i.cr, %bb.aa ], [ %i.cv, %bb.ab ], [ %i.cu, %bb.w ], [ %.pre.i.i.i.i.i.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i37 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 8
  store i64 0, ptr %i.dp, align 8, !tbaa !29
  store i8 0, ptr %i.do, align 1, !tbaa !30
  %i.dq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 32 ; 2 uses
  %i.ds = add nsw i64 %.013.i.i.i.i.i29, -1
  %i.dt = icmp sgt i64 %.013.i.i.i.i.i29, 1
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i28, label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit41, !llvm.loop !8

_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit
  %.08.lcssa.i.i.i.i.i27 = phi ptr [ %i.cl, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35 ]
  %5 = ptrtoint ptr %.08.lcssa.i.i.i.i.i27 to i64
  %i.du = sub i64 %5, %i.ci
  %i.dv = getelementptr inbounds i8, ptr %i.cl, i64 %i.du
  ret ptr %i.dv
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt21__move_merge_adaptiveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_less_iterEEvT_SF_T0_SG_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not32 = icmp eq ptr %0, %1
  br i1 %.not32, label %.critedge12, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.q
  %.037 = phi ptr [ %.1, %bb.q ], [ %0, %bb.a ]   ; 12 uses
  %.sroa.0.034 = phi ptr [ %i.at, %bb.q ], [ %4, %bb.a ] ; 18 uses
  %.sroa.025.033 = phi ptr [ %.sroa.025.1, %bb.q ], [ %2, %bb.a ] ; 11 uses
  %.not28 = icmp eq ptr %.sroa.025.033, %3
  br i1 %.not28, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.025.033, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.037, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 7 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.b) ; 2 uses
  %i.e = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.f = load ptr, ptr %.037, align 8, !tbaa !75
  %i.g = load ptr, ptr %.sroa.025.033, align 8, !tbaa !75
  %i.h = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i) #29 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESA_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.i = sub i64 %i.b, %i.d
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.i, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESA_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESA_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.j = icmp slt i32 %.0.i.i.i, 0
  %i.k = load ptr, ptr %.sroa.0.034, align 8, !tbaa !75 ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 16 ; 7 uses
  %i.m = icmp eq ptr %i.k, %i.l                   ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESA_EEbT_T0_.exit
  %i.n = load ptr, ptr %.sroa.025.033, align 8, !tbaa !75 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.025.033, i64 16 ; 6 uses
  %i.p = icmp eq ptr %i.n, %i.o                   ; 2 uses
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.c
  br i1 %i.p, label %bb.d, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.c
  br i1 %i.p, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.q)
  %.not21.i = icmp eq ptr %.sroa.025.033, %.sroa.0.034
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.e, !prof !110

bb.e:                                             ; preds = %bb.d
  switch i64 %i.b, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.n, align 1, !tbaa !30
  store i8 %i.r, ptr %i.k, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.n, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.s = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !29
  %i.u = load ptr, ptr %.sroa.0.034, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !30
  %.pre.i = load ptr, ptr %.sroa.025.033, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8
  store ptr %i.n, ptr %.sroa.0.034, align 8, !tbaa !75
  store i64 %i.b, ptr %i.w, align 8, !tbaa !29
  %i.x = load i64, ptr %i.o, align 8, !tbaa !30
  store i64 %i.x, ptr %i.l, align 8, !tbaa !30
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.y = load i64, ptr %i.l, align 8, !tbaa !30
  store ptr %i.n, ptr %.sroa.0.034, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8
  store i64 %i.b, ptr %i.z, align 8, !tbaa !29
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !30
  store i64 %i.aa, ptr %i.l, align 8, !tbaa !30
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.k, ptr %.sroa.025.033, align 8, !tbaa !75
  store i64 %i.y, ptr %i.o, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.o, ptr %.sroa.025.033, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %i.ab = phi ptr [ %i.k, %bb.h ], [ %i.o, %bb.i ], [ %i.n, %bb.d ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.a, align 8, !tbaa !29
  store i8 0, ptr %i.ab, align 1, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.025.033, i64 32
  br label %bb.q

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESA_EEbT_T0_.exit
  %i.ad = load ptr, ptr %.037, align 8, !tbaa !75 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.037, i64 16 ; 6 uses
  %i.af = icmp eq ptr %i.ad, %i.ae                ; 2 uses
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19: ; preds = %bb.j
  br i1 %i.af, label %bb.k, label %.thread.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.j
  br i1 %i.af, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i14

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19
  %i.ag = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.ag)
  %.not21.i16 = icmp eq ptr %.037, %.sroa.0.034
  br i1 %.not21.i16, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21, label %bb.l, !prof !110

bb.l:                                             ; preds = %bb.k
  switch i64 %i.d, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !30
  store i8 %i.ah, ptr %i.k, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.ad, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17: ; preds = %bb.n, %bb.m, %bb.l
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !29
  %i.ak = load ptr, ptr %.sroa.0.034, align 8, !tbaa !75
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !30
  %.pre.i18 = load ptr, ptr %.037, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21

.thread.i20:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8
  store ptr %i.ad, ptr %.sroa.0.034, align 8, !tbaa !75
  store i64 %i.d, ptr %i.am, align 8, !tbaa !29
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !30
  store i64 %i.an, ptr %i.l, align 8, !tbaa !30
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13
  %i.ao = load i64, ptr %i.l, align 8, !tbaa !30
  store ptr %i.ad, ptr %.sroa.0.034, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8
  store i64 %i.d, ptr %i.ap, align 8, !tbaa !29
  %i.aq = load i64, ptr %i.ae, align 8, !tbaa !30
  store i64 %i.aq, ptr %i.l, align 8, !tbaa !30
  %.not.i15 = icmp eq ptr %i.k, null
  br i1 %.not.i15, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i14
  store ptr %i.k, ptr %.037, align 8, !tbaa !75
  store i64 %i.ao, ptr %i.ae, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i14, %.thread.i20
  store ptr %i.ae, ptr %.037, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17, %bb.o, %bb.p
  %i.ar = phi ptr [ %i.k, %bb.o ], [ %i.ae, %bb.p ], [ %i.ad, %bb.k ], [ %.pre.i18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17 ]
  store i64 0, ptr %i.c, align 8, !tbaa !29
  store i8 0, ptr %i.ar, align 1, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %.037, i64 32
end_hunk_0
