Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/list_test?download=true
inline.NumInlined: 14996
inline.NumDeleted: 3412
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 149
begin_hunk_0_@_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE42rebalance_after_erasure_restore_invariantsEPNS0_19compact_rbtree_nodeIS3_EES8_S8_:bb.a
  %i.hk = ptrtoint ptr %i.gk to i64               ; 2 uses
  %i.hl = load ptr, ptr %.0, align 8, !tbaa !283
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = and i64 %i.hm, 1
  %i.ho = or i64 %i.hn, %i.hk
  %i.hp = inttoptr i64 %i.ho to ptr
  store ptr %i.hp, ptr %.0, align 8, !tbaa !283
  %i.hq = load ptr, ptr %i.gk, align 8, !tbaa !283
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = and i64 %i.hr, 1
  %i.ht = or disjoint i64 %i.hs, %i.gx
  %i.hu = inttoptr i64 %i.ht to ptr
  store ptr %i.hu, ptr %i.gk, align 8, !tbaa !283
  %i.hv = icmp eq ptr %0, %i.gy
  br i1 %i.hv, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rotate_left_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit.i126
  %i.hw = load ptr, ptr %0, align 8, !tbaa !283
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = and i64 %i.hx, 1
  %i.hz = or i64 %i.hy, %i.hk
  %i.ia = inttoptr i64 %i.hz to ptr
  store ptr %i.ia, ptr %0, align 8, !tbaa !283
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11rotate_leftEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit127

bb.ar:                                            ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rotate_left_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit.i126
  br i1 %i.hb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store ptr %i.gk, ptr %i.gz, align 8, !tbaa !205
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11rotate_leftEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit127

bb.at:                                            ; preds = %bb.ar
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store ptr %i.gk, ptr %i.ib, align 8, !tbaa !206
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11rotate_leftEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit127

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11rotate_leftEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit127: ; preds = %bb.aq, %bb.as, %bb.at
  %i.ic = load ptr, ptr %i.e, align 8, !tbaa !205
  br label %.thread136.thread

.thread136.thread:                                ; preds = %bb.am, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11rotate_leftEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit127, %.thread136
  %.1 = phi ptr [ %i.ic, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11rotate_leftEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit127 ], [ %.0, %.thread136 ], [ %.0, %bb.am ] ; 3 uses
  %i.id = load ptr, ptr %.090206, align 8, !tbaa !282
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = and i64 %i.ie, 1
  %i.ig = load ptr, ptr %.1, align 8, !tbaa !283
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = and i64 %i.ih, -2
  %i.ij = or disjoint i64 %i.ii, %i.if
  %i.ik = inttoptr i64 %i.ij to ptr
  store ptr %i.ik, ptr %.1, align 8, !tbaa !283
  %i.il = load ptr, ptr %.090206, align 8, !tbaa !283
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = or i64 %i.im, 1                         ; 2 uses
  %i.io = inttoptr i64 %i.in to ptr
  store ptr %i.io, ptr %.090206, align 8, !tbaa !283
  %i.ip = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !205 ; 3 uses
  %.not112 = icmp eq ptr %i.iq, null
  br i1 %.not112, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.thread136.thread
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !283
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = or i64 %i.is, 1
  %i.iu = inttoptr i64 %i.it to ptr
  store ptr %i.iu, ptr %i.iq, align 8, !tbaa !283
  %.pre250 = load ptr, ptr %.090206, align 8, !tbaa !282
  %i.iv = ptrtoint ptr %.pre250 to i64
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.thread136.thread
  %i.iw = phi i64 [ %i.iv, %bb.au ], [ %i.in, %.thread136.thread ]
  %i.ix = load ptr, ptr %i.e, align 8, !tbaa !205 ; 6 uses
  %i.iy = and i64 %i.iw, -2                       ; 2 uses
  %i.iz = inttoptr i64 %i.iy to ptr               ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !205
  %i.jc = icmp eq ptr %i.jb, %.090206
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !206 ; 4 uses
  store ptr %i.je, ptr %i.e, align 8, !tbaa !205
  %.not.i.i128 = icmp eq ptr %i.je, null
  br i1 %.not.i.i128, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE26rotate_right_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit.i129, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jf = ptrtoint ptr %.090206 to i64
  %i.jg = load ptr, ptr %i.je, align 8, !tbaa !283
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = and i64 %i.jh, 1
  %i.jj = or i64 %i.ji, %i.jf
  %i.jk = inttoptr i64 %i.jj to ptr
  store ptr %i.jk, ptr %i.je, align 8, !tbaa !283
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE26rotate_right_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit.i129

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE26rotate_right_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit.i129: ; preds = %bb.aw, %bb.av
  store ptr %.090206, ptr %i.jd, align 8, !tbaa !206
  %i.jl = ptrtoint ptr %i.ix to i64               ; 2 uses
  %i.jm = load ptr, ptr %.090206, align 8, !tbaa !283
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = and i64 %i.jn, 1
  %i.jp = or i64 %i.jo, %i.jl
  %i.jq = inttoptr i64 %i.jp to ptr
  store ptr %i.jq, ptr %.090206, align 8, !tbaa !283
  %i.jr = load ptr, ptr %i.ix, align 8, !tbaa !283
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = and i64 %i.js, 1
  %i.ju = or disjoint i64 %i.jt, %i.iy
  %i.jv = inttoptr i64 %i.ju to ptr
  store ptr %i.jv, ptr %i.ix, align 8, !tbaa !283
  %i.jw = icmp eq ptr %0, %i.iz
  br i1 %i.jw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE26rotate_right_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit.i129
  %i.jx = load ptr, ptr %0, align 8, !tbaa !283
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = and i64 %i.jy, 1
  %i.ka = or i64 %i.jz, %i.jl
  %i.kb = inttoptr i64 %i.ka to ptr
  store ptr %i.kb, ptr %0, align 8, !tbaa !283
  br label %.thread142

