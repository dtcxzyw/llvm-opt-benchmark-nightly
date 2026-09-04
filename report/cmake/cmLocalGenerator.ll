Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmLocalGenerator?download=true
inline.NumInlined: 10522
inline.NumDeleted: 2776
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@"_ZSt12__move_mergeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSB_RKS5_SH_PK17cmGeneratorTargetE3$_0EEET0_T_SO_SO_SO_SN_T1_":bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 16 ; 4 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  %i.as = load ptr, ptr %.049, align 8, !tbaa !144 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.049, i64 16 ; 6 uses
  %i.au = icmp eq ptr %i.as, %i.at                ; 2 uses
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i24: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclIPS8_SK_EEbT_T0_.exit.thread"
  br i1 %i.au, label %bb.j, label %.thread.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i18: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclIPS8_SK_EEbT_T0_.exit.thread"
  br i1 %i.au, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i19

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i24
  %i.av = getelementptr inbounds nuw i8, ptr %.049, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !81 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %.not21.i21 = icmp eq ptr %.049, %.sroa.0.045
  br i1 %.not21.i21, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26, label %bb.k, !prof !277

bb.k:                                             ; preds = %bb.j
  switch i64 %i.aw, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i22
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ay = load i8, ptr %i.as, align 1, !tbaa !82
  store i8 %i.ay, ptr %i.ap, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i22

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.as, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i22: ; preds = %bb.m, %bb.l, %bb.k
  %i.az = load i64, ptr %i.av, align 8, !tbaa !81 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !81
  %i.bb = load ptr, ptr %.sroa.0.045, align 8, !tbaa !144
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !82
  %.pre.i23 = load ptr, ptr %.049, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26

