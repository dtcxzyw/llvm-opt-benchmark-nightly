Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/testCMExtEnumSet?download=true
inline.NumInlined: 731
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_Z16testCMExtEnumSetiPPc:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #13
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load i8, ptr %i.q, align 8, !tbaa !69
  %.not.i1.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 67
  %i.t = load i8, ptr %i.s, align 1, !tbaa !12
  br label %_ZN12_GLOBAL__N_115testDeclarationEv.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.p)
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef signext i8 %i.w(ptr noundef nonnull align 8 dereferenceable(570) %i.p, i8 noundef signext 10), !inline_history !26
  br label %_ZN12_GLOBAL__N_115testDeclarationEv.exit

_ZN12_GLOBAL__N_115testDeclarationEv.exit:        ; preds = %bb.c, %bb.d
  %.0.i.i.i.i = phi i8 [ %i.t, %bb.c ], [ %i.x, %bb.d ]
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i)
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y) ; 0 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 15) ; 0 uses
  %i.ab = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !63 ; 6 uses
  %.not.i.i.i76.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i76.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_115testDeclarationEv.exit
  tail call void @_ZSt16__throw_bad_castv() #13
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1: ; preds = %_ZN12_GLOBAL__N_115testDeclarationEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !69
  %.not.i1.i.i.i2 = icmp eq i8 %i.ai, 0
  br i1 %.not.i1.i.i.i2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 67
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !12
  br label %.lr.ph.preheader.i

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ag)
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef signext i8 %i.an(ptr noundef nonnull align 8 dereferenceable(570) %i.ag, i8 noundef signext 10), !inline_history !27
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g, %bb.f
  %.0.i.i.i.i3 = phi i8 [ %i.ak, %bb.f ], [ %i.ao, %bb.g ]
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i3)
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i8 0, ptr %i.i, align 1, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 1, ptr %i.ar, align 1, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 2, ptr %i.as, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  call void @_ZNSt3setIhSt4lessIhESaIhEEC2ESt16initializer_listIhERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr nonnull %i.i, i64 3, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 15 uses
  store i32 0, ptr %i.at, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr null, ptr %i.au, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 6 uses
  store ptr %i.at, ptr %i.av, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 6 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !21
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEppEv.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !21
  %i.ba = icmp eq i64 %i.cd, %i.az
  br i1 %i.ba, label %bb.h, label %.loopexit92.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !19 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.at
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !19
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i.i.i = phi ptr [ %i.bj, %bb.i ], [ %i.bd, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i = phi ptr [ %i.bi, %bb.i ], [ %i.bb, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i, i64 32
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i.i, i64 32
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !12
  %.not.i.i = icmp eq i8 %i.bf, %i.bh
  br i1 %.not.i.i, label %bb.i, label %.loopexit92.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bi = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07.i.i.i.i.i.i.i.i) #15 ; 2 uses
  %i.bj = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.08.i.i.i.i.i.i.i.i) #15
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, %i.at
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !28

.lr.ph.i:                                         ; preds = %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEppEv.exit.i, %.lr.ph.preheader.i
  %i.bk = phi i64 [ %i.cd, %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEppEv.exit.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.0.0118.i = phi i64 [ %.lcssa136.i, %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_15Test2ELm5ELi0EEEEppEv.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 7 uses
  %i.bl = trunc i64 %.sroa.0.0118.i to i8         ; 4 uses
  %.02022.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !23 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

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
  %min.iters.check = icmp ult i64 %i.ch, 32
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
  %min.iters.check318 = icmp samesign ult i64 %i.dr, 79
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
  %min.iters.check299 = icmp samesign ult i64 %i.dl, 81
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

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i35.i, %bb.p
  %i.ga = load i32, ptr @_ZN12_GLOBAL__N_16failedE, align 4, !tbaa !72
  %i.gb = add nsw i32 %i.ga, 1
  store i32 %i.gb, ptr @_ZN12_GLOBAL__N_16failedE, align 4, !tbaa !72
  br label %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit40.i

_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit40.i: ; preds = %bb.r, %.loopexit.i, %bb.q
  %i.gc = load ptr, ptr %i.au, align 8, !tbaa !18
  invoke void @_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE8_M_eraseEPSt13_Rb_tree_nodeIhE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.gc)
          to label %_ZNSt3setIhSt4lessIhESaIhEED2Ev.exit.i unwind label %bb.v

bb.v:                                             ; preds = %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit40.i
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #17
  unreachable

_ZNSt3setIhSt4lessIhESaIhEED2Ev.exit.i:           ; preds = %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit40.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !18
  invoke void @_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE8_M_eraseEPSt13_Rb_tree_nodeIhE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.gg)
          to label %_ZN12_GLOBAL__N_113testIterationEv.exit unwind label %bb.w

