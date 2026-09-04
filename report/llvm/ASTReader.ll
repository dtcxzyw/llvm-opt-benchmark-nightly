Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTReader?download=true
inline.NumInlined: 33820
inline.NumDeleted: 13736
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 112
begin_hunk_0_@"_ZSt12__move_mergeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET0_T_SI_SI_SI_SH_T1_":bb.a

bb.i:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %.050, align 8, !tbaa !165 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.050, i64 16 ; 6 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac                ; 2 uses
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i25: ; preds = %bb.i
  br i1 %i.ad, label %bb.j, label %.thread.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i19: ; preds = %bb.i
  br i1 %i.ad, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i20

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i25
  %i.ae = getelementptr inbounds nuw i8, ptr %.050, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !166 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  tail call void @llvm.assume(i1 %i.ag)
  %.not21.i22 = icmp eq ptr %.050, %.sroa.0.046
  br i1 %.not21.i22, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27, label %bb.k, !prof !994

bb.k:                                             ; preds = %bb.j
  switch i64 %i.af, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ah = load i8, ptr %i.ab, align 1, !tbaa !168
  store i8 %i.ah, ptr %i.f, align 1, !tbaa !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %i.ab, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23: ; preds = %bb.m, %bb.l, %bb.k
  %i.ai = load i64, ptr %i.ae, align 8, !tbaa !166 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.046, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !166
  %i.ak = load ptr, ptr %.sroa.0.046, align 8, !tbaa !165
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !168
  %.pre.i24 = load ptr, ptr %.050, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27

