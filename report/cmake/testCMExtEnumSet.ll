Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/testCMExtEnumSet?download=true
inline.NumInlined: 731
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_Z16testCMExtEnumSetiPPc:bb.a
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !12  ; 2 uses
  %i.bo = icmp ugt i8 %i.bn, %i.bl                ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.bo, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i4, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  br i1 %i.bo, label %._crit_edge.thread.i.i.i.i, label %bb.k

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.at, %.lr.ph.i ] ; 4 uses
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !19
  %i.bq = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.bp
  br i1 %i.bq, label %select.unfold.i.i.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.br = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #15
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i
  %i.bs = phi i8 [ %.pre.i.i.i, %bb.j ], [ %i.bn, %._crit_edge.i.i.i.i ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.j ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.bt = icmp ult i8 %i.bs, %i.bl
  br i1 %i.bt, label %select.unfold.i.i.i, label %bb.m

select.unfold.i.i.i:                              ; preds = %bb.k, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.k ] ; 3 uses
  %i.bu = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.at
  br i1 %i.bu, label %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %select.unfold.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !12
  %i.bx = icmp ugt i8 %i.bw, %i.bl
  br label %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i: ; preds = %bb.l, %select.unfold.i.i.i
  %i.by = phi i1 [ %i.bx, %bb.l ], [ true, %select.unfold.i.i.i ]
  %i.bz = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc.i:                                         ; preds = %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store i8 %i.bl, ptr %i.ca, align 1, !tbaa !12
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.by, ptr noundef nonnull %i.bz, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.at) #14
  %i.cb = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.cc = add i64 %i.cb, 1                        ; 2 uses
  store i64 %i.cc, ptr %i.ax, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %.noexc.i, %bb.k
  %i.cd = phi i64 [ %i.cc, %.noexc.i ], [ %i.bk, %bb.k ] ; 2 uses
  %i.ce = add i64 %.sroa.0.0118.i, 1              ; 2 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %i.ce, i64 5) ; 5 uses
  %i.cf = add i64 %umax.i, -1                     ; 2 uses
  %.not.i30.i.first_iter = icmp ult i64 %i.ce, 3  ; 2 uses
  %exitcond.not.i275 = icmp eq i64 %.sroa.0.0118.i, %i.cf
  br i1 %exitcond.not.i275, label %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEppEv.exit.i, label %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.lr.ph

_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.lr.ph: ; preds = %bb.m
  %i.cg = xor i64 %.sroa.0.0118.i, -1
  %i.ch = add i64 %umax.i, %i.cg                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.ch, 64
  br i1 %min.iters.check, label %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.lr.ph
  %n.vec = and i64 %i.ch, -16                     ; 3 uses
  %i.ci = add i64 %.sroa.0.0118.i, %n.vec
  %i.cj = insertelement <16 x i1> poison, i1 %.not.i30.i.first_iter, i64 0
  %i.ck = shufflevector <16 x i1> %i.cj, <16 x i1> poison, <16 x i32> zeroinitializer
  %i.cl = freeze <16 x i1> %i.ck                  ; 2 uses
  %i.cm = bitcast <16 x i1> %i.cl to i16
  %.not = icmp eq i16 %i.cm, 0
  %broadcast.splatinsert296 = insertelement <16 x i64> poison, i64 %.sroa.0.0118.i, i64 0
  %broadcast.splat297 = shufflevector <16 x i64> %broadcast.splatinsert296, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add <16 x i64> %broadcast.splat297, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i64> %vec.ind, splat (i64 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEppEv.exit.i, label %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.preheader

_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.preheader: ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.lr.ph, %middle.block
  %.ph435 = phi i64 [ %.sroa.0.0118.i, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.lr.ph ], [ %i.ci, %middle.block ]
  br label %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i

vector.early.exit:                                ; preds = %vector.body
  %first.active.lane = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.cl, i1 false)
  %i.co = extractelement <16 x i64> %vec.ind, i64 %first.active.lane
  %i.cp = add i64 %i.co, 1
  br label %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i._ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEppEv.exit.i_crit_edge

