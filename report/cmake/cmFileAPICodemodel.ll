Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmFileAPICodemodel?download=true
inline.NumInlined: 5669
inline.NumDeleted: 2433
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZSt12__move_mergeIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEENSA_5__ops15_Iter_comp_iterIPFbRKS8_SJ_EEEET0_T_SO_SO_SO_SN_T1_:bb.a
  br i1 %i.aj, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i21

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.ak = getelementptr inbounds nuw i8, ptr %.051, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !126 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  tail call void @llvm.assume(i1 %i.am)
  %.not21.i.i23 = icmp eq ptr %.051, %.sroa.045.047
  br i1 %.not21.i.i23, label %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit28, label %bb.k, !prof !370

bb.k:                                             ; preds = %bb.j
  switch i64 %i.al, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i24
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.an = load i8, ptr %i.ah, align 1, !tbaa !103
  store i8 %i.an, ptr %i.e, align 1, !tbaa !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i24

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr align 1 %i.ah, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i24: ; preds = %bb.m, %bb.l, %bb.k
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !126 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.045.047, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !126
  %i.aq = load ptr, ptr %.sroa.045.047, align 8, !tbaa !102
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !103
  %.pre.i.i25 = load ptr, ptr %.051, align 8, !tbaa !102
  br label %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit28

.thread.i.i27:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.045.047, i64 8
  store ptr %i.ah, ptr %.sroa.045.047, align 8, !tbaa !102
  %i.at = getelementptr inbounds nuw i8, ptr %.051, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !126
  store i64 %i.au, ptr %i.as, align 8, !tbaa !126
  %i.av = load i64, ptr %i.ai, align 8, !tbaa !103
  store i64 %i.av, ptr %i.f, align 8, !tbaa !103
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i21: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i20
  %i.aw = load i64, ptr %i.f, align 8, !tbaa !103
  store ptr %i.ah, ptr %.sroa.045.047, align 8, !tbaa !102
  %i.ax = getelementptr inbounds nuw i8, ptr %.051, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !126
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.045.047, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !126
  %i.ba = load i64, ptr %i.ai, align 8, !tbaa !103
  store i64 %i.ba, ptr %i.f, align 8, !tbaa !103
  %.not.i.i22 = icmp eq ptr %i.e, null
  br i1 %.not.i.i22, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i21
  store ptr %i.e, ptr %.051, align 8, !tbaa !102
  store i64 %i.aw, ptr %i.ai, align 8, !tbaa !103
  br label %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit28

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i21, %.thread.i.i27
  store ptr %i.ai, ptr %.051, align 8, !tbaa !102
  br label %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit28