bb.w:                                             ; preds = %_ZNSt3setIhSt4lessIhESaIhEED2Ev.exit.i
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #17
  unreachable

_ZN12_GLOBAL__N_113testIterationEv.exit:          ; preds = %_ZNSt3setIhSt4lessIhESaIhEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  %i.gj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.5, i64 noundef 13) ; 0 uses
  %i.gk = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %i.gl = getelementptr i8, ptr %i.gk, i64 -24
  %i.gm = load i64, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 240
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !63 ; 6 uses
  %.not.i.i.i633.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i633.i, label %bb.x, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i5

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_113testIterationEv.exit
  call void @_ZSt16__throw_bad_castv() #13
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i5: ; preds = %_ZN12_GLOBAL__N_113testIterationEv.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 56
  %i.gr = load i8, ptr %i.gq, align 8, !tbaa !69
  %.not.i1.i.i.i6 = icmp eq i8 %i.gr, 0
  br i1 %.not.i1.i.i.i6, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i5
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 67
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !12
  br label %_ZN2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEpLESt16initializer_listIS2_E.exit.i

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i5
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gp)
  %i.gu = load ptr, ptr %i.gp, align 8, !tbaa !47
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = call noundef signext i8 %i.gw(ptr noundef nonnull align 8 dereferenceable(570) %i.gp, i8 noundef signext 10), !inline_history !37
  br label %_ZN2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEpLESt16initializer_listIS2_E.exit.i

_ZN2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEpLESt16initializer_listIS2_E.exit.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i7 = phi i8 [ %i.gt, %bb.y ], [ %i.gx, %bb.z ]
  %i.gy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i7)
  %i.gz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gy) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store <4 x i8> <i8 0, i8 1, i8 2, i8 3>, ptr %i.a, align 4, !tbaa !12
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 4, ptr %i.ha, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  invoke void @_ZNSt3setIhSt4lessIhESaIhEEC2ESt16initializer_listIhERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nonnull %i.a, i64 5, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.lr.ph.preheader.i8 unwind label %bb.ac

.lr.ph.preheader.i8:                              ; preds = %_ZN2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEpLESt16initializer_listIS2_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 15 uses
  store i32 0, ptr %i.hb, align 8, !tbaa !17
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr null, ptr %i.hc, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  store ptr %i.hb, ptr %i.hd, align 8, !tbaa !19
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.hb, ptr %i.he, align 8, !tbaa !20
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 6 uses
  store i64 0, ptr %i.hf, align 8, !tbaa !21
  br label %.lr.ph.i9

._crit_edge.i22:                                  ; preds = %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !21
  %i.hi = icmp eq i64 %i.im, %i.hh
  br i1 %i.hi, label %bb.aa, label %.loopexit794.i

bb.aa:                                            ; preds = %._crit_edge.i22
  %i.hj = load ptr, ptr %i.hd, align 8, !tbaa !19 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i25 = icmp eq ptr %i.hj, %i.hb
  br i1 %.not6.i.i.i.i.i.i.i.i25, label %.loopexit795.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i26

.lr.ph.i.i.i.i.preheader.i.i.i.i26:               ; preds = %bb.aa
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !19
  br label %.lr.ph.i.i.i.i.i.i.i.i27

