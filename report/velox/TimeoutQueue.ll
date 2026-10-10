Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/TimeoutQueue?download=true
inline.NumInlined: 723
inline.NumDeleted: 184
begin_hunk_0_@_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE21rebalance_for_extractEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refERS6_SA_:bb.a
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !48 ; 4 uses
  store ptr %i.kg, ptr %i.kc, align 8, !tbaa !48
  %.not.i188 = icmp eq ptr %i.kg, null
  br i1 %.not.i188, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kh = ptrtoint ptr %.0 to i64
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !45
  %i.kj = and i64 %i.ki, 1
  %i.kk = or i64 %i.kj, %i.kh
  store i64 %i.kk, ptr %i.kg, align 8, !tbaa !45
  %.pre323 = load i64, ptr %.0, align 8, !tbaa !45
  %i.kl = and i64 %.pre323, -2
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.km = phi i64 [ %i.kl, %bb.bs ], [ %i.ke, %bb.br ]
  %i.kn = load i64, ptr %i.ji, align 8, !tbaa !45
  %i.ko = and i64 %i.kn, 1
  %i.kp = or disjoint i64 %i.ko, %i.km
  store i64 %i.kp, ptr %i.ji, align 8, !tbaa !45
  %i.kq = load i64, ptr %i.cm, align 8, !tbaa !45 ; 2 uses
  %i.kr = and i64 %i.kq, -2
  %i.ks = inttoptr i64 %i.kr to ptr
  %i.kt = icmp eq ptr %.0, %i.ks
  br i1 %i.kt, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ku = ptrtoint ptr %i.ji to i64
  %i.kv = and i64 %i.kq, 1
  %i.kw = or i64 %i.kv, %i.ku
  store i64 %i.kw, ptr %i.cm, align 8, !tbaa !45
  %.pre.i189 = load i64, ptr %.0, align 8, !tbaa !45
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit190

bb.bv:                                            ; preds = %bb.bt
  %i.kx = load i64, ptr %.0, align 8, !tbaa !45   ; 3 uses
  %i.ky = and i64 %i.kx, -2
  %i.kz = inttoptr i64 %i.ky to ptr               ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !48
  %i.lc = icmp eq ptr %.0, %i.lb
  br i1 %i.lc, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store ptr %i.ji, ptr %i.la, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit190

bb.bx:                                            ; preds = %bb.bv
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store ptr %i.ji, ptr %i.ld, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit190

_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit190: ; preds = %bb.bu, %bb.bw, %bb.bx
  %i.le = phi i64 [ %i.kx, %bb.bw ], [ %i.kx, %bb.bx ], [ %.pre.i189, %bb.bu ]
  store ptr %.0, ptr %i.kf, align 8, !tbaa !48
  %i.lf = ptrtoint ptr %i.ji to i64
  %i.lg = and i64 %i.le, 1
  %i.lh = or i64 %i.lg, %i.lf
  store i64 %i.lh, ptr %.0, align 8, !tbaa !45
  %i.li = load ptr, ptr %i.cv, align 8, !tbaa !48 ; 2 uses
  %.phi.trans.insert324 = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %.pre325 = load ptr, ptr %.phi.trans.insert324, align 8, !tbaa !48
  br label %bb.by

bb.by:                                            ; preds = %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit190, %.critedge10.thread
  %i.lj = phi ptr [ %.pre325, %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit190 ], [ %i.jw, %.critedge10.thread ] ; 3 uses
  %i.lk = phi ptr [ %i.li, %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit190 ], [ %.0, %.critedge10.thread ] ; 9 uses
  %i.ll = load i64, ptr %.2157305, align 8, !tbaa !45
  %i.lm = and i64 %i.ll, 1
  %i.ln = load i64, ptr %i.lk, align 8, !tbaa !45
  %i.lo = and i64 %i.ln, -2
  %i.lp = or disjoint i64 %i.lo, %i.lm
  store i64 %i.lp, ptr %i.lk, align 8, !tbaa !45
  %i.lq = load i64, ptr %.2157305, align 8, !tbaa !45
  %i.lr = or i64 %i.lq, 1
  store i64 %i.lr, ptr %.2157305, align 8, !tbaa !45
  %.not173 = icmp eq ptr %i.lj, null
  br i1 %.not173, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ls = load i64, ptr %i.lj, align 8, !tbaa !45
  %i.lt = or i64 %i.ls, 1
  store i64 %i.lt, ptr %i.lj, align 8, !tbaa !45
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lk, i64 16 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !48 ; 4 uses
  store ptr %i.lv, ptr %i.cv, align 8, !tbaa !48
  %.not.i191 = icmp eq ptr %i.lv, null
  br i1 %.not.i191, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lw = ptrtoint ptr %.2157305 to i64
  %i.lx = load i64, ptr %i.lv, align 8, !tbaa !45
  %i.ly = and i64 %i.lx, 1
  %i.lz = or i64 %i.ly, %i.lw
  store i64 %i.lz, ptr %i.lv, align 8, !tbaa !45
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ma = load i64, ptr %.2157305, align 8, !tbaa !45
  %i.mb = and i64 %i.ma, -2
  %i.mc = load i64, ptr %i.lk, align 8, !tbaa !45
  %i.md = and i64 %i.mc, 1
  %i.me = or disjoint i64 %i.md, %i.mb
  store i64 %i.me, ptr %i.lk, align 8, !tbaa !45
  %i.mf = load i64, ptr %i.cm, align 8, !tbaa !45 ; 2 uses
  %i.mg = and i64 %i.mf, -2
  %i.mh = inttoptr i64 %i.mg to ptr
  %i.mi = icmp eq ptr %.2157305, %i.mh
  br i1 %i.mi, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.mj = ptrtoint ptr %i.lk to i64
  %i.mk = and i64 %i.mf, 1
  %i.ml = or i64 %i.mk, %i.mj
  store i64 %i.ml, ptr %i.cm, align 8, !tbaa !45
  %.pre.i192 = load i64, ptr %.2157305, align 8, !tbaa !45
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cc
  %i.mm = load i64, ptr %.2157305, align 8, !tbaa !45 ; 3 uses
  %i.mn = and i64 %i.mm, -2
  %i.mo = inttoptr i64 %i.mn to ptr               ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !48
  %i.mr = icmp eq ptr %.2157305, %i.mq
  br i1 %i.mr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store ptr %i.lk, ptr %i.mp, align 8, !tbaa !48
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store ptr %i.lk, ptr %i.ms, align 8, !tbaa !48
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.cd
  %i.mt = phi i64 [ %i.mm, %bb.cf ], [ %i.mm, %bb.cg ], [ %.pre.i192, %bb.cd ]
  store ptr %.2157305, ptr %i.lu, align 8, !tbaa !48
  br label %.critedge.sink.split