bb.ay:                                            ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE26rotate_right_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit.i129
  br i1 %i.jc, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store ptr %i.ix, ptr %i.ja, align 8, !tbaa !205
  br label %.thread142

bb.ba:                                            ; preds = %bb.ay
  %i.kc = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store ptr %i.ix, ptr %i.kc, align 8, !tbaa !206
  br label %.thread142

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11rotate_leftEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit121: ; preds = %bb.am, %bb.al, %bb.n, %bb.m
  %.088.sink337 = phi ptr [ %.088, %bb.n ], [ %.088, %bb.m ], [ %.0, %bb.al ], [ %.0, %bb.am ] ; 2 uses
  %i.kd = load ptr, ptr %.088.sink337, align 8, !tbaa !283
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = and i64 %i.ke, -2
  %i.kg = inttoptr i64 %i.kf to ptr
  store ptr %i.kg, ptr %.088.sink337, align 8, !tbaa !283
  %.4.in.in.in = load ptr, ptr %.090206, align 8, !tbaa !282
  %.4.in.in = ptrtoint ptr %.4.in.in.in to i64
  %.4.in = and i64 %.4.in.in, -2
  %.4 = inttoptr i64 %.4.in to ptr                ; 2 uses
  %i.kh = icmp eq ptr %0, %.4
  br i1 %i.kh, label %.thread142..thread146_crit_edge, label %.lr.ph

.thread142:                                       ; preds = %bb.a, %bb.ba, %bb.az, %bb.ax, %bb.ab, %bb.aa, %bb.y
  %.093178 = phi ptr [ %.093205, %bb.y ], [ %.093205, %bb.ba ], [ %.093205, %bb.az ], [ %.093205, %bb.ax ], [ %.093205, %bb.ab ], [ %.093205, %bb.aa ], [ %1, %bb.a ] ; 2 uses
  %.not117 = icmp eq ptr %.093178, null
  br i1 %.not117, label %bb.bb, label %.thread142..thread146_crit_edge

.thread142..thread146_crit_edge:                  ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11rotate_leftEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit121, %.thread142
  %.093178295 = phi ptr [ %.093178, %.thread142 ], [ %.090206, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11rotate_leftEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit121 ] ; 2 uses
  %.pre254 = load ptr, ptr %.093178295, align 8, !tbaa !283
  %.pre255 = ptrtoint ptr %.pre254 to i64
  br label %.thread146

.thread146:                                       ; preds = %bb.b, %.thread142..thread146_crit_edge
  %.pre-phi = phi i64 [ %.pre255, %.thread142..thread146_crit_edge ], [ %i.c, %bb.b ]
  %.093185 = phi ptr [ %.093178295, %.thread142..thread146_crit_edge ], [ %.093205, %bb.b ]
  %i.ki = or i64 %.pre-phi, 1
  %i.kj = inttoptr i64 %i.ki to ptr
  store ptr %i.kj, ptr %.093185, align 8, !tbaa !283
  br label %bb.bb

