Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/options?download=true
inline.NumInlined: 1118
inline.NumDeleted: 421
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZSt12__move_mergeIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_less_iterEET0_T_SI_SI_SI_SH_T1_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_EEbT_T0_.exit.thread45
  br i1 %i.bc, label %bb.j, label %.thread.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_EEbT_T0_.exit.thread45
  br i1 %i.bc, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i19

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.bd = getelementptr inbounds nuw i8, ptr %.052, i64 16 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !30 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  tail call void @llvm.assume(i1 %i.bf)
  %.not21.i.i21 = icmp eq ptr %.052, %.sroa.0.047
  br i1 %.not21.i.i21, label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit26, label %bb.k, !prof !91

bb.k:                                             ; preds = %bb.j
  switch i64 %i.be, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bg = load i8, ptr %i.ba, align 1, !tbaa !37
  store i8 %i.bg, ptr %i.ax, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.ba, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22: ; preds = %bb.m, %bb.l, %bb.k
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !30 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.047, i64 16
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !30
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !37
  %.pre.i.i23 = load ptr, ptr %i.av, align 8, !tbaa !31
  br label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit26

.thread.i.i25:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.047, i64 16
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !31
  %i.bm = getelementptr inbounds nuw i8, ptr %.052, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !30
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !30
  %i.bo = load i64, ptr %i.bb, align 8, !tbaa !37
  store i64 %i.bo, ptr %i.ay, align 8, !tbaa !37
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18
  %i.bp = load i64, ptr %i.ay, align 8, !tbaa !37
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !31
  %i.bq = getelementptr inbounds nuw i8, ptr %.052, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.047, i64 16
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !30
  %i.bt = load i64, ptr %i.bb, align 8, !tbaa !37
  store i64 %i.bt, ptr %i.ay, align 8, !tbaa !37
  %.not.i.i20 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i19
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !31
  store i64 %i.bp, ptr %i.bb, align 8, !tbaa !37
  br label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit26

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i19, %.thread.i.i25
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !31
  br label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit26