.thread260:                                       ; preds = %bb.bp, %bb.bq, %bb.am, %bb.an
  %.0.sink432 = phi ptr [ %.0151, %bb.am ], [ %.0151, %bb.an ], [ %.0, %bb.bq ], [ %.0, %bb.bp ] ; 2 uses
  %i.mu = load i64, ptr %.0.sink432, align 8, !tbaa !45
  %i.mv = and i64 %i.mu, -2
  store i64 %i.mv, ptr %.0.sink432, align 8, !tbaa !45
  %.5.in.in = load i64, ptr %.2157305, align 8, !tbaa !45
  %.5.in = and i64 %.5.in.in, -2
  %.5 = inttoptr i64 %.5.in to ptr
  %i.mw = load i64, ptr %i.cm, align 8, !tbaa !45
  %i.mx = and i64 %i.mw, -2
  %i.my = inttoptr i64 %i.mx to ptr
  %.not171 = icmp eq ptr %.2157305, %i.my
  br i1 %.not171, label %.critedge..critedge.thread_crit_edge, label %.lr.ph, !llvm.loop !83

.critedge.sink.split:                             ; preds = %bb.be, %bb.ch
  %.sink437 = phi ptr [ %i.lk, %bb.ch ], [ %i.gn, %bb.be ]
  %.sink436 = phi i64 [ %i.mt, %bb.ch ], [ %i.hw, %bb.be ]
  %i.mz = ptrtoint ptr %.sink437 to i64
  %i.na = and i64 %.sink436, 1
  %i.nb = or i64 %i.na, %i.mz
  store i64 %i.nb, ptr %.2157305, align 8, !tbaa !45
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %.preheader
  %.1159294 = phi ptr [ %.0158259, %.preheader ], [ %.1159304, %.critedge.sink.split ] ; 2 uses
  %.not176 = icmp eq ptr %.1159294, null
  br i1 %.not176, label %bb.ci, label %.critedge..critedge.thread_crit_edge

.critedge..critedge.thread_crit_edge:             ; preds = %.thread260, %.critedge
  %.1159294368 = phi ptr [ %.1159294, %.critedge ], [ %.2157305, %.thread260 ] ; 2 uses
  %.pre332 = load i64, ptr %.1159294368, align 8, !tbaa !45
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.ab, %.critedge..critedge.thread_crit_edge
  %i.nc = phi i64 [ %.pre332, %.critedge..critedge.thread_crit_edge ], [ %i.ct, %bb.ab ]
  %.1159293 = phi ptr [ %.1159294368, %.critedge..critedge.thread_crit_edge ], [ %.1159304, %bb.ab ]
  %i.nd = or i64 %i.nc, 1
  store i64 %i.nd, ptr %.1159293, align 8, !tbaa !45
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge, %.critedge.thread, %bb.aa
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly12TimeoutQueue11runInternalElb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::multi_index::detail::ordered_index_node_compressed_base<boost::multi_index::detail::null_augment_policy, std::allocator<char>>::parent_ref", align 8 ; 4 uses
  %4 = alloca %"struct.boost::multi_index::detail::ordered_index_node_compressed_base<boost::multi_index::detail::null_augment_policy, std::allocator<char>>::parent_ref", align 8 ; 4 uses
  %5 = alloca %"struct.boost::multi_index::detail::ordered_index_node_compressed_base<boost::multi_index::detail::null_augment_policy, std::allocator<char>>::parent_ref", align 8 ; 4 uses
  %6 = alloca %"struct.boost::multi_index::detail::ordered_index_node_compressed_base<boost::multi_index::detail::null_augment_policy, std::allocator<char>>::parent_ref", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::vector", align 8       ; 12 uses
  %8 = alloca %"struct.folly::TimeoutQueue::Event", align 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 48
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EED2Ev.exit, %bb.a
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !46   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !45
  %i.n = and i64 %i.m, -2                         ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.loopexit77, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.p = inttoptr i64 %i.n to ptr
  br label %.outer