bb.bb:                                            ; preds = %.thread146, %.thread142
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl38private_adaptive_node_pool_impl_commonINS1_20fake_segment_managerELj6EE19priv_reinsert_blockERNS1_19adaptive_pool_typesINS1_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tEbm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !165  ; 3 uses
  %i.c = icmp eq i64 %i.b, %3                     ; 2 uses
  %i.d = zext i1 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !207
  %i.g = add i64 %i.f, %i.d
  store i64 %i.g, ptr %i.e, align 8, !tbaa !207
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %2, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !282, !noalias !2081
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = and i64 %i.l, -2                         ; 2 uses
  %.not18.i.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not18.i.i.i.i.i.i, label %._crit_edge.i.i.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b
  %i.n = inttoptr i64 %i.m to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %storemerge19.i.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %bb.c ] ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge19.i.i.i.i.i.i, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !165, !noalias !2081 ; 2 uses
  %i.q = icmp ult i64 %i.b, %i.p
  %i.r = icmp eq i64 %i.b, %i.p
  %i.s = icmp ult ptr %i.j, %storemerge19.i.i.i.i.i.i
  %i.t = and i1 %i.s, %i.r
  %i.u = or i1 %i.q, %i.t                         ; 2 uses
  %.in.v.i.i.i.i.i.i = select i1 %i.u, i64 8, i64 16
  %.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge19.i.i.i.i.i.i, i64 %.in.v.i.i.i.i.i.i
  %i.v = load ptr, ptr %.in.i.i.i.i.i.i, align 8, !tbaa !283, !noalias !2081 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %bb.c, !llvm.loop !40

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.c
  %i.w = icmp eq ptr %storemerge19.i.i.i.i.i.i, %i.i
  br i1 %i.w, label %._crit_edge.i.i.thread.i.i.i.i, label %bb.d

._crit_edge.i.i.thread.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i.i.i, %bb.b
  %i.x = ptrtoint ptr %i.j to i64
  %i.y = and i64 %i.l, 1
  %i.z = or disjoint i64 %i.y, %i.x
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !283, !noalias !2081
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.ab, align 8, !tbaa !206, !noalias !2081
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.ac, align 8, !tbaa !205, !noalias !2081
  br label %_ZN5boost9container3dtl22block_container_traitsIPvmLj6EE16insert_was_emptyINS_9intrusive13multiset_implINS6_8bhtraitsINS1_19adaptive_pool_typesINS1_27basic_multiallocation_chainIS3_EES3_mLj6EE12block_info_tENS6_18rbtree_node_traitsIS3_Lb1EEELNS6_14link_mode_typeE0ENS6_7dft_tagELj3EEEvvmLb1EvEEEEvRT_RNSK_10value_typeEb.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %storemerge19.i.i.i.i.i.i, i64 8
  store ptr %i.j, ptr %i.ad, align 8, !tbaa !205, !noalias !2081
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !205, !noalias !2081
  %i.ag = icmp eq ptr %storemerge19.i.i.i.i.i.i, %i.af
  br i1 %i.ag, label %bb.f, label %_ZN5boost9container3dtl22block_container_traitsIPvmLj6EE16insert_was_emptyINS_9intrusive13multiset_implINS6_8bhtraitsINS1_19adaptive_pool_typesINS1_27basic_multiallocation_chainIS3_EES3_mLj6EE12block_info_tENS6_18rbtree_node_traitsIS3_Lb1EEELNS6_14link_mode_typeE0ENS6_7dft_tagELj3EEEvvmLb1EvEEEEvRT_RNSK_10value_typeEb.exit

bb.f:                                             ; preds = %bb.e
  store ptr %i.j, ptr %i.ae, align 8, !tbaa !205, !noalias !2081
  br label %_ZN5boost9container3dtl22block_container_traitsIPvmLj6EE16insert_was_emptyINS_9intrusive13multiset_implINS6_8bhtraitsINS1_19adaptive_pool_typesINS1_27basic_multiallocation_chainIS3_EES3_mLj6EE12block_info_tENS6_18rbtree_node_traitsIS3_Lb1EEELNS6_14link_mode_typeE0ENS6_7dft_tagELj3EEEvvmLb1EvEEEEvRT_RNSK_10value_typeEb.exit