.thread.i26:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i25
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.046, i64 8
  store ptr %i.ab, ptr %.sroa.0.046, align 8, !tbaa !165
  %i.an = getelementptr inbounds nuw i8, ptr %.050, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !166
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !166
  %i.ap = load i64, ptr %i.ac, align 8, !tbaa !168
  store i64 %i.ap, ptr %i.g, align 8, !tbaa !168
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i20: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i19
  %i.aq = load i64, ptr %i.g, align 8, !tbaa !168
  store ptr %i.ab, ptr %.sroa.0.046, align 8, !tbaa !165
  %i.ar = getelementptr inbounds nuw i8, ptr %.050, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !166
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.046, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !166
  %i.au = load i64, ptr %i.ac, align 8, !tbaa !168
  store i64 %i.au, ptr %i.g, align 8, !tbaa !168
  %.not.i21 = icmp eq ptr %i.f, null
  br i1 %.not.i21, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i20
  store ptr %i.f, ptr %.050, align 8, !tbaa !165
  store i64 %i.aq, ptr %i.ac, align 8, !tbaa !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i20, %.thread.i26
  store ptr %i.ac, ptr %.050, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23, %bb.n, %bb.o
  %i.av = phi ptr [ %i.f, %bb.n ], [ %i.ac, %bb.o ], [ %i.ab, %bb.j ], [ %.pre.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.050, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !166
  store i8 0, ptr %i.av, align 1, !tbaa !168
  %i.ax = getelementptr inbounds nuw i8, ptr %.050, i64 32
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.117 = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %.01649, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27 ] ; 3 uses
  %.1 = phi ptr [ %.050, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.046, i64 32 ; 2 uses
  %i.az = icmp ne ptr %.1, %1
  %i.ba = icmp ne ptr %.117, %3
  %i.bb = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !6774

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.ay, %bb.p ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.p ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.p ] ; 2 uses
  %i.bc = ptrtoint ptr %1 to i64
  %i.bd = ptrtoint ptr %.0.lcssa to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 5                 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.013.i.i.i.i.i = phi i64 [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.bf, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 10 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 11 uses
  %i.bh = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !165 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 4 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  %i.bk = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !165 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16 ; 6 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl                ; 2 uses
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.bm, label %bb.q, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.bm, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !166 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  tail call void @llvm.assume(i1 %i.bp)
  %.not21.i.i.i.i.i.i = icmp eq ptr %.0910.i.i.i.i.i, %.0811.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, label %bb.r, !prof !994

bb.r:                                             ; preds = %bb.q
  switch i64 %i.bo, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.bq = load i8, ptr %i.bk, align 1, !tbaa !168
  store i8 %i.bq, ptr %i.bh, align 1, !tbaa !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bk, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.br = load i64, ptr %i.bn, align 8, !tbaa !166 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !166
  %i.bt = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !165
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 0, ptr %i.bu, align 1, !tbaa !168
  %.pre.i.i.i.i.i.i = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.bk, ptr %.0811.i.i.i.i.i, align 8, !tbaa !165
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !166
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !166
  %i.by = load i64, ptr %i.bl, align 8, !tbaa !168
  store i64 %i.by, ptr %i.bi, align 8, !tbaa !168
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.bz = load i64, ptr %i.bi, align 8, !tbaa !168
  store ptr %i.bk, ptr %.0811.i.i.i.i.i, align 8, !tbaa !165
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !166
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !166
  %i.cd = load i64, ptr %i.bl, align 8, !tbaa !168
  store i64 %i.cd, ptr %i.bi, align 8, !tbaa !168
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.bh, ptr %.0910.i.i.i.i.i, align 8, !tbaa !165
  store i64 %i.bz, ptr %i.bl, align 8, !tbaa !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.bl, ptr %.0910.i.i.i.i.i, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i, %bb.q
  %i.ce = phi ptr [ %i.bh, %bb.u ], [ %i.bl, %bb.v ], [ %i.bk, %bb.q ], [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  store i64 0, ptr %i.cf, align 8, !tbaa !166
  store i8 0, ptr %i.ce, align 1, !tbaa !168
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.ci = add nsw i64 %.013.i.i.i.i.i, -1
  %i.cj = icmp sgt i64 %.013.i.i.i.i.i, 1
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit, !llvm.loop !96

_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ]
  %i.ck = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.cl = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.cm ; 2 uses
  %i.co = ptrtoint ptr %3 to i64
  %i.cp = ptrtoint ptr %.016.lcssa to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 5                 ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i29, label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit42

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i36
  %.013.i.i.i.i.i30 = phi i64 [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i36 ], [ %i.cr, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ] ; 2 uses
  %.0811.i.i.i.i.i31 = phi ptr [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i36 ], [ %i.cn, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ] ; 10 uses
  %.0910.i.i.i.i.i32 = phi ptr [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i36 ], [ %.016.lcssa, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ] ; 11 uses
  %i.ct = load ptr, ptr %.0811.i.i.i.i.i31, align 8, !tbaa !165 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 16 ; 4 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  %i.cw = load ptr, ptr %.0910.i.i.i.i.i32, align 8, !tbaa !165 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 16 ; 6 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx                ; 2 uses
  br i1 %i.cv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i40: ; preds = %.lr.ph.i.i.i.i.i29
  br i1 %i.cy, label %bb.w, label %.thread.i.i.i.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i33: ; preds = %.lr.ph.i.i.i.i.i29
  br i1 %i.cy, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i34

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i40
  %i.cz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !166 ; 3 uses
  %i.db = icmp ult i64 %i.da, 16
  tail call void @llvm.assume(i1 %i.db)
  %.not21.i.i.i.i.i.i37 = icmp eq ptr %.0910.i.i.i.i.i32, %.0811.i.i.i.i.i31
  br i1 %.not21.i.i.i.i.i.i37, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i36, label %bb.x, !prof !994

bb.x:                                             ; preds = %bb.w
  switch i64 %i.da, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i38
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.dc = load i8, ptr %i.cw, align 1, !tbaa !168
  store i8 %i.dc, ptr %i.ct, align 1, !tbaa !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i38

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.cw, i64 %i.da, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i38: ; preds = %bb.z, %bb.y, %bb.x
  %i.dd = load i64, ptr %i.cz, align 8, !tbaa !166 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !166
  %i.df = load ptr, ptr %.0811.i.i.i.i.i31, align 8, !tbaa !165
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dd
  store i8 0, ptr %i.dg, align 1, !tbaa !168
  %.pre.i.i.i.i.i.i39 = load ptr, ptr %.0910.i.i.i.i.i32, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i36

.thread.i.i.i.i.i.i41:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i40
  %i.dh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 8
  store ptr %i.cw, ptr %.0811.i.i.i.i.i31, align 8, !tbaa !165
  %i.di = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !166
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !166
  %i.dk = load i64, ptr %i.cx, align 8, !tbaa !168
  store i64 %i.dk, ptr %i.cu, align 8, !tbaa !168
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i33
  %i.dl = load i64, ptr %i.cu, align 8, !tbaa !168
  store ptr %i.cw, ptr %.0811.i.i.i.i.i31, align 8, !tbaa !165
  %i.dm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !166
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 8
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !166
  %i.dp = load i64, ptr %i.cx, align 8, !tbaa !168
  store i64 %i.dp, ptr %i.cu, align 8, !tbaa !168
  %.not.i.i.i.i.i.i35 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i35, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i34
  store ptr %i.ct, ptr %.0910.i.i.i.i.i32, align 8, !tbaa !165
  store i64 %i.dl, ptr %i.cx, align 8, !tbaa !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i36

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i34, %.thread.i.i.i.i.i.i41
  store ptr %i.cx, ptr %.0910.i.i.i.i.i32, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i36: ; preds = %bb.ab, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i38, %bb.w
  %i.dq = phi ptr [ %i.ct, %bb.aa ], [ %i.cx, %bb.ab ], [ %i.cw, %bb.w ], [ %.pre.i.i.i.i.i.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i38 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 8
  store i64 0, ptr %i.dr, align 8, !tbaa !166
  store i8 0, ptr %i.dq, align 1, !tbaa !168
  %i.ds = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 32 ; 2 uses
  %i.du = add nsw i64 %.013.i.i.i.i.i30, -1
  %i.dv = icmp sgt i64 %.013.i.i.i.i.i30, 1
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i29, label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit42.loopexit, !llvm.loop !96

_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit42.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i36
  %5 = ptrtoint ptr %i.dt to i64
  br label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit42

_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit42: ; preds = %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit42.loopexit, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit
  %.08.lcssa.i.i.i.i.i28 = phi i64 [ %i.ck, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ], [ %5, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit42.loopexit ]
  %i.dw = sub i64 %.08.lcssa.i.i.i.i.i28, %i.ck
  %i.dx = getelementptr inbounds i8, ptr %i.cn, i64 %i.dw
  ret ptr %i.dx
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZL27accumulateFeaturesAsWrittenSB_E3$_1EEEvT_SH_SH_T0_SI_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond78 = or i1 %i.a, %i.b
  br i1 %or.cond78, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr7583 = phi i64 [ %4, %.lr.ph ], [ %i.aq, %tailrecurse ] ; 4 uses
  %.tr7482 = phi i64 [ %3, %.lr.ph ], [ %i.ap, %tailrecurse ] ; 4 uses
  %.tr7280 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 8 uses
  %.tr79 = phi ptr [ %0, %.lr.ph ], [ %i.ao, %tailrecurse ] ; 7 uses
  %i.d = add nsw i64 %.tr7583, %.tr7482
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %.tr7280, align 8
  %i.f = getelementptr i8, ptr %.tr7280, i64 8
  %.val1.i = load i64, ptr %i.f, align 8, !tbaa !166, !noalias !6781
  %i.g = tail call fastcc noundef zeroext i1 @"_ZZL27accumulateFeaturesAsWrittenSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_1clERKS5_SA_"(ptr %.val.i, i64 %.val1.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.tr79)
  br i1 %i.g, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.tr79, ptr noundef nonnull align 8 dereferenceable(32) %.tr7280) #36
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.h = icmp sgt i64 %.tr7482, %.tr7583
  %i.i = ptrtoint ptr %.tr7280 to i64             ; 4 uses
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit53

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.j = sdiv i64 %.tr7482, 2                     ; 2 uses
  %i.k = getelementptr inbounds [32 x i8], ptr %.tr79, i64 %i.j ; 2 uses
  %i.l = sub i64 %i.c, %i.i
  %i.m = ashr exact i64 %i.l, 5                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.m, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7280, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.o = lshr i64 %.016.i, 1                      ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.015.i, i64 %i.o ; 3 uses
  %.val.i.i = load ptr, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val2.i.i = load i64, ptr %i.q, align 8, !tbaa !166, !noalias !6782
  %i.r = tail call fastcc noundef zeroext i1 @"_ZZL27accumulateFeaturesAsWrittenSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_1clERKS5_SA_"(ptr %.val.i.i, i64 %.val2.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.k) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = xor i64 %i.o, -1
  %i.u = add nsw i64 %.016.i, %i.t
  %.sroa.011.1.i = select i1 %i.r, ptr %i.s, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.r, i64 %i.u, i64 %i.o      ; 2 uses
  %i.v = icmp sgt i64 %.1.i, 0
  br i1 %i.v, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit", !llvm.loop !100

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit" ], [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit" ], [ %.tr7280, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.w = sub i64 %.pre-phi, %i.i
  %i.x = ashr exact i64 %i.w, 5
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit53: ; preds = %bb.e
  %i.y = sdiv i64 %.tr7583, 2                     ; 2 uses
  %i.z = getelementptr inbounds [32 x i8], ptr %.tr7280, i64 %i.y ; 3 uses
  %i.aa = ptrtoint ptr %.tr79 to i64              ; 3 uses
  %i.ab = sub i64 %i.i, %i.aa
  %i.ac = ashr exact i64 %i.ab, 5                 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit53
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i54

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i54: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i54, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.ac, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i58, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i54 ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.tr79, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i54 ] ; 2 uses
  %i.af = lshr i64 %.017.i, 1                     ; 3 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.sroa.012.016.i, i64 %i.af ; 2 uses
  %.val.i57 = load ptr, ptr %i.z, align 8
  %.val10.i = load i64, ptr %i.ae, align 8, !tbaa !166, !noalias !6783
  %i.ah = tail call fastcc noundef zeroext i1 @"_ZZL27accumulateFeaturesAsWrittenSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_1clERKS5_SA_"(ptr readonly %.val.i57, i64 %.val10.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ag) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.aj = xor i64 %i.af, -1
  %i.ak = add nsw i64 %.017.i, %i.aj
  %.sroa.012.1.i = select i1 %i.ah, ptr %.sroa.012.016.i, ptr %i.ai ; 3 uses
  %.1.i58 = select i1 %i.ah, i64 %i.af, i64 %i.ak ; 2 uses
  %i.al = icmp sgt i64 %.1.i58, 0
  br i1 %i.al, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i54, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit", !llvm.loop !101

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i54
  %.pre86 = ptrtoint ptr %.sroa.012.1.i to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit53
  %.pre-phi87 = phi i64 [ %.pre86, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit" ], [ %i.aa, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit" ], [ %.tr79, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ]
  %i.am = sub i64 %.pre-phi87, %i.aa
  %i.an = ashr exact i64 %i.am, 5
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit"
  %.sroa.061.0 = phi ptr [ %i.k, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit" ], [ %.sroa.012.0.lcssa.i, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit" ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit" ], [ %i.z, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit" ] ; 2 uses
  %.047 = phi i64 [ %i.x, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit" ], [ %i.y, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.j, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit" ], [ %i.an, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL27accumulateFeaturesAsWrittenSB_E3$_1EEET_SH_SH_RKT0_T1_.exit" ] ; 2 uses
  %i.ao = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_SE_SE_St26random_access_iterator_tag(ptr %.sroa.061.0, ptr %.tr7280, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZL27accumulateFeaturesAsWrittenSB_E3$_1EEEvT_SH_SH_T0_SI_T1_"(ptr %.tr79, ptr %.sroa.061.0, ptr %i.ao, i64 noundef %.0, i64 noundef %.047)
  %i.ap = sub nsw i64 %.tr7482, %.0               ; 2 uses
  %i.aq = sub nsw i64 %.tr7583, %.047             ; 2 uses
  %i.ar = icmp eq i64 %i.ap, 0
  %i.as = icmp eq i64 %i.aq, 0
  %or.cond = or i1 %i.ar, %i.as
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_SE_SE_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 5                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 5                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 2 uses
  %.sroa.04.07.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.07.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.08.i) #36
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 32
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, label %.lr.ph.i, !llvm.loop !6784

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 %i.c, %i.g
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.056 = phi i64 [ %i.f, %bb.d ], [ %.056.be, %.backedge ] ; 4 uses
  %.0 = phi i64 [ %i.i, %bb.d ], [ %.0.be, %.backedge ] ; 8 uses
  %.sroa.026.0 = phi ptr [ %0, %bb.d ], [ %.sroa.026.0.be, %.backedge ] ; 5 uses
  %i.p = sub nsw i64 %.056, %.0                   ; 6 uses
  %i.q = icmp slt i64 %.0, %i.p
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = icmp sgt i64 %i.p, 0
  br i1 %i.r, label %.lr.ph66.preheader, label %._crit_edge67

.lr.ph66.preheader:                               ; preds = %bb.f
  %i.s = getelementptr inbounds [32 x i8], ptr %.sroa.026.0, i64 %.0
  br label %.lr.ph66

._crit_edge67:                                    ; preds = %.lr.ph66, %bb.f
  %.sroa.026.1.lcssa = phi ptr [ %.sroa.026.0, %bb.f ], [ %i.u, %.lr.ph66 ]
  %i.t = srem i64 %.056, %.0                      ; 2 uses
  %.not21 = icmp eq i64 %i.t, 0
  br i1 %.not21, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, label %bb.g

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %.lr.ph66
  %.01964 = phi i64 [ %i.w, %.lr.ph66 ], [ 0, %.lr.ph66.preheader ]
  %.sroa.025.063 = phi ptr [ %i.v, %.lr.ph66 ], [ %i.s, %.lr.ph66.preheader ] ; 2 uses
  %.sroa.026.162 = phi ptr [ %i.u, %.lr.ph66 ], [ %.sroa.026.0, %.lr.ph66.preheader ] ; 2 uses
end_hunk_0