.outer:                                           ; preds = %bb.d, %.lr.ph.i.i.i
  %.pn.i.ph = phi ptr [ %i.u, %bb.d ], [ %i.p, %.lr.ph.i.i.i ]
  %.0912.i.i.i.ph = phi ptr [ %.013.i.i.i, %bb.d ], [ %i.k, %.lr.ph.i.i.i ]
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.e
  %.pn.i = phi ptr [ %i.x, %bb.e ], [ %.pn.i.ph, %.outer ] ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %.pn.i, i64 -48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !45
  %i.s = icmp slt i64 %1, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.013.i.i.i = getelementptr inbounds i8, ptr %.pn.i, i64 -56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.loopexit77, label %.outer, !llvm.loop !84

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.loopexit77, label %bb.c, !llvm.loop !84

.loopexit77:                                      ; preds = %bb.e, %bb.d, %bb.b
  %.09.lcssa.i.i.i = phi ptr [ %i.k, %bb.b ], [ %.0912.i.i.i.ph, %bb.e ], [ %.013.i.i.i, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -56
  %i.ad = select i1 %i.ab, ptr null, ptr %i.ac
  %i.ae = invoke ptr @_ZNSt11__copy_moveILb1ELb0ESt26bidirectional_iterator_tagE8__copy_mIN5boost11multi_index6detail19bidir_node_iteratorINS5_18ordered_index_nodeINS5_19null_augment_policyENS5_15index_node_baseIN5folly12TimeoutQueue5EventESaISC_EEEEEEESt20back_insert_iteratorISt6vectorISC_SD_EEEET0_T_SM_SL_(ptr %i.ad, ptr %.09.lcssa.i.i.i, ptr nonnull %7)
          to label %_ZSt4moveIN5boost11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEESt20back_insert_iteratorISt6vectorIS9_SA_EEET0_T_SJ_SI_.exit unwind label %.loopexit.split-lp73 ; 0 uses

_ZSt4moveIN5boost11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEESt20back_insert_iteratorISt6vectorIS9_SA_EEET0_T_SJ_SI_.exit: ; preds = %.loopexit77
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -56
  %i.ak = select i1 %i.ai, ptr null, ptr %i.aj    ; 2 uses
  %.not4.i = icmp eq ptr %i.ak, %.09.lcssa.i.i.i
  br i1 %.not4.i, label %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NS1_15index_node_baseIS6_SK_EEEEEESX_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN5boost11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEESt20back_insert_iteratorISt6vectorIS9_SA_EEET0_T_SJ_SI_.exit, %.noexc
  %.sroa.03.05.i = phi ptr [ %i.br, %.noexc ], [ %i.ak, %_ZSt4moveIN5boost11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEESt20back_insert_iteratorISt6vectorIS9_SA_EEET0_T_SJ_SI_.exit ] ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.preheader19.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 56 ; 3 uses
  %.0.in.in20.i.i.i.i.i = load i64, ptr %i.an, align 8, !tbaa !45
  %.0.in21.i.i.i.i.i = and i64 %.0.in.in20.i.i.i.i.i, -2
  %.022.i.i.i.i.i = inttoptr i64 %.0.in21.i.i.i.i.i to ptr ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.022.i.i.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48
  %i.aq = icmp eq ptr %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.preheader19.i.i.i.i.i:                           ; preds = %.lr.ph.i, %.preheader19.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi ptr [ %i.as, %.preheader19.i.i.i.i.i ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48 ; 2 uses
  %.not17.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not17.i.i.i.i.i, label %_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEi.exit.i, label %.preheader19.i.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.023.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.022.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 4 uses
  %.0.in.in.i.i.i.i.i = load i64, ptr %.023.i.i.i.i.i, align 8, !tbaa !45
  %.0.in.i.i.i.i.i = and i64 %.0.in.in.i.i.i.i.i, -2
  %.0.i.i.i.i.i = inttoptr i64 %.0.in.i.i.i.i.i to ptr ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !48
  %i.av = icmp eq ptr %.023.i.i.i.i.i, %i.au
  br i1 %i.av, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !3

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i, i64 16
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !48
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %.023.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.an, %.preheader.i.i.i.i.i ]
  %i.aw = phi ptr [ %.pre.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ null, %.preheader.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.022.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.not16.i.i.i.i.i = icmp eq ptr %i.aw, %.0.lcssa.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %.not16.i.i.i.i.i, ptr %.0.i.i.i.i, ptr %.0.lcssa.i.i.i.i.i
  br label %_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEi.exit.i

_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEi.exit.i: ; preds = %.preheader19.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %storemerge.i.i.i.i.i, %.preheader19.i.i.i.i.i ]
  %i.ax = load i64, ptr %i.d, align 8, !tbaa !44
  %i.ay = add i64 %i.ax, -1
  store i64 %i.ay, ptr %i.d, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 80
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !46  ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  store ptr %i.bb, ptr %6, align 8, !tbaa !52, !alias.scope !100
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.be = invoke noundef ptr @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE21rebalance_for_extractEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refERS6_SA_(ptr noundef nonnull %i.az, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %.noexc43 unwind label %.loopexit72 ; 0 uses

.noexc43:                                         ; preds = %_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 56
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !46  ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store ptr %i.bh, ptr %5, align 8, !tbaa !52, !alias.scope !101
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bk = invoke noundef ptr @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE21rebalance_for_extractEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refERS6_SA_(ptr noundef nonnull %i.bf, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %.noexc44 unwind label %.loopexit72 ; 0 uses

.noexc44:                                         ; preds = %.noexc43
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc, label %bb.f

bb.f:                                             ; preds = %.noexc44
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 24 ; 2 uses
  %i.bo = invoke noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i32 noundef 3)
          to label %.noexc unwind label %bb.g     ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #14
  unreachable

.noexc:                                           ; preds = %bb.f, %.noexc44
  %i.br = getelementptr inbounds i8, ptr %.1.i.i.i.i, i64 -56 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03.05.i, i64 noundef 104) #16
  %.not.i = icmp eq ptr %i.br, %.09.lcssa.i.i.i
  br i1 %.not.i, label %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NS1_15index_node_baseIS6_SK_EEEEEESX_.exit, label %.lr.ph.i, !llvm.loop !93

_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NS1_15index_node_baseIS6_SK_EEEEEESX_.exit: ; preds = %.noexc, %_ZSt4moveIN5boost11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEESt20back_insert_iteratorISt6vectorIS9_SA_EEET0_T_SJ_SI_.exit
  %i.bs = load ptr, ptr %7, align 8, !tbaa !102   ; 2 uses
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !102 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %._crit_edge92, label %.lr.ph

._crit_edge:                                      ; preds = %bb.al
  %.pre99 = load ptr, ptr %7, align 8, !tbaa !102 ; 2 uses
  %.pre100 = load ptr, ptr %i.e, align 8, !tbaa !102 ; 2 uses
  %i.bv = icmp eq ptr %.pre99, %.pre100
  br i1 %i.bv, label %._crit_edge92, label %.lr.ph91

.loopexit72:                                      ; preds = %_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEi.exit.i, %.noexc43
  %lpad.loopexit74 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp73:                             ; preds = %.loopexit77
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.lr.ph:                                           ; preds = %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NS1_15index_node_baseIS6_SK_EEEEEESX_.exit, %bb.al
  %.sroa.060.087 = phi ptr [ %i.ha, %bb.al ], [ %i.bs, %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NS1_15index_node_baseIS6_SK_EEEEEESX_.exit ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 16 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !38
  %i.by = icmp sgt i64 %i.bx, -1
  br i1 %i.by, label %bb.h, label %bb.al

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.bz = load i64, ptr %.sroa.060.087, align 8, !tbaa !36 ; 2 uses
  store i64 %i.bz, ptr %8, align 8, !tbaa !36
  %i.ca = load i64, ptr %i.bw, align 8, !tbaa !38 ; 2 uses
  %10 = add nsw i64 %i.ca, %1
  store i64 %10, ptr %i.f, align 8, !tbaa !37
  store i64 %i.ca, ptr %i.g, align 8, !tbaa !38
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvllEEC2ERKS1_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 24
  %i.ce = invoke noundef zeroext i1 %i.cc(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i32 noundef 2)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.cf = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !54
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !40
  store <2 x ptr> %i.cf, ptr %i.i, align 8, !tbaa !54
  %.pre = load i64, ptr %8, align 8, !tbaa !45
  br label %_ZNSt8functionIFvllEEC2ERKS1_.exit

bb.k:                                             ; preds = %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %i.i, align 8, !tbaa !40  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = invoke noundef zeroext i1 %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 3)
          to label %.body unwind label %bb.m      ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #14
  unreachable

_ZNSt8functionIFvllEEC2ERKS1_.exit:               ; preds = %bb.j, %bb.h
  %i.cm = phi ptr [ %i.cg, %bb.j ], [ null, %bb.h ] ; 3 uses
  %i.cn = phi i64 [ %.pre, %bb.j ], [ %i.bz, %bb.h ] ; 3 uses
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !46  ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 80
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !45
  %i.cr = and i64 %i.cq, -2                       ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %select.unfold._crit_edge.thread.i.i, label %select.unfold.preheader.i.i

select.unfold.preheader.i.i:                      ; preds = %_ZNSt8functionIFvllEEC2ERKS1_.exit
  %i.ct = inttoptr i64 %i.cr to ptr
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %select.unfold.i.i, %select.unfold.preheader.i.i
  %.pn.i.i = phi ptr [ %i.cw, %select.unfold.i.i ], [ %i.ct, %select.unfold.preheader.i.i ]
  %.01727.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -80 ; 4 uses
  %i.cu = load i64, ptr %.01727.i.i, align 8, !tbaa !45 ; 2 uses
  %i.cv = icmp slt i64 %i.cn, %i.cu               ; 2 uses
  %.in.v.i.i = select i1 %i.cv, i64 88, i64 96
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.01727.i.i, i64 %.in.v.i.i
  %i.cw = load ptr, ptr %.in.i.i, align 8, !tbaa !48 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %select.unfold._crit_edge.i.i, label %select.unfold.i.i

select.unfold._crit_edge.i.i:                     ; preds = %select.unfold.i.i
  br i1 %i.cv, label %select.unfold._crit_edge.thread.i.i, label %.thread

select.unfold._crit_edge.thread.i.i:              ; preds = %select.unfold._crit_edge.i.i, %_ZNSt8functionIFvllEEC2ERKS1_.exit
  %.018.lcssa33.i.i = phi ptr [ %.01727.i.i, %select.unfold._crit_edge.i.i ], [ %i.co, %_ZNSt8functionIFvllEEC2ERKS1_.exit ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 88
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !48 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 -80
  %i.dc = select i1 %i.da, ptr null, ptr %i.db
  %i.dd = icmp eq ptr %.018.lcssa33.i.i, %i.dc
  br i1 %i.dd, label %.sink.split.i.i, label %bb.n

bb.n:                                             ; preds = %select.unfold._crit_edge.thread.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.018.lcssa33.i.i, i64 80 ; 3 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !45 ; 3 uses
  %i.dg = and i64 %i.df, 1
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.o, label %.critedge.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.di = inttoptr i64 %i.df to ptr
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !45
  %i.dk = and i64 %i.dj, -2
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = icmp eq ptr %i.de, %i.dl
  br i1 %i.dm, label %bb.p, label %.critedge.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %.018.lcssa33.i.i, i64 96
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !48
  br label %.loopexit140

.critedge.i.i.i.i:                                ; preds = %bb.o, %bb.n
  %i.dp = getelementptr inbounds nuw i8, ptr %.018.lcssa33.i.i, i64 88
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i, label %.preheader.i.i.i.i, label %.preheader25.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.critedge.i.i.i.i
  %.0.in26.i.i.i.i = and i64 %i.df, -2
  %.027.i.i.i.i = inttoptr i64 %.0.in26.i.i.i.i to ptr ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.027.i.i.i.i, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !48
  %i.dt = icmp eq ptr %i.de, %i.ds
  br i1 %i.dt, label %.lr.ph.i.i.i.i, label %.loopexit140

.preheader25.i.i.i.i:                             ; preds = %.critedge.i.i.i.i, %.preheader25.i.i.i.i
  %.019.i.i.i.i = phi ptr [ %i.dv, %.preheader25.i.i.i.i ], [ %i.dq, %.critedge.i.i.i.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !48 ; 2 uses
  %.not20.i.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not20.i.i.i.i, label %.loopexit140, label %.preheader25.i.i.i.i, !llvm.loop !0

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %.lr.ph.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.0.i.i.i.i45, %.lr.ph.i.i.i.i ], [ %.027.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.dw = load i64, ptr %.028.i.i.i.i, align 8, !tbaa !45
  %.0.in.i.i.i.i = and i64 %i.dw, -2
  %.0.i.i.i.i45 = inttoptr i64 %.0.in.i.i.i.i to ptr ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i45, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !48
  %i.dz = icmp eq ptr %.028.i.i.i.i, %i.dy
  br i1 %i.dz, label %.lr.ph.i.i.i.i, label %.loopexit140, !llvm.loop !1

.loopexit140:                                     ; preds = %.preheader25.i.i.i.i, %.lr.ph.i.i.i.i, %bb.p, %.preheader.i.i.i.i
  %.019.lcssa.sink.i.i.i.i = phi ptr [ %i.do, %bb.p ], [ %.0.i.i.i.i45, %.lr.ph.i.i.i.i ], [ %.027.i.i.i.i, %.preheader.i.i.i.i ], [ %.019.i.i.i.i, %.preheader25.i.i.i.i ] ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %.019.lcssa.sink.i.i.i.i, i64 -80
  %.pre.i = load i64, ptr %i.ea, align 8, !tbaa !45
  %i.eb = icmp slt i64 %.pre.i, %i.cn
  br i1 %i.eb, label %.sink.split.i.i, label %.noexc33

.thread:                                          ; preds = %select.unfold._crit_edge.i.i
  %i.ec = icmp slt i64 %i.cu, %i.cn
  br i1 %i.ec, label %.sink.split.i.i, label %.noexc33.thread138

.sink.split.i.i:                                  ; preds = %.thread, %.loopexit140, %select.unfold._crit_edge.thread.i.i
  %i.ed = phi i1 [ true, %select.unfold._crit_edge.thread.i.i ], [ true, %.loopexit140 ], [ false, %.thread ]
  %.023.sink.i.ph.i = phi ptr [ %.018.lcssa33.i.i, %select.unfold._crit_edge.thread.i.i ], [ %.018.lcssa33.i.i, %.loopexit140 ], [ %.01727.i.i, %.thread ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.023.sink.i.ph.i, i64 80 ; 3 uses
  %i.ef = load i64, ptr %i.f, align 8, !tbaa !45
  %i.eg = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !45
  %i.ei = and i64 %i.eh, -2                       ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %select.unfold._crit_edge.loopexit.i.i, label %select.unfold.preheader.i.i48

select.unfold.preheader.i.i48:                    ; preds = %.sink.split.i.i
  %i.ek = inttoptr i64 %i.ei to ptr
  br label %select.unfold.i.i49

select.unfold.i.i49:                              ; preds = %select.unfold.i.i49, %select.unfold.preheader.i.i48
  %.pn.i.i50 = phi ptr [ %i.en, %select.unfold.i.i49 ], [ %i.ek, %select.unfold.preheader.i.i48 ] ; 2 uses
  %.01014.i.i = getelementptr inbounds i8, ptr %.pn.i.i50, i64 -56 ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %.pn.i.i50, i64 -48
  %i.em = load i64, ptr %i.el, align 8, !tbaa !45
  %.not.i51 = icmp slt i64 %i.ef, %i.em           ; 2 uses
  %.in.v.i.i52 = select i1 %.not.i51, i64 64, i64 72
  %.in.i.i53 = getelementptr inbounds nuw i8, ptr %.01014.i.i, i64 %.in.v.i.i52
  %i.en = load ptr, ptr %.in.i.i53, align 8, !tbaa !48 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %select.unfold._crit_edge.loopexit.i.i, label %select.unfold.i.i49

select.unfold._crit_edge.loopexit.i.i:            ; preds = %select.unfold.i.i49, %.sink.split.i.i
  %.011.lcssa.i.i = phi ptr [ %i.co, %.sink.split.i.i ], [ %.01014.i.i, %select.unfold.i.i49 ] ; 4 uses
  %.0.lcssa.i.i = phi i1 [ true, %.sink.split.i.i ], [ %.not.i51, %select.unfold.i.i49 ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i, i64 56 ; 3 uses
  %i.eq = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #15
          to label %.noexc54 unwind label %bb.ai  ; 8 uses

.noexc54:                                         ; preds = %select.unfold._crit_edge.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eq, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 24, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.er, i8 0, i64 24, i1 false)
  %i.et = load ptr, ptr %i.j, align 8, !tbaa !39
  store ptr %i.et, ptr %i.es, align 8, !tbaa !39
  %i.eu = load ptr, ptr %i.i, align 8, !tbaa !40  ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit.i, label %bb.q

bb.q:                                             ; preds = %.noexc54
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 16, i1 false), !tbaa.struct !42
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit.i

_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit.i: ; preds = %bb.q, %.noexc54
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 56 ; 9 uses
  %i.ex = load ptr, ptr %i.c, align 8, !tbaa !46  ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br i1 %.0.lcssa.i.i, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i, i64 64
  store ptr %i.ew, ptr %i.ez, align 8, !tbaa !48
  %i.fa = icmp eq ptr %.011.lcssa.i.i, %i.ex
  br i1 %i.fa, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fb = ptrtoint ptr %i.ew to i64
  %i.fc = load i64, ptr %i.ey, align 8, !tbaa !45
  %i.fd = and i64 %i.fc, 1
  %i.fe = or i64 %i.fd, %i.fb
  store i64 %i.fe, ptr %i.ey, align 8, !tbaa !45
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 72
  store ptr %i.ew, ptr %i.ff, align 8, !tbaa !48
  %.pre97 = load i64, ptr %i.ew, align 8, !tbaa !45
  %i.fg = and i64 %.pre97, 1
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 64 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !48
  %i.fj = icmp eq ptr %i.ep, %i.fi
  br i1 %i.fj, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  store ptr %i.ew, ptr %i.fh, align 8, !tbaa !48
  br label %bb.x

bb.v:                                             ; preds = %_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i, i64 72
  store ptr %i.ew, ptr %i.fk, align 8, !tbaa !48
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ex, i64 72 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !48
  %i.fn = icmp eq ptr %i.ep, %i.fm
  br i1 %i.fn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store ptr %i.ew, ptr %i.fl, align 8, !tbaa !48
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %i.fo = phi i64 [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ %i.fg, %bb.s ]
  %i.fp = ptrtoint ptr %i.ep to i64
  %i.fq = or i64 %i.fo, %i.fp
  store i64 %i.fq, ptr %i.ew, align 8, !tbaa !45
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, i8 0, i64 16, i1 false)
  store ptr %i.ey, ptr %3, align 8, !tbaa !52, !alias.scope !103
  invoke void @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE9rebalanceEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE(ptr noundef nonnull %i.ew, ptr noundef nonnull align 8 dead_on_return %3)
          to label %bb.y unwind label %bb.ai

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eq, i64 80 ; 9 uses
  %i.ft = load ptr, ptr %i.c, align 8, !tbaa !46  ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br i1 %i.ed, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.fv = getelementptr inbounds nuw i8, ptr %.023.sink.i.ph.i, i64 88
  store ptr %i.fs, ptr %i.fv, align 8, !tbaa !48
  %i.fw = icmp eq ptr %.023.sink.i.ph.i, %i.ft
  br i1 %i.fw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fx = ptrtoint ptr %i.fs to i64
  %i.fy = load i64, ptr %i.fu, align 8, !tbaa !45
  %i.fz = and i64 %i.fy, 1
  %i.ga = or i64 %i.fz, %i.fx
  store i64 %i.ga, ptr %i.fu, align 8, !tbaa !45
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 96
  store ptr %i.fs, ptr %i.gb, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ft, i64 88 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !48
  %i.ge = icmp eq ptr %i.ee, %i.gd
  br i1 %i.ge, label %bb.ac, label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit.i

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.fs, ptr %i.gc, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit.i

bb.ad:                                            ; preds = %bb.y
  %i.gf = getelementptr inbounds nuw i8, ptr %.023.sink.i.ph.i, i64 96
  store ptr %i.fs, ptr %i.gf, align 8, !tbaa !48
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ft, i64 96 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !48
  %i.gi = icmp eq ptr %i.ee, %i.gh
  br i1 %i.gi, label %bb.ae, label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit.i

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.fs, ptr %i.gg, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit.i

_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.gj = ptrtoint ptr %i.ee to i64
  %i.gk = load i64, ptr %i.fs, align 8, !tbaa !45
  %i.gl = and i64 %i.gk, 1
  %i.gm = or i64 %i.gl, %i.gj
  store i64 %i.gm, ptr %i.fs, align 8, !tbaa !45
  %i.gn = getelementptr inbounds nuw i8, ptr %i.eq, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, i8 0, i64 16, i1 false)
  store ptr %i.fu, ptr %4, align 8, !tbaa !52, !alias.scope !104
  invoke void @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE9rebalanceEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE(ptr noundef nonnull %i.fs, ptr noundef nonnull align 8 dead_on_return %4)
          to label %.noexc33.thread unwind label %bb.ai

.noexc33.thread:                                  ; preds = %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre98.pre = load ptr, ptr %i.i, align 8, !tbaa !40
  br label %bb.af

.noexc33:                                         ; preds = %.loopexit140
  %i.go = icmp eq ptr %.019.lcssa.sink.i.i.i.i, null
  br i1 %i.go, label %bb.af, label %.noexc33.thread138

bb.af:                                            ; preds = %.noexc33.thread, %.noexc33
  %.pre98 = phi ptr [ %.pre98.pre, %.noexc33.thread ], [ %i.cm, %.noexc33 ]
  %i.gp = load i64, ptr %i.d, align 8, !tbaa !44
  %i.gq = add i64 %i.gp, 1
  store i64 %i.gq, ptr %i.d, align 8, !tbaa !44
  br label %.noexc33.thread138

.noexc33.thread138:                               ; preds = %.thread, %bb.af, %.noexc33
  %i.gr = phi ptr [ %.pre98, %bb.af ], [ %i.cm, %.noexc33 ], [ %i.cm, %.thread ] ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i34, label %_ZN5folly12TimeoutQueue5EventD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %.noexc33.thread138
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 3)
          to label %_ZN5folly12TimeoutQueue5EventD2Ev.exit unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #14
  unreachable