_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit26: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22, %bb.n, %bb.o
  %i.bu = phi ptr [ %i.ax, %bb.n ], [ %i.bb, %bb.o ], [ %i.ba, %bb.j ], [ %.pre.i.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.052, i64 16
  store i64 0, ptr %i.bv, align 8, !tbaa !30
  store i8 0, ptr %i.bu, align 1, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %.052, i64 40
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit26, %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit
  %.117 = phi ptr [ %i.au, %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit ], [ %.01650, %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit26 ] ; 3 uses
  %.1 = phi ptr [ %.052, %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit ], [ %i.bw, %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit26 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.047, i64 40 ; 2 uses
  %i.by = icmp ne ptr %.1, %1
  %i.bz = icmp ne ptr %.117, %3
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %i.ca, label %.lr.ph, label %._crit_edge, !llvm.loop !177

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.bx, %bb.p ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.p ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.p ] ; 2 uses
  %i.cb = ptrtoint ptr %1 to i64
  %i.cc = ptrtoint ptr %.0.lcssa to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %i.ce = icmp sgt i64 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge
  %i.cf = udiv exact i64 %i.cd, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.014.i.i.i.i.i = phi i64 [ %i.dk, %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i ], [ %i.cf, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0812.i.i.i.i.i = phi ptr [ %i.dj, %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.di, %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %i.cg = load double, ptr %.0910.i.i.i.i.i, align 8, !tbaa !92
  store double %i.cg, ptr %.0812.i.i.i.i.i, align 8, !tbaa !65
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 8 ; 4 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !31 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 24 ; 4 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  %i.cm = load ptr, ptr %i.ch, align 8, !tbaa !31 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24 ; 6 uses
  %i.co = icmp eq ptr %i.cm, %i.cn                ; 2 uses
  br i1 %i.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.co, label %bb.q, label %.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.co, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !30 ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 16
  tail call void @llvm.assume(i1 %i.cr)
  %.not21.i.i.i.i.i.i.i = icmp eq ptr %.0910.i.i.i.i.i, %.0812.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i.i, label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i, label %bb.r, !prof !91

bb.r:                                             ; preds = %bb.q
  switch i64 %i.cq, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.cs = load i8, ptr %i.cm, align 1, !tbaa !37
  store i8 %i.cs, ptr %i.cj, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.cm, i64 %i.cq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.ct = load i64, ptr %i.cp, align 8, !tbaa !30 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 16
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !30
  %i.cv = load ptr, ptr %i.ci, align 8, !tbaa !31
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ct
  store i8 0, ptr %i.cw, align 1, !tbaa !37
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !tbaa !31
  br label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 16
  store ptr %i.cm, ptr %i.ci, align 8, !tbaa !31
  %i.cy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !30
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !30
  %i.da = load i64, ptr %i.cn, align 8, !tbaa !37
  store i64 %i.da, ptr %i.ck, align 8, !tbaa !37
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.db = load i64, ptr %i.ck, align 8, !tbaa !37
  store ptr %i.cm, ptr %i.ci, align 8, !tbaa !31
  %i.dc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !30
  %i.de = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 16
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !30
  %i.df = load i64, ptr %i.cn, align 8, !tbaa !37
  store i64 %i.df, ptr %i.ck, align 8, !tbaa !37
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !31
  store i64 %i.db, ptr %i.cn, align 8, !tbaa !37
  br label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  store ptr %i.cn, ptr %i.ch, align 8, !tbaa !31
  br label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i

_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i, %bb.q
  %i.dg = phi ptr [ %i.cj, %bb.u ], [ %i.cn, %bb.v ], [ %i.cm, %bb.q ], [ %.pre.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  store i64 0, ptr %i.dh, align 8, !tbaa !30
  store i8 0, ptr %i.dg, align 1, !tbaa !37
  %i.di = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 40 ; 2 uses
  %i.dk = add nsw i64 %.014.i.i.i.i.i, -1
  %i.dl = icmp sgt i64 %.014.i.i.i.i.i, 1
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit, !llvm.loop !3

_ZSt4moveIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit: ; preds = %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.dj, %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i ]
  %i.dm = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.dn = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.do ; 3 uses
  %i.dq = ptrtoint ptr %3 to i64
  %i.dr = ptrtoint ptr %.016.lcssa to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %.lr.ph.preheader.i.i.i.i.i28, label %_ZSt4moveIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit42

.lr.ph.preheader.i.i.i.i.i28:                     ; preds = %_ZSt4moveIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit
  %i.du = udiv exact i64 %i.ds, 40
  br label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36, %.lr.ph.preheader.i.i.i.i.i28
  %.014.i.i.i.i.i30 = phi i64 [ %i.ez, %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36 ], [ %i.du, %.lr.ph.preheader.i.i.i.i.i28 ] ; 2 uses
  %.0812.i.i.i.i.i31 = phi ptr [ %i.ey, %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36 ], [ %i.dp, %.lr.ph.preheader.i.i.i.i.i28 ] ; 8 uses
  %.0910.i.i.i.i.i32 = phi ptr [ %i.ex, %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36 ], [ %.016.lcssa, %.lr.ph.preheader.i.i.i.i.i28 ] ; 9 uses
  %i.dv = load double, ptr %.0910.i.i.i.i.i32, align 8, !tbaa !92
  store double %i.dv, ptr %.0812.i.i.i.i.i31, align 8, !tbaa !65
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 8 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i31, i64 8 ; 4 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !31 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i31, i64 24 ; 4 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  %i.eb = load ptr, ptr %i.dw, align 8, !tbaa !31 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 24 ; 6 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec                ; 2 uses
  br i1 %i.ea, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40: ; preds = %.lr.ph.i.i.i.i.i29
  br i1 %i.ed, label %bb.w, label %.thread.i.i.i.i.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i33: ; preds = %.lr.ph.i.i.i.i.i29
  br i1 %i.ed, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i34

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40
  %i.ee = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 16 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !30 ; 3 uses
  %i.eg = icmp ult i64 %i.ef, 16
  tail call void @llvm.assume(i1 %i.eg)
  %.not21.i.i.i.i.i.i.i37 = icmp eq ptr %.0910.i.i.i.i.i32, %.0812.i.i.i.i.i31
  br i1 %.not21.i.i.i.i.i.i.i37, label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36, label %bb.x, !prof !91

bb.x:                                             ; preds = %bb.w
  switch i64 %i.ef, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.eh = load i8, ptr %i.eb, align 1, !tbaa !37
  store i8 %i.eh, ptr %i.dy, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr align 1 %i.eb, i64 %i.ef, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38: ; preds = %bb.z, %bb.y, %bb.x
  %i.ei = load i64, ptr %i.ee, align 8, !tbaa !30 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i31, i64 16
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !30
  %i.ek = load ptr, ptr %i.dx, align 8, !tbaa !31
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  store i8 0, ptr %i.el, align 1, !tbaa !37
  %.pre.i.i.i.i.i.i.i39 = load ptr, ptr %i.dw, align 8, !tbaa !31
  br label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36

.thread.i.i.i.i.i.i.i41:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40
  %i.em = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i31, i64 16
  store ptr %i.eb, ptr %i.dx, align 8, !tbaa !31
  %i.en = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !30
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !30
  %i.ep = load i64, ptr %i.ec, align 8, !tbaa !37
  store i64 %i.ep, ptr %i.dz, align 8, !tbaa !37
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i33
  %i.eq = load i64, ptr %i.dz, align 8, !tbaa !37
  store ptr %i.eb, ptr %i.dx, align 8, !tbaa !31
  %i.er = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 16
  %i.es = load i64, ptr %i.er, align 8, !tbaa !30
  %i.et = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i31, i64 16
  store i64 %i.es, ptr %i.et, align 8, !tbaa !30
  %i.eu = load i64, ptr %i.ec, align 8, !tbaa !37
  store i64 %i.eu, ptr %i.dz, align 8, !tbaa !37
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i.i.i.i35, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i34
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !31
  store i64 %i.eq, ptr %i.ec, align 8, !tbaa !37
  br label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i34, %.thread.i.i.i.i.i.i.i41
  store ptr %i.ec, ptr %i.dw, align 8, !tbaa !31
  br label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36

_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36: ; preds = %bb.ab, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38, %bb.w
  %i.ev = phi ptr [ %i.dy, %bb.aa ], [ %i.ec, %bb.ab ], [ %i.eb, %bb.w ], [ %.pre.i.i.i.i.i.i.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38 ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 16
  store i64 0, ptr %i.ew, align 8, !tbaa !30
  store i8 0, ptr %i.ev, align 1, !tbaa !37
  %i.ex = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 40
  %i.ey = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i31, i64 40 ; 2 uses
  %i.ez = add nsw i64 %.014.i.i.i.i.i30, -1
  %i.fa = icmp sgt i64 %.014.i.i.i.i.i30, 1
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i29, label %_ZSt4moveIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit42, !llvm.loop !3

_ZSt4moveIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit42: ; preds = %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36, %_ZSt4moveIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit
  %.08.lcssa.i.i.i.i.i27 = phi ptr [ %i.dp, %_ZSt4moveIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit ], [ %i.ey, %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36 ]
  %5 = ptrtoint ptr %.08.lcssa.i.i.i.i.i27 to i64
  %i.fb = sub i64 %5, %i.dm
  %i.fc = getelementptr inbounds i8, ptr %i.dp, i64 %i.fb
  ret ptr %i.fc
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt21__move_merge_adaptiveIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEESE_NS9_5__ops15_Iter_less_iterEEvT_SH_T0_SI_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not33 = icmp eq ptr %0, %1
  br i1 %.not33, label %.critedge12, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.q
  %.038 = phi ptr [ %.1, %bb.q ], [ %0, %bb.a ]   ; 14 uses
  %.sroa.0.035 = phi ptr [ %i.bu, %bb.q ], [ %4, %bb.a ] ; 16 uses
  %.sroa.025.034 = phi ptr [ %.sroa.025.1, %bb.q ], [ %2, %bb.a ] ; 13 uses
  %.not29 = icmp eq ptr %.sroa.025.034, %3
  br i1 %.not29, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.a = load double, ptr %.sroa.025.034, align 8, !tbaa !65 ; 3 uses
  %i.b = load double, ptr %.038, align 8, !tbaa !65 ; 3 uses
  %i.c = fcmp olt double %i.a, %i.b
  br i1 %i.c, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = fcmp olt double %i.b, %i.a
  br i1 %i.d, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit.thread28, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.025.034, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.038, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.f) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.038, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.025.034, i64 8
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.n = tail call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.d
  %i.o = sub i64 %i.f, %i.h
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit.thread28

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit.thread: ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit
  store double %i.a, ptr %.sroa.0.035, align 8, !tbaa !65
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.025.034, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.035, i64 8 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.035, i64 24 ; 4 uses
  %i.u = icmp eq ptr %i.s, %i.t
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !31   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.025.034, i64 24 ; 6 uses
  %i.x = icmp eq ptr %i.v, %i.w                   ; 2 uses
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit.thread
  br i1 %i.x, label %bb.e, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit.thread
  br i1 %i.x, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.025.034, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !30   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %.not21.i.i = icmp eq ptr %.sroa.025.034, %.sroa.0.035
  br i1 %.not21.i.i, label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit, label %bb.f, !prof !91

bb.f:                                             ; preds = %bb.e
  switch i64 %i.z, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !37
  store i8 %i.ab, ptr %i.s, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.v, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !30  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.035, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !30
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !37
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !31
  br label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.035, i64 16
  store ptr %i.v, ptr %i.r, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.025.034, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !30
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !30
  %i.aj = load i64, ptr %i.w, align 8, !tbaa !37
  store i64 %i.aj, ptr %i.t, align 8, !tbaa !37
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !37
  store ptr %i.v, ptr %i.r, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.025.034, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.035, i64 16
  store i64 %i.am, ptr %i.an, align 8, !tbaa !30
  %i.ao = load i64, ptr %i.w, align 8, !tbaa !37
  store i64 %i.ao, ptr %i.t, align 8, !tbaa !37
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.s, ptr %i.q, align 8, !tbaa !31
  store i64 %i.ak, ptr %i.w, align 8, !tbaa !37
  br label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.w, ptr %i.q, align 8, !tbaa !31
  br label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit

_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.i, %bb.j
  %i.ap = phi ptr [ %i.s, %bb.i ], [ %i.w, %bb.j ], [ %i.v, %bb.e ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.025.034, i64 16
  store i64 0, ptr %i.aq, align 8, !tbaa !30
  store i8 0, ptr %i.ap, align 1, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.025.034, i64 40
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit.thread28: ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit
  store double %i.b, ptr %.sroa.0.035, align 8, !tbaa !65
  %i.as = getelementptr inbounds nuw i8, ptr %.038, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.035, i64 8 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.035, i64 24 ; 4 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !31 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.038, i64 24 ; 6 uses
  %i.az = icmp eq ptr %i.ax, %i.ay                ; 2 uses
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit.thread28
  br i1 %i.az, label %bb.k, label %.thread.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i13: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit.thread28
  br i1 %i.az, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i14

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  %i.ba = getelementptr inbounds nuw i8, ptr %.038, i64 16 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !30 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bc)
  %.not21.i.i16 = icmp eq ptr %.038, %.sroa.0.035
  br i1 %.not21.i.i16, label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit21, label %bb.l, !prof !91

bb.l:                                             ; preds = %bb.k
  switch i64 %i.bb, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i17
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !37
  store i8 %i.bd, ptr %i.au, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i17

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ax, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i17: ; preds = %bb.n, %bb.m, %bb.l
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !30 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.035, i64 16
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !30
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !37
  %.pre.i.i18 = load ptr, ptr %i.as, align 8, !tbaa !31
  br label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit21

.thread.i.i20:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.035, i64 16
end_hunk_0
