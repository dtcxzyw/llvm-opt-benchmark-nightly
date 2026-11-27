Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/testCMExtEnumSet?download=true
inline.NumInlined: 731
inline.NumDeleted: 291
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_Z16testCMExtEnumSetiPPc:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i, %.lr.ph.i.i.i.i
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.02022.i.i.i.i, %.lr.ph.i ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
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
  %.ph439 = phi i64 [ %.sroa.0.0118.i, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.lr.ph ], [ %i.ci, %middle.block ]
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
  %i.cq = phi i64 [ %i.cr, %bb.n ], [ %.ph439, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.preheader ]
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
  %i.cy = icmp eq i64 %18, %i.cx
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
  %.sroa.081.0.i91 = phi i64 [ 5, %_ZNSt3setIhSt4lessIhESaIhEE5clearEv.exit.i ], [ %i.fw, %_ZNSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEppEi.exit.i ] ; 7 uses
  %i.di = phi i64 [ 0, %_ZNSt3setIhSt4lessIhESaIhEE5clearEv.exit.i ], [ %18, %_ZNSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEppEi.exit.i ]
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
  %min.iters.check322 = icmp samesign ult i64 %i.dr, 31
  br i1 %min.iters.check322, label %.preheader.i.i.i.preheader403, label %vector.scevcheck319

vector.scevcheck319:                              ; preds = %.preheader.i.i.i.preheader
  %i.dt = trunc i64 %.sroa.081.0.i91 to i8
  %i.du = add i8 %i.dt, -2                        ; 2 uses
  %i.dv = zext i8 %i.du to i64
  %i.dw = call i64 @llvm.usub.sat.i64(i64 %i.dv, i64 2)
  %i.dx = trunc nuw i64 %i.dw to i8
  %i.dy = icmp ult i8 %i.du, %i.dx
  br i1 %i.dy, label %.preheader.i.i.i.preheader403, label %vector.ph323

vector.ph323:                                     ; preds = %vector.scevcheck319
  %n.vec324 = and i64 %i.ds, 496                  ; 4 uses
  %i.dz = sub i64 %i.dj, %n.vec324
  %broadcast.splatinsert325 = insertelement <16 x i64> poison, i64 %i.dj, i64 0
  %broadcast.splat326 = shufflevector <16 x i64> %broadcast.splatinsert325, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.ea = add <16 x i64> %broadcast.splat326, <i64 0, i64 -1, i64 -2, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8, i64 -9, i64 -10, i64 -11, i64 -12, i64 -13, i64 -14, i64 -15>
  %i.eb = trunc i64 %.sroa.081.0.i91 to i8
  %i.ec = add i8 %i.eb, -2
  %broadcast.splatinsert327 = insertelement <16 x i8> poison, i8 %i.ec, i64 0
  %broadcast.splat328 = shufflevector <16 x i8> %broadcast.splatinsert327, <16 x i8> poison, <16 x i32> zeroinitializer
  %broadcast.splat328.fr = freeze <16 x i8> %broadcast.splat328
  %i.ed = add <16 x i8> %broadcast.splat328.fr, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15>
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body.interim336, %vector.ph323
  %index330 = phi i64 [ 0, %vector.ph323 ], [ %index.next333, %vector.body.interim336 ]
  %vec.ind331 = phi <16 x i64> [ %i.ea, %vector.ph323 ], [ %vec.ind.next334, %vector.body.interim336 ] ; 2 uses
  %vec.ind332 = phi <16 x i8> [ %i.ed, %vector.ph323 ], [ %vec.ind.next335, %vector.body.interim336 ] ; 2 uses
  %i.ee = icmp ugt <16 x i8> %vec.ind332, splat (i8 4) ; 2 uses
  %i.ef = bitcast <16 x i1> %i.ee to i16
  %.not362 = icmp eq i16 %i.ef, 0
  br i1 %.not362, label %vector.body.interim336, label %vector.early.exit339

vector.body.interim336:                           ; preds = %vector.body329
  %vec.ind.next335 = add <16 x i8> %vec.ind332, splat (i8 -16)
  %vec.ind.next334 = add <16 x i64> %vec.ind331, splat (i64 -16)
  %index.next333 = add nuw i64 %index330, 16      ; 2 uses
  %i.eg = icmp eq i64 %index.next333, %n.vec324
  br i1 %i.eg, label %middle.block337, label %vector.body329, !llvm.loop !32