.lr.ph.i.i.i.i.i.i.i.i27:                         ; preds = %bb.ab, %.lr.ph.i.i.i.i.preheader.i.i.i.i26
  %.sroa.0.08.i.i.i.i.i.i.i.i28 = phi ptr [ %i.hr, %bb.ab ], [ %i.hl, %.lr.ph.i.i.i.i.preheader.i.i.i.i26 ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i29 = phi ptr [ %i.hq, %bb.ab ], [ %i.hj, %.lr.ph.i.i.i.i.preheader.i.i.i.i26 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i29, i64 32
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !12
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i.i28, i64 32
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !12
  %.not.i276.i = icmp eq i8 %i.hn, %i.hp
  br i1 %.not.i276.i, label %bb.ab, label %.loopexit794.i

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i27
  %i.hq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07.i.i.i.i.i.i.i.i29) #15 ; 2 uses
  %i.hr = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.08.i.i.i.i.i.i.i.i28) #15
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.hq, %i.hb
  br i1 %.not.i.i.i.i.i.i.i.i30, label %.loopexit795.i, label %.lr.ph.i.i.i.i.i.i.i.i27, !llvm.loop !28

bb.ac:                                            ; preds = %_ZN2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEpLESt16initializer_listIS2_E.exit.i
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.az

.lr.ph.i9:                                        ; preds = %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i, %.lr.ph.preheader.i8
  %i.ht = phi i64 [ %i.im, %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i ], [ 0, %.lr.ph.preheader.i8 ]
  %.sroa.0737.0862.i = phi i64 [ %.lcssa958.i, %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i ], [ 0, %.lr.ph.preheader.i8 ] ; 7 uses
  %i.hu = trunc i64 %.sroa.0737.0862.i to i8      ; 4 uses
  %.02022.i.i.i.i10 = load ptr, ptr %i.hc, align 8, !tbaa !23 ; 2 uses
  %.not23.i.i.i.i11 = icmp eq ptr %.02022.i.i.i.i10, null
  br i1 %.not23.i.i.i.i11, label %._crit_edge.thread.i.i.i.i35, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i9, %.lr.ph.i.i.i.i12
  %.02024.i.i.i.i13 = phi ptr [ %.020.i.i.i.i16, %.lr.ph.i.i.i.i12 ], [ %.02022.i.i.i.i10, %.lr.ph.i9 ] ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i13, i64 32
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !12  ; 2 uses
  %i.hx = icmp ugt i8 %i.hw, %i.hu                ; 2 uses
  %.in.v.i.i.i.i14 = select i1 %i.hx, i64 16, i64 24
  %.in.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i13, i64 %.in.v.i.i.i.i14
  %.020.i.i.i.i16 = load ptr, ptr %.in.i.i.i.i15, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i.i17 = icmp eq ptr %.020.i.i.i.i16, null
  br i1 %.not.i.i.i.i17, label %._crit_edge.i.i.i.i18, label %.lr.ph.i.i.i.i12, !llvm.loop !0

._crit_edge.i.i.i.i18:                            ; preds = %.lr.ph.i.i.i.i12
  br i1 %i.hx, label %._crit_edge.thread.i.i.i.i35, label %bb.ae

._crit_edge.thread.i.i.i.i35:                     ; preds = %._crit_edge.i.i.i.i18, %.lr.ph.i9
  %.019.lcssa29.i.i.i.i36 = phi ptr [ %.02024.i.i.i.i13, %._crit_edge.i.i.i.i18 ], [ %i.hb, %.lr.ph.i9 ] ; 4 uses
  %i.hy = load ptr, ptr %i.hd, align 8, !tbaa !19
  %i.hz = icmp eq ptr %.019.lcssa29.i.i.i.i36, %i.hy
  br i1 %i.hz, label %select.unfold.i.i.i31, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.thread.i.i.i.i35
  %i.ia = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i36) #15
  %.phi.trans.insert.i.i.i37 = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %.pre.i.i.i38 = load i8, ptr %.phi.trans.insert.i.i.i37, align 1, !tbaa !12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i.i.i.i18
  %i.ib = phi i8 [ %.pre.i.i.i38, %bb.ad ], [ %i.hw, %._crit_edge.i.i.i.i18 ]
  %.019.lcssa28.i.i.i.i19 = phi ptr [ %.019.lcssa29.i.i.i.i36, %bb.ad ], [ %.02024.i.i.i.i13, %._crit_edge.i.i.i.i18 ]
  %i.ic = icmp ult i8 %i.ib, %i.hu
  br i1 %i.ic, label %select.unfold.i.i.i31, label %bb.ag