bb.n:                                             ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i
  %exitcond.not.i = icmp eq i64 %i.cr, %i.cf
  br i1 %exitcond.not.i, label %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEppEv.exit.i, label %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i, !llvm.loop !30

_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i: ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.preheader, %bb.n
  %i.cq = phi i64 [ %i.cr, %bb.n ], [ %.ph435, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.preheader ]
  %i.cr = add i64 %i.cq, 1                        ; 3 uses
  br i1 %.not.i30.i.first_iter, label %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i._ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEppEv.exit.i_crit_edge, label %bb.n, !llvm.loop !31

_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i._ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEppEv.exit.i_crit_edge: ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i, %vector.early.exit
  %split = phi i64 [ %i.cp, %vector.early.exit ], [ %i.cr, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i ]
  br label %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEppEv.exit.i, !llvm.loop !31

_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEppEv.exit.i: ; preds = %bb.n, %middle.block, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i._ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEppEv.exit.i_crit_edge, %bb.m
  %.lcssa136.i = phi i64 [ %umax.i, %bb.m ], [ %split, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i._ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEppEv.exit.i_crit_edge ], [ %umax.i, %middle.block ], [ %umax.i, %bb.n ] ; 2 uses
  %.not88.i = icmp eq i64 %.lcssa136.i, 5
  br i1 %.not88.i, label %._crit_edge.i, label %.lr.ph.i

.loopexit92.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %._crit_edge.i
  %i.cs = load i32, ptr @_ZN12_GLOBAL__N_16failedE, align 4, !tbaa !72
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr @_ZN12_GLOBAL__N_16failedE, align 4, !tbaa !72
  br label %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit.i

_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit.i: ; preds = %bb.i, %.loopexit92.i, %bb.h
  %i.cu = load ptr, ptr %i.au, align 8, !tbaa !18
  invoke void @_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE8_M_eraseEPSt13_Rb_tree_nodeIhE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.cu)
          to label %_ZNSt3setIhSt4lessIhESaIhEE5clearEv.exit.i unwind label %bb.o

bb.o:                                             ; preds = %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit.i
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #17
  unreachable

_ZNSt3setIhSt4lessIhESaIhEE5clearEv.exit.i:       ; preds = %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit.i
  store ptr null, ptr %i.au, align 8, !tbaa !18
  store ptr %i.at, ptr %i.av, align 8, !tbaa !19
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !20
  store i64 0, ptr %i.ax, align 8, !tbaa !21
  br label %.preheader.i.preheader.i41.i

bb.p:                                             ; preds = %_ZNSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEppEi.exit.i
  %i.cx = load i64, ptr %i.ay, align 8, !tbaa !21
  %i.cy = icmp eq i64 %i.fj, %i.cx
  br i1 %i.cy, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %bb.p
  %i.cz = load ptr, ptr %i.av, align 8, !tbaa !19 ; 2 uses
  %.not6.i.i.i.i.i.i.i33.i = icmp eq ptr %i.cz, %i.at
  br i1 %.not6.i.i.i.i.i.i.i33.i, label %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit40.i, label %.lr.ph.i.i.i.i.preheader.i.i.i34.i

.lr.ph.i.i.i.i.preheader.i.i.i34.i:               ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !19
  br label %.lr.ph.i.i.i.i.i.i.i35.i

.lr.ph.i.i.i.i.i.i.i35.i:                         ; preds = %bb.r, %.lr.ph.i.i.i.i.preheader.i.i.i34.i
  %.sroa.0.08.i.i.i.i.i.i.i36.i = phi ptr [ %i.dh, %bb.r ], [ %i.db, %.lr.ph.i.i.i.i.preheader.i.i.i34.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i37.i = phi ptr [ %i.dg, %bb.r ], [ %i.cz, %.lr.ph.i.i.i.i.preheader.i.i.i34.i ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i37.i, i64 32
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !12
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i36.i, i64 32
  %i.df = load i8, ptr %i.de, align 1, !tbaa !12
  %.not.i38.i = icmp eq i8 %i.dd, %i.df
  br i1 %.not.i38.i, label %bb.r, label %.loopexit.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i35.i
  %i.dg = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07.i.i.i.i.i.i.i37.i) #15 ; 2 uses
  %i.dh = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.08.i.i.i.i.i.i.i36.i) #15
  %.not.i.i.i.i.i.i.i39.i = icmp eq ptr %i.dg, %i.at
  br i1 %.not.i.i.i.i.i.i.i39.i, label %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit40.i, label %.lr.ph.i.i.i.i.i.i.i35.i, !llvm.loop !28