bb.g:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge19.i.i.i.i.i.i, i64 16
  store ptr %i.j, ptr %i.ah, align 8, !tbaa !206, !noalias !2081
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !206, !noalias !2081
  %i.ak = icmp eq ptr %storemerge19.i.i.i.i.i.i, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN5boost9container3dtl22block_container_traitsIPvmLj6EE16insert_was_emptyINS_9intrusive13multiset_implINS6_8bhtraitsINS1_19adaptive_pool_typesINS1_27basic_multiallocation_chainIS3_EES3_mLj6EE12block_info_tENS6_18rbtree_node_traitsIS3_Lb1EEELNS6_14link_mode_typeE0ENS6_7dft_tagELj3EEEvvmLb1EvEEEEvRT_RNSK_10value_typeEb.exit

bb.h:                                             ; preds = %bb.g
  store ptr %i.j, ptr %i.ai, align 8, !tbaa !206, !noalias !2081
  br label %_ZN5boost9container3dtl22block_container_traitsIPvmLj6EE16insert_was_emptyINS_9intrusive13multiset_implINS6_8bhtraitsINS1_19adaptive_pool_typesINS1_27basic_multiallocation_chainIS3_EES3_mLj6EE12block_info_tENS6_18rbtree_node_traitsIS3_Lb1EEELNS6_14link_mode_typeE0ENS6_7dft_tagELj3EEEvvmLb1EvEEEEvRT_RNSK_10value_typeEb.exit

_ZN5boost9container3dtl22block_container_traitsIPvmLj6EE16insert_was_emptyINS_9intrusive13multiset_implINS6_8bhtraitsINS1_19adaptive_pool_typesINS1_27basic_multiallocation_chainIS3_EES3_mLj6EE12block_info_tENS6_18rbtree_node_traitsIS3_Lb1EEELNS6_14link_mode_typeE0ENS6_7dft_tagELj3EEEvvmLb1EvEEEEvRT_RNSK_10value_typeEb.exit: ; preds = %._crit_edge.i.i.thread.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.h
  %.017.lcssa.i.i6.i.i.i.i = phi ptr [ %i.i, %._crit_edge.i.i.thread.i.i.i.i ], [ %storemerge19.i.i.i.i.i.i, %bb.e ], [ %storemerge19.i.i.i.i.i.i, %bb.f ], [ %storemerge19.i.i.i.i.i.i, %bb.g ], [ %storemerge19.i.i.i.i.i.i, %bb.h ]
  %i.al = ptrtoint ptr %.017.lcssa.i.i6.i.i.i.i to i64
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !283, !noalias !2081
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 1
  %i.ap = or i64 %i.ao, %i.al
  %i.aq = inttoptr i64 %i.ap to ptr
  store ptr %i.aq, ptr %i.j, align 8, !tbaa !283, !noalias !2081
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false), !noalias !2081
  tail call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #24, !noalias !2081
  %i.as = load i64, ptr %i.h, align 8, !tbaa !165, !noalias !2081
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.h, align 8, !tbaa !165, !noalias !2081
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl22block_container_traitsIPvmLj6EE17reinsert_was_usedINS_9intrusive13multiset_implINS6_8bhtraitsINS1_19adaptive_pool_typesINS1_27basic_multiallocation_chainIS3_EES3_mLj6EE12block_info_tENS6_18rbtree_node_traitsIS3_Lb1EEELNS6_14link_mode_typeE0ENS6_7dft_tagELj3EEEvvmLb1EvEEEEvRT_NSK_9referenceEb(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %i.c)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5boost9container3dtl22block_container_traitsIPvmLj6EE16insert_was_emptyINS_9intrusive13multiset_implINS6_8bhtraitsINS1_19adaptive_pool_typesINS1_27basic_multiallocation_chainIS3_EES3_mLj6EE12block_info_tENS6_18rbtree_node_traitsIS3_Lb1EEELNS6_14link_mode_typeE0ENS6_7dft_tagELj3EEEvvmLb1EvEEEEvRT_RNSK_10value_typeEb.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl22block_container_traitsIPvmLj6EE17reinsert_was_usedINS_9intrusive13multiset_implINS6_8bhtraitsINS1_19adaptive_pool_typesINS1_27basic_multiallocation_chainIS3_EES3_mLj6EE12block_info_tENS6_18rbtree_node_traitsIS3_Lb1EEELNS6_14link_mode_typeE0ENS6_7dft_tagELj3EEEvvmLb1EvEEEEvRT_NSK_9referenceEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::intrusive::tree_iterator.64", align 8 ; 2 uses
  %4 = alloca %"class.boost::intrusive::tree_iterator", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %.preheader.i.i, label %.preheader17.i.i

