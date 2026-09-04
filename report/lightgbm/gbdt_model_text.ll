Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/gbdt_model_text?download=true
inline.NumInlined: 2729
inline.NumDeleted: 811
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZSt12__move_mergeIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET0_T_SM_SM_SM_SL_T1_":bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.i
  br i1 %i.al, label %bb.j, label %.thread.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18: ; preds = %bb.i
  br i1 %i.al, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i19

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.am = getelementptr inbounds nuw i8, ptr %.051, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !155 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  tail call void @llvm.assume(i1 %i.ao)
  %.not21.i.i21 = icmp eq ptr %.051, %.sroa.0.046
  br i1 %.not21.i.i21, label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit26, label %bb.k, !prof !223

bb.k:                                             ; preds = %bb.j
  switch i64 %i.an, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !37
  store i8 %i.ap, ptr %i.ah, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.aj, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22: ; preds = %bb.m, %bb.l, %bb.k
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !155 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.046, i64 16
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !155
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !154
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !37
  %.pre.i.i23 = load ptr, ptr %i.ag, align 8, !tbaa !154
  br label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit26

.thread.i.i25:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.046, i64 16
  store ptr %i.aj, ptr %i.e, align 8, !tbaa !154
  %i.av = getelementptr inbounds nuw i8, ptr %.051, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !155
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !155
  %i.ax = load i64, ptr %i.ak, align 8, !tbaa !37
  store i64 %i.ax, ptr %i.f, align 8, !tbaa !37
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18
  %i.ay = load i64, ptr %i.f, align 8, !tbaa !37
  store ptr %i.aj, ptr %i.e, align 8, !tbaa !154
  %i.az = getelementptr inbounds nuw i8, ptr %.051, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !155
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.046, i64 16
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !155
  %i.bc = load i64, ptr %i.ak, align 8, !tbaa !37
  store i64 %i.bc, ptr %i.f, align 8, !tbaa !37
  %.not.i.i20 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i19
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !154
  store i64 %i.ay, ptr %i.ak, align 8, !tbaa !37
  br label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit26

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i19, %.thread.i.i25
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !154
  br label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit26