.preheader.i.preheader.i41.i:                     ; preds = %_ZNSt3setIhSt4lessIhESaIhEE5clearEv.exit.i, %_ZNSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEppEi.exit.i
  %.sroa.081.0.i91 = phi i64 [ 5, %_ZNSt3setIhSt4lessIhESaIhEE5clearEv.exit.i ], [ %i.fv, %_ZNSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEppEi.exit.i ] ; 5 uses
  %i.di = phi i64 [ 0, %_ZNSt3setIhSt4lessIhESaIhEE5clearEv.exit.i ], [ %i.fj, %_ZNSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEppEi.exit.i ]
  %i.dj = add i64 %.sroa.081.0.i91, -1            ; 6 uses
  %i.dk = trunc i64 %i.dj to i8                   ; 3 uses
  %i.dl = and i64 %i.dj, 255                      ; 4 uses
  %i.dm = icmp ugt i8 %i.dk, 4
  br i1 %i.dm, label %.loopexit.i.invoke.i, label %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.peel.i.i

_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.peel.i.i: ; preds = %.preheader.i.preheader.i41.i
  %i.dn = icmp samesign ult i64 %i.dl, 3
  br i1 %i.dn, label %_ZNKSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEdeEv.exit.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.peel.i.i
  %i.do = trunc i64 %.sroa.081.0.i91 to i8
  %i.dp = add i8 %i.do, -2                        ; 2 uses
  %i.dq = zext i8 %i.dp to i64
  %i.dr = call i64 @llvm.usub.sat.i64(i64 %i.dq, i64 2) ; 2 uses
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check318 = icmp samesign ult i64 %i.dr, 143
  br i1 %min.iters.check318, label %.preheader.i.i.i.preheader398, label %vector.scevcheck315

vector.scevcheck315:                              ; preds = %.preheader.i.i.i.preheader
  %i.dt = trunc i64 %.sroa.081.0.i91 to i8
  %i.du = add i8 %i.dt, -2                        ; 2 uses
  %i.dv = zext i8 %i.du to i64
  %i.dw = call i64 @llvm.usub.sat.i64(i64 %i.dv, i64 2)
  %i.dx = trunc nuw i64 %i.dw to i8
  %i.dy = icmp ult i8 %i.du, %i.dx
  br i1 %i.dy, label %.preheader.i.i.i.preheader398, label %vector.ph319

vector.ph319:                                     ; preds = %vector.scevcheck315
  %n.vec320 = and i64 %i.ds, 496                  ; 4 uses
  %i.dz = sub i64 %i.dj, %n.vec320
  %broadcast.splatinsert321 = insertelement <16 x i64> poison, i64 %i.dj, i64 0
  %broadcast.splat322 = shufflevector <16 x i64> %broadcast.splatinsert321, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splat322.fr = freeze <16 x i64> %broadcast.splat322
  %i.ea = add <16 x i64> %broadcast.splat322.fr, <i64 0, i64 -1, i64 -2, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8, i64 -9, i64 -10, i64 -11, i64 -12, i64 -13, i64 -14, i64 -15>
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body.interim328, %vector.ph319
  %index324 = phi i64 [ 0, %vector.ph319 ], [ %index.next326, %vector.body.interim328 ]
  %vec.ind325 = phi <16 x i64> [ %i.ea, %vector.ph319 ], [ %vec.ind.next327, %vector.body.interim328 ] ; 2 uses
  %i.eb = add <16 x i64> %vec.ind325, splat (i64 -1) ; 2 uses
  %i.ec = trunc <16 x i64> %i.eb to <16 x i8>
  %i.ed = icmp ugt <16 x i8> %i.ec, splat (i8 4)  ; 2 uses
  %i.ee = bitcast <16 x i1> %i.ed to i16
  %.not355 = icmp eq i16 %i.ee, 0
  br i1 %.not355, label %vector.body.interim328, label %vector.early.exit331