_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit28: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i24, %bb.n, %bb.o
  %i.bb = phi ptr [ %.pre.i.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i24 ], [ %i.e, %bb.n ], [ %i.ai, %bb.o ], [ %i.ah, %bb.j ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.051, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !126
  store i8 0, ptr %i.bb, align 1, !tbaa !103
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.045.047, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %.051, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !162
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !162
  %i.bg = getelementptr inbounds nuw i8, ptr %.051, i64 40
  br label %bb.p

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit28, %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit
  %.117 = phi ptr [ %i.ag, %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit ], [ %.01650, %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit28 ] ; 3 uses
  %.1 = phi ptr [ %.051, %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit ], [ %i.bg, %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit28 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.045.047, i64 40 ; 2 uses
  %i.bi = icmp ne ptr %.1, %1
  %i.bj = icmp ne ptr %.117, %3
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !1310

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %.sroa.045.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.bh, %bb.p ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.p ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.p ] ; 2 uses
  %i.bl = ptrtoint ptr %1 to i64
  %i.bm = ptrtoint ptr %.0.lcssa to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge
  %i.bp = udiv exact i64 %i.bn, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.013.i.i.i.i.i = phi i64 [ %i.cu, %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i ], [ %i.bp, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ct, %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i ], [ %.sroa.045.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 11 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cs, %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 12 uses
  %i.bq = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !102 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 4 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  %i.bt = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !102 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16 ; 6 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu                ; 2 uses
  br i1 %i.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.bv, label %bb.q, label %.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.bv, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !126 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  tail call void @llvm.assume(i1 %i.by)
  %.not21.i.i.i.i.i.i.i = icmp eq ptr %.0910.i.i.i.i.i, %.0811.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i, label %bb.r, !prof !370

bb.r:                                             ; preds = %bb.q
  switch i64 %i.bx, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.bz = load i8, ptr %i.bt, align 1, !tbaa !103
  store i8 %i.bz, ptr %i.bq, align 1, !tbaa !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bt, i64 %i.bx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.ca = load i64, ptr %i.bw, align 8, !tbaa !126 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !126
  %i.cc = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !102
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca
  store i8 0, ptr %i.cd, align 1, !tbaa !103
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !102
  br label %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.bt, ptr %.0811.i.i.i.i.i, align 8, !tbaa !102
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !126
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !126
  %i.ch = load i64, ptr %i.bu, align 8, !tbaa !103
  store i64 %i.ch, ptr %i.br, align 8, !tbaa !103
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.ci = load i64, ptr %i.br, align 8, !tbaa !103
  store ptr %i.bt, ptr %.0811.i.i.i.i.i, align 8, !tbaa !102
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !126
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !126
  %i.cm = load i64, ptr %i.bu, align 8, !tbaa !103
  store i64 %i.cm, ptr %i.br, align 8, !tbaa !103
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i
  store ptr %i.bq, ptr %.0910.i.i.i.i.i, align 8, !tbaa !102
  store i64 %i.ci, ptr %i.bu, align 8, !tbaa !103
  br label %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  store ptr %i.bu, ptr %.0910.i.i.i.i.i, align 8, !tbaa !102
  br label %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i

_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i, %bb.q
  %i.cn = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i ], [ %i.bq, %bb.u ], [ %i.bu, %bb.v ], [ %i.bt, %bb.q ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  store i64 0, ptr %i.co, align 8, !tbaa !126
  store i8 0, ptr %i.cn, align 1, !tbaa !103
  %i.cp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !162
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !162
  %i.cs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40 ; 2 uses
  %i.cu = add nsw i64 %.013.i.i.i.i.i, -1
  %i.cv = icmp sgt i64 %.013.i.i.i.i.i, 1
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit, !llvm.loop !23

_ZSt4moveIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit: ; preds = %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.045.0.lcssa, %._crit_edge ], [ %i.ct, %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i ]
  %i.cw = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.cx = ptrtoint ptr %.sroa.045.0.lcssa to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = getelementptr inbounds i8, ptr %.sroa.045.0.lcssa, i64 %i.cy ; 2 uses
  %i.da = ptrtoint ptr %3 to i64
  %i.db = ptrtoint ptr %.016.lcssa to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  %i.dd = icmp sgt i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.preheader.i.i.i.i.i30, label %_ZSt4moveIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit44

.lr.ph.preheader.i.i.i.i.i30:                     ; preds = %_ZSt4moveIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit
  %i.de = udiv exact i64 %i.dc, 40
  br label %.lr.ph.i.i.i.i.i31

.lr.ph.i.i.i.i.i31:                               ; preds = %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i38, %.lr.ph.preheader.i.i.i.i.i30
  %.013.i.i.i.i.i32 = phi i64 [ %i.ej, %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i38 ], [ %i.de, %.lr.ph.preheader.i.i.i.i.i30 ] ; 2 uses
  %.0811.i.i.i.i.i33 = phi ptr [ %i.ei, %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i38 ], [ %i.cz, %.lr.ph.preheader.i.i.i.i.i30 ] ; 11 uses
  %.0910.i.i.i.i.i34 = phi ptr [ %i.eh, %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i38 ], [ %.016.lcssa, %.lr.ph.preheader.i.i.i.i.i30 ] ; 12 uses
  %i.df = load ptr, ptr %.0811.i.i.i.i.i33, align 8, !tbaa !102 ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33, i64 16 ; 4 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  %i.di = load ptr, ptr %.0910.i.i.i.i.i34, align 8, !tbaa !102 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34, i64 16 ; 6 uses
  %i.dk = icmp eq ptr %i.di, %i.dj                ; 2 uses
  br i1 %i.dh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i42: ; preds = %.lr.ph.i.i.i.i.i31
  br i1 %i.dk, label %bb.w, label %.thread.i.i.i.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i35: ; preds = %.lr.ph.i.i.i.i.i31
  br i1 %i.dk, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i36

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i42
  %i.dl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34, i64 8 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !126 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 16
  tail call void @llvm.assume(i1 %i.dn)
  %.not21.i.i.i.i.i.i.i39 = icmp eq ptr %.0910.i.i.i.i.i34, %.0811.i.i.i.i.i33
  br i1 %.not21.i.i.i.i.i.i.i39, label %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i38, label %bb.x, !prof !370

bb.x:                                             ; preds = %bb.w
  switch i64 %i.dm, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i40
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.do = load i8, ptr %i.di, align 1, !tbaa !103
  store i8 %i.do, ptr %i.df, align 1, !tbaa !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i40

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.di, i64 %i.dm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i40: ; preds = %bb.z, %bb.y, %bb.x
  %i.dp = load i64, ptr %i.dl, align 8, !tbaa !126 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !126
  %i.dr = load ptr, ptr %.0811.i.i.i.i.i33, align 8, !tbaa !102
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dp
  store i8 0, ptr %i.ds, align 1, !tbaa !103
  %.pre.i.i.i.i.i.i.i41 = load ptr, ptr %.0910.i.i.i.i.i34, align 8, !tbaa !102
  br label %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i38

.thread.i.i.i.i.i.i.i43:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i42
  %i.dt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33, i64 8
  store ptr %i.di, ptr %.0811.i.i.i.i.i33, align 8, !tbaa !102
  %i.du = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !126
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !126
  %i.dw = load i64, ptr %i.dj, align 8, !tbaa !103
  store i64 %i.dw, ptr %i.dg, align 8, !tbaa !103
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i35
  %i.dx = load i64, ptr %i.dg, align 8, !tbaa !103
  store ptr %i.di, ptr %.0811.i.i.i.i.i33, align 8, !tbaa !102
  %i.dy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !126
  %i.ea = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33, i64 8
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !126
  %i.eb = load i64, ptr %i.dj, align 8, !tbaa !103
  store i64 %i.eb, ptr %i.dg, align 8, !tbaa !103
  %.not.i.i.i.i.i.i.i37 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i.i.i37, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i36
  store ptr %i.df, ptr %.0910.i.i.i.i.i34, align 8, !tbaa !102
  store i64 %i.dx, ptr %i.dj, align 8, !tbaa !103
  br label %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i38

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i36, %.thread.i.i.i.i.i.i.i43
  store ptr %i.dj, ptr %.0910.i.i.i.i.i34, align 8, !tbaa !102
  br label %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i38

_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i38: ; preds = %bb.ab, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i40, %bb.w
  %i.ec = phi ptr [ %.pre.i.i.i.i.i.i.i41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i40 ], [ %i.df, %bb.aa ], [ %i.dj, %bb.ab ], [ %i.di, %bb.w ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34, i64 8
  store i64 0, ptr %i.ed, align 8, !tbaa !126
  store i8 0, ptr %i.ec, align 1, !tbaa !103
  %i.ee = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34, i64 32
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !162
  store i32 %i.eg, ptr %i.ee, align 8, !tbaa !162
  %i.eh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34, i64 40
  %i.ei = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33, i64 40 ; 2 uses
  %i.ej = add nsw i64 %.013.i.i.i.i.i32, -1
  %i.ek = icmp sgt i64 %.013.i.i.i.i.i32, 1
  br i1 %i.ek, label %.lr.ph.i.i.i.i.i31, label %_ZSt4moveIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit44.loopexit, !llvm.loop !23

_ZSt4moveIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit44.loopexit: ; preds = %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i.i.i.i.i38
  %6 = ptrtoint ptr %i.ei to i64
  br label %_ZSt4moveIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit44

_ZSt4moveIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit44: ; preds = %_ZSt4moveIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit44.loopexit, %_ZSt4moveIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit
  %.08.lcssa.i.i.i.i.i29 = phi i64 [ %i.cw, %_ZSt4moveIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit ], [ %6, %_ZSt4moveIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEET0_T_SH_SG_.exit44.loopexit ]
  %i.el = sub i64 %.08.lcssa.i.i.i.i.i29, %i.cw
  %i.em = getelementptr inbounds i8, ptr %i.cz, i64 %i.el
  ret ptr %i.em
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKSA_SJ_EEEEvT_SN_SN_T0_SO_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr nofree readonly captures(none) %5) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond90 = or i1 %i.a, %i.b
  br i1 %or.cond90, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8694 = phi i64 [ %4, %.lr.ph ], [ %i.an, %tailrecurse ] ; 4 uses
  %.tr8593 = phi i64 [ %3, %.lr.ph ], [ %i.am, %tailrecurse ] ; 4 uses
  %.tr8392 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 7 uses
  %.tr91 = phi ptr [ %0, %.lr.ph ], [ %i.al, %tailrecurse ] ; 7 uses
  %i.d = add nsw i64 %.tr8694, %.tr8593
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(36) %.tr8392, ptr noundef nonnull align 8 dereferenceable(36) %.tr91), !inline_history !24
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESF_EvT_T0_(ptr nonnull %.tr91, ptr nonnull %.tr8392)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.g = icmp sgt i64 %.tr8593, %.tr8694
  %i.h = ptrtoint ptr %.tr8392 to i64             ; 4 uses
  br i1 %i.g, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit61

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.i = sdiv i64 %.tr8593, 2                     ; 2 uses
  %i.j = getelementptr inbounds [40 x i8], ptr %.tr91, i64 %i.i ; 2 uses
  %i.k = sub i64 %i.c, %i.h                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Iter_comp_valIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.m = udiv exact i64 %i.k, 40
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i
  %.019.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.m, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %.sroa.014.018.i = phi ptr [ %.sroa.014.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr8392, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %i.n = lshr i64 %.019.i, 1                      ; 3 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %.sroa.014.018.i, i64 %i.n ; 2 uses
  %i.p = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(36) %i.o, ptr noundef nonnull align 8 dereferenceable(36) %i.j), !inline_history !25 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.r = xor i64 %i.n, -1
  %i.s = add nsw i64 %.019.i, %i.r
  %.sroa.014.1.i = select i1 %i.p, ptr %i.q, ptr %.sroa.014.018.i ; 3 uses
  %.1.i = select i1 %i.p, i64 %i.s, i64 %i.n      ; 2 uses
  %i.t = icmp sgt i64 %.1.i, 0
  br i1 %i.t, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Iter_comp_valIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit.loopexit, !llvm.loop !26

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Iter_comp_valIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.014.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Iter_comp_valIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Iter_comp_valIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Iter_comp_valIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Iter_comp_valIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit.loopexit ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.014.0.lcssa.i = phi ptr [ %.sroa.014.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Iter_comp_valIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit.loopexit ], [ %.tr8392, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.u = sub i64 %.pre-phi, %i.h
  %i.v = sdiv exact i64 %i.u, 40
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit61: ; preds = %bb.e
  %i.w = sdiv i64 %.tr8694, 2                     ; 2 uses
  %i.x = getelementptr inbounds [40 x i8], ptr %.tr8392, i64 %i.w ; 2 uses
  %i.y = ptrtoint ptr %.tr91 to i64               ; 3 uses
  %i.z = sub i64 %i.h, %i.y                       ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i63, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Val_comp_iterIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i63: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit61
  %i.ab = udiv exact i64 %i.z, 40
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i64

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i64: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i64, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i63
  %.019.i65 = phi i64 [ %.1.i70, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %i.ab, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i63 ] ; 2 uses
  %.sroa.014.018.i66 = phi ptr [ %.sroa.014.1.i69, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %.tr91, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i63 ] ; 2 uses
  %i.ac = lshr i64 %.019.i65, 1                   ; 3 uses
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %.sroa.014.018.i66, i64 %i.ac ; 2 uses
  %i.ae = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(36) %i.x, ptr noundef nonnull align 8 dereferenceable(36) %i.ad), !inline_history !27 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ag = xor i64 %i.ac, -1
  %i.ah = add nsw i64 %.019.i65, %i.ag
  %.sroa.014.1.i69 = select i1 %i.ae, ptr %.sroa.014.018.i66, ptr %i.af ; 3 uses
  %.1.i70 = select i1 %i.ae, i64 %i.ac, i64 %i.ah ; 2 uses
  %i.ai = icmp sgt i64 %.1.i70, 0
  br i1 %i.ai, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i64, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Val_comp_iterIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit.loopexit, !llvm.loop !28

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Val_comp_iterIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %.pre97 = ptrtoint ptr %.sroa.014.1.i69 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Val_comp_iterIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Val_comp_iterIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Val_comp_iterIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit61
  %.pre-phi98 = phi i64 [ %.pre97, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Val_comp_iterIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit.loopexit ], [ %i.y, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit61 ]
  %.sroa.014.0.lcssa.i62 = phi ptr [ %.sroa.014.1.i69, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Val_comp_iterIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit.loopexit ], [ %.tr91, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit61 ]
  %i.aj = sub i64 %.pre-phi98, %i.y
  %i.ak = sdiv exact i64 %i.aj, 40
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Val_comp_iterIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Iter_comp_valIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit
  %.sroa.072.0 = phi ptr [ %i.j, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Iter_comp_valIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit ], [ %.sroa.014.0.lcssa.i62, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Val_comp_iterIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.014.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Iter_comp_valIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit ], [ %i.x, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Val_comp_iterIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit ] ; 2 uses
  %.049 = phi i64 [ %i.v, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Iter_comp_valIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit ], [ %i.w, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Val_comp_iterIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Iter_comp_valIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit ], [ %i.ak, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESA_NS0_5__ops14_Val_comp_iterIPFbRKSA_SJ_EEEET_SN_SN_RKT0_T1_.exit ] ; 2 uses
  %i.al = tail call fastcc ptr @_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISB_SaISB_EEEEEET_SH_SH_SH_(ptr %.sroa.072.0, ptr %.tr8392, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKSA_SJ_EEEEvT_SN_SN_T0_SO_T1_(ptr %.tr91, ptr %.sroa.072.0, ptr %i.al, i64 noundef %.0, i64 noundef %.049, ptr %5)
  %i.am = sub nsw i64 %.tr8593, %.0               ; 2 uses
  %i.an = sub nsw i64 %.tr8694, %.049             ; 2 uses
  %i.ao = icmp eq i64 %i.am, 0
  %i.ap = icmp eq i64 %i.an, 0
  %or.cond = or i1 %i.ao, %i.ap
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEESF_EvT_T0_(ptr %0, ptr %1) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.(anonymous namespace)::JBT", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !125
  %i.b = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !126  ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !102
  %i.i = load i64, ptr %i.c, align 8, !tbaa !103
  store i64 %i.i, ptr %i.a, align 8, !tbaa !103
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !126
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.j = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.j, ptr %i.l, align 8, !tbaa !126
  store ptr %i.c, ptr %0, align 8, !tbaa !102
  store i64 0, ptr %i.k, align 8, !tbaa !126
  store i8 0, ptr %i.c, align 8, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !162
  store i32 %i.o, ptr %i.m, align 8, !tbaa !162
  %i.p = load ptr, ptr %1, align 8, !tbaa !102    ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !126  ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %.not21.i.i.i = icmp eq ptr %1, %0
  br i1 %.not21.i.i.i, label %_ZN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit.i, label %bb.d, !prof !370

bb.d:                                             ; preds = %bb.c
  switch i64 %i.t, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.p, align 1, !tbaa !103
  store i8 %i.v, ptr %i.c, align 8, !tbaa !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.w = load i64, ptr %i.s, align 8, !tbaa !126  ; 2 uses
end_hunk_0