middle.block337:                                  ; preds = %vector.body.interim336
  %i.eh = trunc i64 %n.vec324 to i8
  %i.ei = add i8 %i.eh, -1
  %i.ej = sub i8 %i.dp, %i.ei
  %cmp.n338 = icmp eq i64 %i.ds, %n.vec324
  br i1 %cmp.n338, label %_ZNKSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEdeEv.exit.i, label %.preheader.i.i.i.preheader403

.preheader.i.i.i.preheader403:                    ; preds = %vector.scevcheck319, %.preheader.i.i.i.preheader, %middle.block337
  %.ph404 = phi i64 [ %i.dj, %vector.scevcheck319 ], [ %i.dj, %.preheader.i.i.i.preheader ], [ %i.dz, %middle.block337 ]
  br label %.preheader.i.i.i

vector.early.exit339:                             ; preds = %vector.body329
  %first.active.lane340 = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ee, i1 false)
  %i.ek = extractelement <16 x i64> %vec.ind331, i64 %first.active.lane340
  %i.el = add i64 %i.ek, 255
  %i.em = and i64 %i.el, 255
  br label %.loopexit.i.invoke.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader403, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.i
  %i.en = phi i64 [ %i.eo, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.i ], [ %.ph404, %.preheader.i.i.i.preheader403 ]
  %i.eo = add i64 %i.en, -1                       ; 3 uses
  %i.ep = trunc i64 %i.eo to i8                   ; 2 uses
  %i.eq = and i64 %i.eo, 255                      ; 2 uses
  %i.er = icmp ugt i8 %i.ep, 4
  br i1 %i.er, label %.loopexit.i.invoke.i, label %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.i

.loopexit.i.invoke.i:                             ; preds = %.preheader.i.preheader.i41.i, %.preheader.i.i.i, %.preheader.i.i69.i, %vector.early.exit339, %vector.early.exit316
  %i.es = phi i64 [ %i.fy, %.preheader.i.i69.i ], [ %i.eq, %.preheader.i.i.i ], [ %i.fu, %vector.early.exit316 ], [ %i.em, %vector.early.exit339 ], [ %i.dl, %.preheader.i.preheader.i41.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %i.es, i64 noundef 5) #13
          to label %.loopexit.i.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.i.cont.i:                               ; preds = %.loopexit.i.invoke.i
  unreachable

_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.i: ; preds = %.preheader.i.i.i
  %i.et = icmp samesign ult i64 %i.eq, 3
  br i1 %i.et, label %_ZNKSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEdeEv.exit.i, label %.preheader.i.i.i, !llvm.loop !33

_ZNKSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEdeEv.exit.i: ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.i, %middle.block337, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.peel.i.i
  %.pre-phi.i = phi i8 [ %i.dk, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.peel.i.i ], [ %i.ej, %middle.block337 ], [ %i.ep, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i.i ] ; 4 uses
  %.02022.i.i.i44.i = load ptr, ptr %i.au, align 8, !tbaa !23 ; 2 uses
  %.not23.i.i.i45.i = icmp eq ptr %.02022.i.i.i44.i, null
  br i1 %.not23.i.i.i45.i, label %._crit_edge.thread.i.i.i62.i, label %.lr.ph.i.i.i46.i