vector.body.interim328:                           ; preds = %vector.body323
  %vec.ind.next327 = add <16 x i64> %vec.ind325, splat (i64 -16)
  %index.next326 = add nuw i64 %index324, 16      ; 2 uses
  %i.ef = icmp eq i64 %index.next326, %n.vec320
  br i1 %i.ef, label %middle.block329, label %vector.body323, !llvm.loop !32

middle.block329:                                  ; preds = %vector.body.interim328
  %i.eg = trunc i64 %n.vec320 to i8
  %i.eh = add i8 %i.eg, -1
  %i.ei = sub i8 %i.dp, %i.eh
  %cmp.n330 = icmp eq i64 %i.ds, %n.vec320
  br i1 %cmp.n330, label %_ZNKSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEdeEv.exit.i, label %.preheader.i.i.i.preheader398

.preheader.i.i.i.preheader398:                    ; preds = %vector.scevcheck315, %.preheader.i.i.i.preheader, %middle.block329
  %.ph399 = phi i64 [ %i.dj, %vector.scevcheck315 ], [ %i.dj, %.preheader.i.i.i.preheader ], [ %i.dz, %middle.block329 ]
  br label %.preheader.i.i.i

vector.early.exit331:                             ; preds = %vector.body323
  %first.active.lane332 = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ed, i1 false)
  %i.ej = extractelement <16 x i64> %i.eb, i64 %first.active.lane332
  %i.ek = and i64 %i.ej, 255
  br label %.loopexit.i.invoke.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader398, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.i
  %i.el = phi i64 [ %i.em, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.i ], [ %.ph399, %.preheader.i.i.i.preheader398 ]
  %i.em = add i64 %i.el, -1                       ; 3 uses
  %i.en = trunc i64 %i.em to i8                   ; 2 uses
  %i.eo = and i64 %i.em, 255                      ; 2 uses
  %i.ep = icmp ugt i8 %i.en, 4
  br i1 %i.ep, label %.loopexit.i.invoke.i, label %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.i

.loopexit.i.invoke.i:                             ; preds = %.preheader.i.preheader.i41.i, %.preheader.i.i.i, %.preheader.i.i69.i, %vector.early.exit331, %vector.early.exit312
  %i.eq = phi i64 [ %i.fx, %.preheader.i.i69.i ], [ %i.eo, %.preheader.i.i.i ], [ %i.ft, %vector.early.exit312 ], [ %i.ek, %vector.early.exit331 ], [ %i.dl, %.preheader.i.preheader.i41.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %i.eq, i64 noundef 5) #13
          to label %.loopexit.i.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.i.cont.i:                               ; preds = %.loopexit.i.invoke.i
  unreachable

_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.i: ; preds = %.preheader.i.i.i
  %i.er = icmp samesign ult i64 %i.eo, 3
  br i1 %i.er, label %_ZNKSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEdeEv.exit.i, label %.preheader.i.i.i, !llvm.loop !33

_ZNKSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEdeEv.exit.i: ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.i, %middle.block329, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.peel.i.i
  %.pre-phi.i = phi i8 [ %i.dk, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.peel.i.i ], [ %i.ei, %middle.block329 ], [ %i.en, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.i ] ; 4 uses
  %.02022.i.i.i44.i = load ptr, ptr %i.au, align 8, !tbaa !23 ; 2 uses
  %.not23.i.i.i45.i = icmp eq ptr %.02022.i.i.i44.i, null
  br i1 %.not23.i.i.i45.i, label %._crit_edge.thread.i.i.i62.i, label %.lr.ph.i.i.i46.i