.preheader17.i.i:                                 ; preds = %bb.a, %.preheader17.i.i
  %.05.i.i.i = phi ptr [ %.0.i.i.i, %.preheader17.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !205 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit, label %.preheader17.i.i, !llvm.loop !37

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.013.i.i = phi ptr [ %.0.i.i, %.preheader.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %.0.in.in.in.i.i = load ptr, ptr %.013.i.i, align 8, !tbaa !282
  %.0.in.in.i.i = ptrtoint ptr %.0.in.in.in.i.i to i64
  %.0.in.i.i = and i64 %.0.in.in.i.i, -2
  %.0.i.i = inttoptr i64 %.0.in.i.i to ptr        ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206
  %i.g = icmp eq ptr %.013.i.i, %i.f
  br i1 %i.g, label %.preheader.i.i, label %bb.b, !llvm.loop !38

bb.b:                                             ; preds = %.preheader.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !206
  %.not16.i.i = icmp eq ptr %i.i, %.0.i.i
  %i.j = select i1 %.not16.i.i, ptr %.013.i.i, ptr %.0.i.i
  br label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit: ; preds = %.preheader17.i.i, %bb.b
  %.014.i.i = phi ptr [ %i.j, %bb.b ], [ %.05.i.i.i, %.preheader17.i.i ] ; 6 uses
  %.not = icmp eq ptr %.014.i.i, %i.b
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit
  %i.k = getelementptr inbounds i8, ptr %.014.i.i, i64 -8
  %i.l = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !165  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !165  ; 4 uses
  %i.p = icmp ult i64 %i.m, %i.o
  %i.q = icmp eq i64 %i.m, %i.o
  %i.r = icmp ult ptr %i.k, %1
  %i.s = and i1 %i.r, %i.q
  %i.t = or i1 %i.p, %i.s
  br i1 %i.t, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !206  ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.v, null
  br i1 %.not.i.i10, label %.preheader.i.i17, label %.preheader17.i.i11

.preheader17.i.i11:                               ; preds = %bb.d, %.preheader17.i.i11
  %.05.i.i.i12 = phi ptr [ %.0.i.i.i14, %.preheader17.i.i11 ], [ %i.v, %bb.d ] ; 2 uses
  %.0.in.i.i.i13 = getelementptr inbounds nuw i8, ptr %.05.i.i.i12, i64 8
  %.0.i.i.i14 = load ptr, ptr %.0.in.i.i.i13, align 8, !tbaa !205 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %.0.i.i.i14, null
  br i1 %.not.i.i.i15, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb1EEppEv.exit, label %.preheader17.i.i11, !llvm.loop !37

.preheader.i.i17:                                 ; preds = %bb.d, %.preheader.i.i17
  %.013.i.i18 = phi ptr [ %.0.i.i22, %.preheader.i.i17 ], [ %.014.i.i, %bb.d ] ; 4 uses
  %.0.in.in.in.i.i19 = load ptr, ptr %.013.i.i18, align 8, !tbaa !282
  %.0.in.in.i.i20 = ptrtoint ptr %.0.in.in.in.i.i19 to i64
  %.0.in.i.i21 = and i64 %.0.in.in.i.i20, -2
  %.0.i.i22 = inttoptr i64 %.0.in.i.i21 to ptr    ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i22, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !206
  %i.y = icmp eq ptr %.013.i.i18, %i.x
  br i1 %i.y, label %.preheader.i.i17, label %bb.e, !llvm.loop !38

bb.e:                                             ; preds = %.preheader.i.i17
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i18, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !206
  %.not16.i.i23 = icmp eq ptr %i.aa, %.0.i.i22
  %i.ab = select i1 %.not16.i.i23, ptr %.013.i.i18, ptr %.0.i.i22
  br label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb1EEppEv.exit

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb1EEppEv.exit: ; preds = %.preheader17.i.i11, %bb.e
  %.014.i.i16 = phi ptr [ %i.ab, %bb.e ], [ %.05.i.i.i12, %.preheader17.i.i11 ] ; 3 uses
  %i.ac = icmp eq ptr %.014.i.i16, %i.b
  br i1 %i.ac, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb1EEppEv.exit
  %i.ad = getelementptr inbounds i8, ptr %.014.i.i16, i64 -8
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i16, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !165 ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.o
  %i.ah = icmp eq i64 %i.af, %i.o
  %i.ai = icmp ult ptr %i.ad, %1
  %i.aj = and i1 %i.ai, %i.ah
  %i.ak = or i1 %i.ag, %i.aj
  br i1 %i.ak, label %bb.g, label %.critedge2

.critedge2:                                       ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb1EEppEv.exit, %bb.f
  tail call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE10swap_nodesEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.014.i.i) #24
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  store ptr %i.a, ptr %3, align 8, !tbaa !291
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEEvvmLb1ELNS0_10algo_typesE5EvE5eraseENS0_13tree_iteratorISF_Lb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive::tree_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dead_on_return %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !282, !noalias !2086
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = and i64 %i.am, -2                       ; 2 uses
  %.not18.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not18.i.i.i.i.i, label %._crit_edge.i.i.thread.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load i64, ptr %i.n, align 8, !tbaa !165, !noalias !2086 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %storemerge19.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.ax, %bb.h ] ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge19.i.i.i.i.i, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !165, !noalias !2086 ; 2 uses
  %i.as = icmp ult i64 %i.ap, %i.ar
  %i.at = icmp eq i64 %i.ap, %i.ar
  %i.au = icmp ult ptr %i.a, %storemerge19.i.i.i.i.i
  %i.av = and i1 %i.au, %i.at
  %i.aw = or i1 %i.as, %i.av                      ; 2 uses
  %.in.v.i.i.i.i.i = select i1 %i.aw, i64 8, i64 16
  %.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge19.i.i.i.i.i, i64 %.in.v.i.i.i.i.i
  %i.ax = load ptr, ptr %.in.i.i.i.i.i, align 8, !tbaa !283, !noalias !2086 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.h, !llvm.loop !40