.lr.ph.i.i.i46.i:                                 ; preds = %_ZNKSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEdeEv.exit.i, %.lr.ph.i.i.i46.i
  %.02024.i.i.i47.i = phi ptr [ %.020.i.i.i50.i, %.lr.ph.i.i.i46.i ], [ %.02022.i.i.i44.i, %_ZNKSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEdeEv.exit.i ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.02024.i.i.i47.i, i64 32
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !12  ; 2 uses
  %i.ew = icmp ult i8 %.pre-phi.i, %i.ev          ; 2 uses
  %.in.v.i.i.i48.i = select i1 %i.ew, i64 16, i64 24
  %.in.i.i.i49.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i47.i, i64 %.in.v.i.i.i48.i
  %.020.i.i.i50.i = load ptr, ptr %.in.i.i.i49.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i51.i = icmp eq ptr %.020.i.i.i50.i, null
  br i1 %.not.i.i.i51.i, label %._crit_edge.i.i.i52.i, label %.lr.ph.i.i.i46.i, !llvm.loop !0

._crit_edge.i.i.i52.i:                            ; preds = %.lr.ph.i.i.i46.i
  br i1 %i.ew, label %._crit_edge.thread.i.i.i62.i, label %bb.t

._crit_edge.thread.i.i.i62.i:                     ; preds = %._crit_edge.i.i.i52.i, %_ZNKSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEdeEv.exit.i
  %.019.lcssa29.i.i.i63.i = phi ptr [ %.02024.i.i.i47.i, %._crit_edge.i.i.i52.i ], [ %i.at, %_ZNKSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEdeEv.exit.i ] ; 4 uses
  %i.ex = load ptr, ptr %i.av, align 8, !tbaa !19
  %i.ey = icmp eq ptr %.019.lcssa29.i.i.i63.i, %i.ex
  br i1 %i.ey, label %select.unfold.i.i59.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread.i.i.i62.i
  %i.ez = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i63.i) #15
  %.phi.trans.insert.i.i64.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %.pre.i.i65.i = load i8, ptr %.phi.trans.insert.i.i64.i, align 1, !tbaa !12
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i52.i
  %i.fa = phi i8 [ %.pre.i.i65.i, %bb.s ], [ %i.ev, %._crit_edge.i.i.i52.i ]
  %.019.lcssa28.i.i.i53.i = phi ptr [ %.019.lcssa29.i.i.i63.i, %bb.s ], [ %.02024.i.i.i47.i, %._crit_edge.i.i.i52.i ]
  %i.fb = icmp ult i8 %i.fa, %.pre-phi.i
  br i1 %i.fb, label %select.unfold.i.i59.i, label %.preheader.i.i69.preheader.i.a

select.unfold.i.i59.i:                            ; preds = %bb.t, %._crit_edge.thread.i.i.i62.i
  %.sroa.4.0.i.ph.i.i60.i = phi ptr [ %.019.lcssa29.i.i.i63.i, %._crit_edge.thread.i.i.i62.i ], [ %.019.lcssa28.i.i.i53.i, %bb.t ] ; 3 uses
  %i.fc = icmp eq ptr %.sroa.4.0.i.ph.i.i60.i, %i.at
  br i1 %i.fc, label %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i61.i, label %bb.u

bb.u:                                             ; preds = %select.unfold.i.i59.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i60.i, i64 32
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !12
  %i.ff = icmp ult i8 %.pre-phi.i, %i.fe
  br label %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i61.i

_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i61.i: ; preds = %bb.u, %select.unfold.i.i59.i
  %i.fg = phi i1 [ %i.ff, %bb.u ], [ true, %select.unfold.i.i59.i ]
  %i.fh = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16
          to label %.noexc67.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc67.i:                                       ; preds = %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i61.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  store i8 %.pre-phi.i, ptr %i.fi, align 1, !tbaa !12
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fg, ptr noundef nonnull %i.fh, ptr noundef nonnull %.sroa.4.0.i.ph.i.i60.i, ptr noundef nonnull align 8 dereferenceable(32) %i.at) #14
  %i.fj = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.fk = add i64 %i.fj, 1                        ; 2 uses
  store i64 %i.fk, ptr %i.ax, align 8, !tbaa !21
  br label %.preheader.i.i69.preheader.i.a

.preheader.i.i69.preheader.i.a:                   ; preds = %.noexc67.i, %bb.t
  %18 = phi i64 [ %i.fk, %.noexc67.i ], [ %i.di, %bb.t ] ; 2 uses
  %min.iters.check299 = icmp samesign ult i64 %i.dl, 33
  %19 = call i64 @llvm.usub.sat.i64(i64 %i.dl, i64 2)
  %20 = trunc nuw i64 %19 to i8
  %i.fl = icmp ugt i8 %20, %i.dk
  %or.cond = select i1 %min.iters.check299, i1 true, i1 %i.fl
  br i1 %or.cond, label %.preheader.i.i69.i, label %vector.ph300