.lr.ph.i.i.i46.i:                                 ; preds = %_ZNKSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEdeEv.exit.i, %.lr.ph.i.i.i46.i
  %.02024.i.i.i47.i = phi ptr [ %.020.i.i.i50.i, %.lr.ph.i.i.i46.i ], [ %.02022.i.i.i44.i, %_ZNKSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEdeEv.exit.i ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.02024.i.i.i47.i, i64 32
  %i.et = load i8, ptr %i.es, align 1, !tbaa !12  ; 2 uses
  %i.eu = icmp ult i8 %.pre-phi.i, %i.et          ; 2 uses
  %.in.v.i.i.i48.i = select i1 %i.eu, i64 16, i64 24
  %.in.i.i.i49.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i47.i, i64 %.in.v.i.i.i48.i
  %.020.i.i.i50.i = load ptr, ptr %.in.i.i.i49.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i51.i = icmp eq ptr %.020.i.i.i50.i, null
  br i1 %.not.i.i.i51.i, label %._crit_edge.i.i.i52.i, label %.lr.ph.i.i.i46.i, !llvm.loop !0

._crit_edge.i.i.i52.i:                            ; preds = %.lr.ph.i.i.i46.i
  br i1 %i.eu, label %._crit_edge.thread.i.i.i62.i, label %bb.t

._crit_edge.thread.i.i.i62.i:                     ; preds = %._crit_edge.i.i.i52.i, %_ZNKSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEdeEv.exit.i
  %.019.lcssa29.i.i.i63.i = phi ptr [ %.02024.i.i.i47.i, %._crit_edge.i.i.i52.i ], [ %i.at, %_ZNKSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEdeEv.exit.i ] ; 4 uses
  %i.ev = load ptr, ptr %i.av, align 8, !tbaa !19
  %i.ew = icmp eq ptr %.019.lcssa29.i.i.i63.i, %i.ev
  br i1 %i.ew, label %select.unfold.i.i59.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread.i.i.i62.i
  %i.ex = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i63.i) #15
  %.phi.trans.insert.i.i64.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %.pre.i.i65.i = load i8, ptr %.phi.trans.insert.i.i64.i, align 1, !tbaa !12
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i52.i
  %i.ey = phi i8 [ %.pre.i.i65.i, %bb.s ], [ %i.et, %._crit_edge.i.i.i52.i ]
  %.019.lcssa28.i.i.i53.i = phi ptr [ %.019.lcssa29.i.i.i63.i, %bb.s ], [ %.02024.i.i.i47.i, %._crit_edge.i.i.i52.i ]
  %i.ez = icmp ult i8 %i.ey, %.pre-phi.i
  br i1 %i.ez, label %select.unfold.i.i59.i, label %.preheader.i.i69.preheader.i

select.unfold.i.i59.i:                            ; preds = %bb.t, %._crit_edge.thread.i.i.i62.i
  %.sroa.4.0.i.ph.i.i60.i = phi ptr [ %.019.lcssa29.i.i.i63.i, %._crit_edge.thread.i.i.i62.i ], [ %.019.lcssa28.i.i.i53.i, %bb.t ] ; 3 uses
  %i.fa = icmp eq ptr %.sroa.4.0.i.ph.i.i60.i, %i.at
  br i1 %i.fa, label %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i61.i, label %bb.u

bb.u:                                             ; preds = %select.unfold.i.i59.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i60.i, i64 32
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !12
  %i.fd = icmp ult i8 %.pre-phi.i, %i.fc
  br label %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i61.i

_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i61.i: ; preds = %bb.u, %select.unfold.i.i59.i
  %i.fe = phi i1 [ %i.fd, %bb.u ], [ true, %select.unfold.i.i59.i ]
  %i.ff = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16
          to label %.noexc67.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc67.i:                                       ; preds = %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i61.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  store i8 %.pre-phi.i, ptr %i.fg, align 1, !tbaa !12
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fe, ptr noundef nonnull %i.ff, ptr noundef nonnull %.sroa.4.0.i.ph.i.i60.i, ptr noundef nonnull align 8 dereferenceable(32) %i.at) #14
  %i.fh = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.fi = add i64 %i.fh, 1                        ; 2 uses
  store i64 %i.fi, ptr %i.ax, align 8, !tbaa !21
  br label %.preheader.i.i69.preheader.i