.thread.i25:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i24
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 8
  store ptr %i.as, ptr %.sroa.0.045, align 8, !tbaa !144
  %i.be = getelementptr inbounds nuw i8, ptr %.049, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !81
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !81
  %i.bg = load i64, ptr %i.at, align 8, !tbaa !82
  store i64 %i.bg, ptr %i.aq, align 8, !tbaa !82
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i18
  %i.bh = load i64, ptr %i.aq, align 8, !tbaa !82
  store ptr %i.as, ptr %.sroa.0.045, align 8, !tbaa !144
  %i.bi = getelementptr inbounds nuw i8, ptr %.049, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !81
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !81
  %i.bl = load i64, ptr %i.at, align 8, !tbaa !82
  store i64 %i.bl, ptr %i.aq, align 8, !tbaa !82
  %.not.i20 = icmp eq ptr %i.ap, null
  br i1 %.not.i20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i19
  store ptr %i.ap, ptr %.049, align 8, !tbaa !144
  store i64 %i.bh, ptr %i.at, align 8, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i19, %.thread.i25
  store ptr %i.at, ptr %.049, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i22, %bb.n, %bb.o
  %i.bm = phi ptr [ %.pre.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i22 ], [ %i.ap, %bb.n ], [ %i.at, %bb.o ], [ %i.as, %bb.j ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.049, i64 8
  store i64 0, ptr %i.bn, align 8, !tbaa !81
  store i8 0, ptr %i.bm, align 1, !tbaa !82
  %i.bo = getelementptr inbounds nuw i8, ptr %.049, i64 32
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.117 = phi ptr [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %.01648, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26 ] ; 3 uses
  %.1 = phi ptr [ %.049, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 32 ; 2 uses
  %i.bq = icmp ne ptr %.1, %1
  %i.br = icmp ne ptr %.117, %3
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %i.bs, label %bb.b, label %._crit_edge, !llvm.loop !3078

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.bp, %bb.p ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.p ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.p ] ; 2 uses
  %i.bt = ptrtoint ptr %1 to i64
  %i.bu = ptrtoint ptr %.0.lcssa to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 5                 ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.013.i.i.i.i.i = phi i64 [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.bw, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 10 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 11 uses
  %i.by = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !144 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 4 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  %i.cb = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !144 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16 ; 6 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc                ; 2 uses
  br i1 %i.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.cd, label %bb.q, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.cd, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !81 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 16
  tail call void @llvm.assume(i1 %i.cg)
  %.not21.i.i.i.i.i.i = icmp eq ptr %.0910.i.i.i.i.i, %.0811.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, label %bb.r, !prof !277

bb.r:                                             ; preds = %bb.q
  switch i64 %i.cf, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.ch = load i8, ptr %i.cb, align 1, !tbaa !82
  store i8 %i.ch, ptr %i.by, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.cb, i64 %i.cf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.ci = load i64, ptr %i.ce, align 8, !tbaa !81 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !81
  %i.ck = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !144
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci
  store i8 0, ptr %i.cl, align 1, !tbaa !82
  %.pre.i.i.i.i.i.i = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.cb, ptr %.0811.i.i.i.i.i, align 8, !tbaa !144
  %i.cn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !81
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !81
  %i.cp = load i64, ptr %i.cc, align 8, !tbaa !82
  store i64 %i.cp, ptr %i.bz, align 8, !tbaa !82
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.cq = load i64, ptr %i.bz, align 8, !tbaa !82
  store ptr %i.cb, ptr %.0811.i.i.i.i.i, align 8, !tbaa !144
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !81
  %i.ct = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !81
  %i.cu = load i64, ptr %i.cc, align 8, !tbaa !82
  store i64 %i.cu, ptr %i.bz, align 8, !tbaa !82
  %.not.i.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.by, ptr %.0910.i.i.i.i.i, align 8, !tbaa !144
  store i64 %i.cq, ptr %i.cc, align 8, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.cc, ptr %.0910.i.i.i.i.i, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i, %bb.q
  %i.cv = phi ptr [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ], [ %i.by, %bb.u ], [ %i.cc, %bb.v ], [ %i.cb, %bb.q ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  store i64 0, ptr %i.cw, align 8, !tbaa !81
  store i8 0, ptr %i.cv, align 1, !tbaa !82
  %i.cx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.cz = add nsw i64 %.013.i.i.i.i.i, -1
  %i.da = icmp sgt i64 %.013.i.i.i.i.i, 1
  br i1 %i.da, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit, !llvm.loop !25

_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ]
  %i.db = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.dc = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.dd ; 2 uses
  %i.df = ptrtoint ptr %3 to i64
  %i.dg = ptrtoint ptr %.016.lcssa to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 5                 ; 2 uses
  %i.dj = icmp sgt i64 %i.di, 0
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i28, label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit41

.lr.ph.i.i.i.i.i28:                               ; preds = %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35
  %.013.i.i.i.i.i29 = phi i64 [ %i.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35 ], [ %i.di, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ] ; 2 uses
  %.0811.i.i.i.i.i30 = phi ptr [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35 ], [ %i.de, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ] ; 10 uses
  %.0910.i.i.i.i.i31 = phi ptr [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35 ], [ %.016.lcssa, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ] ; 11 uses
  %i.dk = load ptr, ptr %.0811.i.i.i.i.i30, align 8, !tbaa !144 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 16 ; 4 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  %i.dn = load ptr, ptr %.0910.i.i.i.i.i31, align 8, !tbaa !144 ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 16 ; 6 uses
  %i.dp = icmp eq ptr %i.dn, %i.do                ; 2 uses
  br i1 %i.dm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i39: ; preds = %.lr.ph.i.i.i.i.i28
  br i1 %i.dp, label %bb.w, label %.thread.i.i.i.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i28
  br i1 %i.dp, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i33

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i39
  %i.dq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !81 ; 3 uses
  %i.ds = icmp ult i64 %i.dr, 16
  tail call void @llvm.assume(i1 %i.ds)
  %.not21.i.i.i.i.i.i36 = icmp eq ptr %.0910.i.i.i.i.i31, %.0811.i.i.i.i.i30
  br i1 %.not21.i.i.i.i.i.i36, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35, label %bb.x, !prof !277

bb.x:                                             ; preds = %bb.w
  switch i64 %i.dr, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i37
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.dt = load i8, ptr %i.dn, align 1, !tbaa !82
  store i8 %i.dt, ptr %i.dk, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i37

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.dn, i64 %i.dr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i37: ; preds = %bb.z, %bb.y, %bb.x
  %i.du = load i64, ptr %i.dq, align 8, !tbaa !81 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 8
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !81
  %i.dw = load ptr, ptr %.0811.i.i.i.i.i30, align 8, !tbaa !144
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.du
  store i8 0, ptr %i.dx, align 1, !tbaa !82
  %.pre.i.i.i.i.i.i38 = load ptr, ptr %.0910.i.i.i.i.i31, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35

.thread.i.i.i.i.i.i40:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i39
  %i.dy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 8
  store ptr %i.dn, ptr %.0811.i.i.i.i.i30, align 8, !tbaa !144
  %i.dz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !81
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !81
  %i.eb = load i64, ptr %i.do, align 8, !tbaa !82
  store i64 %i.eb, ptr %i.dl, align 8, !tbaa !82
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i32
  %i.ec = load i64, ptr %i.dl, align 8, !tbaa !82
  store ptr %i.dn, ptr %.0811.i.i.i.i.i30, align 8, !tbaa !144
  %i.ed = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !81
  %i.ef = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 8
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !81
  %i.eg = load i64, ptr %i.do, align 8, !tbaa !82
  store i64 %i.eg, ptr %i.dl, align 8, !tbaa !82
  %.not.i.i.i.i.i.i34 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i.i34, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i33
  store ptr %i.dk, ptr %.0910.i.i.i.i.i31, align 8, !tbaa !144
  store i64 %i.ec, ptr %i.do, align 8, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i33, %.thread.i.i.i.i.i.i40
  store ptr %i.do, ptr %.0910.i.i.i.i.i31, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35: ; preds = %bb.ab, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i37, %bb.w
  %i.eh = phi ptr [ %.pre.i.i.i.i.i.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i37 ], [ %i.dk, %bb.aa ], [ %i.do, %bb.ab ], [ %i.dn, %bb.w ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 8
  store i64 0, ptr %i.ei, align 8, !tbaa !81
  store i8 0, ptr %i.eh, align 1, !tbaa !82
  %i.ej = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 32 ; 2 uses
  %i.el = add nsw i64 %.013.i.i.i.i.i29, -1
  %i.em = icmp sgt i64 %.013.i.i.i.i.i29, 1
  br i1 %i.em, label %.lr.ph.i.i.i.i.i28, label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit41.loopexit, !llvm.loop !25

_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit41.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i35
  %6 = ptrtoint ptr %i.ek to i64
  br label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit41

_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit41: ; preds = %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit41.loopexit, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit
  %.08.lcssa.i.i.i.i.i27 = phi i64 [ %i.db, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ], [ %6, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit41.loopexit ]
  %i.en = sub i64 %.08.lcssa.i.i.i.i.i27, %i.db
  %i.eo = getelementptr inbounds i8, ptr %i.de, i64 %i.en
  ret ptr %i.eo
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEEvT_SN_SN_T0_SO_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readonly byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 captures(none) %5) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond91 = or i1 %i.a, %i.b
  br i1 %or.cond91, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESM_EEbT_T0_.exit.thread", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8797 = phi i64 [ %4, %.lr.ph ], [ %i.az, %tailrecurse ] ; 4 uses
  %.tr8696 = phi i64 [ %3, %.lr.ph ], [ %i.ay, %tailrecurse ] ; 4 uses
  %.tr8494 = phi ptr [ %1, %.lr.ph ], [ %.sroa.062.0, %tailrecurse ] ; 7 uses
  %.tr92 = phi ptr [ %0, %.lr.ph ], [ %i.ax, %tailrecurse ] ; 7 uses
  %i.d = add nsw i64 %.tr8797, %.tr8696
  %i.e = icmp eq i64 %i.d, 2
  %i.f = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !141 ; 6 uses
  %i.g = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !141 ; 6 uses
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %5, align 8, !tbaa !776, !nonnull !329, !align !609 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.j = tail call noundef zeroext i1 @_ZNK17cmGeneratorTarget24IsSystemIncludeDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr noundef nonnull align 8 dereferenceable(3187) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %.tr8494, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  br i1 %i.j, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESM_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESM_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESM_EEbT_T0_.exit": ; preds = %bb.c
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.l = tail call noundef zeroext i1 @_ZNK17cmGeneratorTarget24IsSystemIncludeDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr noundef nonnull align 8 dereferenceable(3187) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.tr92, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  br i1 %i.l, label %bb.d, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESM_EEbT_T0_.exit.thread"

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESM_EEbT_T0_.exit"
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.tr92, ptr noundef nonnull align 8 dereferenceable(32) %.tr8494) #29
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESM_EEbT_T0_.exit.thread"

bb.e:                                             ; preds = %bb.b
  %i.m = icmp sgt i64 %.tr8696, %.tr8797
  %.sroa.060.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !774 ; 4 uses
  %i.n = ptrtoint ptr %.tr8494 to i64             ; 4 uses
  br i1 %i.m, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit49

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.o = sdiv i64 %.tr8696, 2                     ; 2 uses
  %i.p = getelementptr inbounds [32 x i8], ptr %.tr92, i64 %i.o ; 2 uses
  %i.q = sub i64 %i.c, %i.n
  %i.r = ashr exact i64 %i.q, 5                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESC_EEbT_RT0_.exit.thread.i"
  %.016.i = phi i64 [ %.1.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESC_EEbT_RT0_.exit.thread.i" ], [ %i.r, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESC_EEbT_RT0_.exit.thread.i" ], [ %.tr8494, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %i.t = lshr i64 %.016.i, 1                      ; 4 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.015.i, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %.sroa.060.sroa.0.0.copyload, align 8, !tbaa !298
  %i.w = tail call noundef zeroext i1 @_ZNK17cmGeneratorTarget24IsSystemIncludeDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr noundef nonnull align 8 dereferenceable(3187) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  br i1 %i.w, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESC_EEbT_RT0_.exit.thread.i", label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESC_EEbT_RT0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESC_EEbT_RT0_.exit.i": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.x = load ptr, ptr %.sroa.060.sroa.0.0.copyload, align 8, !tbaa !298
  %i.y = tail call noundef zeroext i1 @_ZNK17cmGeneratorTarget24IsSystemIncludeDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr noundef nonnull align 8 dereferenceable(3187) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  br i1 %i.y, label %bb.f, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESC_EEbT_RT0_.exit.thread.i"

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESC_EEbT_RT0_.exit.i"
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.aa = xor i64 %i.t, -1
  %i.ab = add nsw i64 %.016.i, %i.aa
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESC_EEbT_RT0_.exit.thread.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESC_EEbT_RT0_.exit.thread.i": ; preds = %bb.f, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESC_EEbT_RT0_.exit.i", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.sroa.011.1.i = phi ptr [ %i.z, %bb.f ], [ %.sroa.011.015.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESC_EEbT_RT0_.exit.i" ], [ %.sroa.011.015.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 3 uses
  %.1.i = phi i64 [ %i.ab, %bb.f ], [ %i.t, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESC_EEbT_RT0_.exit.i" ], [ %i.t, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.ac = icmp sgt i64 %.1.i, 0
  br i1 %i.ac, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit.loopexit", !llvm.loop !27

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit.loopexit": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESC_EEbT_RT0_.exit.thread.i"
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit.loopexit" ], [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit.loopexit" ], [ %.tr8494, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ad = sub i64 %.pre-phi, %i.n
  %i.ae = ashr exact i64 %i.ad, 5
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit49: ; preds = %bb.e
  %i.af = sdiv i64 %.tr8797, 2                    ; 2 uses
  %i.ag = getelementptr inbounds [32 x i8], ptr %.tr8494, i64 %i.af ; 2 uses
  %i.ah = ptrtoint ptr %.tr92 to i64              ; 3 uses
  %i.ai = sub i64 %i.n, %i.ah
  %i.aj = ashr exact i64 %i.ai, 5                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit49, %bb.g
  %.016.i53 = phi i64 [ %.1.i58, %bb.g ], [ %i.aj, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit49 ] ; 2 uses
  %.sroa.011.015.i54 = phi ptr [ %.sroa.011.1.i57, %bb.g ], [ %.tr92, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit49 ] ; 2 uses
  %i.al = lshr i64 %.016.i53, 1                   ; 3 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.015.i54, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %.sroa.060.sroa.0.0.copyload, align 8, !tbaa !298
  %i.ao = tail call noundef zeroext i1 @_ZNK17cmGeneratorTarget24IsSystemIncludeDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr noundef nonnull align 8 dereferenceable(3187) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  br i1 %i.ao, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclISC_NS_17__normal_iteratorIPS8_SA_EEEEbRT_T0_.exit.thread.i", label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclISC_NS_17__normal_iteratorIPS8_SA_EEEEbRT_T0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclISC_NS_17__normal_iteratorIPS8_SA_EEEEbRT_T0_.exit.i": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52
  %i.ap = load ptr, ptr %.sroa.060.sroa.0.0.copyload, align 8, !tbaa !298
  %i.aq = tail call noundef zeroext i1 @_ZNK17cmGeneratorTarget24IsSystemIncludeDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr noundef nonnull align 8 dereferenceable(3187) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  br i1 %i.aq, label %bb.g, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclISC_NS_17__normal_iteratorIPS8_SA_EEEEbRT_T0_.exit.thread.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclISC_NS_17__normal_iteratorIPS8_SA_EEEEbRT_T0_.exit.thread.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclISC_NS_17__normal_iteratorIPS8_SA_EEEEbRT_T0_.exit.i", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.as = xor i64 %i.al, -1
  %i.at = add nsw i64 %.016.i53, %i.as
  br label %bb.g

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclISC_NS_17__normal_iteratorIPS8_SA_EEEEbRT_T0_.exit.thread.i", %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclISC_NS_17__normal_iteratorIPS8_SA_EEEEbRT_T0_.exit.i"
  %.sroa.011.1.i57 = phi ptr [ %.sroa.011.015.i54, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclISC_NS_17__normal_iteratorIPS8_SA_EEEEbRT_T0_.exit.i" ], [ %i.ar, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclISC_NS_17__normal_iteratorIPS8_SA_EEEEbRT_T0_.exit.thread.i" ] ; 3 uses
  %.1.i58 = phi i64 [ %i.al, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclISC_NS_17__normal_iteratorIPS8_SA_EEEEbRT_T0_.exit.i" ], [ %i.at, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclISC_NS_17__normal_iteratorIPS8_SA_EEEEbRT_T0_.exit.thread.i" ] ; 2 uses
  %i.au = icmp sgt i64 %.1.i58, 0
  br i1 %i.au, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit.loopexit", !llvm.loop !28

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit.loopexit": ; preds = %bb.g
  %.pre101 = ptrtoint ptr %.sroa.011.1.i57 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit49
  %.pre-phi102 = phi i64 [ %.pre101, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit.loopexit" ], [ %i.ah, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  %.sroa.011.0.lcssa.i50 = phi ptr [ %.sroa.011.1.i57, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit.loopexit" ], [ %.tr92, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  %i.av = sub i64 %.pre-phi102, %i.ah
  %i.aw = ashr exact i64 %i.av, 5
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit"
  %.sroa.065.0 = phi ptr [ %i.p, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit" ], [ %.sroa.011.0.lcssa.i50, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit" ] ; 2 uses
  %.sroa.062.0 = phi ptr [ %.sroa.011.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit" ], [ %i.ag, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit" ] ; 2 uses
  %.043 = phi i64 [ %i.ae, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit" ], [ %i.af, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.o, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit" ], [ %i.aw, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEET_SN_SN_RKT0_T1_.exit" ] ; 2 uses
  %i.ax = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_SE_SE_St26random_access_iterator_tag(ptr %.sroa.065.0, ptr %.tr8494, ptr %.sroa.062.0) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSB_RKS7_SH_PK17cmGeneratorTargetE3$_0EEEvT_SN_SN_T0_SO_T1_"(ptr %.tr92, ptr %.sroa.065.0, ptr %i.ax, i64 noundef %.0, i64 noundef %.043, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5)
  %i.ay = sub nsw i64 %.tr8696, %.0               ; 2 uses
  %i.az = sub nsw i64 %.tr8797, %.043             ; 2 uses
  %i.ba = icmp eq i64 %i.ay, 0
  %i.bb = icmp eq i64 %i.az, 0
  %or.cond = or i1 %i.ba, %i.bb
  br i1 %or.cond, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESM_EEbT_T0_.exit.thread", label %bb.b

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESM_EEbT_T0_.exit.thread": ; preds = %tailrecurse, %bb.a, %bb.c, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_SD_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPS8_SA_EESM_EEbT_T0_.exit", %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_SE_SE_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat {
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
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.07.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.08.i) #29
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 32
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, label %.lr.ph.i, !llvm.loop !3079

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 %i.c, %i.g
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.056 = phi i64 [ %i.f, %bb.d ], [ %.056.be, %.backedge ] ; 4 uses
end_hunk_0
begin_hunk_1_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS8_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_T0_T1_":bb.a
  tail call void %i.ld(ptr noundef nonnull align 8 dereferenceable(16) %i.ks) #29, !inline_history !29
  br label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit114

bb.bv:                                            ; preds = %bb.bt
  %i.le = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82
  %.not.i.i.i.i.i.i.i.i106 = icmp eq i8 %i.le, 0
  br i1 %.not.i.i.i.i.i.i.i.i106, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lf = add nsw i32 %i.kw, -1
  store i32 %i.lf, ptr %i.kt, align 8, !tbaa !286
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i107

bb.bx:                                            ; preds = %bb.bv
  %i.lg = atomicrmw volatile add ptr %i.kt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i107

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i107: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i.i.i.i.i.i108 = phi i32 [ %i.kw, %bb.bw ], [ %i.lg, %bb.bx ]
  %i.lh = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i108, 1
  br i1 %i.lh, label %bb.by, label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit114, !prof !277

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i107
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ks) #29
  br label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit114

_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i104, %bb.bu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i107, %bb.by
  %i.li = getelementptr inbounds nuw i8, ptr %.030.i, i64 48
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit114, %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit128
  %.117.i = phi ptr [ %i.jo, %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit128 ], [ %.01629.i, %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit114 ] ; 4 uses
  %.1.i = phi ptr [ %.030.i, %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit128 ], [ %i.li, %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit114 ] ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 48 ; 5 uses
  %i.lk = icmp ne ptr %.1.i, %i.hr
  %i.ll = icmp ne ptr %.117.i, %i.hs
  %i.lm = select i1 %i.lk, i1 %i.ll, i1 false
  br i1 %i.lm, label %.lr.ph.i30, label %._crit_edge.i, !llvm.loop !32

._crit_edge.i:                                    ; preds = %bb.bz
  %i.ln = ptrtoint ptr %i.hr to i64
  %i.lo = ptrtoint ptr %.1.i to i64
  %i.lp = sub i64 %i.ln, %i.lo                    ; 2 uses
  %i.lq = icmp sgt i64 %i.lp, 0
  br i1 %i.lq, label %.lr.ph.preheader.i.i.i.i.i.i25, label %_ZSt4moveIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i

.lr.ph.preheader.i.i.i.i.i.i25:                   ; preds = %._crit_edge.i
  %i.lr = udiv exact i64 %i.lp, 48
  br label %.lr.ph.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i26:                             ; preds = %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit100, %.lr.ph.preheader.i.i.i.i.i.i25
  %.012.i.i.i.i.i.i27 = phi i64 [ %i.nn, %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit100 ], [ %i.lr, %.lr.ph.preheader.i.i.i.i.i.i25 ] ; 2 uses
  %.0811.i.i.i.i.i.i28 = phi ptr [ %i.nm, %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit100 ], [ %i.lj, %.lr.ph.preheader.i.i.i.i.i.i25 ] ; 12 uses
  %.0910.i.i.i.i.i.i29 = phi ptr [ %i.nl, %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit100 ], [ %.1.i, %.lr.ph.preheader.i.i.i.i.i.i25 ] ; 12 uses
  %i.ls = load ptr, ptr %.0811.i.i.i.i.i.i28, align 8, !tbaa !144 ; 6 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i28, i64 16 ; 4 uses
  %i.lu = icmp eq ptr %i.ls, %i.lt
  %i.lv = load ptr, ptr %.0910.i.i.i.i.i.i29, align 8, !tbaa !144 ; 6 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i29, i64 16 ; 6 uses
  %i.lx = icmp eq ptr %i.lv, %i.lw                ; 2 uses
  br i1 %i.lu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %.lr.ph.i.i.i.i.i.i26
  br i1 %i.lx, label %bb.ca, label %.thread.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87: ; preds = %.lr.ph.i.i.i.i.i.i26
  br i1 %i.lx, label %bb.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i88

bb.ca:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  %i.ly = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i29, i64 8 ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !81 ; 3 uses
  %i.ma = icmp ult i64 %i.lz, 16
  tail call void @llvm.assume(i1 %i.ma)
  %.not21.i.i95 = icmp eq ptr %.0910.i.i.i.i.i.i29, %.0811.i.i.i.i.i.i28
  br i1 %.not21.i.i95, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i90, label %bb.cb, !prof !277

bb.cb:                                            ; preds = %bb.ca
  switch i64 %i.lz, label %bb.cd [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i96
    i64 1, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.mb = load i8, ptr %i.lv, align 1, !tbaa !82
  store i8 %i.mb, ptr %i.ls, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i96

bb.cd:                                            ; preds = %bb.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ls, ptr align 1 %i.lv, i64 %i.lz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i96: ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.mc = load i64, ptr %i.ly, align 8, !tbaa !81 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i28, i64 8
  store i64 %i.mc, ptr %i.md, align 8, !tbaa !81
  %i.me = load ptr, ptr %.0811.i.i.i.i.i.i28, align 8, !tbaa !144
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mc
  store i8 0, ptr %i.mf, align 1, !tbaa !82
  %.pre.i.i97 = load ptr, ptr %.0910.i.i.i.i.i.i29, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i90

.thread.i.i99:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  %i.mg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i28, i64 8
  store ptr %i.lv, ptr %.0811.i.i.i.i.i.i28, align 8, !tbaa !144
  %i.mh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i29, i64 8
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !81
  store i64 %i.mi, ptr %i.mg, align 8, !tbaa !81
  %i.mj = load i64, ptr %i.lw, align 8, !tbaa !82
  store i64 %i.mj, ptr %i.lt, align 8, !tbaa !82
  br label %bb.cf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i88: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87
  %i.mk = load i64, ptr %i.lt, align 8, !tbaa !82
  store ptr %i.lv, ptr %.0811.i.i.i.i.i.i28, align 8, !tbaa !144
  %i.ml = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i29, i64 8
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !81
  %i.mn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i28, i64 8
  store i64 %i.mm, ptr %i.mn, align 8, !tbaa !81
  %i.mo = load i64, ptr %i.lw, align 8, !tbaa !82
  store i64 %i.mo, ptr %i.lt, align 8, !tbaa !82
  %.not.i.i89 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i89, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i88
  store ptr %i.ls, ptr %.0910.i.i.i.i.i.i29, align 8, !tbaa !144
  store i64 %i.mk, ptr %i.lw, align 8, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i90

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i88, %.thread.i.i99
  store ptr %i.lw, ptr %.0910.i.i.i.i.i.i29, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i90: ; preds = %bb.cf, %bb.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i96, %bb.ca
  %i.mp = phi ptr [ %.pre.i.i97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i96 ], [ %i.ls, %bb.ce ], [ %i.lw, %bb.cf ], [ %i.lv, %bb.ca ]
  %i.mq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i29, i64 8
  store i64 0, ptr %i.mq, align 8, !tbaa !81
  store i8 0, ptr %i.mp, align 1, !tbaa !82
  %i.mr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i28, i64 32
  %i.ms = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i29, i64 32 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i28, i64 40
  %i.mu = load <2 x ptr>, ptr %i.ms, align 8, !tbaa !595
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ms, i8 0, i64 16, i1 false)
  %i.mv = load ptr, ptr %i.mt, align 8, !tbaa !301 ; 8 uses
  store <2 x ptr> %i.mu, ptr %i.mr, align 8, !tbaa !595
  %.not.i.i.i.i.i.i.i91 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i.i.i.i.i91, label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit100, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i90
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 4 uses
  %i.mx = load atomic i64, ptr %i.mw acquire, align 8 ; 2 uses
  %i.my = icmp eq i64 %i.mx, 4294967297
  %i.mz = trunc i64 %i.mx to i32                  ; 2 uses
  br i1 %i.my, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.mw, align 8, !tbaa !303
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 12
  store i32 0, ptr %i.na, align 4, !tbaa !304
  %i.nb = load ptr, ptr %i.mv, align 8, !tbaa !55
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8
  tail call void %i.nd(ptr noundef nonnull align 8 dereferenceable(16) %i.mv) #29, !inline_history !29
  %i.ne = load ptr, ptr %i.mv, align 8, !tbaa !55
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  %i.ng = load ptr, ptr %i.nf, align 8
  tail call void %i.ng(ptr noundef nonnull align 8 dereferenceable(16) %i.mv) #29, !inline_history !29
  br label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit100

bb.ci:                                            ; preds = %bb.cg
  %i.nh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82
  %.not.i.i.i.i.i.i.i.i92 = icmp eq i8 %i.nh, 0
  br i1 %.not.i.i.i.i.i.i.i.i92, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ni = add nsw i32 %i.mz, -1
  store i32 %i.ni, ptr %i.mw, align 8, !tbaa !286
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i93

bb.ck:                                            ; preds = %bb.ci
  %i.nj = atomicrmw volatile add ptr %i.mw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i93

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i93: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i.i.i.i.i.i94 = phi i32 [ %i.mz, %bb.cj ], [ %i.nj, %bb.ck ]
  %i.nk = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i94, 1
  br i1 %i.nk, label %bb.cl, label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit100, !prof !277

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i93
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mv) #29
  br label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit100

_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i90, %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i93, %bb.cl
  %i.nl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i29, i64 48
  %i.nm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i28, i64 48 ; 2 uses
  %i.nn = add nsw i64 %.012.i.i.i.i.i.i27, -1
  %i.no = icmp samesign ugt i64 %.012.i.i.i.i.i.i27, 1
  br i1 %i.no, label %.lr.ph.i.i.i.i.i.i26, label %_ZSt4moveIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i, !llvm.loop !31

_ZSt4moveIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i: ; preds = %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit100, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i24 = phi ptr [ %i.lj, %._crit_edge.i ], [ %i.nm, %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit100 ]
  %i.np = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i24 to i64 ; 3 uses
  %i.nq = ptrtoint ptr %i.lj to i64
  %i.nr = sub i64 %i.np, %i.nq
  %i.ns = getelementptr inbounds i8, ptr %i.lj, i64 %i.nr ; 2 uses
  %i.nt = ptrtoint ptr %i.hs to i64               ; 2 uses
  %i.nu = ptrtoint ptr %.117.i to i64
  %i.nv = sub i64 %i.nt, %i.nu                    ; 2 uses
  %i.nw = icmp sgt i64 %i.nv, 0
  br i1 %i.nw, label %.lr.ph.preheader.i.i.i.i.i19.i, label %"_ZSt12__move_mergeIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit"

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %_ZSt4moveIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i
  %i.nx = udiv exact i64 %i.nv, 48
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit86, %.lr.ph.preheader.i.i.i.i.i19.i
  %.012.i.i.i.i.i21.i = phi i64 [ %i.pt, %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit86 ], [ %i.nx, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i = phi ptr [ %i.ps, %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit86 ], [ %i.ns, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 12 uses
  %.0910.i.i.i.i.i23.i = phi ptr [ %i.pr, %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit86 ], [ %.117.i, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 12 uses
  %i.ny = load ptr, ptr %.0811.i.i.i.i.i22.i, align 8, !tbaa !144 ; 6 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 16 ; 4 uses
  %i.oa = icmp eq ptr %i.ny, %i.nz
  %i.ob = load ptr, ptr %.0910.i.i.i.i.i23.i, align 8, !tbaa !144 ; 6 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 16 ; 6 uses
  %i.od = icmp eq ptr %i.ob, %i.oc                ; 2 uses
  br i1 %i.oa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %.lr.ph.i.i.i.i.i20.i
  br i1 %i.od, label %bb.cm, label %.thread.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73: ; preds = %.lr.ph.i.i.i.i.i20.i
  br i1 %i.od, label %bb.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i74

bb.cm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  %i.oe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 8 ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !81 ; 3 uses
  %i.og = icmp ult i64 %i.of, 16
  tail call void @llvm.assume(i1 %i.og)
  %.not21.i.i81 = icmp eq ptr %.0910.i.i.i.i.i23.i, %.0811.i.i.i.i.i22.i
  br i1 %.not21.i.i81, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i76, label %bb.cn, !prof !277

bb.cn:                                            ; preds = %bb.cm
  switch i64 %i.of, label %bb.cp [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i82
    i64 1, label %bb.co
  ]

bb.co:                                            ; preds = %bb.cn
  %i.oh = load i8, ptr %i.ob, align 1, !tbaa !82
  store i8 %i.oh, ptr %i.ny, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i82

bb.cp:                                            ; preds = %bb.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ny, ptr align 1 %i.ob, i64 %i.of, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i82: ; preds = %bb.cp, %bb.co, %bb.cn
  %i.oi = load i64, ptr %i.oe, align 8, !tbaa !81 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 8
  store i64 %i.oi, ptr %i.oj, align 8, !tbaa !81
  %i.ok = load ptr, ptr %.0811.i.i.i.i.i22.i, align 8, !tbaa !144
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oi
  store i8 0, ptr %i.ol, align 1, !tbaa !82
  %.pre.i.i83 = load ptr, ptr %.0910.i.i.i.i.i23.i, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i76

.thread.i.i85:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  %i.om = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 8
  store ptr %i.ob, ptr %.0811.i.i.i.i.i22.i, align 8, !tbaa !144
  %i.on = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 8
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !81
  store i64 %i.oo, ptr %i.om, align 8, !tbaa !81
  %i.op = load i64, ptr %i.oc, align 8, !tbaa !82
  store i64 %i.op, ptr %i.nz, align 8, !tbaa !82
  br label %bb.cr

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i74: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73
  %i.oq = load i64, ptr %i.nz, align 8, !tbaa !82
  store ptr %i.ob, ptr %.0811.i.i.i.i.i22.i, align 8, !tbaa !144
  %i.or = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 8
  %i.os = load i64, ptr %i.or, align 8, !tbaa !81
  %i.ot = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 8
  store i64 %i.os, ptr %i.ot, align 8, !tbaa !81
  %i.ou = load i64, ptr %i.oc, align 8, !tbaa !82
  store i64 %i.ou, ptr %i.nz, align 8, !tbaa !82
  %.not.i.i75 = icmp eq ptr %i.ny, null
  br i1 %.not.i.i75, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i74
  store ptr %i.ny, ptr %.0910.i.i.i.i.i23.i, align 8, !tbaa !144
  store i64 %i.oq, ptr %i.oc, align 8, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i76

bb.cr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i74, %.thread.i.i85
  store ptr %i.oc, ptr %.0910.i.i.i.i.i23.i, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i76: ; preds = %bb.cr, %bb.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i82, %bb.cm
  %i.ov = phi ptr [ %.pre.i.i83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i82 ], [ %i.ny, %bb.cq ], [ %i.oc, %bb.cr ], [ %i.ob, %bb.cm ]
  %i.ow = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 8
  store i64 0, ptr %i.ow, align 8, !tbaa !81
  store i8 0, ptr %i.ov, align 1, !tbaa !82
  %i.ox = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 32
  %i.oy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 32 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 40
  %i.pa = load <2 x ptr>, ptr %i.oy, align 8, !tbaa !595
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oy, i8 0, i64 16, i1 false)
  %i.pb = load ptr, ptr %i.oz, align 8, !tbaa !301 ; 8 uses
  store <2 x ptr> %i.pa, ptr %i.ox, align 8, !tbaa !595
  %.not.i.i.i.i.i.i.i77 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i.i.i.i.i.i77, label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit86, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i76
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8 ; 4 uses
  %i.pd = load atomic i64, ptr %i.pc acquire, align 8 ; 2 uses
  %i.pe = icmp eq i64 %i.pd, 4294967297
  %i.pf = trunc i64 %i.pd to i32                  ; 2 uses
  br i1 %i.pe, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %i.pc, align 8, !tbaa !303
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pb, i64 12
  store i32 0, ptr %i.pg, align 4, !tbaa !304
  %i.ph = load ptr, ptr %i.pb, align 8, !tbaa !55
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.pj = load ptr, ptr %i.pi, align 8
  tail call void %i.pj(ptr noundef nonnull align 8 dereferenceable(16) %i.pb) #29, !inline_history !29
  %i.pk = load ptr, ptr %i.pb, align 8, !tbaa !55
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  %i.pm = load ptr, ptr %i.pl, align 8
  tail call void %i.pm(ptr noundef nonnull align 8 dereferenceable(16) %i.pb) #29, !inline_history !29
  br label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit86

bb.cu:                                            ; preds = %bb.cs
  %i.pn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82
  %.not.i.i.i.i.i.i.i.i78 = icmp eq i8 %i.pn, 0
  br i1 %.not.i.i.i.i.i.i.i.i78, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.po = add nsw i32 %i.pf, -1
  store i32 %i.po, ptr %i.pc, align 8, !tbaa !286
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i79

bb.cw:                                            ; preds = %bb.cu
  %i.pp = atomicrmw volatile add ptr %i.pc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i79

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i79: ; preds = %bb.cw, %bb.cv
  %.0.i.i.i.i.i.i.i.i.i80 = phi i32 [ %i.pf, %bb.cv ], [ %i.pp, %bb.cw ]
  %i.pq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i80, 1
  br i1 %i.pq, label %bb.cx, label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit86, !prof !277

bb.cx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i79
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pb) #29
  br label %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit86

_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i76, %bb.ct, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i79, %bb.cx
  %i.pr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 48
  %i.ps = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 48 ; 2 uses
  %i.pt = add nsw i64 %.012.i.i.i.i.i21.i, -1
  %i.pu = icmp samesign ugt i64 %.012.i.i.i.i.i21.i, 1
  br i1 %i.pu, label %.lr.ph.i.i.i.i.i20.i, label %_ZSt4moveIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit24.loopexit.i, !llvm.loop !31

_ZSt4moveIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit24.loopexit.i: ; preds = %_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit86
  %6 = ptrtoint ptr %i.ps to i64
  br label %"_ZSt12__move_mergeIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit"

"_ZSt12__move_mergeIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit": ; preds = %_ZSt4moveIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i, %_ZSt4moveIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit24.loopexit.i
  %.08.lcssa.i.i.i.i.i18.i = phi i64 [ %i.np, %_ZSt4moveIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i ], [ %6, %_ZSt4moveIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit24.loopexit.i ]
  %i.pv = sub i64 %.08.lcssa.i.i.i.i.i18.i, %i.np
  %i.pw = getelementptr inbounds i8, ptr %i.ns, i64 %i.pv ; 2 uses
  %i.px = sub i64 %i.l, %i.nt
  %i.py = sdiv exact i64 %i.px, 48                ; 2 uses
  %.not.i17 = icmp slt i64 %i.py, %i.hq
  br i1 %.not.i17, label %"_ZSt17__merge_sort_loopIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_T0_T1_T2_.exit", label %.lr.ph.i16, !llvm.loop !3101

"_ZSt17__merge_sort_loopIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS8_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_T0_T1_T2_.exit"
  %.0.lcssa.i18 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS8_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_T0_T1_T2_.exit" ], [ %i.hs, %"_ZSt12__move_mergeIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit" ] ; 2 uses
  %.sroa.018.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS8_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_T0_T1_T2_.exit" ], [ %i.pw, %"_ZSt12__move_mergeIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit" ]
  %.lcssa.i19 = phi i64 [ %i.m, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS8_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_T0_T1_T2_.exit" ], [ %i.py, %"_ZSt12__move_mergeIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_.exit" ]
  %.sroa.speculated.i20 = tail call i64 @llvm.smin.i64(i64 %i.n, i64 %.lcssa.i19)
  %i.pz = getelementptr inbounds [48 x i8], ptr %.0.lcssa.i18, i64 %.sroa.speculated.i20 ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEET0_T_SQ_SQ_SQ_SP_T1_"(ptr noundef %.0.lcssa.i18, ptr noundef %i.pz, ptr noundef %i.pz, ptr noundef nonnull %i.e, ptr %.sroa.018.0.lcssa.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1255") align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.qa = icmp slt i64 %i.hq, %i.d
  br i1 %i.qa, label %bb.b, label %._crit_edge, !llvm.loop !3102

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS8_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_T0_T1_.exit.thread", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS8_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElSA_NS0_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS8_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_SP_T0_SQ_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr nofree noundef readonly byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1255") align 8 captures(none) %6) unnamed_addr #4 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEESE_NS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_T0_SQ_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 48
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(48) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0910.i.i.i.i.i) #29 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48 ; 3 uses
  %i.i = add nsw i64 %.012.i.i.i.i.i, -1
  %i.j = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.j, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !31

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i
  %.sroa.029.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !298 ; 2 uses
  %.sroa.029.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.029.sroa.2.0.copyload = load ptr, ptr %.sroa.029.sroa.2.0..sroa_idx, align 8, !tbaa !141 ; 2 uses
  %.sroa.029.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.029.sroa.3.0.copyload = load ptr, ptr %.sroa.029.sroa.3.0..sroa_idx, align 8, !tbaa !141 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.026.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %bb.f ] ; 6 uses
  %.sroa.0.025.i = phi ptr [ %0, %.lr.ph.i ], [ %i.q, %bb.f ] ; 4 uses
  %.sroa.016.024.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.016.1.i, %bb.f ] ; 5 uses
  %.not19.i = icmp eq ptr %.sroa.016.024.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZNK17cmGeneratorTarget24IsSystemIncludeDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr noundef nonnull align 8 dereferenceable(3187) %.sroa.029.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.016.024.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.029.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.029.sroa.3.0.copyload)
  br i1 %i.k, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EERKS9_SF_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPSA_SC_EESN_EEbT_T0_.exit.thread.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EERKS9_SF_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPSA_SC_EESN_EEbT_T0_.exit.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EERKS9_SF_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPSA_SC_EESN_EEbT_T0_.exit.i": ; preds = %bb.d
  %i.l = tail call noundef zeroext i1 @_ZNK17cmGeneratorTarget24IsSystemIncludeDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr noundef nonnull align 8 dereferenceable(3187) %.sroa.029.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(48) %.026.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.029.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.029.sroa.3.0.copyload)
  br i1 %i.l, label %bb.e, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EERKS9_SF_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPSA_SC_EESN_EEbT_T0_.exit.thread.i"

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EERKS9_SF_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPSA_SC_EESN_EEbT_T0_.exit.i"
  %i.m = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.025.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.016.024.i) #29 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 48
  br label %bb.f

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EERKS9_SF_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPSA_SC_EESN_EEbT_T0_.exit.thread.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EERKS9_SF_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPSA_SC_EESN_EEbT_T0_.exit.i", %bb.d
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.025.i, ptr noundef nonnull align 8 dereferenceable(48) %.026.i) #29 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.026.i, i64 48
  br label %bb.f

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EERKS9_SF_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPSA_SC_EESN_EEbT_T0_.exit.thread.i", %bb.e
  %.sroa.016.1.i = phi ptr [ %i.n, %bb.e ], [ %.sroa.016.024.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EERKS9_SF_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPSA_SC_EESN_EEbT_T0_.exit.thread.i" ]
  %.1.i = phi ptr [ %.026.i, %bb.e ], [ %i.p, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EERKS9_SF_PK17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPSA_SC_EESN_EEbT_T0_.exit.thread.i" ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 48
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEESE_NS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_T0_SQ_T1_T2_.exit", label %bb.c, !llvm.loop !3103

.critedge.i:                                      ; preds = %bb.c
  %i.r = ptrtoint ptr %i.h to i64
  %i.s = ptrtoint ptr %.026.i to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.preheader.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEESE_NS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_T0_SQ_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.v = udiv exact i64 %i.t, 48
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.025.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %.026.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(48) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0910.i.i.i.i.i.i) #29 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.z = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.aa = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEESE_NS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_T0_SQ_T1_T2_.exit", !llvm.loop !31

bb.g:                                             ; preds = %bb.a
  %i.ab = ptrtoint ptr %2 to i64
  %i.ac = ptrtoint ptr %1 to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader.i.i.i.i.i20, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit25

.lr.ph.preheader.i.i.i.i.i20:                     ; preds = %bb.g
  %i.af = udiv exact i64 %i.ad, 48
  br label %.lr.ph.i.i.i.i.i21

.lr.ph.i.i.i.i.i21:                               ; preds = %.lr.ph.i.i.i.i.i21, %.lr.ph.preheader.i.i.i.i.i20
  %.012.i.i.i.i.i22 = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i21 ], [ %i.af, %.lr.ph.preheader.i.i.i.i.i20 ] ; 2 uses
  %.0811.i.i.i.i.i23 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i21 ], [ %5, %.lr.ph.preheader.i.i.i.i.i20 ] ; 2 uses
  %.0910.i.i.i.i.i24 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i21 ], [ %1, %.lr.ph.preheader.i.i.i.i.i20 ] ; 2 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(48) %.0811.i.i.i.i.i23, ptr noundef nonnull align 8 dereferenceable(48) %.0910.i.i.i.i.i24) #29 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 48 ; 2 uses
  %i.aj = add nsw i64 %.012.i.i.i.i.i22, -1
  %i.ak = icmp samesign ugt i64 %.012.i.i.i.i.i22, 1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i21, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit25, !llvm.loop !31

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit25: ; preds = %.lr.ph.i.i.i.i.i21, %bb.g
  %.08.lcssa.i.i.i.i.i19 = phi ptr [ %5, %bb.g ], [ %i.ai, %.lr.ph.i.i.i.i.i21 ] ; 4 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !298 ; 2 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !141 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !141 ; 2 uses
  %i.al = icmp eq ptr %0, %1
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit25
  %i.am = ptrtoint ptr %.08.lcssa.i.i.i.i.i19 to i64
  %i.an = ptrtoint ptr %5 to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.preheader.i.i.i.i.i.i27, label %"_ZSt21__move_merge_adaptiveIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEESE_NS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_T0_SQ_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i27:                   ; preds = %bb.h
  %i.aq = udiv exact i64 %i.ao, 48
  br label %.lr.ph.i.i.i.i.i.i28