_ZN5folly12TimeoutQueue5EventD2Ev.exit:           ; preds = %.noexc33.thread138, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.al

bb.ai:                                            ; preds = %bb.x, %select.unfold._crit_edge.loopexit.i.i, %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit.i
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gw = load ptr, ptr %i.i, align 8, !tbaa !40  ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i36, label %.body, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gx = invoke noundef zeroext i1 %i.gw(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 3)
          to label %.body unwind label %bb.ak     ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #14
  unreachable

.body:                                            ; preds = %bb.aj, %bb.ai, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.k ], [ %i.gv, %bb.aj ], [ %i.ch, %bb.l ], [ %i.gv, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.au

bb.al:                                            ; preds = %_ZN5folly12TimeoutQueue5EventD2Ev.exit, %.lr.ph
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 56 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.bt
  br i1 %i.hb, label %._crit_edge, label %.lr.ph

._crit_edge92:                                    ; preds = %bb.ap, %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NS1_15index_node_baseIS6_SK_EEEEEESX_.exit, %._crit_edge
  %i.hc = load i64, ptr %i.d, align 8, !tbaa !44
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %_ZNK5folly12TimeoutQueue14nextExpirationEv.exit, label %bb.am

bb.am:                                            ; preds = %._crit_edge92
  %i.he = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 64
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !48
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -48
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !37
  br label %_ZNK5folly12TimeoutQueue14nextExpirationEv.exit

.lr.ph91:                                         ; preds = %._crit_edge, %bb.ap
  %.sroa.056.089 = phi ptr [ %i.hp, %bb.ap ], [ %.pre99, %._crit_edge ] ; 5 uses
  %i.hj = load i64, ptr %.sroa.056.089, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.hj, ptr %i.a, align 8, !tbaa !45
  store i64 %1, ptr %i.b, align 8, !tbaa !45
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.056.089, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !40
  %.not.i.i39 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i39, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph91
  invoke void @_ZSt25__throw_bad_function_callv() #17
          to label %.noexc40 unwind label %.loopexit.split-lp

.noexc40:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %.lr.ph91
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.056.089, i64 24
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.056.089, i64 48
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !39
  invoke void %i.ho(ptr noundef nonnull align 8 dereferenceable(32) %i.hm, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ap unwind label %.loopexit, !inline_history !98

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.056.089, i64 56 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %.pre100
  br i1 %i.hq, label %._crit_edge92, label %.lr.ph91

.loopexit:                                        ; preds = %bb.ao
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp:                               ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZNK5folly12TimeoutQueue14nextExpirationEv.exit:  ; preds = %bb.am, %._crit_edge92
  %i.hr = phi i64 [ %i.hi, %bb.am ], [ 9223372036854775807, %._crit_edge92 ] ; 2 uses
  %i.hs = load ptr, ptr %7, align 8, !tbaa !56    ; 3 uses
  %i.ht = load ptr, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hs, %i.ht
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %_ZNK5folly12TimeoutQueue14nextExpirationEv.exit, %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ia, %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i.i ], [ %i.hs, %_ZNK5folly12TimeoutQueue14nextExpirationEv.exit ] ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i42
  %i.hw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.hx = invoke noundef zeroext i1 %i.hv(ptr noundef nonnull align 8 dereferenceable(32) %i.hw, ptr noundef nonnull align 8 dereferenceable(32) %i.hw, i32 noundef 3)
          to label %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i.i unwind label %bb.ar ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.hy = landingpad { ptr, i32 }
          catch ptr null
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  call void @__clang_call_terminate(ptr %i.hz) #14
  unreachable

_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i.i: ; preds = %bb.aq, %.lr.ph.i.i.i42
  %i.ia = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ia, %i.ht
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i42, !llvm.loop !4

_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNK5folly12TimeoutQueue14nextExpirationEv.exit
  %i.ib = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.hs, %_ZNK5folly12TimeoutQueue14nextExpirationEv.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ib, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit.i
  %i.ic = load ptr, ptr %9, align 8, !tbaa !58
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.ib to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef %i.if) #16
  br label %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EED2Ev.exit