.preheader.i.i69.preheader.i:                     ; preds = %.noexc67.i, %bb.t
  %i.fj = phi i64 [ %i.fi, %.noexc67.i ], [ %i.di, %bb.t ] ; 2 uses
  %min.iters.check299 = icmp samesign ult i64 %i.dl, 129
  %i.fk = call i64 @llvm.usub.sat.i64(i64 %i.dl, i64 2)
  %i.fl = trunc nuw i64 %i.fk to i8
  %i.fm = icmp ugt i8 %i.fl, %i.dk
  %or.cond = select i1 %min.iters.check299, i1 true, i1 %i.fm
  br i1 %or.cond, label %.preheader.i.i69.i, label %vector.ph300

vector.ph300:                                     ; preds = %.preheader.i.i69.preheader.i
  %broadcast.splatinsert302 = insertelement <16 x i64> poison, i64 %.sroa.081.0.i91, i64 0
  %broadcast.splat303 = shufflevector <16 x i64> %broadcast.splatinsert302, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splat303.fr = freeze <16 x i64> %broadcast.splat303
  %i.fn = add <16 x i64> %broadcast.splat303.fr, <i64 0, i64 -1, i64 -2, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8, i64 -9, i64 -10, i64 -11, i64 -12, i64 -13, i64 -14, i64 -15>
  br label %vector.body304

vector.body304:                                   ; preds = %vector.body.interim309, %vector.ph300
  %vec.ind306 = phi <16 x i64> [ %i.fn, %vector.ph300 ], [ %vec.ind.next308, %vector.body.interim309 ] ; 2 uses
  %i.fo = add <16 x i64> %vec.ind306, splat (i64 -1) ; 2 uses
  %i.fp = trunc <16 x i64> %i.fo to <16 x i8>
  %i.fq = icmp ugt <16 x i8> %i.fp, splat (i8 4)  ; 2 uses
  %i.fr = bitcast <16 x i1> %i.fq to i16
  %.not357 = icmp eq i16 %i.fr, 0
  br i1 %.not357, label %vector.body.interim309, label %vector.early.exit312

vector.body.interim309:                           ; preds = %vector.body304
  %vec.ind.next308 = add <16 x i64> %vec.ind306, splat (i64 -16)
  br label %vector.body304, !llvm.loop !34

vector.early.exit312:                             ; preds = %vector.body304
  %first.active.lane313 = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.fq, i1 false)
  %i.fs = extractelement <16 x i64> %i.fo, i64 %first.active.lane313
  %i.ft = and i64 %i.fs, 255
  br label %.loopexit.i.invoke.i

.preheader.i.i69.i:                               ; preds = %.preheader.i.i69.preheader.i, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i70.i
  %i.fu = phi i64 [ %i.fv, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i70.i ], [ %.sroa.081.0.i91, %.preheader.i.i69.preheader.i ]
  %i.fv = add i64 %i.fu, -1                       ; 5 uses
  %i.fw = trunc i64 %i.fv to i8
  %i.fx = and i64 %i.fv, 255                      ; 2 uses
  %i.fy = icmp ugt i8 %i.fw, 4
  br i1 %i.fy, label %.loopexit.i.invoke.i, label %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i70.i

_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i70.i: ; preds = %.preheader.i.i69.i
  %i.fz = icmp samesign ult i64 %i.fx, 3
  br i1 %i.fz, label %_ZNSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEppEi.exit.i, label %.preheader.i.i69.i, !llvm.loop !35

_ZNSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEppEi.exit.i: ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i70.i
  %.not89.i = icmp eq i64 %i.fv, 0
  br i1 %.not89.i, label %bb.p, label %.preheader.i.preheader.i41.i, !llvm.loop !36

common.resume:                                    ; preds = %bb.az, %bb.bt, %bb.cg, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp437, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn141.pn.pn.i, %bb.az ], [ %.pn135.pn.pn.i, %bb.bt ], [ %.pn.pn.pn.i, %bb.cg ]
  resume { ptr, i32 } %common.resume.op

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i61.i, %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i, %.loopexit.i.invoke.i
  %lpad.loopexit.split-lp437 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setIhSt4lessIhESaIhEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  call void @_ZNSt3setIhSt4lessIhESaIhEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %common.resume

end_hunk_0