vector.ph300:                                     ; preds = %.preheader.i.i69.preheader.i.a
  %broadcast.splatinsert302 = insertelement <16 x i64> poison, i64 %.sroa.081.0.i91, i64 0
  %broadcast.splat303 = shufflevector <16 x i64> %broadcast.splatinsert302, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.fm = add <16 x i64> %broadcast.splat303, <i64 0, i64 -1, i64 -2, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8, i64 -9, i64 -10, i64 -11, i64 -12, i64 -13, i64 -14, i64 -15>
  %i.fn = trunc i64 %.sroa.081.0.i91 to i8
  %i.fo = add i8 %i.fn, -1
  %broadcast.splatinsert304 = insertelement <16 x i8> poison, i8 %i.fo, i64 0
  %broadcast.splat305 = shufflevector <16 x i8> %broadcast.splatinsert304, <16 x i8> poison, <16 x i32> zeroinitializer
  %broadcast.splat305.fr = freeze <16 x i8> %broadcast.splat305
  %i.fp = add <16 x i8> %broadcast.splat305.fr, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15>
  br label %vector.body306

vector.body306:                                   ; preds = %vector.body.interim313, %vector.ph300
  %vec.ind308 = phi <16 x i64> [ %i.fm, %vector.ph300 ], [ %vec.ind.next311, %vector.body.interim313 ] ; 2 uses
  %vec.ind309 = phi <16 x i8> [ %i.fp, %vector.ph300 ], [ %vec.ind.next312, %vector.body.interim313 ] ; 2 uses
  %i.fq = icmp ugt <16 x i8> %vec.ind309, splat (i8 4) ; 2 uses
  %i.fr = bitcast <16 x i1> %i.fq to i16
  %.not363 = icmp eq i16 %i.fr, 0
  br i1 %.not363, label %vector.body.interim313, label %vector.early.exit316

vector.body.interim313:                           ; preds = %vector.body306
  %vec.ind.next312 = add <16 x i8> %vec.ind309, splat (i8 -16)
  %vec.ind.next311 = add <16 x i64> %vec.ind308, splat (i64 -16)
  br label %vector.body306, !llvm.loop !34

vector.early.exit316:                             ; preds = %vector.body306
  %first.active.lane317 = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.fq, i1 false)
  %i.fs = extractelement <16 x i64> %vec.ind308, i64 %first.active.lane317
  %i.ft = add i64 %i.fs, 255
  %i.fu = and i64 %i.ft, 255
  br label %.loopexit.i.invoke.i

.preheader.i.i69.i:                               ; preds = %.preheader.i.i69.preheader.i.a, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i70.i
  %i.fv = phi i64 [ %i.fw, %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i70.i ], [ %.sroa.081.0.i91, %.preheader.i.i69.preheader.i.a ]
  %i.fw = add i64 %i.fv, -1                       ; 5 uses
  %i.fx = trunc i64 %i.fw to i8
  %i.fy = and i64 %i.fw, 255                      ; 2 uses
  %i.fz = icmp ugt i8 %i.fx, 4
  br i1 %i.fz, label %.loopexit.i.invoke.i, label %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i70.i

_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i70.i: ; preds = %.preheader.i.i69.i
  %i.ga = icmp samesign ult i64 %i.fy, 3
  br i1 %i.ga, label %_ZNSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEppEi.exit.i, label %.preheader.i.i69.i, !llvm.loop !35

_ZNSt16reverse_iteratorIN2cm17enum_set_iteratorINS0_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEEEppEi.exit.i: ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EE4testEh.exit.i.i70.i
  %.not89.i = icmp eq i64 %i.fw, 0
  br i1 %.not89.i, label %bb.p, label %.preheader.i.preheader.i41.i, !llvm.loop !36

common.resume:                                    ; preds = %bb.az, %bb.bt, %bb.cg, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp441, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn141.pn.pn.i, %bb.az ], [ %.pn135.pn.pn.i, %bb.bt ], [ %.pn.pn.pn.i, %bb.cg ]
  resume { ptr, i32 } %common.resume.op

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i61.i, %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i, %.loopexit.i.invoke.i
  %lpad.loopexit.split-lp441 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setIhSt4lessIhESaIhEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  call void @_ZNSt3setIhSt4lessIhESaIhEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %common.resume

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i35.i, %bb.p
  %i.gb = load i32, ptr @_ZN12_GLOBAL__N_16failedE, align 4, !tbaa !72
  %i.gc = add nsw i32 %i.gb, 1
  store i32 %i.gc, ptr @_ZN12_GLOBAL__N_16failedE, align 4, !tbaa !72
  br label %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit40.i