select.unfold.i.i.i31:                            ; preds = %bb.ae, %._crit_edge.thread.i.i.i.i35
  %.sroa.4.0.i.ph.i.i.i32 = phi ptr [ %.019.lcssa29.i.i.i.i36, %._crit_edge.thread.i.i.i.i35 ], [ %.019.lcssa28.i.i.i.i19, %bb.ae ] ; 3 uses
  %i.id = icmp eq ptr %.sroa.4.0.i.ph.i.i.i32, %i.hb
  br i1 %i.id, label %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i33, label %bb.af

bb.af:                                            ; preds = %select.unfold.i.i.i31
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i32, i64 32
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !12
  %i.ig = icmp ugt i8 %i.if, %i.hu
  br label %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i33

_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i33: ; preds = %bb.af, %select.unfold.i.i.i31
  %i.ih = phi i1 [ %i.ig, %bb.af ], [ true, %select.unfold.i.i.i31 ]
  %i.ii = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16
          to label %.noexc.i34 unwind label %.loopexit.split-lp790.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc.i34:                                       ; preds = %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i33
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  store i8 %i.hu, ptr %i.ij, align 1, !tbaa !12
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ih, ptr noundef nonnull %i.ii, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i32, ptr noundef nonnull align 8 dereferenceable(32) %i.hb) #14
  %i.ik = load i64, ptr %i.hf, align 8, !tbaa !21
  %i.il = add i64 %i.ik, 1                        ; 2 uses
  store i64 %i.il, ptr %i.hf, align 8, !tbaa !21
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc.i34, %bb.ae
  %i.im = phi i64 [ %i.il, %.noexc.i34 ], [ %i.ht, %bb.ae ] ; 2 uses
  %i.in = add i64 %.sroa.0737.0862.i, 1           ; 2 uses
  %umax.i20 = call i64 @llvm.umax.i64(i64 %i.in, i64 8) ; 5 uses
  %i.io = add i64 %umax.i20, -1                   ; 2 uses
  %.not.i278.i.first_iter = icmp ult i64 %i.in, 5 ; 2 uses
  %exitcond.not.i21277 = icmp eq i64 %.sroa.0737.0862.i, %i.io
  br i1 %exitcond.not.i21277, label %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i, label %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i.lr.ph

_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i.lr.ph: ; preds = %bb.ag
  %i.ip = xor i64 %.sroa.0737.0862.i, -1
  %i.iq = add i64 %umax.i20, %i.ip                ; 3 uses
  %min.iters.check335 = icmp ult i64 %i.iq, 32
  br i1 %min.iters.check335, label %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i.preheader, label %vector.ph336

vector.ph336:                                     ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i.lr.ph
  %n.vec337 = and i64 %i.iq, -16                  ; 3 uses
  %i.ir = add i64 %.sroa.0737.0862.i, %n.vec337
  %i.is = insertelement <16 x i1> poison, i1 %.not.i278.i.first_iter, i64 0
  %i.it = shufflevector <16 x i1> %i.is, <16 x i1> poison, <16 x i32> zeroinitializer
  %i.iu = freeze <16 x i1> %i.it                  ; 2 uses
  %i.iv = bitcast <16 x i1> %i.iu to i16
  %.not358 = icmp eq i16 %i.iv, 0
  %broadcast.splatinsert340 = insertelement <16 x i64> poison, i64 %.sroa.0737.0862.i, i64 0
  %broadcast.splat341 = shufflevector <16 x i64> %broadcast.splatinsert340, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction342 = add <16 x i64> %broadcast.splat341, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %vector.body343

vector.body343:                                   ; preds = %vector.body.interim348, %vector.ph336
  %index344 = phi i64 [ 0, %vector.ph336 ], [ %index.next346, %vector.body.interim348 ]
  %vec.ind345 = phi <16 x i64> [ %induction342, %vector.ph336 ], [ %vec.ind.next347, %vector.body.interim348 ] ; 2 uses
  br i1 %.not358, label %vector.body.interim348, label %vector.early.exit351