_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.ig = icmp sgt i64 %i.hr, %1
  %.not30 = select i1 %2, i1 true, i1 %i.ig
  br i1 %.not30, label %bb.at, label %bb.b, !llvm.loop !99

bb.at:                                            ; preds = %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EED2Ev.exit
  ret i64 %i.hr

bb.au:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit72, %.loopexit.split-lp73, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit.split-lp75, %.loopexit.split-lp73 ], [ %lpad.loopexit74, %.loopexit72 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %i.g = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 3)
          to label %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #14
  unreachable

_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5folly12TimeoutQueue5EventESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #16
  br label %_ZNSt12_Vector_baseIN5folly12TimeoutQueue5EventESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5folly12TimeoutQueue5EventESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt11__copy_moveILb1ELb0ESt26bidirectional_iterator_tagE8__copy_mIN5boost11multi_index6detail19bidir_node_iteratorINS5_18ordered_index_nodeINS5_19null_augment_policyENS5_15index_node_baseIN5folly12TimeoutQueue5EventESaISC_EEEEEEESt20back_insert_iteratorISt6vectorISC_SD_EEEET0_T_SM_SL_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %0, %1
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost11multi_index6detail19bidir_node_iteratorINS1_18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEppEv.exit
  %.sroa.02.07 = phi ptr [ %0, %.lr.ph ], [ %i.ae, %_ZN5boost11multi_index6detail19bidir_node_iteratorINS1_18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEppEv.exit ] ; 6 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !57   ; 5 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.02.07, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZSt12construct_atIN5folly12TimeoutQueue5EventEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 24
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 2)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !54
  store <2 x ptr> %i.k, ptr %i.f, align 8, !tbaa !54
  br label %_ZSt12construct_atIN5folly12TimeoutQueue5EventEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #14
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i:         ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.l