_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit40.i: ; preds = %bb.r, %.loopexit.i, %bb.q
  %i.gd = load ptr, ptr %i.au, align 8, !tbaa !18
  invoke void @_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE8_M_eraseEPSt13_Rb_tree_nodeIhE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.gd)
          to label %_ZNSt3setIhSt4lessIhESaIhEED2Ev.exit.i unwind label %bb.v

bb.v:                                             ; preds = %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit40.i
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  call void @__clang_call_terminate(ptr %i.gf) #17
  unreachable

_ZNSt3setIhSt4lessIhESaIhEED2Ev.exit.i:           ; preds = %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit40.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  %i.gg = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !18
  invoke void @_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE8_M_eraseEPSt13_Rb_tree_nodeIhE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.gh)
          to label %_ZN12_GLOBAL__N_113testIterationEv.exit unwind label %bb.w

bb.w:                                             ; preds = %_ZNSt3setIhSt4lessIhESaIhEED2Ev.exit.i
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #17
  unreachable

_ZN12_GLOBAL__N_113testIterationEv.exit:          ; preds = %_ZNSt3setIhSt4lessIhESaIhEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  %i.gk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.5, i64 noundef 13) ; 0 uses
  %i.gl = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %i.gm = getelementptr i8, ptr %i.gl, i64 -24
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 240
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !63 ; 6 uses
  %.not.i.i.i633.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i633.i, label %bb.x, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i5

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_113testIterationEv.exit
  call void @_ZSt16__throw_bad_castv() #13
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i5: ; preds = %_ZN12_GLOBAL__N_113testIterationEv.exit
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  %i.gs = load i8, ptr %i.gr, align 8, !tbaa !69
  %.not.i1.i.i.i6 = icmp eq i8 %i.gs, 0
  br i1 %.not.i1.i.i.i6, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i5
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 67
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !12
  br label %_ZN2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEpLESt16initializer_listIS2_E.exit.i

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i5
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gq)
  %i.gv = load ptr, ptr %i.gq, align 8, !tbaa !47
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = call noundef signext i8 %i.gx(ptr noundef nonnull align 8 dereferenceable(570) %i.gq, i8 noundef signext 10), !inline_history !37
  br label %_ZN2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEpLESt16initializer_listIS2_E.exit.i

_ZN2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEpLESt16initializer_listIS2_E.exit.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i7 = phi i8 [ %i.gu, %bb.y ], [ %i.gy, %bb.z ]
  %i.gz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i7)
  %i.ha = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gz) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store <4 x i8> <i8 0, i8 1, i8 2, i8 3>, ptr %i.a, align 4, !tbaa !12
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 4, ptr %i.hb, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  invoke void @_ZNSt3setIhSt4lessIhESaIhEEC2ESt16initializer_listIhERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nonnull %i.a, i64 5, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.lr.ph.preheader.i8 unwind label %bb.ac

.lr.ph.preheader.i8:                              ; preds = %_ZN2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEpLESt16initializer_listIS2_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 15 uses
  store i32 0, ptr %i.hc, align 8, !tbaa !17
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr null, ptr %i.hd, align 8, !tbaa !18
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  store ptr %i.hc, ptr %i.he, align 8, !tbaa !19
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.hc, ptr %i.hf, align 8, !tbaa !20
  %i.hg = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 6 uses
  store i64 0, ptr %i.hg, align 8, !tbaa !21
  br label %.lr.ph.i9

._crit_edge.i22:                                  ; preds = %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !21
  %i.hj = icmp eq i64 %i.in, %i.hi
  br i1 %i.hj, label %bb.aa, label %.loopexit794.i

bb.aa:                                            ; preds = %._crit_edge.i22
  %i.hk = load ptr, ptr %i.he, align 8, !tbaa !19 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i25 = icmp eq ptr %i.hk, %i.hc
  br i1 %.not6.i.i.i.i.i.i.i.i25, label %.loopexit795.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i26