vector.body.interim348:                           ; preds = %vector.body343
  %vec.ind.next347 = add <16 x i64> %vec.ind345, splat (i64 16)
  %index.next346 = add nuw i64 %index344, 16      ; 2 uses
  %i.iw = icmp eq i64 %index.next346, %n.vec337
  br i1 %i.iw, label %middle.block349, label %vector.body343, !llvm.loop !38

middle.block349:                                  ; preds = %vector.body.interim348
  %cmp.n350 = icmp eq i64 %i.iq, %n.vec337
  br i1 %cmp.n350, label %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i, label %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i.preheader

_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i.preheader: ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i.lr.ph, %middle.block349
  %.ph = phi i64 [ %.sroa.0737.0862.i, %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i.lr.ph ], [ %i.ir, %middle.block349 ]
  br label %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i

vector.early.exit351:                             ; preds = %vector.body343
  %first.active.lane352 = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.iu, i1 false)
  %i.ix = extractelement <16 x i64> %vec.ind345, i64 %first.active.lane352
  %i.iy = add i64 %i.ix, 1
  br label %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i._ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i_crit_edge

bb.ah:                                            ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i
  %exitcond.not.i21 = icmp eq i64 %i.ja, %i.io
  br i1 %exitcond.not.i21, label %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i, label %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i, !llvm.loop !39

_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i: ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i.preheader, %bb.ah
  %i.iz = phi i64 [ %i.ja, %bb.ah ], [ %.ph, %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i.preheader ]
  %i.ja = add i64 %i.iz, 1                        ; 3 uses
  br i1 %.not.i278.i.first_iter, label %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i._ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i_crit_edge, label %bb.ah, !llvm.loop !40

_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i._ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i_crit_edge: ; preds = %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i, %vector.early.exit351
  %split278 = phi i64 [ %i.iy, %vector.early.exit351 ], [ %i.ja, %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i ]
  br label %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i, !llvm.loop !40

_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i: ; preds = %bb.ah, %middle.block349, %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i._ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i_crit_edge, %bb.ag
  %.lcssa958.i = phi i64 [ %umax.i20, %bb.ag ], [ %split278, %_ZNK2cm8enum_setIN12_GLOBAL__N_14TestELm8ELi0EE4testEh.exit.i.i._ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit.i_crit_edge ], [ %umax.i20, %middle.block349 ], [ %umax.i20, %bb.ah ] ; 2 uses
  %.not767.i = icmp eq i64 %.lcssa958.i, 8
  br i1 %.not767.i, label %._crit_edge.i22, label %.lr.ph.i9

.loopexit794.i:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i27, %._crit_edge.i22
  %i.jb = load i32, ptr @_ZN12_GLOBAL__N_16failedE, align 4, !tbaa !72
  %i.jc = add nsw i32 %i.jb, 1
  store i32 %i.jc, ptr @_ZN12_GLOBAL__N_16failedE, align 4, !tbaa !72
  br label %.loopexit795.i