_ZSt12construct_atIN5folly12TimeoutQueue5EventEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i.i: ; preds = %bb.e, %bb.c
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr %i.r, ptr %i.a, align 8, !tbaa !57
  br label %_ZNSt20back_insert_iteratorISt6vectorIN5folly12TimeoutQueue5EventESaIS3_EEEaSERKS3_.exit

bb.i:                                             ; preds = %bb.b
  tail call void @_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.02.07)
  br label %_ZNSt20back_insert_iteratorISt6vectorIN5folly12TimeoutQueue5EventESaIS3_EEEaSERKS3_.exit

_ZNSt20back_insert_iteratorISt6vectorIN5folly12TimeoutQueue5EventESaIS3_EEEaSERKS3_.exit: ; preds = %_ZSt12construct_atIN5folly12TimeoutQueue5EventEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i.i, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.preheader19.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN5folly12TimeoutQueue5EventESaIS3_EEEaSERKS3_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 56 ; 3 uses
  %.0.in.in20.i.i.i = load i64, ptr %i.u, align 8, !tbaa !45
  %.0.in21.i.i.i = and i64 %.0.in.in20.i.i.i, -2
  %.022.i.i.i = inttoptr i64 %.0.in21.i.i.i to ptr ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.022.i.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.preheader19.i.i.i:                               ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN5folly12TimeoutQueue5EventESaIS3_EEEaSERKS3_.exit, %.preheader19.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.z, %.preheader19.i.i.i ], [ %i.t, %_ZNSt20back_insert_iteratorISt6vectorIN5folly12TimeoutQueue5EventESaIS3_EEEaSERKS3_.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !48   ; 2 uses
  %.not17.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not17.i.i.i, label %_ZN5boost11multi_index6detail19bidir_node_iteratorINS1_18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEppEv.exit, label %.preheader19.i.i.i, !llvm.loop !2

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.023.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.022.i.i.i, %.preheader.i.i.i ] ; 4 uses
  %.0.in.in.i.i.i = load i64, ptr %.023.i.i.i, align 8, !tbaa !45
  %.0.in.i.i.i = and i64 %.0.in.in.i.i.i, -2
  %.0.i.i.i = inttoptr i64 %.0.in.i.i.i to ptr    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48
  %i.ac = icmp eq ptr %.023.i.i.i, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !3

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i.i, i64 16
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !48
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.preheader.i.i.i
  %.0.i.i = phi ptr [ %.023.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.u, %.preheader.i.i.i ]
  %i.ad = phi ptr [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ null, %.preheader.i.i.i ]
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.022.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.ad, %.0.lcssa.i.i.i
  %spec.select.i.i = select i1 %.not16.i.i.i, ptr %.0.i.i, ptr %.0.lcssa.i.i.i
  br label %_ZN5boost11multi_index6detail19bidir_node_iteratorINS1_18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEppEv.exit

_ZN5boost11multi_index6detail19bidir_node_iteratorINS1_18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEppEv.exit: ; preds = %.preheader19.i.i.i, %._crit_edge.i.i.i
  %.1.i.i = phi ptr [ %spec.select.i.i, %._crit_edge.i.i.i ], [ %storemerge.i.i.i, %.preheader19.i.i.i ]
  %i.ae = getelementptr inbounds i8, ptr %.1.i.i, i64 -56 ; 2 uses
  %.not = icmp eq ptr %i.ae, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !105

._crit_edge:                                      ; preds = %_ZN5boost11multi_index6detail19bidir_node_iteratorINS1_18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEppEv.exit, %bb.a
  ret ptr %2
end_hunk_0