._crit_edge.i.i.i.i.i:                            ; preds = %bb.h
  %i.ay = icmp eq ptr %storemerge19.i.i.i.i.i, %i.b
  br i1 %i.ay, label %._crit_edge.i.i.thread.i.i.i, label %bb.i

._crit_edge.i.i.thread.i.i.i:                     ; preds = %._crit_edge.i.i.i.i.i, %bb.g
  %i.az = ptrtoint ptr %i.a to i64
  %i.ba = and i64 %i.am, 1
  %i.bb = or disjoint i64 %i.ba, %i.az
  %i.bc = inttoptr i64 %i.bb to ptr
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !283, !noalias !2086
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.bd, align 8, !tbaa !206, !noalias !2086
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.be, align 8, !tbaa !205, !noalias !2086
  br label %_ZN5boost9intrusive13multiset_implINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEEvvmLb1EvE6insertERSA_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  br i1 %i.aw, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge19.i.i.i.i.i, i64 8
  store ptr %i.a, ptr %i.bf, align 8, !tbaa !205, !noalias !2086
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !205, !noalias !2086
  %i.bi = icmp eq ptr %storemerge19.i.i.i.i.i, %i.bh
  br i1 %i.bi, label %bb.k, label %_ZN5boost9intrusive13multiset_implINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEEvvmLb1EvE6insertERSA_.exit

bb.k:                                             ; preds = %bb.j
  store ptr %i.a, ptr %i.bg, align 8, !tbaa !205, !noalias !2086
  br label %_ZN5boost9intrusive13multiset_implINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEEvvmLb1EvE6insertERSA_.exit

bb.l:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge19.i.i.i.i.i, i64 16
  store ptr %i.a, ptr %i.bj, align 8, !tbaa !206, !noalias !2086
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !206, !noalias !2086
  %i.bm = icmp eq ptr %storemerge19.i.i.i.i.i, %i.bl
  br i1 %i.bm, label %bb.m, label %_ZN5boost9intrusive13multiset_implINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEEvvmLb1EvE6insertERSA_.exit

bb.m:                                             ; preds = %bb.l
  store ptr %i.a, ptr %i.bk, align 8, !tbaa !206, !noalias !2086
  br label %_ZN5boost9intrusive13multiset_implINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEEvvmLb1EvE6insertERSA_.exit