.loopexit795.i:                                   ; preds = %bb.ab, %.loopexit794.i, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i8 3, ptr %i.b, align 1, !tbaa !12
  %i.jd = invoke noundef i64 @_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE5eraseERKh(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit.i unwind label %bb.al ; 0 uses

_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit.i:     ; preds = %.loopexit795.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i8 1, ptr %i.c, align 1, !tbaa !12
  %i.je = invoke noundef i64 @_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE5eraseERKh(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit282.i unwind label %bb.am ; 0 uses

_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit282.i:  ; preds = %_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.jf = load ptr, ptr %i.hc, align 8, !tbaa !18
  invoke void @_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE8_M_eraseEPSt13_Rb_tree_nodeIhE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.jf)
          to label %.lr.ph865.preheader.i unwind label %bb.ai

bb.ai:                                            ; preds = %_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit282.i
  %i.jg = landingpad { ptr, i32 }
          catch ptr null
  %i.jh = extractvalue { ptr, i32 } %i.jg, 0
  call void @__clang_call_terminate(ptr %i.jh) #17
  unreachable

.lr.ph865.preheader.i:                            ; preds = %_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit282.i
  store ptr null, ptr %i.hc, align 8, !tbaa !18
  store ptr %i.hb, ptr %i.hd, align 8, !tbaa !19
  store ptr %i.hb, ptr %i.he, align 8, !tbaa !20
  store i64 0, ptr %i.hf, align 8, !tbaa !21
  br label %.lr.ph865.i

._crit_edge866.i:                                 ; preds = %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit345.i
  %i.ji = load i64, ptr %i.hg, align 8, !tbaa !21
  %i.jj = icmp eq i64 %i.ko, %i.ji
  br i1 %i.jj, label %bb.aj, label %.loopexit788.i

bb.aj:                                            ; preds = %._crit_edge866.i
  %i.jk = load ptr, ptr %i.hd, align 8, !tbaa !19 ; 2 uses
  %.not6.i.i.i.i.i.i.i308.i = icmp eq ptr %i.jk, %i.hb
  br i1 %.not6.i.i.i.i.i.i.i308.i, label %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit315.i, label %.lr.ph.i.i.i.i.preheader.i.i.i309.i

.lr.ph.i.i.i.i.preheader.i.i.i309.i:              ; preds = %bb.aj
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !19
  br label %.lr.ph.i.i.i.i.i.i.i310.i

.lr.ph.i.i.i.i.i.i.i310.i:                        ; preds = %bb.ak, %.lr.ph.i.i.i.i.preheader.i.i.i309.i
  %.sroa.0.08.i.i.i.i.i.i.i311.i = phi ptr [ %i.js, %bb.ak ], [ %i.jm, %.lr.ph.i.i.i.i.preheader.i.i.i309.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i312.i = phi ptr [ %i.jr, %bb.ak ], [ %i.jk, %.lr.ph.i.i.i.i.preheader.i.i.i309.i ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i312.i, i64 32
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !12
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i311.i, i64 32
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !12
  %.not.i313.i = icmp eq i8 %i.jo, %i.jq
  br i1 %.not.i313.i, label %bb.ak, label %.loopexit788.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i310.i
  %i.jr = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07.i.i.i.i.i.i.i312.i) #15 ; 2 uses
  %i.js = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.08.i.i.i.i.i.i.i311.i) #15
  %.not.i.i.i.i.i.i.i314.i = icmp eq ptr %i.jr, %i.hb
  br i1 %.not.i.i.i.i.i.i.i314.i, label %_ZStneIhSt4lessIhESaIhEEbRKSt3setIT_T0_T1_ES9_.exit315.i, label %.lr.ph.i.i.i.i.i.i.i310.i, !llvm.loop !28

bb.al:                                            ; preds = %.loopexit795.i
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %.loopexit.split-lp790.i

bb.am:                                            ; preds = %_ZNSt3setIhSt4lessIhESaIhEE5eraseERKh.exit.i
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.loopexit.split-lp790.i

.lr.ph865thread-pre-split.i:                      ; preds = %_ZN2cm17enum_set_iteratorINS_8enum_setIN12_GLOBAL__N_14TestELm8ELi0EEEEppEv.exit345.i
  %.02022.i.i.i316.pr.i = load ptr, ptr %i.hc, align 8, !tbaa !23
  br label %.lr.ph865.i

.lr.ph865.i:                                      ; preds = %.lr.ph865thread-pre-split.i, %.lr.ph865.preheader.i
  %.02022.i.i.i316.i = phi ptr [ %.02022.i.i.i316.pr.i, %.lr.ph865thread-pre-split.i ], [ null, %.lr.ph865.preheader.i ] ; 2 uses
  %i.jv = phi i64 [ %i.ko, %.lr.ph865thread-pre-split.i ], [ 0, %.lr.ph865.preheader.i ]
  %.sroa.0727.0864.i = phi i64 [ %.lcssa955.i, %.lr.ph865thread-pre-split.i ], [ 0, %.lr.ph865.preheader.i ] ; 4 uses
  %i.jw = trunc i64 %.sroa.0727.0864.i to i8      ; 4 uses
  %.not23.i.i.i317.i = icmp eq ptr %.02022.i.i.i316.i, null
  br i1 %.not23.i.i.i317.i, label %._crit_edge.thread.i.i.i334.i, label %.lr.ph.i.i.i318.i

.lr.ph.i.i.i318.i:                                ; preds = %.lr.ph865.i, %.lr.ph.i.i.i318.i
  %.02024.i.i.i319.i = phi ptr [ %.020.i.i.i322.i, %.lr.ph.i.i.i318.i ], [ %.02022.i.i.i316.i, %.lr.ph865.i ] ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.02024.i.i.i319.i, i64 32
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !12  ; 2 uses
  %i.jz = icmp ugt i8 %i.jy, %i.jw                ; 2 uses
  %.in.v.i.i.i320.i = select i1 %i.jz, i64 16, i64 24
  %.in.i.i.i321.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i319.i, i64 %.in.v.i.i.i320.i
  %.020.i.i.i322.i = load ptr, ptr %.in.i.i.i321.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i323.i = icmp eq ptr %.020.i.i.i322.i, null
  br i1 %.not.i.i.i323.i, label %._crit_edge.i.i.i324.i, label %.lr.ph.i.i.i318.i, !llvm.loop !0

._crit_edge.i.i.i324.i:                           ; preds = %.lr.ph.i.i.i318.i
  br i1 %i.jz, label %._crit_edge.thread.i.i.i334.i, label %bb.ao

._crit_edge.thread.i.i.i334.i:                    ; preds = %._crit_edge.i.i.i324.i, %.lr.ph865.i
  %.019.lcssa29.i.i.i335.i = phi ptr [ %.02024.i.i.i319.i, %._crit_edge.i.i.i324.i ], [ %i.hb, %.lr.ph865.i ] ; 4 uses
  %i.ka = load ptr, ptr %i.hd, align 8, !tbaa !19
  %i.kb = icmp eq ptr %.019.lcssa29.i.i.i335.i, %i.ka
  br i1 %i.kb, label %select.unfold.i.i331.i, label %bb.an

bb.an:                                            ; preds = %._crit_edge.thread.i.i.i334.i
  %i.kc = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i335.i) #15
  %.phi.trans.insert.i.i336.i = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  %.pre.i.i337.i = load i8, ptr %.phi.trans.insert.i.i336.i, align 1, !tbaa !12
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge.i.i.i324.i
  %i.kd = phi i8 [ %.pre.i.i337.i, %bb.an ], [ %i.jy, %._crit_edge.i.i.i324.i ]
  %.019.lcssa28.i.i.i325.i = phi ptr [ %.019.lcssa29.i.i.i335.i, %bb.an ], [ %.02024.i.i.i319.i, %._crit_edge.i.i.i324.i ]
  %i.ke = icmp ult i8 %i.kd, %i.jw
  br i1 %i.ke, label %select.unfold.i.i331.i, label %bb.aq

select.unfold.i.i331.i:                           ; preds = %bb.ao, %._crit_edge.thread.i.i.i334.i
  %.sroa.4.0.i.ph.i.i332.i = phi ptr [ %.019.lcssa29.i.i.i335.i, %._crit_edge.thread.i.i.i334.i ], [ %.019.lcssa28.i.i.i325.i, %bb.ao ] ; 3 uses
  %i.kf = icmp eq ptr %.sroa.4.0.i.ph.i.i332.i, %i.hb
  br i1 %i.kf, label %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i333.i, label %bb.ap

bb.ap:                                            ; preds = %select.unfold.i.i331.i
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i332.i, i64 32
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !12
  %i.ki = icmp ugt i8 %i.kh, %i.jw
  br label %_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i333.i

_ZNSt8_Rb_treeIhhSt9_IdentityIhESt4lessIhESaIhEE10_M_insert_IhNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIhEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i333.i: ; preds = %bb.ap, %select.unfold.i.i331.i
  %i.kj = phi i1 [ %i.ki, %bb.ap ], [ true, %select.unfold.i.i331.i ]
  %i.kk = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16
          to label %.noexc339.i unwind label %.loopexit.split-lp790.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

end_hunk_0