.lr.ph.i.i.i.i.i.i28:                             ; preds = %.lr.ph.i.i.i.i.i.i28, %.lr.ph.preheader.i.i.i.i.i.i27
  %.010.i.i.i.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i28 ], [ %i.aq, %.lr.ph.preheader.i.i.i.i.i.i27 ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i28 ], [ %2, %.lr.ph.preheader.i.i.i.i.i.i27 ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i28 ], [ %.08.lcssa.i.i.i.i.i19, %.lr.ph.preheader.i.i.i.i.i.i27 ]
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %i.ar) #29 ; 0 uses
  %i.au = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.av = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i28, label %"_ZSt21__move_merge_adaptiveIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEESE_NS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_T0_SQ_T1_T2_.exit", !llvm.loop !33

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit25
  %i.aw = icmp eq ptr %5, %.08.lcssa.i.i.i.i.i19
  br i1 %i.aw, label %"_ZSt21__move_merge_adaptiveIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEESE_NS9_5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSD_RKS6_SJ_PK17cmGeneratorTargetE3$_0EEEvT_SP_T0_SQ_T1_T2_.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i19, i64 -48
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.j
  %.sroa.028.0.i.ph.pn = phi ptr [ %1, %bb.j ], [ %.sroa.028.0.i.ph, %bb.l ]
  %.sroa.0.0.i.ph = phi ptr [ %2, %bb.j ], [ %i.ba, %bb.l ]
  %.0.i.ph = phi ptr [ %i.ax, %bb.j ], [ %.0.i, %bb.l ]
  %.sroa.028.0.i.ph = getelementptr inbounds i8, ptr %.sroa.028.0.i.ph.pn, i64 -48 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %.outer, %bb.n
  %.sroa.0.0.i = phi ptr [ %i.bo, %bb.n ], [ %.sroa.0.0.i.ph, %.outer ] ; 2 uses
  %.0.i = phi ptr [ %i.br, %bb.n ], [ %.0.i.ph, %.outer ] ; 6 uses
  %i.ay = tail call noundef zeroext i1 @_ZNK17cmGeneratorTarget24IsSystemIncludeDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr noundef nonnull align 8 dereferenceable(3187) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.3.0.copyload)
  br i1 %i.ay, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EERKS9_SF_PK17cmGeneratorTargetE3$_0EclIPSA_NS_17__normal_iteratorISM_SC_EEEEbT_T0_.exit.thread.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EERKS9_SF_PK17cmGeneratorTargetE3$_0EclIPSA_NS_17__normal_iteratorISM_SC_EEEEbT_T0_.exit.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EERKS9_SF_PK17cmGeneratorTargetE3$_0EclIPSA_NS_17__normal_iteratorISM_SC_EEEEbT_T0_.exit.i": ; preds = %bb.k
  %i.az = tail call noundef zeroext i1 @_ZNK17cmGeneratorTarget24IsSystemIncludeDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr noundef nonnull align 8 dereferenceable(3187) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.028.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.3.0.copyload)
  br i1 %i.az, label %bb.l, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EERKS9_SF_PK17cmGeneratorTargetE3$_0EclIPSA_NS_17__normal_iteratorISM_SC_EEEEbT_T0_.exit.thread.i"

bb.l:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL23MoveSystemIncludesToEndRSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EERKS9_SF_PK17cmGeneratorTargetE3$_0EclIPSA_NS_17__normal_iteratorISM_SC_EEEEbT_T0_.exit.i"
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -48 ; 3 uses
  %i.bb = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.028.0.i.ph) #29 ; 0 uses
  %i.bc = icmp eq ptr %0, %.sroa.028.0.i.ph
  br i1 %i.bc, label %bb.m, label %.outer, !llvm.loop !3104

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %5 to i64
end_hunk_1