.lr.ph.i.i.i.i.preheader.i.i.i.i26:               ; preds = %bb.aa
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !19
  br label %.lr.ph.i.i.i.i.i.i.i.i27

.lr.ph.i.i.i.i.i.i.i.i27:                         ; preds = %bb.ab, %.lr.ph.i.i.i.i.preheader.i.i.i.i26
  %.sroa.0.08.i.i.i.i.i.i.i.i28 = phi ptr [ %i.hs, %bb.ab ], [ %i.hm, %.lr.ph.i.i.i.i.preheader.i.i.i.i26 ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i29 = phi ptr [ %i.hr, %bb.ab ], [ %i.hk, %.lr.ph.i.i.i.i.preheader.i.i.i.i26 ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i29, i64 32
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !12
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i.i28, i64 32
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !12
  %.not.i276.i = icmp eq i8 %i.ho, %i.hq
  br i1 %.not.i276.i, label %bb.ab, label %.loopexit794.i

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i27
  %i.hr = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07.i.i.i.i.i.i.i.i29) #15 ; 2 uses
  %i.hs = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.08.i.i.i.i.i.i.i.i28) #15
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.hr, %i.hc
  br i1 %.not.i.i.i.i.i.i.i.i30, label %.loopexit795.i, label %.lr.ph.i.i.i.i.i.i.i.i27, !llvm.loop !28

bb.ac:                                            ; preds = %_ZN2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEpLESt16initializer_listIS2_E.exit.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.az

.lr.ph.i9:                                        ; preds = %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i, %.lr.ph.preheader.i8
  %i.hu = phi i64 [ %i.in, %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i ], [ 0, %.lr.ph.preheader.i8 ]
  %.sroa.0737.0862.i = phi i64 [ %.lcssa958.i, %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i ], [ 0, %.lr.ph.preheader.i8 ] ; 7 uses
  %i.hv = trunc i64 %.sroa.0737.0862.i to i8      ; 4 uses
  %.02022.i.i.i.i10 = load ptr, ptr %i.hd, align 8, !tbaa !23 ; 2 uses
  %.not23.i.i.i.i11 = icmp eq ptr %.02022.i.i.i.i10, null
  br i1 %.not23.i.i.i.i11, label %._crit_edge.thread.i.i.i.i35, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i9, %.lr.ph.i.i.i.i12
  %.02024.i.i.i.i13 = phi ptr [ %.020.i.i.i.i16, %.lr.ph.i.i.i.i12 ], [ %.02022.i.i.i.i10, %.lr.ph.i9 ] ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i13, i64 32
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !12  ; 2 uses
  %i.hy = icmp ugt i8 %i.hx, %i.hv                ; 2 uses
  %.in.v.i.i.i.i14 = select i1 %i.hy, i64 16, i64 24
  %.in.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i13, i64 %.in.v.i.i.i.i14
  %.020.i.i.i.i16 = load ptr, ptr %.in.i.i.i.i15, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i.i17 = icmp eq ptr %.020.i.i.i.i16, null
  br i1 %.not.i.i.i.i17, label %._crit_edge.i.i.i.i18, label %.lr.ph.i.i.i.i12, !llvm.loop !0

._crit_edge.i.i.i.i18:                            ; preds = %.lr.ph.i.i.i.i12
  br i1 %i.hy, label %._crit_edge.thread.i.i.i.i35, label %bb.ae

._crit_edge.thread.i.i.i.i35:                     ; preds = %._crit_edge.i.i.i.i18, %.lr.ph.i9
  %.019.lcssa29.i.i.i.i36 = phi ptr [ %.02024.i.i.i.i13, %._crit_edge.i.i.i.i18 ], [ %i.hc, %.lr.ph.i9 ] ; 4 uses
  %i.hz = load ptr, ptr %i.he, align 8, !tbaa !19
  %i.ia = icmp eq ptr %.019.lcssa29.i.i.i.i36, %i.hz
  br i1 %i.ia, label %select.unfold.i.i.i31, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.thread.i.i.i.i35
  %i.ib = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i36) #15
  %.phi.trans.insert.i.i.i37 = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %.pre.i.i.i38 = load i8, ptr %.phi.trans.insert.i.i.i37, align 1, !tbaa !12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i.i.i.i18
end_hunk_0