_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit26: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22, %bb.n, %bb.o
  %i.bd = phi ptr [ %.pre.i.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i22 ], [ %i.ah, %bb.n ], [ %i.ak, %bb.o ], [ %i.aj, %bb.j ]
  %i.be = getelementptr inbounds nuw i8, ptr %.051, i64 16
  store i64 0, ptr %i.be, align 8, !tbaa !155
  store i8 0, ptr %i.bd, align 1, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %.051, i64 40
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit26, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit
  %.117 = phi ptr [ %i.af, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit ], [ %.01649, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit26 ] ; 3 uses
  %.1 = phi ptr [ %.051, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit ], [ %i.bf, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit26 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.046, i64 40 ; 2 uses
  %i.bh = icmp ne ptr %.1, %1
  %i.bi = icmp ne ptr %.117, %3
  %i.bj = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !488

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.bg, %bb.p ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.p ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.p ] ; 2 uses
  %i.bk = ptrtoint ptr %1 to i64
  %i.bl = ptrtoint ptr %.0.lcssa to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge
  %i.bo = udiv exact i64 %i.bm, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.014.i.i.i.i.i = phi i64 [ %i.ct, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i ], [ %i.bo, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0812.i.i.i.i.i = phi ptr [ %i.cs, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cr, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %i.bp = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !162
  store i64 %i.bp, ptr %.0812.i.i.i.i.i, align 8, !tbaa !194
  %i.bq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 8 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !154 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 24 ; 4 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !154 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24 ; 6 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw                ; 2 uses
  br i1 %i.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.bx, label %bb.q, label %.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.bx, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !155 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  tail call void @llvm.assume(i1 %i.ca)
  %.not21.i.i.i.i.i.i.i = icmp eq ptr %.0910.i.i.i.i.i, %.0812.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i.i, label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i, label %bb.r, !prof !223

bb.r:                                             ; preds = %bb.q
  switch i64 %i.bz, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.cb = load i8, ptr %i.bv, align 1, !tbaa !37
  store i8 %i.cb, ptr %i.bs, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.bv, i64 %i.bz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.cc = load i64, ptr %i.by, align 8, !tbaa !155 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 16
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !155
  %i.ce = load ptr, ptr %i.br, align 8, !tbaa !154
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  store i8 0, ptr %i.cf, align 1, !tbaa !37
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !tbaa !154
  br label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 16
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !154
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !155
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !155
  %i.cj = load i64, ptr %i.bw, align 8, !tbaa !37
  store i64 %i.cj, ptr %i.bt, align 8, !tbaa !37
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.ck = load i64, ptr %i.bt, align 8, !tbaa !37
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !154
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !155
  %i.cn = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 16
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !155
  %i.co = load i64, ptr %i.bw, align 8, !tbaa !37
  store i64 %i.co, ptr %i.bt, align 8, !tbaa !37
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !154
  store i64 %i.ck, ptr %i.bw, align 8, !tbaa !37
  br label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  store ptr %i.bw, ptr %i.bq, align 8, !tbaa !154
  br label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i

_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i, %bb.q
  %i.cp = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i ], [ %i.bs, %bb.u ], [ %i.bw, %bb.v ], [ %i.bv, %bb.q ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  store i64 0, ptr %i.cq, align 8, !tbaa !155
  store i8 0, ptr %i.cp, align 1, !tbaa !37
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 40 ; 2 uses
  %i.ct = add nsw i64 %.014.i.i.i.i.i, -1
  %i.cu = icmp sgt i64 %.014.i.i.i.i.i, 1
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit, !llvm.loop !6

_ZSt4moveIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit: ; preds = %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.cs, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i ]
  %i.cv = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.cw = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.cx ; 2 uses
  %i.cz = ptrtoint ptr %3 to i64
  %i.da = ptrtoint ptr %.016.lcssa to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 2 uses
  %i.dc = icmp sgt i64 %i.db, 0
  br i1 %i.dc, label %.lr.ph.preheader.i.i.i.i.i28, label %_ZSt4moveIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit42

.lr.ph.preheader.i.i.i.i.i28:                     ; preds = %_ZSt4moveIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit
  %i.dd = udiv exact i64 %i.db, 40
  br label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36, %.lr.ph.preheader.i.i.i.i.i28
  %.014.i.i.i.i.i30 = phi i64 [ %i.ei, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36 ], [ %i.dd, %.lr.ph.preheader.i.i.i.i.i28 ] ; 2 uses
  %.0812.i.i.i.i.i31 = phi ptr [ %i.eh, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36 ], [ %i.cy, %.lr.ph.preheader.i.i.i.i.i28 ] ; 8 uses
  %.0910.i.i.i.i.i32 = phi ptr [ %i.eg, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36 ], [ %.016.lcssa, %.lr.ph.preheader.i.i.i.i.i28 ] ; 9 uses
  %i.de = load i64, ptr %.0910.i.i.i.i.i32, align 8, !tbaa !162
  store i64 %i.de, ptr %.0812.i.i.i.i.i31, align 8, !tbaa !194
  %i.df = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 8 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i31, i64 8 ; 4 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !154 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i31, i64 24 ; 4 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  %i.dk = load ptr, ptr %i.df, align 8, !tbaa !154 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 24 ; 6 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl                ; 2 uses
  br i1 %i.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40: ; preds = %.lr.ph.i.i.i.i.i29
  br i1 %i.dm, label %bb.w, label %.thread.i.i.i.i.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i33: ; preds = %.lr.ph.i.i.i.i.i29
  br i1 %i.dm, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i34

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40
  %i.dn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 16 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !155 ; 3 uses
  %i.dp = icmp ult i64 %i.do, 16
  tail call void @llvm.assume(i1 %i.dp)
  %.not21.i.i.i.i.i.i.i37 = icmp eq ptr %.0910.i.i.i.i.i32, %.0812.i.i.i.i.i31
  br i1 %.not21.i.i.i.i.i.i.i37, label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36, label %bb.x, !prof !223

bb.x:                                             ; preds = %bb.w
  switch i64 %i.do, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.dq = load i8, ptr %i.dk, align 1, !tbaa !37
  store i8 %i.dq, ptr %i.dh, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %i.dk, i64 %i.do, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38: ; preds = %bb.z, %bb.y, %bb.x
  %i.dr = load i64, ptr %i.dn, align 8, !tbaa !155 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i31, i64 16
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !155
  %i.dt = load ptr, ptr %i.dg, align 8, !tbaa !154
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dr
  store i8 0, ptr %i.du, align 1, !tbaa !37
  %.pre.i.i.i.i.i.i.i39 = load ptr, ptr %i.df, align 8, !tbaa !154
  br label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36

.thread.i.i.i.i.i.i.i41:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40
  %i.dv = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i31, i64 16
  store ptr %i.dk, ptr %i.dg, align 8, !tbaa !154
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !155
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !155
  %i.dy = load i64, ptr %i.dl, align 8, !tbaa !37
  store i64 %i.dy, ptr %i.di, align 8, !tbaa !37
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i33
  %i.dz = load i64, ptr %i.di, align 8, !tbaa !37
  store ptr %i.dk, ptr %i.dg, align 8, !tbaa !154
  %i.ea = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !155
  %i.ec = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i31, i64 16
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !155
  %i.ed = load i64, ptr %i.dl, align 8, !tbaa !37
  store i64 %i.ed, ptr %i.di, align 8, !tbaa !37
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i.i.i35, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i34
  store ptr %i.dh, ptr %i.df, align 8, !tbaa !154
  store i64 %i.dz, ptr %i.dl, align 8, !tbaa !37
  br label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i34, %.thread.i.i.i.i.i.i.i41
  store ptr %i.dl, ptr %i.df, align 8, !tbaa !154
  br label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36

_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36: ; preds = %bb.ab, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38, %bb.w
  %i.ee = phi ptr [ %.pre.i.i.i.i.i.i.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i38 ], [ %i.dh, %bb.aa ], [ %i.dl, %bb.ab ], [ %i.dk, %bb.w ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 16
  store i64 0, ptr %i.ef, align 8, !tbaa !155
  store i8 0, ptr %i.ee, align 1, !tbaa !37
  %i.eg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 40
  %i.eh = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i31, i64 40 ; 2 uses
  %i.ei = add nsw i64 %.014.i.i.i.i.i30, -1
  %i.ej = icmp sgt i64 %.014.i.i.i.i.i30, 1
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i29, label %_ZSt4moveIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit42.loopexit, !llvm.loop !6

_ZSt4moveIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit42.loopexit: ; preds = %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i36
  %5 = ptrtoint ptr %i.eh to i64
  br label %_ZSt4moveIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit42

_ZSt4moveIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit42: ; preds = %_ZSt4moveIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit42.loopexit, %_ZSt4moveIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit
  %.08.lcssa.i.i.i.i.i27 = phi i64 [ %i.cv, %_ZSt4moveIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit ], [ %5, %_ZSt4moveIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit42.loopexit ]
  %i.ek = sub i64 %.08.lcssa.i.i.i.i.i27, %i.cv
  %i.el = getelementptr inbounds i8, ptr %i.cy, i64 %i.ek
  ret ptr %i.el
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEEvT_SL_SL_T0_SM_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond83 = or i1 %i.a, %i.b
  br i1 %or.cond83, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8088 = phi i64 [ %4, %.lr.ph ], [ %i.ap, %tailrecurse ] ; 4 uses
  %.tr7987 = phi i64 [ %3, %.lr.ph ], [ %i.ao, %tailrecurse ] ; 4 uses
  %.tr7785 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 8 uses
  %.tr84 = phi ptr [ %0, %.lr.ph ], [ %i.an, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr8088, %.tr7987
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %.tr7785, align 8, !tbaa !194 ; 2 uses
  %.val1.i = load i64, ptr %.tr84, align 8, !tbaa !194 ; 2 uses
  %i.f = icmp ugt i64 %.val.i, %.val1.i
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  store i64 %.val.i, ptr %.tr84, align 8, !tbaa !162
  store i64 %.val1.i, ptr %.tr7785, align 8, !tbaa !162
  %i.g = getelementptr inbounds nuw i8, ptr %.tr84, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.tr7785, i64 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #20
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.i = icmp sgt i64 %.tr7987, %.tr8088
  %i.j = ptrtoint ptr %.tr7785 to i64             ; 4 uses
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit54

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.k = sdiv i64 %.tr7987, 2                     ; 2 uses
  %i.l = getelementptr inbounds [40 x i8], ptr %.tr84, i64 %i.k ; 2 uses
  %.val = load i64, ptr %i.l, align 8
  %i.m = sub i64 %i.c, %i.j                       ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.o = udiv exact i64 %i.m, 40
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i
  %.07.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.o, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %.sroa.02.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7785, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %i.p = lshr i64 %.07.i, 1                       ; 3 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %.sroa.02.06.i, i64 %i.p ; 2 uses
  %.val.i.i = load i64, ptr %i.q, align 8, !tbaa !194
  %i.r = icmp ugt i64 %.val.i.i, %.val            ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.t = xor i64 %i.p, -1
  %i.u = add nsw i64 %.07.i, %i.t
  %.sroa.02.1.i = select i1 %i.r, ptr %i.s, ptr %.sroa.02.06.i ; 3 uses
  %.1.i = select i1 %i.r, i64 %i.u, i64 %i.p      ; 2 uses
  %i.v = icmp sgt i64 %.1.i, 0
  br i1 %i.v, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit.loopexit", !llvm.loop !8

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.02.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit.loopexit" ], [ %i.j, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.02.0.lcssa.i = phi ptr [ %.sroa.02.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit.loopexit" ], [ %.tr7785, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.w = sub i64 %.pre-phi, %i.j
  %i.x = sdiv exact i64 %i.w, 40
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit54: ; preds = %bb.e
  %i.y = sdiv i64 %.tr8088, 2                     ; 2 uses
  %i.z = getelementptr inbounds [40 x i8], ptr %.tr7785, i64 %i.y ; 2 uses
  %.val50 = load i64, ptr %i.z, align 8
  %i.aa = ptrtoint ptr %.tr84 to i64              ; 3 uses
  %i.ab = sub i64 %i.j, %i.aa                     ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit54
  %i.ad = udiv exact i64 %i.ab, 40
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56
  %.07.i58 = phi i64 [ %.1.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %i.ad, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56 ] ; 2 uses
  %.sroa.02.06.i59 = phi ptr [ %.sroa.02.1.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %.tr84, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56 ] ; 2 uses
  %i.ae = lshr i64 %.07.i58, 1                    ; 3 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %.sroa.02.06.i59, i64 %i.ae ; 2 uses
  %.val2.i.i = load i64, ptr %i.af, align 8, !tbaa !194
  %i.ag = icmp ugt i64 %.val50, %.val2.i.i        ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ai = xor i64 %i.ae, -1
  %i.aj = add nsw i64 %.07.i58, %i.ai
  %.sroa.02.1.i62 = select i1 %i.ag, ptr %.sroa.02.06.i59, ptr %i.ah ; 3 uses
  %.1.i63 = select i1 %i.ag, i64 %i.ae, i64 %i.aj ; 2 uses
  %i.ak = icmp sgt i64 %.1.i63, 0
  br i1 %i.ak, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit.loopexit", !llvm.loop !9

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.pre91 = ptrtoint ptr %.sroa.02.1.i62 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit54
  %.pre-phi92 = phi i64 [ %.pre91, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit.loopexit" ], [ %i.aa, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ]
  %.sroa.02.0.lcssa.i55 = phi ptr [ %.sroa.02.1.i62, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit.loopexit" ], [ %.tr84, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ]
  %i.al = sub i64 %.pre-phi92, %i.aa
  %i.am = sdiv exact i64 %i.al, 40
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit"
  %.sroa.066.0 = phi ptr [ %i.l, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit" ], [ %.sroa.02.0.lcssa.i55, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit" ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.02.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit" ], [ %i.z, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit" ] ; 2 uses
  %.047 = phi i64 [ %i.x, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit" ], [ %i.y, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.k, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit" ], [ %i.am, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEET_SL_SL_RKT0_T1_.exit" ] ; 2 uses
  %i.an = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISA_SaISA_EEEEEET_SG_SG_SG_St26random_access_iterator_tag(ptr %.sroa.066.0, ptr %.tr7785, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM4GBDT17SaveModelToStringEiiiE3$_0EEEvT_SL_SL_T0_SM_T1_"(ptr %.tr84, ptr %.sroa.066.0, ptr %i.an, i64 noundef %.0, i64 noundef %.047)
  %i.ao = sub nsw i64 %.tr7987, %.0               ; 2 uses
  %i.ap = sub nsw i64 %.tr8088, %.047             ; 2 uses
  %i.aq = icmp eq i64 %i.ao, 0
  %i.ar = icmp eq i64 %i.ap, 0
  %or.cond = or i1 %i.aq, %i.ar
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISA_SaISA_EEEEEET_SG_SG_SG_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 40                  ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = sdiv exact i64 %i.h, 40                  ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.q, %.lr.ph.i ], [ %1, %bb.c ] ; 4 uses
  %.sroa.04.07.i = phi ptr [ %i.p, %.lr.ph.i ], [ %0, %bb.c ] ; 4 uses
  %i.l = load i64, ptr %.sroa.04.07.i, align 8, !tbaa !162
  %i.m = load i64, ptr %.sroa.0.08.i, align 8, !tbaa !162
  store i64 %i.m, ptr %.sroa.04.07.i, align 8, !tbaa !162
  store i64 %i.l, ptr %.sroa.0.08.i, align 8, !tbaa !162
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 40
  %.not.i = icmp eq ptr %i.p, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit, label %.lr.ph.i, !llvm.loop !489

bb.d:                                             ; preds = %bb.c
  %i.r = sub i64 %i.c, %i.g
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.056 = phi i64 [ %i.f, %bb.d ], [ %.056.be, %.backedge ] ; 4 uses
  %.0 = phi i64 [ %i.i, %bb.d ], [ %.0.be, %.backedge ] ; 8 uses
  %.sroa.026.0 = phi ptr [ %0, %bb.d ], [ %.sroa.026.0.be, %.backedge ] ; 5 uses
  %i.t = sub nsw i64 %.056, %.0                   ; 6 uses
  %i.u = icmp slt i64 %.0, %i.t
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = icmp sgt i64 %i.t, 0
  br i1 %i.v, label %.lr.ph66.preheader, label %._crit_edge67

.lr.ph66.preheader:                               ; preds = %bb.f
  %i.w = getelementptr inbounds [40 x i8], ptr %.sroa.026.0, i64 %.0
  br label %.lr.ph66

end_hunk_0