_ZN5boost9intrusive13multiset_implINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEEvvmLb1EvE6insertERSA_.exit: ; preds = %._crit_edge.i.i.thread.i.i.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.017.lcssa.i.i6.i.i.i = phi ptr [ %i.b, %._crit_edge.i.i.thread.i.i.i ], [ %storemerge19.i.i.i.i.i, %bb.j ], [ %storemerge19.i.i.i.i.i, %bb.k ], [ %storemerge19.i.i.i.i.i, %bb.l ], [ %storemerge19.i.i.i.i.i, %bb.m ]
  %i.bn = ptrtoint ptr %.017.lcssa.i.i6.i.i.i to i64
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !283, !noalias !2086
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = and i64 %i.bp, 1
  %i.br = or i64 %i.bq, %i.bn
  %i.bs = inttoptr i64 %i.br to ptr
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !283, !noalias !2086
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false), !noalias !2086
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #24, !noalias !2086
  %i.bu = load i64, ptr %0, align 8, !tbaa !165, !noalias !2086
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %0, align 8, !tbaa !165, !noalias !2086
  br label %.critedge

.critedge:                                        ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit, %.critedge2, %_ZN5boost9intrusive13multiset_implINS0_8bhtraitsINS_9container3dtl19adaptive_pool_typesINS4_27basic_multiallocation_chainIPvEES7_mLj6EE12block_info_tENS0_18rbtree_node_traitsIS7_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEEvvmLb1EvE6insertERSA_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE10swap_nodesEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !282    ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, -2                         ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_ZN5boost9intrusive22bstree_algorithms_baseINS0_18rbtree_node_traitsIPvLb1EEEE10get_headerEPKNS0_19compact_rbtree_nodeIS3_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !282
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -2
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %.not18.i = icmp eq ptr %0, %i.i
  br i1 %.not18.i, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.013.i = phi ptr [ %.0.i, %.preheader.i ], [ %i.e, %bb.c ]
  %.0.i = phi ptr [ %i.m, %.preheader.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.j = load ptr, ptr %.0.i, align 8, !tbaa !282
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, -2
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %.not19.i = icmp eq ptr %.013.i, %i.m
  br i1 %.not19.i, label %_ZN5boost9intrusive22bstree_algorithms_baseINS0_18rbtree_node_traitsIPvLb1EEEE10get_headerEPKNS0_19compact_rbtree_nodeIS3_EE.exit, label %.preheader.i, !llvm.loop !2087

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !205  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !206  ; 3 uses
  %.not.i.i = icmp ult ptr %i.b, inttoptr (i64 2 to ptr)
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ne ptr %i.o, null
  %i.s = icmp ne ptr %i.q, null
  %or.cond.i.i = and i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %bb.f, label %_ZN5boost9intrusive22bstree_algorithms_baseINS0_18rbtree_node_traitsIPvLb1EEEE10get_headerEPKNS0_19compact_rbtree_nodeIS3_EE.exit

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq ptr %i.o, %i.q
  br i1 %i.t, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !282
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, -2
  %i.x = inttoptr i64 %i.w to ptr
  %.not16.i.i = icmp eq ptr %0, %i.x
  br i1 %.not16.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !282
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, -2
  %i.ab = inttoptr i64 %i.aa to ptr
  %.not17.i.i = icmp eq ptr %0, %i.ab
  br i1 %.not17.i.i, label %_ZN5boost9intrusive22bstree_algorithms_baseINS0_18rbtree_node_traitsIPvLb1EEEE10get_headerEPKNS0_19compact_rbtree_nodeIS3_EE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  br label %_ZN5boost9intrusive22bstree_algorithms_baseINS0_18rbtree_node_traitsIPvLb1EEEE10get_headerEPKNS0_19compact_rbtree_nodeIS3_EE.exit

_ZN5boost9intrusive22bstree_algorithms_baseINS0_18rbtree_node_traitsIPvLb1EEEE10get_headerEPKNS0_19compact_rbtree_nodeIS3_EE.exit: ; preds = %.preheader.i, %bb.b, %bb.e, %bb.h, %bb.i
  %.1.i = phi ptr [ %0, %bb.b ], [ %i.e, %bb.h ], [ %0, %bb.i ], [ %i.e, %bb.e ], [ %.0.i, %.preheader.i ]
  %i.ac = load ptr, ptr %1, align 8, !tbaa !282   ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -2                       ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 4 uses
  %.not.i9 = icmp eq i64 %i.ae, 0
  br i1 %.not.i9, label %_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE10swap_nodesEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9intrusive22bstree_algorithms_baseINS0_18rbtree_node_traitsIPvLb1EEEE10get_headerEPKNS0_19compact_rbtree_nodeIS3_EE.exit
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !282
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = and i64 %i.ah, -2
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %.not18.i10 = icmp eq ptr %1, %i.aj
  br i1 %.not18.i10, label %bb.k, label %.preheader.i11

.preheader.i11:                                   ; preds = %bb.j, %.preheader.i11
  %.013.i12 = phi ptr [ %.0.i13, %.preheader.i11 ], [ %i.af, %bb.j ]
  %.0.i13 = phi ptr [ %i.an, %.preheader.i11 ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ak = load ptr, ptr %.0.i13, align 8, !tbaa !282
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = and i64 %i.al, -2
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %.not19.i14 = icmp eq ptr %.013.i12, %i.an
  br i1 %.not19.i14, label %_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE10swap_nodesEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit, label %.preheader.i11, !llvm.loop !2087

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !205 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !206 ; 3 uses
  %.not.i.i16 = icmp ult ptr %i.ac, inttoptr (i64 2 to ptr)
  br i1 %.not.i.i16, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = icmp ne ptr %i.ap, null
  %i.at = icmp ne ptr %i.ar, null
  %or.cond.i.i17 = and i1 %i.as, %i.at
  br i1 %or.cond.i.i17, label %bb.m, label %_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE10swap_nodesEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit

bb.m:                                             ; preds = %bb.l
  %i.au = icmp eq ptr %i.ap, %i.ar
  br i1 %i.au, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !282
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = and i64 %i.aw, -2
  %i.ay = inttoptr i64 %i.ax to ptr
  %.not16.i.i18 = icmp eq ptr %1, %i.ay
  br i1 %.not16.i.i18, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %i.ar, align 8, !tbaa !282
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = and i64 %i.ba, -2
  %i.bc = inttoptr i64 %i.bb to ptr
  %.not17.i.i19 = icmp eq ptr %1, %i.bc
  br i1 %.not17.i.i19, label %_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE10swap_nodesEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  br label %_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE10swap_nodesEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit

_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE10swap_nodesEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit: ; preds = %.preheader.i11, %_ZN5boost9intrusive22bstree_algorithms_baseINS0_18rbtree_node_traitsIPvLb1EEEE10get_headerEPKNS0_19compact_rbtree_nodeIS3_EE.exit, %bb.l, %bb.o, %bb.p
  %.1.i15 = phi ptr [ %1, %_ZN5boost9intrusive22bstree_algorithms_baseINS0_18rbtree_node_traitsIPvLb1EEEE10get_headerEPKNS0_19compact_rbtree_nodeIS3_EE.exit ], [ %i.af, %bb.o ], [ %1, %bb.p ], [ %i.af, %bb.l ], [ %.0.i13, %.preheader.i11 ]
  tail call void @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE10swap_nodesEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_(ptr noundef nonnull %0, ptr noundef nonnull %.1.i, ptr noundef nonnull %1, ptr noundef nonnull %.1.i15) #24
  %i.bd = load ptr, ptr %0, align 8, !tbaa !282
  %i.be = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bf = load ptr, ptr %1, align 8, !tbaa !282
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = and i64 %i.bg, 1
  %i.bi = and i64 %i.be, -2
  %i.bj = or disjoint i64 %i.bh, %i.bi
  %i.bk = inttoptr i64 %i.bj to ptr
  store ptr %i.bk, ptr %0, align 8, !tbaa !283
  %i.bl = and i64 %i.be, 1
  %i.bm = load ptr, ptr %1, align 8, !tbaa !283
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = and i64 %i.bn, -2
  %i.bp = or disjoint i64 %i.bo, %i.bl
  %i.bq = inttoptr i64 %i.bp to ptr
  store ptr %i.bq, ptr %1, align 8, !tbaa !283
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE10swap_nodesEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE10swap_nodesEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %2
  br i1 %i.a, label %bb.ba, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !205
  %i.d = icmp eq ptr %0, %i.c                     ; 2 uses
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %2, ptr %i.b, align 8, !tbaa !205
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206
end_hunk_0
