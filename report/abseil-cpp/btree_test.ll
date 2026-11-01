Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/btree_test?download=true
inline.NumInlined: 114243
inline.NumDeleted: 30281
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 695
loop-unroll.NumUnrolled: 833
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE5mergeEPS5_PSaISt4pairIKiiEE:bb.a
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !1015
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %i.ce, ptr %i.ck, align 1, !tbaa !813
  %.0.i = add i8 %.035.i, 1                       ; 2 uses
  %.not.i22 = icmp ugt i8 %.0.i, %i.bg
  br i1 %.not.i22, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit, label %.lr.ph37.i, !llvm.loop !106

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit: ; preds = %.lr.ph37.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE10transfer_nEmmmPS5_PSaISt4pairIKiiEE.exit.i, %.preheader.i
  %i.cl = add i8 %i.bg, -1
  store i8 %i.cl, ptr %i.bf, align 1, !tbaa !813
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !861
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #39
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairISB_iEPSJ_EESM_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.380", align 8 ; 7 uses
  store ptr %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !813   ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre15 = load i8, ptr %.phi.trans.insert14, align 1, !tbaa !813
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !1015 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !813   ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !813
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 256
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !1015 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !813   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit, !llvm.loop !84

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !813   ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %6, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !1025
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %.pre15, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %1, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 2 uses
  %i.y = icmp eq i8 %i.t, %i.u
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult i8 %i.t, 30
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i8 %i.t, 1
  %i.ab = tail call i8 @llvm.umin.i8(i8 %i.aa, i8 30) ; 2 uses
  %i.ac = shl nuw i8 %i.ab, 3
  %i.ad = zext i8 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 16
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #35 ; 11 uses
  store ptr %i.af, ptr %i.af, align 8, !tbaa !1015
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !813
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !813
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  store i8 %i.ab, ptr %i.ai, align 1, !tbaa !813
  store ptr %i.af, ptr %6, align 8, !tbaa !1019
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !813  ; 3 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ak, 3          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairISB_iEPSJ_EESM_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %i.ao = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1
  %xtraiter = and i64 %i.aq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i6.prol.loopexit, label %.lr.ph.i.i.i6.prol

.lr.ph.i.i.i6.prol:                               ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i6.prol
  %.015.i.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.i6.prol ], [ %i.an, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01214.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i6.prol ], [ %i.al, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i6.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.ar = load i64, ptr %.01214.i.i.i.prol, align 1
  store i64 %i.ar, ptr %.015.i.i.i.prol, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.prol, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i6.prol.loopexit, label %.lr.ph.i.i.i6.prol, !llvm.loop !4735

.lr.ph.i.i.i6.prol.loopexit:                      ; preds = %.lr.ph.i.i.i6.prol, %.lr.ph.preheader.i.i.i
  %.015.i.i.i.unr = phi ptr [ %i.an, %.lr.ph.preheader.i.i.i ], [ %i.at, %.lr.ph.i.i.i6.prol ]
  %.01214.i.i.i.unr = phi ptr [ %i.al, %.lr.ph.preheader.i.i.i ], [ %i.as, %.lr.ph.i.i.i6.prol ]
  %i.au = icmp ult i64 %i.ao, 56
  br i1 %i.au, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairISB_iEPSJ_EESM_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %.lr.ph.i.i.i6.prol.loopexit, %.lr.ph.i.i.i6
  %.015.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i6 ], [ %.015.i.i.i.unr, %.lr.ph.i.i.i6.prol.loopexit ] ; 9 uses
  %.01214.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i6 ], [ %.01214.i.i.i.unr, %.lr.ph.i.i.i6.prol.loopexit ] ; 9 uses
  %i.av = load i64, ptr %.01214.i.i.i, align 1
  store i64 %i.av, ptr %.015.i.i.i, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 8
  %i.ay = load i64, ptr %i.aw, align 1
  store i64 %i.ay, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16
  %i.bb = load i64, ptr %i.az, align 1
  store i64 %i.bb, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 24
  %i.be = load i64, ptr %i.bc, align 1
  store i64 %i.be, ptr %i.bd, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 32
  %i.bh = load i64, ptr %i.bf, align 1
  store i64 %i.bh, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 40
  %i.bk = load i64, ptr %i.bi, align 1
  store i64 %i.bk, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 48
  %i.bn = load i64, ptr %i.bl, align 1
  store i64 %i.bn, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 56
  %i.bq = load i64, ptr %i.bo, align 1
  store i64 %i.bq, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 64
  %.not.i.i.i7.7 = icmp eq ptr %i.br, %i.am
  br i1 %.not.i.i.i7.7, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairISB_iEPSJ_EESM_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i6, !llvm.loop !93

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairISB_iEPSJ_EESM_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i6.prol.loopexit, %.lr.ph.i.i.i6, %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  store i8 %i.aj, ptr %i.bt, align 2, !tbaa !813
  store i8 0, ptr %i.x, align 1, !tbaa !813
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE16clear_and_deleteEPS5_PSaISt4pairIKiiEE(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  store ptr %i.af, ptr %i.w, align 8, !tbaa !1015
  store ptr %i.af, ptr %0, align 8, !tbaa !1015
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSB_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6)
  %.pre16 = load ptr, ptr %6, align 8, !tbaa !1019
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairISB_iEPSJ_EESM_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.bu = phi ptr [ %i.af, %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairISB_iEPSJ_EESM_DpOT_ENKUlhE_clEh.exit ], [ %.pre16, %bb.e ], [ %i.v, %bb.b ] ; 5 uses
  %i.bv = load i32, ptr %i.a, align 8, !tbaa !1025 ; 3 uses
  %i.bw = trunc i32 %i.bv to i8                   ; 2 uses
  %i.bx = and i32 %i.bv, 255                      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 10 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !813 ; 3 uses
  %i.ca = icmp ugt i8 %i.bz, %i.bw
  %i.cb = zext nneg i32 %i.bx to i64              ; 2 uses
  br i1 %i.ca, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %i.cb ; 2 uses
  %narrow.i = sub nuw i8 %i.bz, %i.bw
  %i.ce = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ce, 3
  %i.cf = getelementptr i8, ptr %i.cd, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.cd, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.by, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %i.cg = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.bz, %bb.f ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cb ; 2 uses
  %i.cj = load i64, ptr %4, align 8, !tbaa !869
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !802
  store i32 %i.cl, ptr %i.ci, align 4, !tbaa !1024
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 0, ptr %i.cm, align 4, !tbaa !1027
  %i.cn = add i8 %i.cg, 1                         ; 3 uses
  store i8 %i.cn, ptr %i.by, align 1, !tbaa !813
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !813
  %.not.i20.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i20.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEEvhPSaISt4pairISB_iEEDpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i
  %i.cq = zext i8 %i.cn to i32
  %i.cr = add nuw nsw i32 %i.bx, 1                ; 2 uses
  %i.cs = icmp samesign ult i32 %i.cr, %i.cq
  br i1 %i.cs, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEEvhPSaISt4pairISB_iEEDpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bu, i64 256 ; 10 uses
  %i.cu = zext i8 %i.cn to i64                    ; 4 uses
  %i.cv = zext nneg i32 %i.cr to i64
  %.mask = and i32 %i.bv, 255
  %7 = zext nneg i32 %.mask to i64                ; 2 uses
  %i.cw = xor i64 %7, -1
  %i.cx = add nsw i64 %i.cw, %i.cu
  %i.cy = add nsw i64 %i.cu, -2
  %i.cz = sub nsw i64 %i.cy, %7
  %xtraiter24 = and i64 %i.cx, 3                  ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.da, %.prol.preheader ], [ %i.cu, %.lr.ph.i ] ; 3 uses
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.da = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1015 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.prol
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !1015
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.df, ptr %i.de, align 1, !tbaa !813
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !4736

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.cu, %.lr.ph.i ], [ %i.da, %.prol.preheader ]
  %i.dg = icmp ult i64 %i.cz, 3
  br i1 %i.dg, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEEvhPSaISt4pairISB_iEEDpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.dz, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.dh = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1015 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !1015
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = trunc nuw i64 %indvars.iv to i8
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !813
  %i.dn = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1015 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dh
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !1015
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = trunc nuw i64 %i.dh to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !813
  %i.dt = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !1015 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dn
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !1015
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dy = trunc nuw i64 %i.dn to i8
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !813
  %i.dz = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1015 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dt
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !1015
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = trunc nuw i64 %i.dt to i8
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.dz, %i.cv
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEEvhPSaISt4pairISB_iEEDpOT_.exit, !llvm.loop !4737

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEEvhPSaISt4pairISB_iEEDpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i, %bb.g
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !1006
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !1006
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_121Btree_map_string_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_121Btree_map_string_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_121Btree_map_string_TestE, i64 16), ptr %i.a, align 8, !tbaa !816
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121Btree_map_string_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121Btree_map_string_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::tuple.501", align 8    ; 4 uses
  %2 = alloca %"class.std::tuple.423", align 1    ; 3 uses
  %3 = alloca %"struct.std::pair.456", align 8    ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.absl::lts_20260526::btree_map.434", align 8 ; 11 uses
  %6 = alloca %"struct.std::pair.453", align 8    ; 11 uses
  %7 = alloca %"struct.absl::lts_20260526::container_internal::Generator.455", align 4 ; 6 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %12 = alloca %"struct.std::pair.453", align 8   ; 12 uses
  %13 = alloca %"struct.absl::lts_20260526::container_internal::Generator.455", align 4 ; 6 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %17 = alloca %"struct.std::pair.453", align 8   ; 10 uses
  %18 = alloca %"struct.absl::lts_20260526::container_internal::Generator.455", align 4 ; 6 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %22 = alloca %"struct.std::pair.453", align 8   ; 12 uses
  %23 = alloca %"struct.absl::lts_20260526::container_internal::Generator.455", align 4 ; 6 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %27 = alloca %"struct.std::pair.453", align 8   ; 10 uses
  %28 = alloca %"struct.absl::lts_20260526::container_internal::Generator.455", align 4 ; 6 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.std::vector.427", align 8  ; 11 uses
  %32 = alloca %"class.absl::lts_20260526::container_internal::(anonymous namespace)::unique_checker.432", align 8 ; 19 uses
  %33 = alloca %"class.std::vector.427", align 8  ; 13 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #37
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %34)
  %i.e = load i8, ptr %34, align 8, !tbaa !842, !range !843, !noundef !844
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #37
  %i.g = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !845  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !810
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i

_ZNK7testing15AssertionResult15failure_messageEv.exit.i: ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.i, %bb.d ], [ @.str.192, %bb.c ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 706, ptr noundef %i.j)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #37
  %i.k = load ptr, ptr %35, align 8, !tbaa !827   ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i5.i, label %_ZN7testing7MessageD2Ev.exit.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.f
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !816
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(128) %i.k) #37, !inline_history !4738
  br label %_ZN7testing7MessageD2Ev.exit.i

_ZN7testing7MessageD2Ev.exit.i:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #37
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt4pairIiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERS7_IKiiEPSF_EESI_DpOT_:bb.a
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !813
  %i.dq = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1015 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dk
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !1015
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dv = trunc nuw i64 %i.dk to i8
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !813
  %i.dw = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1015 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dq
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !1015
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = trunc nuw i64 %i.dq to i8
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.dw, %i.cs
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKSt4pairIiiEEEEvhPSaIS7_IKiiEEDpOT_.exit, !llvm.loop !9791

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKSt4pairIiiEEEEvhPSaIS7_IKiiEEDpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i, %bb.g
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !1006
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !1006
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSJ_EESM_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.380", align 8 ; 7 uses
  store ptr %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !813   ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre15 = load i8, ptr %.phi.trans.insert14, align 1, !tbaa !813
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !1015 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !813   ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !813
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 256
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !1015 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !813   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit, !llvm.loop !84

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !813   ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %6, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !1025
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %.pre15, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %1, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 2 uses
  %i.y = icmp eq i8 %i.t, %i.u
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult i8 %i.t, 30
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i8 %i.t, 1
  %i.ab = tail call i8 @llvm.umin.i8(i8 %i.aa, i8 30) ; 2 uses
  %i.ac = shl nuw i8 %i.ab, 3
  %i.ad = zext i8 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 16
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #35 ; 11 uses
  store ptr %i.af, ptr %i.af, align 8, !tbaa !1015
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !813
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !813
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  store i8 %i.ab, ptr %i.ai, align 1, !tbaa !813
  store ptr %i.af, ptr %6, align 8, !tbaa !1019
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !813  ; 3 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ak, 3          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSJ_EESM_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %i.ao = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1
  %xtraiter = and i64 %i.aq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i6.prol.loopexit, label %.lr.ph.i.i.i6.prol

.lr.ph.i.i.i6.prol:                               ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i6.prol
  %.015.i.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.i6.prol ], [ %i.an, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01214.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i6.prol ], [ %i.al, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i6.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.ar = load i64, ptr %.01214.i.i.i.prol, align 1
  store i64 %i.ar, ptr %.015.i.i.i.prol, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.prol, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i6.prol.loopexit, label %.lr.ph.i.i.i6.prol, !llvm.loop !9792

.lr.ph.i.i.i6.prol.loopexit:                      ; preds = %.lr.ph.i.i.i6.prol, %.lr.ph.preheader.i.i.i
  %.015.i.i.i.unr = phi ptr [ %i.an, %.lr.ph.preheader.i.i.i ], [ %i.at, %.lr.ph.i.i.i6.prol ]
  %.01214.i.i.i.unr = phi ptr [ %i.al, %.lr.ph.preheader.i.i.i ], [ %i.as, %.lr.ph.i.i.i6.prol ]
  %i.au = icmp ult i64 %i.ao, 56
  br i1 %i.au, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSJ_EESM_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %.lr.ph.i.i.i6.prol.loopexit, %.lr.ph.i.i.i6
  %.015.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i6 ], [ %.015.i.i.i.unr, %.lr.ph.i.i.i6.prol.loopexit ] ; 9 uses
  %.01214.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i6 ], [ %.01214.i.i.i.unr, %.lr.ph.i.i.i6.prol.loopexit ] ; 9 uses
  %i.av = load i64, ptr %.01214.i.i.i, align 1
  store i64 %i.av, ptr %.015.i.i.i, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 8
  %i.ay = load i64, ptr %i.aw, align 1
  store i64 %i.ay, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16
  %i.bb = load i64, ptr %i.az, align 1
  store i64 %i.bb, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 24
  %i.be = load i64, ptr %i.bc, align 1
  store i64 %i.be, ptr %i.bd, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 32
  %i.bh = load i64, ptr %i.bf, align 1
  store i64 %i.bh, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 40
  %i.bk = load i64, ptr %i.bi, align 1
  store i64 %i.bk, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 48
  %i.bn = load i64, ptr %i.bl, align 1
  store i64 %i.bn, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 56
  %i.bq = load i64, ptr %i.bo, align 1
  store i64 %i.bq, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 64
  %.not.i.i.i7.7 = icmp eq ptr %i.br, %i.am
  br i1 %.not.i.i.i7.7, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSJ_EESM_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i6, !llvm.loop !93

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSJ_EESM_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i6.prol.loopexit, %.lr.ph.i.i.i6, %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  store i8 %i.aj, ptr %i.bt, align 2, !tbaa !813
  store i8 0, ptr %i.x, align 1, !tbaa !813
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE16clear_and_deleteEPS5_PSaISt4pairIKiiEE(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  store ptr %i.af, ptr %i.w, align 8, !tbaa !1015
  store ptr %i.af, ptr %0, align 8, !tbaa !1015
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSB_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6)
  %.pre16 = load ptr, ptr %6, align 8, !tbaa !1019
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSJ_EESM_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.bu = phi ptr [ %i.af, %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSJ_EESM_DpOT_ENKUlhE_clEh.exit ], [ %.pre16, %bb.e ], [ %i.v, %bb.b ] ; 5 uses
  %i.bv = load i32, ptr %i.a, align 8, !tbaa !1025 ; 3 uses
  %i.bw = trunc i32 %i.bv to i8                   ; 2 uses
  %i.bx = and i32 %i.bv, 255                      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 10 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !813 ; 3 uses
  %i.ca = icmp ugt i8 %i.bz, %i.bw
  %i.cb = zext nneg i32 %i.bx to i64              ; 2 uses
  br i1 %i.ca, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %i.cb ; 2 uses
  %narrow.i = sub nuw i8 %i.bz, %i.bw
  %i.ce = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ce, 3
  %i.cf = getelementptr i8, ptr %i.cd, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.cd, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.by, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %i.cg = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.bz, %bb.f ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cb ; 2 uses
  %i.cj = load i64, ptr %4, align 8, !tbaa !869
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !802
  store i32 %i.cl, ptr %i.ci, align 4, !tbaa !1024
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 0, ptr %i.cm, align 4, !tbaa !1027
  %i.cn = add i8 %i.cg, 1                         ; 3 uses
  store i8 %i.cn, ptr %i.by, align 1, !tbaa !813
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !813
  %.not.i20.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i20.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEEvhPSaISt4pairIKiiEEDpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i
  %i.cq = zext i8 %i.cn to i32
  %i.cr = add nuw nsw i32 %i.bx, 1                ; 2 uses
  %i.cs = icmp samesign ult i32 %i.cr, %i.cq
  br i1 %i.cs, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEEvhPSaISt4pairIKiiEEDpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bu, i64 256 ; 10 uses
  %i.cu = zext i8 %i.cn to i64                    ; 4 uses
  %i.cv = zext nneg i32 %i.cr to i64
  %.mask = and i32 %i.bv, 255
  %7 = zext nneg i32 %.mask to i64                ; 2 uses
  %i.cw = xor i64 %7, -1
  %i.cx = add nsw i64 %i.cw, %i.cu
  %i.cy = add nsw i64 %i.cu, -2
  %i.cz = sub nsw i64 %i.cy, %7
  %xtraiter24 = and i64 %i.cx, 3                  ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.da, %.prol.preheader ], [ %i.cu, %.lr.ph.i ] ; 3 uses
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.da = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1015 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.prol
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !1015
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.df, ptr %i.de, align 1, !tbaa !813
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !9793

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.cu, %.lr.ph.i ], [ %i.da, %.prol.preheader ]
  %i.dg = icmp ult i64 %i.cz, 3
  br i1 %i.dg, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEEvhPSaISt4pairIKiiEEDpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.dz, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.dh = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1015 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !1015
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = trunc nuw i64 %indvars.iv to i8
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !813
  %i.dn = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1015 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dh
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !1015
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = trunc nuw i64 %i.dh to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !813
  %i.dt = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !1015 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dn
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !1015
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dy = trunc nuw i64 %i.dn to i8
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !813
  %i.dz = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1015 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dt
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !1015
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = trunc nuw i64 %i.dt to i8
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.dz, %i.cv
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEEvhPSaISt4pairIKiiEEDpOT_.exit, !llvm.loop !9794

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEEvhPSaISt4pairIKiiEEDpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i, %bb.g
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !1006
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !1006
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE17insert_hint_multiIRKS6_IiiEEENS1_14btree_iteratorINS1_10btree_nodeISD_EERS8_PS8_EESO_OT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1195
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.thread91, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1198 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !813   ; 2 uses
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = icmp eq ptr %1, %i.e
  %i.j = icmp eq i32 %2, %i.h
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %2 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load i32, ptr %i.n, align 4, !tbaa !802
  %i.p = load i32, ptr %3, align 4, !tbaa !802    ; 3 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !1193
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1198
  %i.t = icmp eq ptr %1, %i.s
  %i.u = icmp eq i32 %2, 0
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %.critedge2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.x = load i8, ptr %i.w, align 1, !tbaa !813
  %.not.i.i7.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i7.i, label %.thread.i.i13.i, label %bb.d

bb.d:                                             ; preds = %.preheader.preheader
  %.not.not.i.i.i = icmp sgt i32 %2, 0
  br i1 %.not.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEERS9_PS9_EmmEv.exit.i, label %.lr.ph.i.i.i10.i

.lr.ph.i.i.i10.i:                                 ; preds = %bb.d, %bb.e
  %.01621.i.i.i.i = phi ptr [ %i.y, %bb.e ], [ %1, %bb.d ] ; 2 uses
  %i.y = load ptr, ptr %.01621.i.i.i.i, align 8, !tbaa !1198 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !813
  %.not18.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not18.i.i.i.i, label %bb.e, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEERS9_PS9_EmmEv.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i10.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.01621.i.i.i.i, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !813 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i10.i, label %.critedge.i.i.i11.i, !llvm.loop !219

.thread.i.i13.i:                                  ; preds = %.preheader.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.af = and i32 %2, 255
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ag
  %.11723.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !1198 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.11723.i.i.i.i, i64 11
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !813
  %.not.i24.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i24.i.i.i.i, label %.lr.ph26.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph26.i.i.i.i:                                 ; preds = %.thread.i.i13.i, %.lr.ph26.i.i.i.i
  %.11725.i.i.i.i = phi ptr [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ], [ %.11723.i.i.i.i, %.thread.i.i13.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 10
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !813
  %i.am = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 256
  %i.an = zext i8 %i.al to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %.117.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !1198 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.117.i.i.i.i, i64 11
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !813
  %.not.i.i.i.i14.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i14.i, label %.lr.ph26.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !212

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph26.i.i.i.i, %.thread.i.i13.i
  %.117.lcssa.i.i.i.i = phi ptr [ %.11723.i.i.i.i, %.thread.i.i13.i ], [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !813
  br label %.critedge.i.i.i11.i

.critedge.i.i.i11.i:                              ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.lcssa8.sink.i.i.i = phi i8 [ %i.as, %._crit_edge.i.i.i.i ], [ %i.ac, %bb.e ]
  %.2.i.i.i12.i = phi ptr [ %.117.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.y, %bb.e ]
  %i.at = zext i8 %.lcssa8.sink.i.i.i to i32
  br label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEERS9_PS9_EmmEv.exit.i

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEERS9_PS9_EmmEv.exit.i: ; preds = %.lr.ph.i.i.i10.i, %.critedge.i.i.i11.i, %bb.d
  %.sroa.085.1 = phi ptr [ %.2.i.i.i12.i, %.critedge.i.i.i11.i ], [ %1, %bb.d ], [ %1, %.lr.ph.i.i.i10.i ]
  %.sroa.6.0.in = phi i32 [ %i.at, %.critedge.i.i.i11.i ], [ %2, %bb.d ], [ %2, %.lr.ph.i.i.i10.i ]
  %i.au = sext i32 %.sroa.6.0.in to i64
  %i.av = getelementptr [8 x i8], ptr %.sroa.085.1, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %3, align 4, !tbaa !802   ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !802
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.k, label %.critedge2

.critedge2:                                       ; preds = %.critedge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEERS9_PS9_EmmEv.exit.i
  %i.ba = tail call { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE16internal_emplaceIJRKS6_IiiEEEENS1_14btree_iteratorINS1_10btree_nodeISD_EERS8_PS8_EESO_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
  br label %bb.r

bb.f:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !813
  %.not.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = add nsw i32 %2, 1                       ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !813
  %i.bg = zext i8 %i.bf to i32
  %i.bh = icmp eq i32 %i.bd, %i.bg
  br i1 %i.bh, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEERS9_PS9_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.h
  %.01521.i.i.i = phi ptr [ %i.bi, %bb.h ], [ %1, %bb.g ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132Btree_InitializerListInsert_Test8TestBodyEv:._crit_edge.i.i
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.fm
  %.pn132.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn132.pn.pn.pn, %bb.jb ], [ %i.qw, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #37
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.fl
  %.pn132.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn132.pn.pn.pn.pn, %bb.jc ], [ %i.qv, %bb.fl ]
  call void @_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %44) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #37
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.fk, %bb.es, %bb.ds, %bb.cs, %bb.cr
  %.pn132.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn132.pn.pn.pn.pn.pn, %bb.jd ], [ %.pn112.pn.pn, %bb.fk ], [ %.pn106.pn.pn, %bb.es ], [ %.pn100.pn.pn, %bb.ds ], [ %i.kb, %bb.cs ], [ %i.ka, %bb.cr ]
  call void @_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implIiiJEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %32) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.cq, %bb.bh, %bb.ap
  %.pn132.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn132.pn.pn.pn.pn.pn.pn.pn, %bb.je ], [ %.pn94.pn.pn, %bb.cq ], [ %.pn88.pn.pn, %bb.bh ], [ %i.en, %bb.ap ]
  call void @_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES8_IbLb1EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.ao, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.1
  %.pn132.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn132.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.jf ], [ %.pn82.pn.pn, %bb.ao ], [ %.pn76.pn.pn, %bb.v ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.1 ]
  call void @_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  resume { ptr, i32 } %.pn132.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJSt4pairIKiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERS9_PS9_EESF_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.380", align 8 ; 7 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !813   ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert12 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre13 = load i8, ptr %.phi.trans.insert12, align 1, !tbaa !813
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !1015 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !813   ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !813
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 256
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !1015 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !813   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit, !llvm.loop !84

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !813   ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !1025
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %.pre13, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %1, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 2 uses
  %i.y = icmp eq i8 %i.t, %i.u
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult i8 %i.t, 30
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i8 %i.t, 1
  %i.ab = tail call i8 @llvm.umin.i8(i8 %i.aa, i8 30) ; 2 uses
  %i.ac = shl nuw i8 %i.ab, 3
  %i.ad = zext i8 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 16
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #35 ; 11 uses
  store ptr %i.af, ptr %i.af, align 8, !tbaa !1015
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !813
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !813
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  store i8 %i.ab, ptr %i.ai, align 1, !tbaa !813
  store ptr %i.af, ptr %4, align 8, !tbaa !1019
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !813  ; 3 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ak, 3          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJSt4pairIKiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERS9_PS9_EESF_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %i.ao = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1
  %xtraiter = and i64 %i.aq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i4.prol.loopexit, label %.lr.ph.i.i.i4.prol

.lr.ph.i.i.i4.prol:                               ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i4.prol
  %.015.i.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.i4.prol ], [ %i.an, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01214.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i4.prol ], [ %i.al, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i4.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.ar = load i64, ptr %.01214.i.i.i.prol, align 1
  store i64 %i.ar, ptr %.015.i.i.i.prol, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.prol, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i4.prol.loopexit, label %.lr.ph.i.i.i4.prol, !llvm.loop !9894

.lr.ph.i.i.i4.prol.loopexit:                      ; preds = %.lr.ph.i.i.i4.prol, %.lr.ph.preheader.i.i.i
  %.015.i.i.i.unr = phi ptr [ %i.an, %.lr.ph.preheader.i.i.i ], [ %i.at, %.lr.ph.i.i.i4.prol ]
  %.01214.i.i.i.unr = phi ptr [ %i.al, %.lr.ph.preheader.i.i.i ], [ %i.as, %.lr.ph.i.i.i4.prol ]
  %i.au = icmp ult i64 %i.ao, 56
  br i1 %i.au, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJSt4pairIKiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERS9_PS9_EESF_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %.lr.ph.i.i.i4.prol.loopexit, %.lr.ph.i.i.i4
  %.015.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i4 ], [ %.015.i.i.i.unr, %.lr.ph.i.i.i4.prol.loopexit ] ; 9 uses
  %.01214.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i4 ], [ %.01214.i.i.i.unr, %.lr.ph.i.i.i4.prol.loopexit ] ; 9 uses
  %i.av = load i64, ptr %.01214.i.i.i, align 1
  store i64 %i.av, ptr %.015.i.i.i, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 8
  %i.ay = load i64, ptr %i.aw, align 1
  store i64 %i.ay, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16
  %i.bb = load i64, ptr %i.az, align 1
  store i64 %i.bb, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 24
  %i.be = load i64, ptr %i.bc, align 1
  store i64 %i.be, ptr %i.bd, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 32
  %i.bh = load i64, ptr %i.bf, align 1
  store i64 %i.bh, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 40
  %i.bk = load i64, ptr %i.bi, align 1
  store i64 %i.bk, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 48
  %i.bn = load i64, ptr %i.bl, align 1
  store i64 %i.bn, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 56
  %i.bq = load i64, ptr %i.bo, align 1
  store i64 %i.bq, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 64
  %.not.i.i.i5.7 = icmp eq ptr %i.br, %i.am
  br i1 %.not.i.i.i5.7, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJSt4pairIKiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERS9_PS9_EESF_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4, !llvm.loop !93

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJSt4pairIKiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERS9_PS9_EESF_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i4.prol.loopexit, %.lr.ph.i.i.i4, %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  store i8 %i.aj, ptr %i.bt, align 2, !tbaa !813
  store i8 0, ptr %i.x, align 1, !tbaa !813
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE16clear_and_deleteEPS5_PSaISt4pairIKiiEE(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  store ptr %i.af, ptr %i.w, align 8, !tbaa !1015
  store ptr %i.af, ptr %0, align 8, !tbaa !1015
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSB_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %4)
  %.pre14 = load ptr, ptr %4, align 8, !tbaa !1019
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJSt4pairIKiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERS9_PS9_EESF_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.bu = phi ptr [ %i.af, %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJSt4pairIKiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERS9_PS9_EESF_DpOT_ENKUlhE_clEh.exit ], [ %.pre14, %bb.e ], [ %i.v, %bb.b ] ; 5 uses
  %i.bv = load i32, ptr %i.a, align 8, !tbaa !1025 ; 3 uses
  %i.bw = trunc i32 %i.bv to i8                   ; 2 uses
  %i.bx = and i32 %i.bv, 255                      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 10 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !813 ; 3 uses
  %i.ca = icmp ugt i8 %i.bz, %i.bw
  %i.cb = zext nneg i32 %i.bx to i64              ; 2 uses
  br i1 %i.ca, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %i.cb ; 2 uses
  %narrow.i = sub nuw i8 %i.bz, %i.bw
  %i.ce = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ce, 3
  %i.cf = getelementptr i8, ptr %i.cd, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.cd, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.by, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %i.cg = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.bz, %bb.f ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cb ; 2 uses
  %i.cj = load i32, ptr %3, align 4, !tbaa !802
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !1024
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !802
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !1027
  %i.cn = add i8 %i.cg, 1                         ; 3 uses
  store i8 %i.cn, ptr %i.by, align 1, !tbaa !813
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !813
  %.not.i18.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i18.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJSt4pairIKiiEEEEvhPSaIS9_EDpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i
  %i.cq = zext i8 %i.cn to i32
  %i.cr = add nuw nsw i32 %i.bx, 1                ; 2 uses
  %i.cs = icmp samesign ult i32 %i.cr, %i.cq
  br i1 %i.cs, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJSt4pairIKiiEEEEvhPSaIS9_EDpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bu, i64 256 ; 10 uses
  %i.cu = zext i8 %i.cn to i64                    ; 4 uses
  %i.cv = zext nneg i32 %i.cr to i64
  %.mask = and i32 %i.bv, 255
  %5 = zext nneg i32 %.mask to i64                ; 2 uses
  %i.cw = xor i64 %5, -1
  %i.cx = add nsw i64 %i.cw, %i.cu
  %i.cy = add nsw i64 %i.cu, -2
  %i.cz = sub nsw i64 %i.cy, %5
  %xtraiter22 = and i64 %i.cx, 3                  ; 2 uses
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.da, %.prol.preheader ], [ %i.cu, %.lr.ph.i ] ; 3 uses
  %prol.iter24 = phi i64 [ %prol.iter24.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.da = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1015 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.prol
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !1015
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.df, ptr %i.de, align 1, !tbaa !813
  %prol.iter24.next = add i64 %prol.iter24, 1     ; 2 uses
  %prol.iter24.cmp.not = icmp eq i64 %prol.iter24.next, %xtraiter22
  br i1 %prol.iter24.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !9895

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.cu, %.lr.ph.i ], [ %i.da, %.prol.preheader ]
  %i.dg = icmp ult i64 %i.cz, 3
  br i1 %i.dg, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJSt4pairIKiiEEEEvhPSaIS9_EDpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.dz, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.dh = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1015 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !1015
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = trunc nuw i64 %indvars.iv to i8
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !813
  %i.dn = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1015 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dh
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !1015
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = trunc nuw i64 %i.dh to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !813
  %i.dt = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !1015 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dn
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !1015
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dy = trunc nuw i64 %i.dn to i8
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !813
  %i.dz = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1015 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dt
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !1015
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = trunc nuw i64 %i.dt to i8
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.dz, %i.cv
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJSt4pairIKiiEEEEvhPSaIS9_EDpOT_.exit, !llvm.loop !9896

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJSt4pairIKiiEEEEvhPSaIS9_EDpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i, %bb.g
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !1006
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !1006
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_128Btree_KeyCompareAdapter_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_128Btree_KeyCompareAdapter_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_128Btree_KeyCompareAdapter_TestE, i64 16), ptr %i.a, align 8, !tbaa !816
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_128Btree_KeyCompareAdapter_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_128Btree_KeyCompareAdapter_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #25 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_123Btree_RValueInsert_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_123Btree_RValueInsert_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_123Btree_RValueInsert_TestE, i64 16), ptr %i.a, align 8, !tbaa !816
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_123Btree_RValueInsert_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_123Btree_RValueInsert_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair.1274", align 8   ; 3 uses
  %2 = alloca %"struct.std::pair.1316", align 8   ; 7 uses
  %3 = alloca %"struct.std::pair.1314", align 8   ; 6 uses
  %4 = alloca %"struct.std::pair.1239", align 8   ; 3 uses
  %5 = alloca %"class.absl::lts_20260526::test_internal::InstanceTracker", align 4 ; 11 uses
  %6 = alloca %"class.absl::lts_20260526::btree_set.1224", align 8 ; 13 uses
  %7 = alloca %"class.absl::lts_20260526::test_internal::MovableOnlyInstance", align 4 ; 7 uses
  %8 = alloca %"struct.std::pair.1239", align 8   ; 4 uses
  %9 = alloca %"class.absl::lts_20260526::test_internal::MovableOnlyInstance", align 4 ; 7 uses
  %10 = alloca %"struct.std::pair.1239", align 8  ; 4 uses
  %11 = alloca %"class.absl::lts_20260526::test_internal::MovableOnlyInstance", align 4 ; 7 uses
  %12 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.1241", align 8 ; 10 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %14 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.1241", align 8 ; 6 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %18 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.1241", align 8 ; 6 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.absl::lts_20260526::btree_multiset.1246", align 8 ; 12 uses
  %25 = alloca %"class.absl::lts_20260526::test_internal::MovableOnlyInstance", align 4 ; 6 uses
  %26 = alloca %"class.absl::lts_20260526::test_internal::MovableOnlyInstance", align 4 ; 6 uses
  %27 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %28 = alloca %"class.absl::lts_20260526::test_internal::MovableOnlyInstance", align 4 ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.absl::lts_20260526::btree_map.1259", align 8 ; 17 uses
  %32 = alloca %"struct.std::pair.1272", align 4  ; 8 uses
  %33 = alloca %"struct.std::pair.1272", align 4  ; 8 uses
  %34 = alloca %"struct.std::pair.1272", align 4  ; 8 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %36 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.1276", align 8 ; 6 uses
  %37 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.1276", align 8 ; 6 uses
  %38 = alloca %"class.testing::Message", align 8 ; 7 uses
  %39 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %40 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %41 = alloca %"class.testing::Message", align 8 ; 7 uses
  %42 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %43 = alloca %"class.absl::lts_20260526::btree_multimap.1281", align 8 ; 13 uses
  %44 = alloca %"struct.std::pair.1272", align 4  ; 8 uses
  %45 = alloca %"struct.std::pair.1272", align 4  ; 7 uses
  %46 = alloca %"struct.std::pair.1295", align 8  ; 7 uses
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt7greaterIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE5splitEiPSE_PS9_:bb.a
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !813
  %.not.i28 = icmp eq i8 %i.dq, 0
  br i1 %.not.i28, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt7greaterIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIiiEEEEEvhPS9_DpOT_.exit
  %i.dr = load i8, ptr %i.h, align 2, !tbaa !813
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 256
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.g
  %.0.in30 = phi i8 [ %i.dr, %bb.f ], [ %.0, %bb.g ]
  %.02529 = phi i8 [ 0, %bb.f ], [ %i.ea, %bb.g ] ; 3 uses
  %.0 = add i8 %.0.in30, 1                        ; 2 uses
  %i.du = zext i8 %.0 to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1942 ; 3 uses
  %i.dx = zext i8 %.02529 to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dx
  store ptr %i.dw, ptr %i.dy, align 8, !tbaa !1942
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i8 %.02529, ptr %i.dz, align 1, !tbaa !813
  store ptr %2, ptr %i.dw, align 8, !tbaa !1942
  %i.ea = add i8 %.02529, 1                       ; 2 uses
  %i.eb = load i8, ptr %i.j, align 1, !tbaa !813
  %.not = icmp ugt i8 %i.ea, %i.eb
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !14396

.loopexit:                                        ; preds = %bb.g, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt7greaterIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIiiEEEEEvhPS9_DpOT_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE16internal_emplaceIJS8_EEENS1_14btree_iteratorINS1_10btree_nodeISD_EERS8_PS8_EESL_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.706", align 8 ; 7 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !813   ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert12 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre13 = load i8, ptr %.phi.trans.insert12, align 1, !tbaa !813
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !1198 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !813   ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEERS9_PS9_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !813
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 256
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !1198 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !813   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEERS9_PS9_EmmEv.exit, !llvm.loop !212

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEERS9_PS9_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !813   ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !1204
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEERS9_PS9_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEERS9_PS9_EmmEv.exit ], [ %.pre13, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEERS9_PS9_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEERS9_PS9_EmmEv.exit ], [ %1, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 2 uses
  %i.y = icmp eq i8 %i.t, %i.u
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult i8 %i.t, 30
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i8 %i.t, 1
  %i.ab = tail call i8 @llvm.umin.i8(i8 %i.aa, i8 30) ; 2 uses
  %i.ac = shl nuw i8 %i.ab, 3
  %i.ad = zext i8 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 16
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #35 ; 11 uses
  store ptr %i.af, ptr %i.af, align 8, !tbaa !1198
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !813
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !813
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  store i8 %i.ab, ptr %i.ai, align 1, !tbaa !813
  store ptr %i.af, ptr %4, align 8, !tbaa !1200
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !813  ; 3 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ak, 3          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE16internal_emplaceIJS8_EEENS1_14btree_iteratorINS1_10btree_nodeISD_EERS8_PS8_EESL_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %i.ao = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1
  %xtraiter = and i64 %i.aq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i4.prol.loopexit, label %.lr.ph.i.i.i4.prol

.lr.ph.i.i.i4.prol:                               ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i4.prol
  %.015.i.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.i4.prol ], [ %i.an, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01214.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i4.prol ], [ %i.al, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i4.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.ar = load i64, ptr %.01214.i.i.i.prol, align 1
  store i64 %i.ar, ptr %.015.i.i.i.prol, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.prol, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i4.prol.loopexit, label %.lr.ph.i.i.i4.prol, !llvm.loop !14397

.lr.ph.i.i.i4.prol.loopexit:                      ; preds = %.lr.ph.i.i.i4.prol, %.lr.ph.preheader.i.i.i
  %.015.i.i.i.unr = phi ptr [ %i.an, %.lr.ph.preheader.i.i.i ], [ %i.at, %.lr.ph.i.i.i4.prol ]
  %.01214.i.i.i.unr = phi ptr [ %i.al, %.lr.ph.preheader.i.i.i ], [ %i.as, %.lr.ph.i.i.i4.prol ]
  %i.au = icmp ult i64 %i.ao, 56
  br i1 %i.au, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE16internal_emplaceIJS8_EEENS1_14btree_iteratorINS1_10btree_nodeISD_EERS8_PS8_EESL_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %.lr.ph.i.i.i4.prol.loopexit, %.lr.ph.i.i.i4
  %.015.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i4 ], [ %.015.i.i.i.unr, %.lr.ph.i.i.i4.prol.loopexit ] ; 9 uses
  %.01214.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i4 ], [ %.01214.i.i.i.unr, %.lr.ph.i.i.i4.prol.loopexit ] ; 9 uses
  %i.av = load i64, ptr %.01214.i.i.i, align 1
  store i64 %i.av, ptr %.015.i.i.i, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 8
  %i.ay = load i64, ptr %i.aw, align 1
  store i64 %i.ay, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16
  %i.bb = load i64, ptr %i.az, align 1
  store i64 %i.bb, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 24
  %i.be = load i64, ptr %i.bc, align 1
  store i64 %i.be, ptr %i.bd, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 32
  %i.bh = load i64, ptr %i.bf, align 1
  store i64 %i.bh, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 40
  %i.bk = load i64, ptr %i.bi, align 1
  store i64 %i.bk, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 48
  %i.bn = load i64, ptr %i.bl, align 1
  store i64 %i.bn, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 56
  %i.bq = load i64, ptr %i.bo, align 1
  store i64 %i.bq, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 64
  %.not.i.i.i5.7 = icmp eq ptr %i.br, %i.am
  br i1 %.not.i.i.i5.7, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE16internal_emplaceIJS8_EEENS1_14btree_iteratorINS1_10btree_nodeISD_EERS8_PS8_EESL_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4, !llvm.loop !213

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE16internal_emplaceIJS8_EEENS1_14btree_iteratorINS1_10btree_nodeISD_EERS8_PS8_EESL_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i4.prol.loopexit, %.lr.ph.i.i.i4, %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  store i8 %i.aj, ptr %i.bt, align 2, !tbaa !813
  store i8 0, ptr %i.x, align 1, !tbaa !813
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE16clear_and_deleteEPSE_PS9_(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  store ptr %i.af, ptr %i.w, align 8, !tbaa !1198
  store ptr %i.af, ptr %0, align 8, !tbaa !1198
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISD_EERS8_PS8_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %4)
  %.pre14 = load ptr, ptr %4, align 8, !tbaa !1200
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE16internal_emplaceIJS8_EEENS1_14btree_iteratorINS1_10btree_nodeISD_EERS8_PS8_EESL_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.bu = phi ptr [ %i.af, %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE16internal_emplaceIJS8_EEENS1_14btree_iteratorINS1_10btree_nodeISD_EERS8_PS8_EESL_DpOT_ENKUlhE_clEh.exit ], [ %.pre14, %bb.e ], [ %i.v, %bb.b ] ; 5 uses
  %i.bv = load i32, ptr %i.a, align 8, !tbaa !1204 ; 3 uses
  %i.bw = trunc i32 %i.bv to i8                   ; 2 uses
  %i.bx = and i32 %i.bv, 255                      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 10 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !813 ; 3 uses
  %i.ca = icmp ugt i8 %i.bz, %i.bw
  %i.cb = zext nneg i32 %i.bx to i64              ; 2 uses
  br i1 %i.ca, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE19transfer_n_backwardEmmmPSE_PS9_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %i.cb ; 2 uses
  %narrow.i = sub nuw i8 %i.bz, %i.bw
  %i.ce = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ce, 3
  %i.cf = getelementptr i8, ptr %i.cd, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.cd, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.by, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE19transfer_n_backwardEmmmPSE_PS9_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE19transfer_n_backwardEmmmPSE_PS9_.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %i.cg = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.bz, %bb.f ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cb ; 2 uses
  %i.cj = load i32, ptr %3, align 4, !tbaa !802
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !1024
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !802
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !1027
  %i.cn = add i8 %i.cg, 1                         ; 3 uses
  store i8 %i.cn, ptr %i.by, align 1, !tbaa !813
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !813
  %.not.i18.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i18.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE13emplace_valueIJS8_EEEvhPS9_DpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE19transfer_n_backwardEmmmPSE_PS9_.exit.i
  %i.cq = zext i8 %i.cn to i32
  %i.cr = add nuw nsw i32 %i.bx, 1                ; 2 uses
  %i.cs = icmp samesign ult i32 %i.cr, %i.cq
  br i1 %i.cs, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE13emplace_valueIJS8_EEEvhPS9_DpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bu, i64 256 ; 10 uses
  %i.cu = zext i8 %i.cn to i64                    ; 4 uses
  %i.cv = zext nneg i32 %i.cr to i64
  %.mask = and i32 %i.bv, 255
  %5 = zext nneg i32 %.mask to i64                ; 2 uses
  %i.cw = xor i64 %5, -1
  %i.cx = add nsw i64 %i.cw, %i.cu
  %i.cy = add nsw i64 %i.cu, -2
  %i.cz = sub nsw i64 %i.cy, %5
  %xtraiter22 = and i64 %i.cx, 3                  ; 2 uses
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.da, %.prol.preheader ], [ %i.cu, %.lr.ph.i ] ; 3 uses
  %prol.iter24 = phi i64 [ %prol.iter24.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.da = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1198 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.prol
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !1198
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.df, ptr %i.de, align 1, !tbaa !813
  %prol.iter24.next = add i64 %prol.iter24, 1     ; 2 uses
  %prol.iter24.cmp.not = icmp eq i64 %prol.iter24.next, %xtraiter22
  br i1 %prol.iter24.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !14398

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.cu, %.lr.ph.i ], [ %i.da, %.prol.preheader ]
  %i.dg = icmp ult i64 %i.cz, 3
  br i1 %i.dg, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE13emplace_valueIJS8_EEEvhPS9_DpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.dz, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.dh = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1198 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !1198
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = trunc nuw i64 %indvars.iv to i8
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !813
  %i.dn = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1198 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dh
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !1198
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = trunc nuw i64 %i.dh to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !813
  %i.dt = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !1198 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dn
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !1198
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dy = trunc nuw i64 %i.dn to i8
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !813
  %i.dz = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1198 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dt
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !1198
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = trunc nuw i64 %i.dt to i8
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.dz, %i.cv
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE13emplace_valueIJS8_EEEvhPS9_DpOT_.exit, !llvm.loop !14399

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE13emplace_valueIJS8_EEEvhPS9_DpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE19transfer_n_backwardEmmmPSE_PS9_.exit.i, %bb.g
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !1195
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !1195
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal18ElementsAreMatcherISt5tupleIJNS0_11PairMatcherIiiEES4_S4_EEEcvNS_7MatcherIT_EEIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEEEv(ptr dead_on_unwind noalias writable sret(%"class.testing::Matcher.2164") align 8 %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EE11_M_allocateEm.exit.i:
  %2 = alloca %"struct.testing::internal::TransformTupleValuesHelper<std::tuple<testing::internal::PairMatcher<int, int>, testing::internal::PairMatcher<int, int>, testing::internal::PairMatcher<int, int>>, testing::internal::CastAndAppendTransform<const std::pair<const int, int> &>, std::back_insert_iterator<std::vector<testing::Matcher<const std::pair<const int, int> &>>>>::IterateOverTuple", align 1 ; 3 uses
  %3 = alloca %"class.std::vector.2108", align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #35
          to label %_ZNSt12_Vector_baseIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EE13_M_deallocateEPS7_m.exit.i unwind label %bb.f ; 3 uses

_ZNSt12_Vector_baseIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EE13_M_deallocateEPS7_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EE11_M_allocateEm.exit.i
  store ptr %i.c, ptr %3, align 8, !tbaa !1795
  store ptr %i.c, ptr %i.b, align 8, !tbaa !1796
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %i.d, ptr %i.a, align 8, !tbaa !1797
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.e = invoke ptr @_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJNS0_11PairMatcherIiiEES4_S4_EENS0_22CastAndAppendTransformIRKSt4pairIKiiEEESt20back_insert_iteratorISt6vectorINS_7MatcherISB_EESaISG_EEEE16IterateOverTupleIS5_Lm3EEclESC_RKS5_SJ_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(24) %1, ptr nonnull %3)
          to label %bb.a unwind label %bb.f       ; 0 uses

bb.a:                                             ; preds = %_ZNSt12_Vector_baseIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EE13_M_deallocateEPS7_m.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.f = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35
          to label %bb.b unwind label %bb.f       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %3, align 8, !tbaa !1798
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !1798
  invoke void @_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEEC2IN9__gnu_cxx17__normal_iteratorIPNS_7MatcherIRKS9_EESt6vectorISL_SaISL_EEEEEET_SR_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr %i.g, ptr %i.h)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEEE, i64 16), ptr %0, align 8, !tbaa !816
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEE9GetVTableINSE_11ValuePolicyIPKNS_16MatcherInterfaceISD_EELb1EEEEEPKNSE_6VTableEvE7kVTable, ptr %i.i, align 8, !tbaa !1818
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.k, align 4, !tbaa !1726
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = ptrtoint ptr %i.f to i64
  store i64 %i.m, ptr %i.l, align 8, !tbaa !1826
  store ptr %i.k, ptr %i.j, align 8, !tbaa !813
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEEE, i64 16), ptr %0, align 8, !tbaa !816
  %i.n = load ptr, ptr %3, align 8, !tbaa !1795   ; 3 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !1796 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairIKiiEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.n, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i, align 8, !tbaa !816
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #37, !inline_history !484
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairIKiiEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !485

_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairIKiiEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i9 = load ptr, ptr %3, align 8, !tbaa !1795
  br label %_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairIKiiEEES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairIKiiEEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairIKiiEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.d
  %i.s = phi ptr [ %.pr.i9, %_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairIKiiEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.n, %bb.d ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairIKiiEEES7_EvT_S9_RSaIT0_E.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !1797
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #36
  br label %_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EED2Ev.exit

_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairIKiiEEES7_EvT_S9_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.f:                                             ; preds = %bb.c, %_ZNSt12_Vector_baseIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EE13_M_deallocateEPS7_m.exit.i, %_ZNSt12_Vector_baseIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EE11_M_allocateEm.exit.i, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 32) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.y, %bb.g ]
  call void @_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJNS0_11PairMatcherIiiEES4_S4_EENS0_22CastAndAppendTransformIRKSt4pairIKiiEEESt20back_insert_iteratorISt6vectorINS_7MatcherISB_EESaISG_EEEE16IterateOverTupleIS5_Lm3EEclESC_RKS5_SJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::Matcher.2118", align 8 ; 9 uses
  %4 = alloca %"struct.testing::internal::TransformTupleValuesHelper<std::tuple<testing::internal::PairMatcher<int, int>, testing::internal::PairMatcher<int, int>, testing::internal::PairMatcher<int, int>>, testing::internal::CastAndAppendTransform<const std::pair<const int, int> &>, std::back_insert_iterator<std::vector<testing::Matcher<const std::pair<const int, int> &>>>>::IterateOverTuple.2556", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14430)
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35, !noalias !14431 ; 8 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !1809, !noalias !14431
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1810, !noalias !14431
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal15PairMatcherImplIRKSt4pairIKiiEEE, i64 16), ptr %i.b, align 8, !tbaa !816, !noalias !14431
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKiEE, i64 16), ptr %i.f, align 8, !tbaa !816, !alias.scope !14432, !noalias !14431
  %.sroa.11.16.insert.ext.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.c to i64
  store ptr @_ZZN7testing8internal11MatcherBaseIRKiE9GetVTableINS4_11ValuePolicyINS0_9EqMatcherIiEELb1EEEEEPKNS4_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !1731, !alias.scope !14432, !noalias !14431
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.11.16.insert.ext.i.i.i.i.i.i.i.i.i.i.i, ptr %i.h, align 8, !tbaa !813, !alias.scope !14432, !noalias !14431
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
end_hunk_3
begin_hunk_4_@_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_:bb.a
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %.body96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %bb.ak ], [ %eh.lpad-body97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %eh.lpad-body97, %.body96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  br label %.body77

.body77:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i73, %_ZN7testing7MessageD2Ev.exit5.i81, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %i.dc, %_ZN7testing7MessageD2Ev.exit5.i73 ], [ %i.fb, %bb.aj ], [ %i.do, %_ZN7testing7MessageD2Ev.exit5.i81 ] ; 2 uses
  %i.fj = load ptr, ptr %17, align 8, !tbaa !810  ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %.body77
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !813
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %.body77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.ai
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.ai ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %.pn.pn, %.body77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %.body

.body:                                            ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %_ZN7testing7MessageD2Ev.exit5.i20, %_ZN7testing7MessageD2Ev.exit5.i40, %bb.ah, %_ZN7testing7MessageD2Ev.exit5.i62, %_ZN7testing7MessageD2Ev.exit6.i52, %_ZN7testing7MessageD2Ev.exit6.i30, %_ZN7testing7MessageD2Ev.exit6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %i.h, %_ZN7testing7MessageD2Ev.exit5.i ], [ %i.x, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.aj, %_ZN7testing7MessageD2Ev.exit5.i20 ], [ %i.az, %_ZN7testing7MessageD2Ev.exit6.i30 ], [ %i.bl, %_ZN7testing7MessageD2Ev.exit5.i40 ], [ %i.cb, %_ZN7testing7MessageD2Ev.exit6.i52 ], [ %i.ez, %bb.ah ], [ %i.cn, %_ZN7testing7MessageD2Ev.exit5.i62 ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc { ptr, i32 } @"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESH_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSN_EESQ_DpOT_"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr %1, i32 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.2772", align 8 ; 6 uses
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 11
  %.val = load i8, ptr %i.b, align 1, !tbaa !813  ; 2 uses
  %.not.i = icmp eq i8 %.val, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert6 = getelementptr i8, ptr %1, i64 10
  %.val7.pre = load i8, ptr %.phi.trans.insert6, align 1, !tbaa !813
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.d = and i32 %2, 255
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %.11727.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !2051 ; 3 uses
  %i.g = getelementptr i8, ptr %.11727.i.i.i, i64 11
  %.117.val2028.i.i.i = load i8, ptr %i.g, align 1, !tbaa !813 ; 2 uses
  %.not.i29.i.i.i = icmp eq i8 %.117.val2028.i.i.i, 0
  br i1 %.not.i29.i.i.i, label %.lr.ph31.i.i.i, label %"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit"

.lr.ph31.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph31.i.i.i
  %.11730.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph31.i.i.i ], [ %.11727.i.i.i, %.thread.i.i ] ; 2 uses
  %i.h = getelementptr i8, ptr %.11730.i.i.i, i64 10
  %.117.val18.i.i.i = load i8, ptr %i.h, align 1, !tbaa !813
  %i.i = getelementptr inbounds nuw i8, ptr %.11730.i.i.i, i64 256
  %i.j = zext i8 %.117.val18.i.i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %.117.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !2051 ; 3 uses
  %i.l = getelementptr i8, ptr %.117.i.i.i, i64 11
  %.117.val20.i.i.i = load i8, ptr %i.l, align 1, !tbaa !813 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.117.val20.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph31.i.i.i, label %"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit", !llvm.loop !548

"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit": ; preds = %.lr.ph31.i.i.i, %.thread.i.i
  %.val6.pre = phi i8 [ %.117.val2028.i.i.i, %.thread.i.i ], [ %.117.val20.i.i.i, %.lr.ph31.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11727.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph31.i.i.i ] ; 3 uses
  %i.m = getelementptr i8, ptr %.117.lcssa.i.i.i, i64 10
  %.117.val.i.i.i = load i8, ptr %i.m, align 1, !tbaa !813 ; 2 uses
  %i.n = zext i8 %.117.val.i.i.i to i32
  store ptr %.117.lcssa.i.i.i, ptr %5, align 8
  store i32 %i.n, ptr %i.a, align 8, !tbaa !2054
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit"
  %.val7 = phi i8 [ %.117.val.i.i.i, %"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit" ], [ %.val7.pre, %._crit_edge ] ; 3 uses
  %.val6 = phi i8 [ %.val6.pre, %"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit" ], [ %.val, %._crit_edge ]
  %i.o = phi ptr [ %.117.lcssa.i.i.i, %"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit" ], [ %1, %._crit_edge ] ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 10       ; 2 uses
  %i.q = icmp eq i8 %.val7, %.val6
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i8 %.val7, 30
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = shl nuw nsw i8 %.val7, 1
  %i.t = tail call i8 @llvm.umin.i8(i8 %i.s, i8 30) ; 2 uses
  %i.u = shl nuw i8 %i.t, 3
  %i.v = zext i8 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 16
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #35 ; 10 uses
  store ptr %i.x, ptr %i.x, align 8, !tbaa !2051
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  store i8 0, ptr %i.z, align 1, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  store i8 %i.t, ptr %i.aa, align 1, !tbaa !813
  store ptr %i.x, ptr %5, align 8, !tbaa !2055
  %.val13.i.i = load i8, ptr %i.p, align 1, !tbaa !813 ; 3 uses
  %i.ab = zext i8 %.val13.i.i to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ab, 3          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i
  %.not1.i.i.i = icmp eq i8 %.val13.i.i, 0
  br i1 %.not1.i.i.i, label %"_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESH_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSN_EESQ_DpOT_ENKUlhE_clEh.exit", label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %i.af = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1
  %xtraiter = and i64 %i.ah, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol

.lr.ph.i.i.i10.prol:                              ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i10.prol
  %.03.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i.i10.prol ], [ %i.ae, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.0122.i.i.i.prol = phi ptr [ %i.ai, %.lr.ph.i.i.i10.prol ], [ %i.ac, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i10.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %.012.val.i.i.i.prol = load i64, ptr %.0122.i.i.i.prol, align 1
  store i64 %.012.val.i.i.i.prol, ptr %.03.i.i.i.prol, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.prol, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol, !llvm.loop !15285

.lr.ph.i.i.i10.prol.loopexit:                     ; preds = %.lr.ph.i.i.i10.prol, %.lr.ph.preheader.i.i.i
  %.03.i.i.i.unr = phi ptr [ %i.ae, %.lr.ph.preheader.i.i.i ], [ %i.aj, %.lr.ph.i.i.i10.prol ]
  %.0122.i.i.i.unr = phi ptr [ %i.ac, %.lr.ph.preheader.i.i.i ], [ %i.ai, %.lr.ph.i.i.i10.prol ]
  %i.ak = icmp ult i64 %i.af, 56
  br i1 %i.ak, label %"_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESH_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSN_EESQ_DpOT_ENKUlhE_clEh.exit", label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10
  %.03.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i10 ], [ %.03.i.i.i.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 9 uses
  %.0122.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i10 ], [ %.0122.i.i.i.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 9 uses
  %.012.val.i.i.i = load i64, ptr %.0122.i.i.i, align 1
  store i64 %.012.val.i.i.i, ptr %.03.i.i.i, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8
  %.012.val.i.i.i.1 = load i64, ptr %i.al, align 1
  store i64 %.012.val.i.i.i.1, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 16
  %.012.val.i.i.i.2 = load i64, ptr %i.an, align 1
  store i64 %.012.val.i.i.i.2, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 24
  %.012.val.i.i.i.3 = load i64, ptr %i.ap, align 1
  store i64 %.012.val.i.i.i.3, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 32
  %.012.val.i.i.i.4 = load i64, ptr %i.ar, align 1
  store i64 %.012.val.i.i.i.4, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 40
  %.012.val.i.i.i.5 = load i64, ptr %i.at, align 1
  store i64 %.012.val.i.i.i.5, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 48
  %.012.val.i.i.i.6 = load i64, ptr %i.av, align 1
  store i64 %.012.val.i.i.i.6, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 56
  %.012.val.i.i.i.7 = load i64, ptr %i.ax, align 1
  store i64 %.012.val.i.i.i.7, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 64
  %.not.i.i.i11.7 = icmp eq ptr %i.az, %i.ad
  br i1 %.not.i.i.i11.7, label %"_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESH_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSN_EESQ_DpOT_ENKUlhE_clEh.exit", label %.lr.ph.i.i.i10, !llvm.loop !553

"_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESH_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSN_EESQ_DpOT_ENKUlhE_clEh.exit": ; preds = %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10, %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  store i8 %.val13.i.i, ptr %i.bb, align 2, !tbaa !813
  store i8 0, ptr %i.p, align 1, !tbaa !813
  tail call fastcc void @"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16clear_and_deleteEPSA_PSaISt4pairIKiiEE"(ptr noundef nonnull %i.o)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.x, ptr %i.bc, align 8, !tbaa !2051
  store ptr %i.x, ptr %0, align 8, !tbaa !2051
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call fastcc void @"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %5)
  br label %bb.f

bb.f:                                             ; preds = %"_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESH_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSN_EESQ_DpOT_ENKUlhE_clEh.exit", %bb.e, %bb.b
  %i.bd = load ptr, ptr %5, align 8, !tbaa !2055  ; 6 uses
  %i.be = load i32, ptr %i.a, align 8, !tbaa !2054 ; 4 uses
  %i.bf = trunc i32 %i.be to i8                   ; 2 uses
  %i.bg = and i32 %i.be, 255                      ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bd, i64 10     ; 3 uses
  %.val23.i = load i8, ptr %i.bh, align 1, !tbaa !813 ; 3 uses
  %i.bi = icmp ugt i8 %.val23.i, %i.bf
  %i.bj = zext nneg i32 %i.bg to i64              ; 2 uses
  br i1 %i.bi, label %.lr.ph.preheader.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE19transfer_n_backwardEmmmPSA_PSaISt4pairIKiiEE.exit.i"

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %narrow.i = sub nuw i8 %.val23.i, %i.bf
  %i.bm = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.bm, 3
  %i.bn = getelementptr i8, ptr %i.bl, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.bl, i64 %.idx.i.i, i1 false)
  %.val21.pre.i = load i8, ptr %i.bh, align 1, !tbaa !813
  br label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE19transfer_n_backwardEmmmPSA_PSaISt4pairIKiiEE.exit.i"

"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE19transfer_n_backwardEmmmPSA_PSaISt4pairIKiiEE.exit.i": ; preds = %.lr.ph.preheader.i.i, %bb.f
  %.val21.i = phi i8 [ %.val21.pre.i, %.lr.ph.preheader.i.i ], [ %.val23.i, %bb.f ]
  %.val25.i = load i64, ptr %3, align 8, !tbaa !869
  %.val26.i = load i64, ptr %4, align 8, !tbaa !869
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bj ; 2 uses
  %i.bq = inttoptr i64 %.val25.i to ptr
  %i.br = inttoptr i64 %.val26.i to ptr
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !802
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !1024
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !802
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !1027
  %i.bv = add i8 %.val21.i, 1                     ; 3 uses
  store i8 %i.bv, ptr %i.bh, align 1, !tbaa !813
  %i.bw = getelementptr i8, ptr %i.bd, i64 11
  %.val24.i = load i8, ptr %i.bw, align 1, !tbaa !813
  %.not.i27.i = icmp eq i8 %.val24.i, 0
  br i1 %.not.i27.i, label %bb.g, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESH_EEEvhPSaISt4pairIKiiEEDpOT_.exit"

bb.g:                                             ; preds = %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE19transfer_n_backwardEmmmPSA_PSaISt4pairIKiiEE.exit.i"
  %i.bx = zext i8 %i.bv to i32
  %i.by = add nuw nsw i32 %i.bg, 1                ; 2 uses
  %i.bz = icmp samesign ult i32 %i.by, %i.bx
  br i1 %i.bz, label %.lr.ph.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESH_EEEvhPSaISt4pairIKiiEEDpOT_.exit"

.lr.ph.i:                                         ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 256 ; 10 uses
  %i.cb = zext i8 %i.bv to i64                    ; 4 uses
  %i.cc = zext nneg i32 %i.by to i64
  %.mask = and i32 %i.be, 255
  %6 = zext nneg i32 %.mask to i64                ; 2 uses
  %i.cd = xor i64 %6, -1
  %i.ce = add nsw i64 %i.cd, %i.cb
  %i.cf = add nsw i64 %i.cb, -2
  %i.cg = sub nsw i64 %i.cf, %6
  %xtraiter10 = and i64 %i.ce, 3                  ; 2 uses
  %lcmp.mod11.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod11.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.ch, %.prol.preheader ], [ %i.cb, %.lr.ph.i ] ; 3 uses
  %prol.iter12 = phi i64 [ %prol.iter12.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.ch = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2051 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.prol
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !2051
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !813
  %prol.iter12.next = add i64 %prol.iter12, 1     ; 2 uses
  %prol.iter12.cmp.not = icmp eq i64 %prol.iter12.next, %xtraiter10
  br i1 %prol.iter12.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !15286

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.cb, %.lr.ph.i ], [ %i.ch, %.prol.preheader ]
  %i.cn = icmp ult i64 %i.cg, 3
  br i1 %i.cn, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESH_EEEvhPSaISt4pairIKiiEEDpOT_.exit", label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.dg, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.co = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !2051 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !2051
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = trunc nuw i64 %indvars.iv to i8
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !813
  %i.cu = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !2051 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.co
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !2051
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = trunc nuw i64 %i.co to i8
  store i8 %i.cz, ptr %i.cy, align 1, !tbaa !813
  %i.da = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !2051 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cu
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !2051
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = trunc nuw i64 %i.cu to i8
  store i8 %i.df, ptr %i.de, align 1, !tbaa !813
  %i.dg = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !2051 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.da
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !2051
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = trunc nuw i64 %i.da to i8
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.dg, %i.cc
  br i1 %.wide.3, label %.lr.ph.i.new, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESH_EEEvhPSaISt4pairIKiiEEDpOT_.exit", !llvm.loop !15287

"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESH_EEEvhPSaISt4pairIKiiEEDpOT_.exit": ; preds = %.prol.loopexit, %.lr.ph.i.new, %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE19transfer_n_backwardEmmmPSA_PSaISt4pairIKiiEE.exit.i", %bb.g
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !2050
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !2050
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.bd, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %i.be, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implIiiJNS4_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS8_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSH_EESK_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_"(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15297)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !15298
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2), !noalias !15298
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal20PrintBytesInObjectToEPKhmPSo(ptr noundef nonnull align 8 dereferenceable(12) %1, i64 noundef 16, ptr noundef nonnull %i.a)
          to label %"_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implIiiJNS4_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS8_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSH_EEE5PrintERKSK_PSo.exit.i.i" unwind label %bb.e, !noalias !15298

"_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implIiiJNS4_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS8_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSH_EEE5PrintERKSK_PSo.exit.i.i": ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !15299)
  call void @llvm.experimental.noalias.scope.decl(metadata !15300)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !814, !alias.scope !15301
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !811, !alias.scope !15301
  store i8 0, ptr %i.b, align 8, !tbaa !813, !alias.scope !15301
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !873, !noalias !15301 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !15301 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %"_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implIiiJNS4_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS8_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSH_EEE5PrintERKSK_PSo.exit.i.i"
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !874, !noalias !15301 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !810, !alias.scope !15301 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !813, !alias.scope !15301
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #36
  br label %.body.i.i

bb.d:                                             ; preds = %"_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implIiiJNS4_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS8_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSH_EEE5PrintERKSK_PSo.exit.i.i"
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !15298 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !816, !noalias !15298
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !15298
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !816, !noalias !15298
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !15298
  store ptr %i.z, ptr %i.a, align 8, !tbaa !816, !noalias !15298
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !816, !noalias !15298
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !810, !noalias !15298 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %"_ZN7testing8internal19FormatForComparisonIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implIiiJNS4_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS8_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSH_EESK_E6FormatB5cxx11ERKSK_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !813, !noalias !15298
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #36
  br label %"_ZN7testing8internal19FormatForComparisonIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implIiiJNS4_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS8_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSH_EESK_E6FormatB5cxx11ERKSK_.exit"

bb.e:                                             ; preds = %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.c, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ah, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !15298
  resume { ptr, i32 } %eh.lpad-body.i.i

"_ZN7testing8internal19FormatForComparisonIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implIiiJNS4_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS8_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSH_EESK_E6FormatB5cxx11ERKSK_.exit": ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !816, !noalias !15298
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #37
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !15298 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !816, !noalias !15298
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !15298
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !816, !noalias !15298
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !876, !noalias !15298
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !15298
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc { ptr, i32 } @"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKiEESF_IJRiEEEEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairISG_iEPSP_EESS_DpOT_"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr %1, i32 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.2772", align 8 ; 6 uses
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 11
  %.val = load i8, ptr %i.b, align 1, !tbaa !813  ; 2 uses
  %.not.i = icmp eq i8 %.val, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert6 = getelementptr i8, ptr %1, i64 10
  %.val7.pre = load i8, ptr %.phi.trans.insert6, align 1, !tbaa !813
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.d = and i32 %2, 255
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %.11727.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !2051 ; 3 uses
  %i.g = getelementptr i8, ptr %.11727.i.i.i, i64 11
  %.117.val2028.i.i.i = load i8, ptr %i.g, align 1, !tbaa !813 ; 2 uses
  %.not.i29.i.i.i = icmp eq i8 %.117.val2028.i.i.i, 0
  br i1 %.not.i29.i.i.i, label %.lr.ph31.i.i.i, label %"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit"

.lr.ph31.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph31.i.i.i
  %.11730.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph31.i.i.i ], [ %.11727.i.i.i, %.thread.i.i ] ; 2 uses
  %i.h = getelementptr i8, ptr %.11730.i.i.i, i64 10
  %.117.val18.i.i.i = load i8, ptr %i.h, align 1, !tbaa !813
  %i.i = getelementptr inbounds nuw i8, ptr %.11730.i.i.i, i64 256
  %i.j = zext i8 %.117.val18.i.i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %.117.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !2051 ; 3 uses
  %i.l = getelementptr i8, ptr %.117.i.i.i, i64 11
  %.117.val20.i.i.i = load i8, ptr %i.l, align 1, !tbaa !813 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.117.val20.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph31.i.i.i, label %"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit", !llvm.loop !548

"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit": ; preds = %.lr.ph31.i.i.i, %.thread.i.i
  %.val6.pre = phi i8 [ %.117.val2028.i.i.i, %.thread.i.i ], [ %.117.val20.i.i.i, %.lr.ph31.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11727.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph31.i.i.i ] ; 3 uses
  %i.m = getelementptr i8, ptr %.117.lcssa.i.i.i, i64 10
  %.117.val.i.i.i = load i8, ptr %i.m, align 1, !tbaa !813 ; 2 uses
  %i.n = zext i8 %.117.val.i.i.i to i32
  store ptr %.117.lcssa.i.i.i, ptr %5, align 8
  store i32 %i.n, ptr %i.a, align 8, !tbaa !2054
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit"
  %.val7 = phi i8 [ %.117.val.i.i.i, %"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit" ], [ %.val7.pre, %._crit_edge ] ; 3 uses
  %.val6 = phi i8 [ %.val6.pre, %"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit" ], [ %.val, %._crit_edge ]
  %i.o = phi ptr [ %.117.lcssa.i.i.i, %"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit" ], [ %1, %._crit_edge ] ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 10       ; 2 uses
  %i.q = icmp eq i8 %.val7, %.val6
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i8 %.val7, 30
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = shl nuw nsw i8 %.val7, 1
  %i.t = tail call i8 @llvm.umin.i8(i8 %i.s, i8 30) ; 2 uses
  %i.u = shl nuw i8 %i.t, 3
  %i.v = zext i8 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 16
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #35 ; 10 uses
  store ptr %i.x, ptr %i.x, align 8, !tbaa !2051
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  store i8 0, ptr %i.z, align 1, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  store i8 %i.t, ptr %i.aa, align 1, !tbaa !813
  store ptr %i.x, ptr %5, align 8, !tbaa !2055
  %.val13.i.i = load i8, ptr %i.p, align 1, !tbaa !813 ; 3 uses
  %i.ab = zext i8 %.val13.i.i to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ab, 3          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i
  %.not1.i.i.i = icmp eq i8 %.val13.i.i, 0
  br i1 %.not1.i.i.i, label %"_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKiEESF_IJRiEEEEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairISG_iEPSP_EESS_DpOT_ENKUlhE_clEh.exit", label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %i.af = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1
  %xtraiter = and i64 %i.ah, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol

.lr.ph.i.i.i10.prol:                              ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i10.prol
  %.03.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i.i10.prol ], [ %i.ae, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.0122.i.i.i.prol = phi ptr [ %i.ai, %.lr.ph.i.i.i10.prol ], [ %i.ac, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i10.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %.012.val.i.i.i.prol = load i64, ptr %.0122.i.i.i.prol, align 1
  store i64 %.012.val.i.i.i.prol, ptr %.03.i.i.i.prol, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.prol, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol, !llvm.loop !15302

.lr.ph.i.i.i10.prol.loopexit:                     ; preds = %.lr.ph.i.i.i10.prol, %.lr.ph.preheader.i.i.i
  %.03.i.i.i.unr = phi ptr [ %i.ae, %.lr.ph.preheader.i.i.i ], [ %i.aj, %.lr.ph.i.i.i10.prol ]
  %.0122.i.i.i.unr = phi ptr [ %i.ac, %.lr.ph.preheader.i.i.i ], [ %i.ai, %.lr.ph.i.i.i10.prol ]
  %i.ak = icmp ult i64 %i.af, 56
  br i1 %i.ak, label %"_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKiEESF_IJRiEEEEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairISG_iEPSP_EESS_DpOT_ENKUlhE_clEh.exit", label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10
  %.03.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i10 ], [ %.03.i.i.i.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 9 uses
  %.0122.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i10 ], [ %.0122.i.i.i.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 9 uses
  %.012.val.i.i.i = load i64, ptr %.0122.i.i.i, align 1
  store i64 %.012.val.i.i.i, ptr %.03.i.i.i, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8
  %.012.val.i.i.i.1 = load i64, ptr %i.al, align 1
  store i64 %.012.val.i.i.i.1, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 16
  %.012.val.i.i.i.2 = load i64, ptr %i.an, align 1
  store i64 %.012.val.i.i.i.2, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 24
  %.012.val.i.i.i.3 = load i64, ptr %i.ap, align 1
  store i64 %.012.val.i.i.i.3, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 32
  %.012.val.i.i.i.4 = load i64, ptr %i.ar, align 1
  store i64 %.012.val.i.i.i.4, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 40
  %.012.val.i.i.i.5 = load i64, ptr %i.at, align 1
  store i64 %.012.val.i.i.i.5, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 48
  %.012.val.i.i.i.6 = load i64, ptr %i.av, align 1
  store i64 %.012.val.i.i.i.6, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 56
  %.012.val.i.i.i.7 = load i64, ptr %i.ax, align 1
  store i64 %.012.val.i.i.i.7, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 64
  %.not.i.i.i11.7 = icmp eq ptr %i.az, %i.ad
  br i1 %.not.i.i.i11.7, label %"_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKiEESF_IJRiEEEEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairISG_iEPSP_EESS_DpOT_ENKUlhE_clEh.exit", label %.lr.ph.i.i.i10, !llvm.loop !553

"_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKiEESF_IJRiEEEEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairISG_iEPSP_EESS_DpOT_ENKUlhE_clEh.exit": ; preds = %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10, %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  store i8 %.val13.i.i, ptr %i.bb, align 2, !tbaa !813
  store i8 0, ptr %i.p, align 1, !tbaa !813
  tail call fastcc void @"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16clear_and_deleteEPSA_PSaISt4pairIKiiEE"(ptr noundef nonnull %i.o)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.x, ptr %i.bc, align 8, !tbaa !2051
  store ptr %i.x, ptr %0, align 8, !tbaa !2051
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call fastcc void @"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %5)
  br label %bb.f

bb.f:                                             ; preds = %"_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKiEESF_IJRiEEEEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairISG_iEPSP_EESS_DpOT_ENKUlhE_clEh.exit", %bb.e, %bb.b
  %i.bd = load ptr, ptr %5, align 8, !tbaa !2055  ; 6 uses
  %i.be = load i32, ptr %i.a, align 8, !tbaa !2054 ; 4 uses
  %i.bf = trunc i32 %i.be to i8                   ; 2 uses
  %i.bg = and i32 %i.be, 255                      ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bd, i64 10     ; 3 uses
  %.val23.i = load i8, ptr %i.bh, align 1, !tbaa !813 ; 3 uses
  %i.bi = icmp ugt i8 %.val23.i, %i.bf
  %i.bj = zext nneg i32 %i.bg to i64              ; 2 uses
  br i1 %i.bi, label %.lr.ph.preheader.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE19transfer_n_backwardEmmmPSA_PSaISt4pairIKiiEE.exit.i"

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %narrow.i = sub nuw i8 %.val23.i, %i.bf
  %i.bm = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.bm, 3
  %i.bn = getelementptr i8, ptr %i.bl, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.bl, i64 %.idx.i.i, i1 false)
  %.val21.pre.i = load i8, ptr %i.bh, align 1, !tbaa !813
  br label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE19transfer_n_backwardEmmmPSA_PSaISt4pairIKiiEE.exit.i"

"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE19transfer_n_backwardEmmmPSA_PSaISt4pairIKiiEE.exit.i": ; preds = %.lr.ph.preheader.i.i, %bb.f
  %.val21.i = phi i8 [ %.val21.pre.i, %.lr.ph.preheader.i.i ], [ %.val23.i, %bb.f ]
  %.val25.i = load i64, ptr %3, align 8, !tbaa !869
  %.val26.i = load i64, ptr %4, align 8, !tbaa !869
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bj ; 2 uses
  %i.bq = inttoptr i64 %.val25.i to ptr
  %i.br = inttoptr i64 %.val26.i to ptr
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !802
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !1024
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !802
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !1027
  %i.bv = add i8 %.val21.i, 1                     ; 3 uses
  store i8 %i.bv, ptr %i.bh, align 1, !tbaa !813
  %i.bw = getelementptr i8, ptr %i.bd, i64 11
  %.val24.i = load i8, ptr %i.bw, align 1, !tbaa !813
  %.not.i27.i = icmp eq i8 %.val24.i, 0
  br i1 %.not.i27.i, label %bb.g, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJRKiEESF_IJRiEEEEEvhPSaISt4pairISG_iEEDpOT_.exit"

bb.g:                                             ; preds = %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE19transfer_n_backwardEmmmPSA_PSaISt4pairIKiiEE.exit.i"
  %i.bx = zext i8 %i.bv to i32
  %i.by = add nuw nsw i32 %i.bg, 1                ; 2 uses
  %i.bz = icmp samesign ult i32 %i.by, %i.bx
  br i1 %i.bz, label %.lr.ph.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJRKiEESF_IJRiEEEEEvhPSaISt4pairISG_iEEDpOT_.exit"

.lr.ph.i:                                         ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 256 ; 10 uses
  %i.cb = zext i8 %i.bv to i64                    ; 4 uses
  %i.cc = zext nneg i32 %i.by to i64
  %.mask = and i32 %i.be, 255
  %6 = zext nneg i32 %.mask to i64                ; 2 uses
  %i.cd = xor i64 %6, -1
  %i.ce = add nsw i64 %i.cd, %i.cb
  %i.cf = add nsw i64 %i.cb, -2
  %i.cg = sub nsw i64 %i.cf, %6
  %xtraiter10 = and i64 %i.ce, 3                  ; 2 uses
  %lcmp.mod11.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod11.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.ch, %.prol.preheader ], [ %i.cb, %.lr.ph.i ] ; 3 uses
  %prol.iter12 = phi i64 [ %prol.iter12.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.ch = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2051 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.prol
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !2051
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !813
  %prol.iter12.next = add i64 %prol.iter12, 1     ; 2 uses
  %prol.iter12.cmp.not = icmp eq i64 %prol.iter12.next, %xtraiter10
  br i1 %prol.iter12.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !15303

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.cb, %.lr.ph.i ], [ %i.ch, %.prol.preheader ]
  %i.cn = icmp ult i64 %i.cg, 3
  br i1 %i.cn, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJRKiEESF_IJRiEEEEEvhPSaISt4pairISG_iEEDpOT_.exit", label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.dg, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.co = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !2051 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !2051
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = trunc nuw i64 %indvars.iv to i8
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !813
  %i.cu = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !2051 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.co
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !2051
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = trunc nuw i64 %i.co to i8
  store i8 %i.cz, ptr %i.cy, align 1, !tbaa !813
  %i.da = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !2051 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cu
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !2051
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = trunc nuw i64 %i.cu to i8
  store i8 %i.df, ptr %i.de, align 1, !tbaa !813
  %i.dg = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !2051 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.da
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !2051
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = trunc nuw i64 %i.da to i8
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.dg, %i.cc
  br i1 %.wide.3, label %.lr.ph.i.new, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJRKiEESF_IJRiEEEEEvhPSaISt4pairISG_iEEDpOT_.exit", !llvm.loop !15304

"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJRKiEESF_IJRiEEEEEvhPSaISt4pairISG_iEEDpOT_.exit": ; preds = %.prol.loopexit, %.lr.ph.i.new, %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE19transfer_n_backwardEmmmPSA_PSaISt4pairIKiiEE.exit.i", %bb.g
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !2050
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !2050
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.bd, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %i.be, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr %1, i32 %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val1147 = load ptr, ptr %0, align 8, !tbaa !2049 ; 2 uses
  %i.a = icmp eq ptr %1, %.val1147
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 10
  %.val10.peel = load i8, ptr %i.b, align 1, !tbaa !813 ; 8 uses
  %i.c = icmp ugt i8 %.val10.peel, 14
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %.val61.i.peel = load ptr, ptr %1, align 8, !tbaa !2051 ; 4 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val60.i.peel = load i8, ptr %i.d, align 8, !tbaa !813 ; 5 uses
  %.not.i14.peel = icmp eq i8 %.val60.i.peel, 0   ; 2 uses
  br i1 %.not.i14.peel, label %.critedge.i.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i8 %.val60.i.peel, -1
  %i.f = getelementptr inbounds nuw i8, ptr %.val61.i.peel, i64 256
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2051 ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 10
  %.val76.i.peel = load i8, ptr %i.j, align 1, !tbaa !813
  %i.k = zext i8 %.val76.i.peel to i32
  %i.l = add nuw nsw i32 %i.k, 1                  ; 2 uses
  %i.m = zext nneg i8 %.val10.peel to i32
  %i.n = add nuw nsw i32 %i.l, %i.m
  %i.o = icmp samesign ugt i32 %i.n, 30
  br i1 %i.o, label %.critedge.i.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i32 %i.l, %2
  tail call fastcc void @"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE11merge_nodesEPNS1_10btree_nodeIS9_EESD_"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %1)
  br label %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.peel"

.critedge.i.peel:                                 ; preds = %bb.c, %bb.b
  %i.q = getelementptr i8, ptr %.val61.i.peel, i64 10
  %.val54.i.peel = load i8, ptr %i.q, align 1, !tbaa !813
  %i.r = icmp ult i8 %.val60.i.peel, %.val54.i.peel
  br i1 %i.r, label %bb.e, label %.thread.i.peel

bb.e:                                             ; preds = %.critedge.i.peel
  %i.s = add nuw i8 %.val60.i.peel, 1
  %i.t = getelementptr inbounds nuw i8, ptr %.val61.i.peel, i64 256
  %i.u = zext i8 %i.s to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2051 ; 3 uses
  %narrow.peel = add nuw nsw i8 %.val10.peel, 1
  %i.x = zext nneg i8 %narrow.peel to i32
  %i.y = getelementptr i8, ptr %i.w, i64 10
  %.val72.i.peel = load i8, ptr %i.y, align 1, !tbaa !813 ; 3 uses
  %i.z = zext i8 %.val72.i.peel to i32
  %i.aa = add nuw nsw i32 %i.z, %i.x
  %i.ab = icmp samesign ult i32 %i.aa, 31
  br i1 %i.ab, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp eq i8 %.val10.peel, 0
  %i.ad = icmp sgt i32 %2, 0
  %or.cond.peel = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond.peel, label %bb.j, label %.thread.i.peel

.thread.i.peel:                                   ; preds = %bb.f, %.critedge.i.peel
  br i1 %.not.i14.peel, label %.thread, label %bb.g

bb.g:                                             ; preds = %.thread.i.peel
  %i.ae = add i8 %.val60.i.peel, -1
  %i.af = getelementptr inbounds nuw i8, ptr %.val61.i.peel, i64 256
  %i.ag = zext i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2051 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 10
  %.val66.i.peel = load i8, ptr %i.aj, align 1, !tbaa !813 ; 3 uses
  %i.ak = icmp ugt i8 %.val66.i.peel, 15
  br i1 %i.ak, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.al = icmp eq i8 %.val10.peel, 0
  %i.am = zext nneg i8 %.val10.peel to i32
  %i.an = icmp slt i32 %2, %i.am
  %or.cond39.peel = select i1 %i.al, i1 true, i1 %i.an
  br i1 %or.cond39.peel, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.lhs.trunc93.i.peel = sub nuw i8 %.val66.i.peel, %.val10.peel
  %i.ao = lshr i8 %.lhs.trunc93.i.peel, 1
  %i.ap = add i8 %.val66.i.peel, -1
  %.sroa.speculated.i.peel = tail call i8 @llvm.umin.i8(i8 %i.ap, i8 %i.ao) ; 2 uses
  tail call fastcc void @"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE23rebalance_left_to_rightEhPSA_PSaISt4pairIKiiEE"(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i8 noundef zeroext %.sroa.speculated.i.peel, ptr noundef nonnull %1)
  %i.aq = zext nneg i8 %.sroa.speculated.i.peel to i32
  %i.ar = add nsw i32 %2, %i.aq
  br label %.thread

bb.j:                                             ; preds = %bb.f
  %.lhs.trunc.peel = sub nuw i8 %.val72.i.peel, %.val10.peel
  %i.as = lshr i8 %.lhs.trunc.peel, 1
  %i.at = add i8 %.val72.i.peel, -1
  %.sroa.speculated82.i.peel = tail call i8 @llvm.umin.i8(i8 %i.at, i8 %i.as)
  tail call fastcc void @"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE23rebalance_right_to_leftEhPSA_PSaISt4pairIKiiEE"(ptr noundef nonnull align 1 dereferenceable(1) %1, i8 noundef zeroext %.sroa.speculated82.i.peel, ptr noundef nonnull %i.w)
  br label %.thread

bb.k:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE11merge_nodesEPNS1_10btree_nodeIS9_EESD_"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.w)
  br label %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.peel"

"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.peel": ; preds = %bb.d, %bb.k
  %.sroa.10.2.peel = phi i32 [ %2, %bb.k ], [ %i.p, %bb.d ] ; 7 uses
  %.sroa.023.2.peel = phi ptr [ %1, %bb.k ], [ %i.i, %bb.d ] ; 9 uses
  %.val8.peel = load ptr, ptr %.sroa.023.2.peel, align 8, !tbaa !2051 ; 2 uses
  %.val11.peel = load ptr, ptr %0, align 8, !tbaa !2049 ; 2 uses
  %i.au = icmp eq ptr %.val8.peel, %.val11.peel
  br i1 %i.au, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit", %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.peel", %bb.a
  %.sroa.9.0.lcssa = phi i32 [ %2, %bb.a ], [ %.sroa.10.2.peel, %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.peel" ], [ %.sroa.10.2.peel, %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit" ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.023.2.peel, %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.peel" ], [ %.sroa.023.2.peel, %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit" ]
  %.val11.lcssa = phi ptr [ %.val1147, %bb.a ], [ %.val11.peel, %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.peel" ], [ %.val11, %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit" ] ; 4 uses
  %i.av = getelementptr i8, ptr %.val11.lcssa, i64 10
  %.val7.i = load i8, ptr %i.av, align 1, !tbaa !813
  %.not.i = icmp eq i8 %.val7.i, 0
  br i1 %.not.i, label %bb.l, label %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10try_shrinkEv.exit"

bb.l:                                             ; preds = %._crit_edge
  %i.aw = getelementptr i8, ptr %.val11.lcssa, i64 11
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE18insert_hint_uniqueIiJRKSt21piecewise_construct_tSt5tupleIJOiEESC_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSD_IKiiEPSI_EEbESL_RKT_DpOT0_:bb.a
  %i.di = load ptr, ptr %.sroa.0.0.i18.i, align 8, !tbaa !1015, !noalias !15371 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 11
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !813, !noalias !15371
  %.not.i21.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i21.i, label %bb.p, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSC_EEEET_SG_.exit.thread.i, !llvm.loop !82

bb.r:                                             ; preds = %bb.p
  %i.dl = sext i32 %.sroa.7.0.i.i to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i18.i, i64 12
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dl
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !802, !noalias !15371
  %i.dp = icmp slt i32 %i.cm, %i.do
  br i1 %i.dp, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSC_EEEET_SG_.exit.thread.i, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE13insert_uniqueIiJRKSt21piecewise_construct_tSt5tupleIJOiEESC_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSD_IKiiEPSI_EEbERKT_DpOT0_.exit

_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSC_EEEET_SG_.exit.thread.i: ; preds = %bb.q, %bb.r
  %i.dq = tail call { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_EEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSI_EESL_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %.sroa.0.0.i.i, i32 %i.da, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7), !noalias !15371 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.dq, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.dq, 1
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE13insert_uniqueIiJRKSt21piecewise_construct_tSt5tupleIJOiEESC_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSD_IKiiEPSI_EEbERKT_DpOT0_.exit

_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE13insert_uniqueIiJRKSt21piecewise_construct_tSt5tupleIJOiEESC_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSD_IKiiEPSI_EEbERKT_DpOT0_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSC_EEEET_SG_.exit.thread.i, %bb.r, %bb.f, %.critedge4, %.critedge2
  %.sroa.0.0.i18.lcssa.sink.i.sink = phi ptr [ %2, %bb.f ], [ %.fca.0.extract11, %.critedge2 ], [ %.fca.0.extract, %.critedge4 ], [ %.fca.0.extract.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSC_EEEET_SG_.exit.thread.i ], [ %.sroa.0.0.i18.i, %bb.r ]
  %.sroa.7.0.i.lcssa.sink.i.sink = phi i32 [ %3, %bb.f ], [ %.fca.1.extract12, %.critedge2 ], [ %.fca.1.extract, %.critedge4 ], [ %.fca.1.extract.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSC_EEEET_SG_.exit.thread.i ], [ %.sroa.7.0.i.i, %bb.r ]
  %.sink.i.sink = phi i8 [ 0, %bb.f ], [ 1, %.critedge2 ], [ 1, %.critedge4 ], [ 1, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSC_EEEET_SG_.exit.thread.i ], [ 0, %bb.r ]
  store ptr %.sroa.0.0.i18.lcssa.sink.i.sink, ptr %0, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.0.i.lcssa.sink.i.sink, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i.sink, ptr %i.dr, align 8, !tbaa !1029
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_EEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSI_EESL_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.380", align 8 ; 7 uses
  store ptr %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !813   ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre15 = load i8, ptr %.phi.trans.insert14, align 1, !tbaa !813
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !1015 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !813   ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !813
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 256
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !1015 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !813   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit, !llvm.loop !84

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !813   ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %6, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !1025
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %.pre15, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %1, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 2 uses
  %i.y = icmp eq i8 %i.t, %i.u
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult i8 %i.t, 30
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i8 %i.t, 1
  %i.ab = tail call i8 @llvm.umin.i8(i8 %i.aa, i8 30) ; 2 uses
  %i.ac = shl nuw i8 %i.ab, 3
  %i.ad = zext i8 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 16
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #35 ; 11 uses
  store ptr %i.af, ptr %i.af, align 8, !tbaa !1015
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !813
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !813
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  store i8 %i.ab, ptr %i.ai, align 1, !tbaa !813
  store ptr %i.af, ptr %6, align 8, !tbaa !1019
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !813  ; 3 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ak, 3          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_EEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSI_EESL_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %i.ao = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1
  %xtraiter = and i64 %i.aq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i6.prol.loopexit, label %.lr.ph.i.i.i6.prol

.lr.ph.i.i.i6.prol:                               ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i6.prol
  %.015.i.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.i6.prol ], [ %i.an, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01214.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i6.prol ], [ %i.al, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i6.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.ar = load i64, ptr %.01214.i.i.i.prol, align 1
  store i64 %i.ar, ptr %.015.i.i.i.prol, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.prol, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i6.prol.loopexit, label %.lr.ph.i.i.i6.prol, !llvm.loop !15372

.lr.ph.i.i.i6.prol.loopexit:                      ; preds = %.lr.ph.i.i.i6.prol, %.lr.ph.preheader.i.i.i
  %.015.i.i.i.unr = phi ptr [ %i.an, %.lr.ph.preheader.i.i.i ], [ %i.at, %.lr.ph.i.i.i6.prol ]
  %.01214.i.i.i.unr = phi ptr [ %i.al, %.lr.ph.preheader.i.i.i ], [ %i.as, %.lr.ph.i.i.i6.prol ]
  %i.au = icmp ult i64 %i.ao, 56
  br i1 %i.au, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_EEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSI_EESL_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %.lr.ph.i.i.i6.prol.loopexit, %.lr.ph.i.i.i6
  %.015.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i6 ], [ %.015.i.i.i.unr, %.lr.ph.i.i.i6.prol.loopexit ] ; 9 uses
  %.01214.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i6 ], [ %.01214.i.i.i.unr, %.lr.ph.i.i.i6.prol.loopexit ] ; 9 uses
  %i.av = load i64, ptr %.01214.i.i.i, align 1
  store i64 %i.av, ptr %.015.i.i.i, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 8
  %i.ay = load i64, ptr %i.aw, align 1
  store i64 %i.ay, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16
  %i.bb = load i64, ptr %i.az, align 1
  store i64 %i.bb, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 24
  %i.be = load i64, ptr %i.bc, align 1
  store i64 %i.be, ptr %i.bd, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 32
  %i.bh = load i64, ptr %i.bf, align 1
  store i64 %i.bh, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 40
  %i.bk = load i64, ptr %i.bi, align 1
  store i64 %i.bk, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 48
  %i.bn = load i64, ptr %i.bl, align 1
  store i64 %i.bn, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 56
  %i.bq = load i64, ptr %i.bo, align 1
  store i64 %i.bq, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 64
  %.not.i.i.i7.7 = icmp eq ptr %i.br, %i.am
  br i1 %.not.i.i.i7.7, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_EEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSI_EESL_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i6, !llvm.loop !93

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_EEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSI_EESL_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i6.prol.loopexit, %.lr.ph.i.i.i6, %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  store i8 %i.aj, ptr %i.bt, align 2, !tbaa !813
  store i8 0, ptr %i.x, align 1, !tbaa !813
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE16clear_and_deleteEPS5_PSaISt4pairIKiiEE(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  store ptr %i.af, ptr %i.w, align 8, !tbaa !1015
  store ptr %i.af, ptr %0, align 8, !tbaa !1015
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSB_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6)
  %.pre16 = load ptr, ptr %6, align 8, !tbaa !1019
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_EEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSI_EESL_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.bu = phi ptr [ %i.af, %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_EEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSI_EESL_DpOT_ENKUlhE_clEh.exit ], [ %.pre16, %bb.e ], [ %i.v, %bb.b ] ; 5 uses
  %i.bv = load i32, ptr %i.a, align 8, !tbaa !1025 ; 3 uses
  %i.bw = trunc i32 %i.bv to i8                   ; 2 uses
  %i.bx = and i32 %i.bv, 255                      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 10 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !813 ; 3 uses
  %i.ca = icmp ugt i8 %i.bz, %i.bw
  %i.cb = zext nneg i32 %i.bx to i64              ; 2 uses
  br i1 %i.ca, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %i.cb ; 2 uses
  %narrow.i = sub nuw i8 %i.bz, %i.bw
  %i.ce = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ce, 3
  %i.cf = getelementptr i8, ptr %i.cd, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.cd, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.by, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %i.cg = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.bz, %bb.f ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cb ; 2 uses
  %i.cj = load i64, ptr %4, align 8, !tbaa !869
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load i64, ptr %5, align 8, !tbaa !869
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !802
  store i32 %i.cn, ptr %i.ci, align 4, !tbaa !1024
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cp = load i32, ptr %i.cm, align 4, !tbaa !802
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !1027
  %i.cq = add i8 %i.cg, 1                         ; 3 uses
  store i8 %i.cq, ptr %i.by, align 1, !tbaa !813
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !813
  %.not.i20.i = icmp eq i8 %i.cs, 0
  br i1 %.not.i20.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_EEEvhPSaISt4pairIKiiEEDpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i
  %i.ct = zext i8 %i.cq to i32
  %i.cu = add nuw nsw i32 %i.bx, 1                ; 2 uses
  %i.cv = icmp samesign ult i32 %i.cu, %i.ct
  br i1 %i.cv, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_EEEvhPSaISt4pairIKiiEEDpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bu, i64 256 ; 10 uses
  %i.cx = zext i8 %i.cq to i64                    ; 4 uses
  %i.cy = zext nneg i32 %i.cu to i64
  %.mask = and i32 %i.bv, 255
  %7 = zext nneg i32 %.mask to i64                ; 2 uses
  %i.cz = xor i64 %7, -1
  %i.da = add nsw i64 %i.cz, %i.cx
  %i.db = add nsw i64 %i.cx, -2
  %i.dc = sub nsw i64 %i.db, %7
  %xtraiter24 = and i64 %i.da, 3                  ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.dd, %.prol.preheader ], [ %i.cx, %.lr.ph.i ] ; 3 uses
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.dd = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1015 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.prol
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !1015
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.di, ptr %i.dh, align 1, !tbaa !813
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !15373

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.cx, %.lr.ph.i ], [ %i.dd, %.prol.preheader ]
  %i.dj = icmp ult i64 %i.dc, 3
  br i1 %i.dj, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_EEEvhPSaISt4pairIKiiEEDpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.ec, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.dk = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !1015 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !1015
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = trunc nuw i64 %indvars.iv to i8
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !813
  %i.dq = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1015 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dk
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !1015
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dv = trunc nuw i64 %i.dk to i8
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !813
  %i.dw = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1015 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dq
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !1015
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = trunc nuw i64 %i.dq to i8
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !813
  %i.ec = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1015 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dw
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !1015
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = trunc nuw i64 %i.dw to i8
  store i8 %i.eh, ptr %i.eg, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.ec, %i.cy
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_EEEvhPSaISt4pairIKiiEEDpOT_.exit, !llvm.loop !15374

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_EEEvhPSaISt4pairIKiiEEDpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i, %bb.g
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !1006
  %i.ek = add i64 %i.ej, 1
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !1006
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapIiiSt4lessIiESaISt4pairIKiiEEEEEC2IN9__gnu_cxx17__normal_iteratorIPKS7_IiiESt6vectorISI_SaISI_EEEEEET_SP_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::Matcher.2118", align 16 ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapIiiSt4lessIiESaISt4pairIKiiEEEEEE, i64 16), ptr %0, align 8, !tbaa !816
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not9 = icmp eq ptr %1, %2
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit
  %.sroa.06.010 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15382)
  call void @llvm.experimental.noalias.scope.decl(metadata !15383)
  call void @llvm.experimental.noalias.scope.decl(metadata !15384)
  %i.g = load i64, ptr %.sroa.06.010, align 4, !noalias !15385
  store i64 %i.g, ptr %i.c, align 16, !alias.scope !15385
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt4pairIKiiEEE, i64 16), ptr @_ZZN7testing8internal11MatcherBaseIRKSt4pairIKiiEE9GetVTableINS7_11ValuePolicyINS0_21ImplicitCastEqMatcherIS4_S2_IiiEEELb1EEEEEPKNS7_6VTableEvE7kVTable>, ptr %3, align 16, !alias.scope !15385
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !1796 ; 4 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !1797
  %.not.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i, label %bb.c, label %_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt4pairIKiiEEE, i64 16), ptr @_ZZN7testing8internal11MatcherBaseIRKSt4pairIKiiEE9GetVTableINS7_11ValuePolicyINS0_21ImplicitCastEqMatcherIS4_S2_IiiEEELb1EEEEEPKNS7_6VTableEvE7kVTable>, ptr %i.h, align 8
  %i.k = load i64, ptr %i.c, align 16, !tbaa !813
  store i64 %i.k, ptr %i.j, align 8, !tbaa !813
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !1796
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.m, ptr %i.d, align 8, !tbaa !1796
  br label %_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EE9push_backEOS7_.exit unwind label %bb.g

_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.c
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !1803 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt4pairIKiiEEE, i64 16), ptr %3, align 16, !tbaa !816
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE8IsSharedEv.exit.i.i: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EE9push_backEOS7_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.pr, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1805
  %.not.i.i4 = icmp eq ptr %i.o, null
  br i1 %.not.i.i4, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE8IsSharedEv.exit.i.i
  %i.p = load ptr, ptr %i.c, align 16, !tbaa !813
  %i.q = atomicrmw add ptr %i.p, i32 -1 acq_rel, align 4
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.e, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !1803
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1805
  %i.v = load ptr, ptr %i.c, align 16, !tbaa !813
  invoke void %i.u(ptr noundef %i.v)
          to label %_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit unwind label %bb.f, !inline_history !486

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #39, !inline_history !1806
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EE9push_backEOS7_.exit.thread, %_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EE9push_backEOS7_.exit, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE8IsSharedEv.exit.i.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %.not = icmp eq ptr %i.f, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !15381

bb.g:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #37
  resume { ptr, i32 } %i.y

._crit_edge:                                      ; preds = %_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEE19MatchAndExplainImplINS7_11ValuePolicyINS0_21ImplicitCastEqMatcherIS4_S2_IiiEEELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS7_S6_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.b to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %i.b, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.c = load i32, ptr %1, align 4, !tbaa !1017
  %i.d = icmp eq i32 %i.c, %.sroa.0.0.extract.trunc.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, %.sroa.4.0.extract.trunc.i
  %i.h = select i1 %i.d, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEE12DescribeImplINS7_11ValuePolicyINS0_21ImplicitCastEqMatcherIS4_S2_IiiEEELb1EEEEEvRKS7_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.375", align 8    ; 4 uses
  %4 = alloca %"struct.std::pair.375", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.758, i64 noundef 15) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.c = load i64, ptr %i.a, align 8
  store i64 %i.c, ptr %4, align 8
  call void @_ZN7testing8internal7PrintToIKiiEEvRKSt4pairIT_T0_EPSo(ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull %1)
end_hunk_5
begin_hunk_6_@_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_18ElementsAreMatcherISt5tupleIJNS0_11PairMatcherIiiEES5_S5_S5_S5_EEEEEclIN4absl12lts_202605269btree_mapIiiSt4lessIiESaISt4pairIKiiEEEEEENS_15AssertionResultEPKcRKT_:bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !813
  %i.fd = atomicrmw add ptr %i.fc, i32 -1 acq_rel, align 4
  %i.fe = icmp eq i32 %i.fd, 1
  br i1 %i.fe, label %bb.am, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapIiiSt4lessIiESaISt4pairIKiiEEEEED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.ff = load ptr, ptr %i.b, align 8, !tbaa !1786
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !1791
  %i.fi = load ptr, ptr %i.fb, align 8, !tbaa !813
  invoke void %i.fh(ptr noundef %i.fi)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapIiiSt4lessIiESaISt4pairIKiiEEEEED2Ev.exit unwind label %bb.an, !inline_history !483

bb.an:                                            ; preds = %bb.am
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #39, !inline_history !1792
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapIiiSt4lessIiESaISt4pairIKiiEEEEED2Ev.exit: ; preds = %bb.ak, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapIiiSt4lessIiESaISt4pairIKiiEEEEE8IsSharedEv.exit.i.i, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  ret void

.body:                                            ; preds = %bb.d, %.body.i, %bb.aj
  %.pn21 = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn.pn, %bb.aj ], [ %i.k, %bb.d ], [ %i.g, %.body.i ]
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapIiiSt4lessIiESaISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  resume { ptr, i32 } %.pn21
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJiiEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSC_EESF_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.380", align 8 ; 7 uses
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !813   ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert13 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre14 = load i8, ptr %.phi.trans.insert13, align 1, !tbaa !813
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !1015 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !813   ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !813
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 256
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !1015 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !813   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit, !llvm.loop !84

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !813   ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %5, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !1025
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %.pre14, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %1, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 2 uses
  %i.y = icmp eq i8 %i.t, %i.u
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult i8 %i.t, 30
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i8 %i.t, 1
  %i.ab = tail call i8 @llvm.umin.i8(i8 %i.aa, i8 30) ; 2 uses
  %i.ac = shl nuw i8 %i.ab, 3
  %i.ad = zext i8 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 16
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #35 ; 11 uses
  store ptr %i.af, ptr %i.af, align 8, !tbaa !1015
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !813
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !813
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  store i8 %i.ab, ptr %i.ai, align 1, !tbaa !813
  store ptr %i.af, ptr %5, align 8, !tbaa !1019
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !813  ; 3 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ak, 3          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJiiEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSC_EESF_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %i.ao = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1
  %xtraiter = and i64 %i.aq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i5.prol.loopexit, label %.lr.ph.i.i.i5.prol

.lr.ph.i.i.i5.prol:                               ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i5.prol
  %.015.i.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.i5.prol ], [ %i.an, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01214.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i5.prol ], [ %i.al, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i5.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.ar = load i64, ptr %.01214.i.i.i.prol, align 1
  store i64 %i.ar, ptr %.015.i.i.i.prol, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.prol, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i5.prol.loopexit, label %.lr.ph.i.i.i5.prol, !llvm.loop !16144

.lr.ph.i.i.i5.prol.loopexit:                      ; preds = %.lr.ph.i.i.i5.prol, %.lr.ph.preheader.i.i.i
  %.015.i.i.i.unr = phi ptr [ %i.an, %.lr.ph.preheader.i.i.i ], [ %i.at, %.lr.ph.i.i.i5.prol ]
  %.01214.i.i.i.unr = phi ptr [ %i.al, %.lr.ph.preheader.i.i.i ], [ %i.as, %.lr.ph.i.i.i5.prol ]
  %i.au = icmp ult i64 %i.ao, 56
  br i1 %i.au, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJiiEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSC_EESF_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i5

.lr.ph.i.i.i5:                                    ; preds = %.lr.ph.i.i.i5.prol.loopexit, %.lr.ph.i.i.i5
  %.015.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i5 ], [ %.015.i.i.i.unr, %.lr.ph.i.i.i5.prol.loopexit ] ; 9 uses
  %.01214.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i5 ], [ %.01214.i.i.i.unr, %.lr.ph.i.i.i5.prol.loopexit ] ; 9 uses
  %i.av = load i64, ptr %.01214.i.i.i, align 1
  store i64 %i.av, ptr %.015.i.i.i, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 8
  %i.ay = load i64, ptr %i.aw, align 1
  store i64 %i.ay, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16
  %i.bb = load i64, ptr %i.az, align 1
  store i64 %i.bb, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 24
  %i.be = load i64, ptr %i.bc, align 1
  store i64 %i.be, ptr %i.bd, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 32
  %i.bh = load i64, ptr %i.bf, align 1
  store i64 %i.bh, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 40
  %i.bk = load i64, ptr %i.bi, align 1
  store i64 %i.bk, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 48
  %i.bn = load i64, ptr %i.bl, align 1
  store i64 %i.bn, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 56
  %i.bq = load i64, ptr %i.bo, align 1
  store i64 %i.bq, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 64
  %.not.i.i.i6.7 = icmp eq ptr %i.br, %i.am
  br i1 %.not.i.i.i6.7, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJiiEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSC_EESF_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i5, !llvm.loop !93

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJiiEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSC_EESF_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i5.prol.loopexit, %.lr.ph.i.i.i5, %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  store i8 %i.aj, ptr %i.bt, align 2, !tbaa !813
  store i8 0, ptr %i.x, align 1, !tbaa !813
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE16clear_and_deleteEPS5_PSaISt4pairIKiiEE(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  store ptr %i.af, ptr %i.w, align 8, !tbaa !1015
  store ptr %i.af, ptr %0, align 8, !tbaa !1015
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSB_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5)
  %.pre15 = load ptr, ptr %5, align 8, !tbaa !1019
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJiiEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSC_EESF_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.bu = phi ptr [ %i.af, %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJiiEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSC_EESF_DpOT_ENKUlhE_clEh.exit ], [ %.pre15, %bb.e ], [ %i.v, %bb.b ] ; 5 uses
  %i.bv = load i32, ptr %i.a, align 8, !tbaa !1025 ; 3 uses
  %i.bw = trunc i32 %i.bv to i8                   ; 2 uses
  %i.bx = and i32 %i.bv, 255                      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 10 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !813 ; 3 uses
  %i.ca = icmp ugt i8 %i.bz, %i.bw
  %i.cb = zext nneg i32 %i.bx to i64              ; 2 uses
  br i1 %i.ca, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %i.cb ; 2 uses
  %narrow.i = sub nuw i8 %i.bz, %i.bw
  %i.ce = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ce, 3
  %i.cf = getelementptr i8, ptr %i.cd, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.cd, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.by, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %i.cg = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.bz, %bb.f ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cb ; 2 uses
  %i.cj = load i32, ptr %3, align 4, !tbaa !802
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !1024
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cl = load i32, ptr %4, align 4, !tbaa !802
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !1027
  %i.cm = add i8 %i.cg, 1                         ; 3 uses
  store i8 %i.cm, ptr %i.by, align 1, !tbaa !813
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !813
  %.not.i19.i = icmp eq i8 %i.co, 0
  br i1 %.not.i19.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJiiEEEvhPSaISt4pairIKiiEEDpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i
  %i.cp = zext i8 %i.cm to i32
  %i.cq = add nuw nsw i32 %i.bx, 1                ; 2 uses
  %i.cr = icmp samesign ult i32 %i.cq, %i.cp
  br i1 %i.cr, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJiiEEEvhPSaISt4pairIKiiEEDpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bu, i64 256 ; 10 uses
  %i.ct = zext i8 %i.cm to i64                    ; 4 uses
  %i.cu = zext nneg i32 %i.cq to i64
  %.mask = and i32 %i.bv, 255
  %6 = zext nneg i32 %.mask to i64                ; 2 uses
  %i.cv = xor i64 %6, -1
  %i.cw = add nsw i64 %i.cv, %i.ct
  %i.cx = add nsw i64 %i.ct, -2
  %i.cy = sub nsw i64 %i.cx, %6
  %xtraiter23 = and i64 %i.cw, 3                  ; 2 uses
  %lcmp.mod24.not = icmp eq i64 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.cz, %.prol.preheader ], [ %i.ct, %.lr.ph.i ] ; 3 uses
  %prol.iter25 = phi i64 [ %prol.iter25.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.cz = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1015 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.prol
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !1015
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !813
  %prol.iter25.next = add i64 %prol.iter25, 1     ; 2 uses
  %prol.iter25.cmp.not = icmp eq i64 %prol.iter25.next, %xtraiter23
  br i1 %prol.iter25.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !16145

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.ct, %.lr.ph.i ], [ %i.cz, %.prol.preheader ]
  %i.df = icmp ult i64 %i.cy, 3
  br i1 %i.df, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJiiEEEvhPSaISt4pairIKiiEEDpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.dy, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.dg = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1015 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !1015
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = trunc nuw i64 %indvars.iv to i8
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !813
  %i.dm = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1015 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dg
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !1015
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = trunc nuw i64 %i.dg to i8
  store i8 %i.dr, ptr %i.dq, align 1, !tbaa !813
  %i.ds = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1015 ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dm
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !1015
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = trunc nuw i64 %i.dm to i8
  store i8 %i.dx, ptr %i.dw, align 1, !tbaa !813
  %i.dy = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1015 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ds
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !1015
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = trunc nuw i64 %i.ds to i8
  store i8 %i.ed, ptr %i.ec, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.dy, %i.cu
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJiiEEEvhPSaISt4pairIKiiEEDpOT_.exit, !llvm.loop !16146

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJiiEEEvhPSaISt4pairIKiiEEDpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i, %bb.g
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !1006
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !1006
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE18insert_hint_uniqueIiJiiEEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERS7_IKiiEPSC_EEbESF_RKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.378") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i32 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1006
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1015 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !813
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = icmp eq ptr %2, %i.e
  %i.j = icmp eq i32 %3, %i.h
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %3 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load i32, ptr %4, align 4, !tbaa !802    ; 4 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !802  ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.r = load ptr, ptr %1, align 8, !tbaa !1004
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1015
  %i.t = icmp eq ptr %2, %i.s
  %i.u = icmp eq i32 %3, 0
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %.critedge2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.x = load i8, ptr %i.w, align 1, !tbaa !813
  %.not.i.i7.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i7.i, label %.thread.i.i13.i, label %bb.d

bb.d:                                             ; preds = %.preheader.preheader
  %.not.not.i.i.i = icmp sgt i32 %3, 0
  br i1 %.not.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit.i, label %.lr.ph.i.i.i10.i

.lr.ph.i.i.i10.i:                                 ; preds = %bb.d, %bb.e
  %.01621.i.i.i.i = phi ptr [ %i.y, %bb.e ], [ %2, %bb.d ] ; 2 uses
  %i.y = load ptr, ptr %.01621.i.i.i.i, align 8, !tbaa !1015 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !813
  %.not18.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not18.i.i.i.i, label %bb.e, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i10.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.01621.i.i.i.i, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !813 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i10.i, label %.critedge.i.i.i11.i, !llvm.loop !83

.thread.i.i13.i:                                  ; preds = %.preheader.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.af = and i32 %3, 255
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ag
  %.11723.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !1015 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.11723.i.i.i.i, i64 11
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !813
  %.not.i24.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i24.i.i.i.i, label %.lr.ph26.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph26.i.i.i.i:                                 ; preds = %.thread.i.i13.i, %.lr.ph26.i.i.i.i
  %.11725.i.i.i.i = phi ptr [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ], [ %.11723.i.i.i.i, %.thread.i.i13.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 10
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !813
  %i.am = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 256
  %i.an = zext i8 %i.al to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %.117.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !1015 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.117.i.i.i.i, i64 11
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !813
  %.not.i.i.i.i14.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i14.i, label %.lr.ph26.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !84

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph26.i.i.i.i, %.thread.i.i13.i
  %.117.lcssa.i.i.i.i = phi ptr [ %.11723.i.i.i.i, %.thread.i.i13.i ], [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !813
  br label %.critedge.i.i.i11.i

.critedge.i.i.i11.i:                              ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.lcssa8.sink.i.i.i = phi i8 [ %i.as, %._crit_edge.i.i.i.i ], [ %i.ac, %bb.e ]
  %.2.i.i.i12.i = phi ptr [ %.117.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.y, %bb.e ]
  %i.at = zext i8 %.lcssa8.sink.i.i.i to i32
  br label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit.i

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit.i: ; preds = %.lr.ph.i.i.i10.i, %.critedge.i.i.i11.i, %bb.d
  %.sroa.090.1 = phi ptr [ %.2.i.i.i12.i, %.critedge.i.i.i11.i ], [ %2, %bb.d ], [ %2, %.lr.ph.i.i.i10.i ]
  %.sroa.6.0.in = phi i32 [ %i.at, %.critedge.i.i.i11.i ], [ %3, %bb.d ], [ %3, %.lr.ph.i.i.i10.i ]
  %i.au = sext i32 %.sroa.6.0.in to i64
  %i.av = getelementptr [8 x i8], ptr %.sroa.090.1, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !802
  %i.ay = load i32, ptr %4, align 4, !tbaa !802   ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.critedge2, label %bb.l

.critedge2:                                       ; preds = %.critedge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit.i
  %i.ba = tail call { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJiiEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSC_EESF_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i32 %3, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) ; 2 uses
  %.fca.0.extract11 = extractvalue { ptr, i32 } %i.ba, 0
  %.fca.1.extract12 = extractvalue { ptr, i32 } %i.ba, 1
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE13insert_uniqueIiJiiEEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERS7_IKiiEPSC_EEbERKT_DpOT0_.exit

bb.f:                                             ; preds = %bb.c
  %i.bb = icmp slt i32 %i.p, %i.o
  br i1 %i.bb, label %bb.g, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE13insert_uniqueIiJiiEEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERS7_IKiiEPSC_EEbERKT_DpOT0_.exit

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !813
  %.not.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = add nsw i32 %3, 1                       ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !813
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_127Btree_BitfieldArgument_Test8TestBodyEv:bb.a
  br label %bb.ay

bb.au:                                            ; preds = %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSC_EEEET_SG_.exit.thread.i.i, %bb.q
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  br label %bb.ay

bb.av:                                            ; preds = %.noexc87
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  br label %bb.ay

bb.aw:                                            ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implIiiJEEEEEE4findIiEENS1_14btree_iteratorINS1_10btree_nodeIS5_EERSt4pairIKiiEPSE_EERSD_.exit.thread.i
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSC_EEEET_SG_.exit.thread.i.i103, %bb.ag
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #37
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %.pn = phi { ptr, i32 } [ %i.gr, %bb.ax ], [ %i.gq, %bb.aw ], [ %i.gp, %bb.av ], [ %i.gl, %bb.ar ], [ %i.go, %bb.au ], [ %i.gn, %bb.at ], [ %i.gm, %bb.as ], [ %i.gk, %bb.aq ]
  call void @_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implIiiJEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKiS8_EEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIS7_iEPSD_EESG_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.380", align 8 ; 7 uses
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !813   ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert13 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre14 = load i8, ptr %.phi.trans.insert13, align 1, !tbaa !813
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !1015 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !813   ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !813
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 256
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !1015 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !813   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit, !llvm.loop !84

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !813   ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %5, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !1025
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %.pre14, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit ], [ %1, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 2 uses
  %i.y = icmp eq i8 %i.t, %i.u
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult i8 %i.t, 30
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i8 %i.t, 1
  %i.ab = tail call i8 @llvm.umin.i8(i8 %i.aa, i8 30) ; 2 uses
  %i.ac = shl nuw i8 %i.ab, 3
  %i.ad = zext i8 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 16
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #35 ; 11 uses
  store ptr %i.af, ptr %i.af, align 8, !tbaa !1015
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !813
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !813
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  store i8 %i.ab, ptr %i.ai, align 1, !tbaa !813
  store ptr %i.af, ptr %5, align 8, !tbaa !1019
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !813  ; 3 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ak, 3          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKiS8_EEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIS7_iEPSD_EESG_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %i.ao = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1
  %xtraiter = and i64 %i.aq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i5.prol.loopexit, label %.lr.ph.i.i.i5.prol

.lr.ph.i.i.i5.prol:                               ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i5.prol
  %.015.i.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.i5.prol ], [ %i.an, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01214.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i5.prol ], [ %i.al, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i5.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.ar = load i64, ptr %.01214.i.i.i.prol, align 1
  store i64 %i.ar, ptr %.015.i.i.i.prol, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.prol, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i5.prol.loopexit, label %.lr.ph.i.i.i5.prol, !llvm.loop !16386

.lr.ph.i.i.i5.prol.loopexit:                      ; preds = %.lr.ph.i.i.i5.prol, %.lr.ph.preheader.i.i.i
  %.015.i.i.i.unr = phi ptr [ %i.an, %.lr.ph.preheader.i.i.i ], [ %i.at, %.lr.ph.i.i.i5.prol ]
  %.01214.i.i.i.unr = phi ptr [ %i.al, %.lr.ph.preheader.i.i.i ], [ %i.as, %.lr.ph.i.i.i5.prol ]
  %i.au = icmp ult i64 %i.ao, 56
  br i1 %i.au, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKiS8_EEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIS7_iEPSD_EESG_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i5

.lr.ph.i.i.i5:                                    ; preds = %.lr.ph.i.i.i5.prol.loopexit, %.lr.ph.i.i.i5
  %.015.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i5 ], [ %.015.i.i.i.unr, %.lr.ph.i.i.i5.prol.loopexit ] ; 9 uses
  %.01214.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i5 ], [ %.01214.i.i.i.unr, %.lr.ph.i.i.i5.prol.loopexit ] ; 9 uses
  %i.av = load i64, ptr %.01214.i.i.i, align 1
  store i64 %i.av, ptr %.015.i.i.i, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 8
  %i.ay = load i64, ptr %i.aw, align 1
  store i64 %i.ay, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16
  %i.bb = load i64, ptr %i.az, align 1
  store i64 %i.bb, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 24
  %i.be = load i64, ptr %i.bc, align 1
  store i64 %i.be, ptr %i.bd, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 32
  %i.bh = load i64, ptr %i.bf, align 1
  store i64 %i.bh, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 40
  %i.bk = load i64, ptr %i.bi, align 1
  store i64 %i.bk, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 48
  %i.bn = load i64, ptr %i.bl, align 1
  store i64 %i.bn, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 56
  %i.bq = load i64, ptr %i.bo, align 1
  store i64 %i.bq, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 64
  %.not.i.i.i6.7 = icmp eq ptr %i.br, %i.am
  br i1 %.not.i.i.i6.7, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKiS8_EEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIS7_iEPSD_EESG_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i5, !llvm.loop !93

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKiS8_EEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIS7_iEPSD_EESG_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i5.prol.loopexit, %.lr.ph.i.i.i5, %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  store i8 %i.aj, ptr %i.bt, align 2, !tbaa !813
  store i8 0, ptr %i.x, align 1, !tbaa !813
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE16clear_and_deleteEPS5_PSaISt4pairIKiiEE(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  store ptr %i.af, ptr %i.w, align 8, !tbaa !1015
  store ptr %i.af, ptr %0, align 8, !tbaa !1015
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSB_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5)
  %.pre15 = load ptr, ptr %5, align 8, !tbaa !1019
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKiS8_EEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIS7_iEPSD_EESG_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.bu = phi ptr [ %i.af, %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKiS8_EEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIS7_iEPSD_EESG_DpOT_ENKUlhE_clEh.exit ], [ %.pre15, %bb.e ], [ %i.v, %bb.b ] ; 5 uses
  %i.bv = load i32, ptr %i.a, align 8, !tbaa !1025 ; 3 uses
  %i.bw = trunc i32 %i.bv to i8                   ; 2 uses
  %i.bx = and i32 %i.bv, 255                      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 10 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !813 ; 3 uses
  %i.ca = icmp ugt i8 %i.bz, %i.bw
  %i.cb = zext nneg i32 %i.bx to i64              ; 2 uses
  br i1 %i.ca, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %i.cb ; 2 uses
  %narrow.i = sub nuw i8 %i.bz, %i.bw
  %i.ce = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ce, 3
  %i.cf = getelementptr i8, ptr %i.cd, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.cd, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.by, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %i.cg = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.bz, %bb.f ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cb ; 2 uses
  %i.cj = load i32, ptr %3, align 4, !tbaa !802
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !1024
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cl = load i32, ptr %4, align 4, !tbaa !802
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !1027
  %i.cm = add i8 %i.cg, 1                         ; 3 uses
  store i8 %i.cm, ptr %i.by, align 1, !tbaa !813
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !813
  %.not.i19.i = icmp eq i8 %i.co, 0
  br i1 %.not.i19.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKiS8_EEEvhPSaISt4pairIS7_iEEDpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i
  %i.cp = zext i8 %i.cm to i32
  %i.cq = add nuw nsw i32 %i.bx, 1                ; 2 uses
  %i.cr = icmp samesign ult i32 %i.cq, %i.cp
  br i1 %i.cr, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKiS8_EEEvhPSaISt4pairIS7_iEEDpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bu, i64 256 ; 10 uses
  %i.ct = zext i8 %i.cm to i64                    ; 4 uses
  %i.cu = zext nneg i32 %i.cq to i64
  %.mask = and i32 %i.bv, 255
  %6 = zext nneg i32 %.mask to i64                ; 2 uses
  %i.cv = xor i64 %6, -1
  %i.cw = add nsw i64 %i.cv, %i.ct
  %i.cx = add nsw i64 %i.ct, -2
  %i.cy = sub nsw i64 %i.cx, %6
  %xtraiter23 = and i64 %i.cw, 3                  ; 2 uses
  %lcmp.mod24.not = icmp eq i64 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.cz, %.prol.preheader ], [ %i.ct, %.lr.ph.i ] ; 3 uses
  %prol.iter25 = phi i64 [ %prol.iter25.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.cz = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1015 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.prol
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !1015
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !813
  %prol.iter25.next = add i64 %prol.iter25, 1     ; 2 uses
  %prol.iter25.cmp.not = icmp eq i64 %prol.iter25.next, %xtraiter23
  br i1 %prol.iter25.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !16387

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.ct, %.lr.ph.i ], [ %i.cz, %.prol.preheader ]
  %i.df = icmp ult i64 %i.cy, 3
  br i1 %i.df, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKiS8_EEEvhPSaISt4pairIS7_iEEDpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.dy, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.dg = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1015 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !1015
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = trunc nuw i64 %indvars.iv to i8
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !813
  %i.dm = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1015 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dg
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !1015
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = trunc nuw i64 %i.dg to i8
  store i8 %i.dr, ptr %i.dq, align 1, !tbaa !813
  %i.ds = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1015 ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dm
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !1015
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = trunc nuw i64 %i.dm to i8
  store i8 %i.dx, ptr %i.dw, align 1, !tbaa !813
  %i.dy = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1015 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ds
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !1015
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = trunc nuw i64 %i.ds to i8
  store i8 %i.ed, ptr %i.ec, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.dy, %i.cu
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKiS8_EEEvhPSaISt4pairIS7_iEEDpOT_.exit, !llvm.loop !16388

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE13emplace_valueIJRKiS8_EEEvhPSaISt4pairIS7_iEEDpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKiiEE.exit.i, %bb.g
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !1006
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !1006
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE18insert_hint_uniqueIiJRKiS8_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERS9_IS7_iEPSD_EEbESG_RKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.378") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i32 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1006
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1015 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !813
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = icmp eq ptr %2, %i.e
  %i.j = icmp eq i32 %3, %i.h
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %3 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load i32, ptr %4, align 4, !tbaa !802    ; 4 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !802  ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.r = load ptr, ptr %1, align 8, !tbaa !1004
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1015
  %i.t = icmp eq ptr %2, %i.s
  %i.u = icmp eq i32 %3, 0
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %.critedge2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.x = load i8, ptr %i.w, align 1, !tbaa !813
  %.not.i.i7.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i7.i, label %.thread.i.i13.i, label %bb.d

bb.d:                                             ; preds = %.preheader.preheader
  %.not.not.i.i.i = icmp sgt i32 %3, 0
  br i1 %.not.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit.i, label %.lr.ph.i.i.i10.i

.lr.ph.i.i.i10.i:                                 ; preds = %bb.d, %bb.e
  %.01621.i.i.i.i = phi ptr [ %i.y, %bb.e ], [ %2, %bb.d ] ; 2 uses
  %i.y = load ptr, ptr %.01621.i.i.i.i, align 8, !tbaa !1015 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !813
  %.not18.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not18.i.i.i.i, label %bb.e, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i10.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.01621.i.i.i.i, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !813 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i10.i, label %.critedge.i.i.i11.i, !llvm.loop !83

.thread.i.i13.i:                                  ; preds = %.preheader.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.af = and i32 %3, 255
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ag
  %.11723.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !1015 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.11723.i.i.i.i, i64 11
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !813
  %.not.i24.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i24.i.i.i.i, label %.lr.ph26.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph26.i.i.i.i:                                 ; preds = %.thread.i.i13.i, %.lr.ph26.i.i.i.i
  %.11725.i.i.i.i = phi ptr [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ], [ %.11723.i.i.i.i, %.thread.i.i13.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 10
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !813
  %i.am = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 256
  %i.an = zext i8 %i.al to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %.117.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !1015 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.117.i.i.i.i, i64 11
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !813
  %.not.i.i.i.i14.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i14.i, label %.lr.ph26.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !84

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph26.i.i.i.i, %.thread.i.i13.i
  %.117.lcssa.i.i.i.i = phi ptr [ %.11723.i.i.i.i, %.thread.i.i13.i ], [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !813
  br label %.critedge.i.i.i11.i

.critedge.i.i.i11.i:                              ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.lcssa8.sink.i.i.i = phi i8 [ %i.as, %._crit_edge.i.i.i.i ], [ %i.ac, %bb.e ]
  %.2.i.i.i12.i = phi ptr [ %.117.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.y, %bb.e ]
  %i.at = zext i8 %.lcssa8.sink.i.i.i to i32
  br label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit.i

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit.i: ; preds = %.lr.ph.i.i.i10.i, %.critedge.i.i.i11.i, %bb.d
  %.sroa.090.1 = phi ptr [ %.2.i.i.i12.i, %.critedge.i.i.i11.i ], [ %2, %bb.d ], [ %2, %.lr.ph.i.i.i10.i ]
  %.sroa.6.0.in = phi i32 [ %i.at, %.critedge.i.i.i11.i ], [ %3, %bb.d ], [ %3, %.lr.ph.i.i.i10.i ]
  %i.au = sext i32 %.sroa.6.0.in to i64
  %i.av = getelementptr [8 x i8], ptr %.sroa.090.1, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !802
  %i.ay = load i32, ptr %4, align 4, !tbaa !802   ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.critedge2, label %bb.l

.critedge2:                                       ; preds = %.critedge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJEEEEERSt4pairIKiiEPS9_EmmEv.exit.i
  %i.ba = tail call { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE16internal_emplaceIJRKiS8_EEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIS7_iEPSD_EESG_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i32 %3, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) ; 2 uses
  %.fca.0.extract11 = extractvalue { ptr, i32 } %i.ba, 0
  %.fca.1.extract12 = extractvalue { ptr, i32 } %i.ba, 1
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE13insert_uniqueIiJRKiS8_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERS9_IS7_iEPSD_EEbERKT_DpOT0_.exit

bb.f:                                             ; preds = %bb.c
  %i.bb = icmp slt i32 %i.p, %i.o
  br i1 %i.bb, label %bb.g, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE13insert_uniqueIiJRKiS8_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERS9_IS7_iEPSD_EEbERKT_DpOT0_.exit

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !813
  %.not.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = add nsw i32 %3, 1                       ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !813
end_hunk_7
begin_hunk_8_@_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_118ConstructorCountedEiNS6_25ConstructorCountedCompareESaISt4pairIKS7_iEEEEE16GetDescriberImplINSG_11ValuePolicyIPKNS_16MatcherInterfaceISF_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSG_:bb.a
  %.val = load ptr, ptr %i.a, align 8, !tbaa !813
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !2313
  ret ptr %.val.val
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_118ConstructorCountedEiNS8_25ConstructorCountedCompareESaISt4pairIKS9_iEEEEEESt14default_deleteISJ_EEE7DestroyEPNS0_17SharedPayloadBaseE(ptr noundef %0) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !2313 ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_118ConstructorCountedEiNS8_25ConstructorCountedCompareESaISt4pairIKS9_iEEEEEESt14default_deleteISJ_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_118ConstructorCountedEiNS6_25ConstructorCountedCompareESaISt4pairIKS7_iEEEEEEEclEPSH_.exit.i.i

_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_118ConstructorCountedEiNS6_25ConstructorCountedCompareESaISt4pairIKS7_iEEEEEEEclEPSH_.exit.i.i: ; preds = %bb.b
  %i.c = load ptr, ptr %.val, align 8, !tbaa !816
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val) #37, !inline_history !17382
  br label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_118ConstructorCountedEiNS8_25ConstructorCountedCompareESaISt4pairIKS9_iEEEEEESt14default_deleteISJ_EEED2Ev.exit

_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_118ConstructorCountedEiNS8_25ConstructorCountedCompareESaISt4pairIKS9_iEEEEEESt14default_deleteISJ_EEED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_118ConstructorCountedEiNS6_25ConstructorCountedCompareESaISt4pairIKS7_iEEEEEEEclEPSH_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_118ConstructorCountedEiNS8_25ConstructorCountedCompareESaISt4pairIKS9_iEEEEEESt14default_deleteISJ_EEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE16internal_emplaceIJRKSt4pairIiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EERSA_IKS5_iEPSI_EESL_DpOT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, i32 %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.3448", align 8 ; 6 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 11
  %.val = load i8, ptr %i.b, align 1, !tbaa !813  ; 2 uses
  %.not.i = icmp eq i8 %.val, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert16 = getelementptr i8, ptr %1, i64 10
  %.val5.pre = load i8, ptr %.phi.trans.insert16, align 1, !tbaa !813
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.d = and i32 %2, 255
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %.11727.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !2316 ; 3 uses
  %i.g = getelementptr i8, ptr %.11727.i.i.i, i64 11
  %.117.val2128.i.i.i = load i8, ptr %i.g, align 1, !tbaa !813 ; 2 uses
  %.not.i29.i.i.i = icmp eq i8 %.117.val2128.i.i.i, 0
  br i1 %.not.i29.i.i.i, label %.lr.ph31.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS5_25ConstructorCountedCompareEEEEEERSt4pairIKS6_iEPSC_EmmEv.exit

.lr.ph31.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph31.i.i.i
  %.11730.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph31.i.i.i ], [ %.11727.i.i.i, %.thread.i.i ] ; 2 uses
  %i.h = getelementptr i8, ptr %.11730.i.i.i, i64 10
  %.117.val18.i.i.i = load i8, ptr %i.h, align 1, !tbaa !813
  %i.i = getelementptr inbounds nuw i8, ptr %.11730.i.i.i, i64 256
  %i.j = zext i8 %.117.val18.i.i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %.117.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !2316 ; 3 uses
  %i.l = getelementptr i8, ptr %.117.i.i.i, i64 11
  %.117.val21.i.i.i = load i8, ptr %i.l, align 1, !tbaa !813 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.117.val21.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph31.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS5_25ConstructorCountedCompareEEEEEERSt4pairIKS6_iEPSC_EmmEv.exit, !llvm.loop !619

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS5_25ConstructorCountedCompareEEEEEERSt4pairIKS6_iEPSC_EmmEv.exit: ; preds = %.lr.ph31.i.i.i, %.thread.i.i
  %.val4.pre = phi i8 [ %.117.val2128.i.i.i, %.thread.i.i ], [ %.117.val21.i.i.i, %.lr.ph31.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11727.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph31.i.i.i ] ; 3 uses
  %i.m = getelementptr i8, ptr %.117.lcssa.i.i.i, i64 10
  %.117.val.i.i.i = load i8, ptr %i.m, align 1, !tbaa !813 ; 2 uses
  %i.n = zext i8 %.117.val.i.i.i to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.n, ptr %i.a, align 8, !tbaa !2322
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS5_25ConstructorCountedCompareEEEEEERSt4pairIKS6_iEPSC_EmmEv.exit
  %.val5 = phi i8 [ %.117.val.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS5_25ConstructorCountedCompareEEEEEERSt4pairIKS6_iEPSC_EmmEv.exit ], [ %.val5.pre, %._crit_edge ] ; 3 uses
  %.val4 = phi i8 [ %.val4.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS5_25ConstructorCountedCompareEEEEEERSt4pairIKS6_iEPSC_EmmEv.exit ], [ %.val, %._crit_edge ]
  %i.o = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS5_25ConstructorCountedCompareEEEEEERSt4pairIKS6_iEPSC_EmmEv.exit ], [ %1, %._crit_edge ] ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 10       ; 2 uses
  %i.q = icmp eq i8 %.val5, %.val4
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i8 %.val5, 30
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = shl nuw nsw i8 %.val5, 1
  %i.t = tail call i8 @llvm.umin.i8(i8 %i.s, i8 30) ; 2 uses
  %i.u = shl nuw i8 %i.t, 3
  %i.v = zext i8 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 16
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #35 ; 10 uses
  store ptr %i.x, ptr %i.x, align 8, !tbaa !2316
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  store i8 0, ptr %i.z, align 1, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  store i8 %i.t, ptr %i.aa, align 1, !tbaa !813
  store ptr %i.x, ptr %4, align 8, !tbaa !2323
  %.val13.i.i = load i8, ptr %i.p, align 1, !tbaa !813 ; 3 uses
  %i.ab = zext i8 %.val13.i.i to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ab, 3          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i
  %.not1.i.i.i = icmp eq i8 %.val13.i.i, 0
  br i1 %.not1.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE16internal_emplaceIJRKSt4pairIiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EERSA_IKS5_iEPSI_EESL_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %i.af = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1
  %xtraiter = and i64 %i.ah, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i9.prol.loopexit, label %.lr.ph.i.i.i9.prol

.lr.ph.i.i.i9.prol:                               ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i9.prol
  %.03.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i.i9.prol ], [ %i.ae, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.0122.i.i.i.prol = phi ptr [ %i.ai, %.lr.ph.i.i.i9.prol ], [ %i.ac, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i9.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %.012.val.i.i.i.prol = load i64, ptr %.0122.i.i.i.prol, align 1
  store i64 %.012.val.i.i.i.prol, ptr %.03.i.i.i.prol, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.prol, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i9.prol.loopexit, label %.lr.ph.i.i.i9.prol, !llvm.loop !17383

.lr.ph.i.i.i9.prol.loopexit:                      ; preds = %.lr.ph.i.i.i9.prol, %.lr.ph.preheader.i.i.i
  %.03.i.i.i.unr = phi ptr [ %i.ae, %.lr.ph.preheader.i.i.i ], [ %i.aj, %.lr.ph.i.i.i9.prol ]
  %.0122.i.i.i.unr = phi ptr [ %i.ac, %.lr.ph.preheader.i.i.i ], [ %i.ai, %.lr.ph.i.i.i9.prol ]
  %i.ak = icmp ult i64 %i.af, 56
  br i1 %i.ak, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE16internal_emplaceIJRKSt4pairIiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EERSA_IKS5_iEPSI_EESL_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i9

.lr.ph.i.i.i9:                                    ; preds = %.lr.ph.i.i.i9.prol.loopexit, %.lr.ph.i.i.i9
  %.03.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i9 ], [ %.03.i.i.i.unr, %.lr.ph.i.i.i9.prol.loopexit ] ; 9 uses
  %.0122.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i9 ], [ %.0122.i.i.i.unr, %.lr.ph.i.i.i9.prol.loopexit ] ; 9 uses
  %.012.val.i.i.i = load i64, ptr %.0122.i.i.i, align 1
  store i64 %.012.val.i.i.i, ptr %.03.i.i.i, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8
  %.012.val.i.i.i.1 = load i64, ptr %i.al, align 1
  store i64 %.012.val.i.i.i.1, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 16
  %.012.val.i.i.i.2 = load i64, ptr %i.an, align 1
  store i64 %.012.val.i.i.i.2, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 24
  %.012.val.i.i.i.3 = load i64, ptr %i.ap, align 1
  store i64 %.012.val.i.i.i.3, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 32
  %.012.val.i.i.i.4 = load i64, ptr %i.ar, align 1
  store i64 %.012.val.i.i.i.4, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 40
  %.012.val.i.i.i.5 = load i64, ptr %i.at, align 1
  store i64 %.012.val.i.i.i.5, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 48
  %.012.val.i.i.i.6 = load i64, ptr %i.av, align 1
  store i64 %.012.val.i.i.i.6, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 56
  %.012.val.i.i.i.7 = load i64, ptr %i.ax, align 1
  store i64 %.012.val.i.i.i.7, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 64
  %.not.i.i.i10.7 = icmp eq ptr %i.az, %i.ad
  br i1 %.not.i.i.i10.7, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE16internal_emplaceIJRKSt4pairIiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EERSA_IKS5_iEPSI_EESL_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i9, !llvm.loop !621

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE16internal_emplaceIJRKSt4pairIiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EERSA_IKS5_iEPSI_EESL_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i9.prol.loopexit, %.lr.ph.i.i.i9, %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  store i8 %.val13.i.i, ptr %i.bb, align 2, !tbaa !813
  store i8 0, ptr %i.p, align 1, !tbaa !813
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE16clear_and_deleteEPS8_PSaISt4pairIKS5_iEE(ptr noundef nonnull %i.o)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.bc, align 8, !tbaa !2316
  store ptr %i.x, ptr %0, align 8, !tbaa !2316
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS7_EERSt4pairIKS5_iEPSE_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE16internal_emplaceIJRKSt4pairIiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EERSA_IKS5_iEPSI_EESL_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.bd = load ptr, ptr %4, align 8, !tbaa !2323  ; 5 uses
  %i.be = load i32, ptr %i.a, align 8, !tbaa !2322 ; 3 uses
  %i.bf = trunc i32 %i.be to i8                   ; 2 uses
  %i.bg = and i32 %i.be, 255                      ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bd, i64 10     ; 3 uses
  %.val21.i = load i8, ptr %i.bh, align 1, !tbaa !813 ; 2 uses
  %i.bi = icmp ugt i8 %.val21.i, %i.bf
  %i.bj = zext nneg i32 %i.bg to i64              ; 2 uses
  br i1 %i.bi, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaISt4pairIKS5_iEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %narrow.i = sub nuw i8 %.val21.i, %i.bf
  %i.bm = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.bm, 3
  %i.bn = getelementptr i8, ptr %i.bl, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.bl, i64 %.idx.i.i, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaISt4pairIKS5_iEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaISt4pairIKS5_iEE.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %.val23.i = load i32, ptr %3, align 4, !tbaa !1024
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.val24.i = load i32, ptr %i.bo, align 4, !tbaa !1027
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bj ; 2 uses
  store i32 %.val23.i, ptr %i.bq, align 4, !tbaa !2183
  %i.br = load i32, ptr @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCounted17constructor_callsE, align 4, !tbaa !802
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCounted17constructor_callsE, align 4, !tbaa !802
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %.val24.i, ptr %i.bt, align 4, !tbaa !17387
  %.val19.i = load i8, ptr %i.bh, align 1, !tbaa !813
  %i.bu = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.bu, ptr %i.bh, align 1, !tbaa !813
  %i.bv = getelementptr i8, ptr %i.bd, i64 11
  %.val22.i = load i8, ptr %i.bv, align 1, !tbaa !813
  %.not.i25.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i25.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE13emplace_valueIJRKSt4pairIiiEEEEvhPSaISA_IKS5_iEEDpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaISt4pairIKS5_iEE.exit.i
  %i.bw = zext i8 %i.bu to i32
  %i.bx = add nuw nsw i32 %i.bg, 1                ; 2 uses
  %i.by = icmp samesign ult i32 %i.bx, %i.bw
  br i1 %i.by, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE13emplace_valueIJRKSt4pairIiiEEEEvhPSaISA_IKS5_iEEDpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 256 ; 10 uses
  %i.ca = zext i8 %i.bu to i64                    ; 4 uses
  %i.cb = zext nneg i32 %i.bx to i64
  %5 = and i32 %i.be, 255
  %6 = zext nneg i32 %5 to i64                    ; 2 uses
  %i.cc = xor i64 %6, -1
  %i.cd = add nsw i64 %i.cc, %i.ca
  %i.ce = add nsw i64 %i.ca, -2
  %i.cf = sub nsw i64 %i.ce, %6
  %xtraiter1 = and i64 %i.cd, 3                   ; 2 uses
  %lcmp.mod2.not = icmp eq i64 %xtraiter1, 0
  br i1 %lcmp.mod2.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.cg, %.prol.preheader ], [ %i.ca, %.lr.ph.i ] ; 3 uses
  %prol.iter3 = phi i64 [ %prol.iter3.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.cg = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2316 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.prol
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !2316
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !813
  %prol.iter3.next = add i64 %prol.iter3, 1       ; 2 uses
  %prol.iter3.cmp.not = icmp eq i64 %prol.iter3.next, %xtraiter1
  br i1 %prol.iter3.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !17384

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.ca, %.lr.ph.i ], [ %i.cg, %.prol.preheader ]
  %i.cm = icmp ult i64 %i.cf, 3
  br i1 %i.cm, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE13emplace_valueIJRKSt4pairIiiEEEEvhPSaISA_IKS5_iEEDpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.df, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.cn = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !2316 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !2316
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = trunc nuw i64 %indvars.iv to i8
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !813
  %i.ct = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !2316 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cn
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !2316
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = trunc nuw i64 %i.cn to i8
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !813
  %i.cz = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !2316 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ct
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !2316
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = trunc nuw i64 %i.ct to i8
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !813
  %i.df = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !2316 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cz
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !2316
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = trunc nuw i64 %i.cz to i8
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.df, %i.cb
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE13emplace_valueIJRKSt4pairIiiEEEEvhPSaISA_IKS5_iEEDpOT_.exit, !llvm.loop !17385

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE13emplace_valueIJRKSt4pairIiiEEEEvhPSaISA_IKS5_iEEDpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaISt4pairIKS5_iEE.exit.i, %bb.g
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !2295
  %i.dn = add i64 %i.dm, 1
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !2295
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS7_EERSt4pairIKS5_iEPSE_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.3448", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !2316   ; 14 uses
  %.val100 = load ptr, ptr %i.b, align 8, !tbaa !2316 ; 7 uses
  %.val98 = load ptr, ptr %0, align 8, !tbaa !2294
  %.not = icmp eq ptr %i.b, %.val98
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val108 = load i8, ptr %i.c, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val108, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val108, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val100, i64 256
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2316 ; 11 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 7 uses
  %.val118 = load i8, ptr %i.i, align 1, !tbaa !813 ; 4 uses
  %i.j = icmp ult i8 %.val118, 30
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 30, %.val118
  %i.k = load i32, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %i.l = and i32 %i.k, 254
  %i.m = icmp samesign ult i32 %i.l, 30
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n                    ; 2 uses
  %.sroa.speculated151 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 9 uses
  %i.p = and i32 %i.k, 255
  %i.q = zext nneg i8 %.sroa.speculated151 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.p, %i.q
  %narrow164 = add nuw nsw i8 %.sroa.speculated151, %.val118
  %i.r = icmp samesign ult i8 %narrow164, 30
  %or.cond = select i1 %.not85, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i8 %.val118 to i64
  %i.t = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val52.i = load i8, ptr %i.t, align 1, !tbaa !813
  %i.u = zext i8 %.val52.i to i64                 ; 2 uses
  %.val50.i = load ptr, ptr %i.h, align 8, !tbaa !2316 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val50.i, i64 12
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u
  %.val.i.i = load i64, ptr %i.y, align 1
  store i64 %.val.i.i, ptr %i.w, align 1
  %i.z = add nsw i32 %i.q, -1                     ; 2 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %i.aa, 3            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.z, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ad = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.03.i.pn.i.prol = phi ptr [ %.03.i.i.prol, %.lr.ph.i.i.prol ], [ %i.w, %.lr.ph.i.i.preheader ]
  %.0122.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.prol ], [ %i.ab, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %.03.i.i.prol = getelementptr inbounds nuw i8, ptr %.03.i.pn.i.prol, i64 8 ; 3 uses
  %.012.val.i.i.prol = load i64, ptr %.0122.i.i.prol, align 1
  store i64 %.012.val.i.i.prol, ptr %.03.i.i.prol, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.0122.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !17388

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.03.i.pn.i.unr = phi ptr [ %i.w, %.lr.ph.i.i.preheader ], [ %.03.i.i.prol, %.lr.ph.i.i.prol ]
  %.0122.i.i.unr = phi ptr [ %i.ab, %.lr.ph.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.prol ]
  %i.ah = icmp ult i64 %i.ad, 56
  br i1 %i.ah, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i.7, %.lr.ph.i.i ], [ %.03.i.pn.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0122.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.0122.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8
  %.012.val.i.i = load i64, ptr %.0122.i.i, align 1
  store i64 %.012.val.i.i, ptr %.03.i.i, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8
  %.03.i.i.1 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 16
  %.012.val.i.i.1 = load i64, ptr %i.ai, align 1
  store i64 %.012.val.i.i.1, ptr %.03.i.i.1, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 16
  %.03.i.i.2 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 24
  %.012.val.i.i.2 = load i64, ptr %i.aj, align 1
  store i64 %.012.val.i.i.2, ptr %.03.i.i.2, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 24
  %.03.i.i.3 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 32
  %.012.val.i.i.3 = load i64, ptr %i.ak, align 1
  store i64 %.012.val.i.i.3, ptr %.03.i.i.3, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 32
  %.03.i.i.4 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 40
  %.012.val.i.i.4 = load i64, ptr %i.al, align 1
  store i64 %.012.val.i.i.4, ptr %.03.i.i.4, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 40
  %.03.i.i.5 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 48
  %.012.val.i.i.5 = load i64, ptr %i.am, align 1
  store i64 %.012.val.i.i.5, ptr %.03.i.i.5, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 48
  %.03.i.i.6 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 56
  %.012.val.i.i.6 = load i64, ptr %i.an, align 1
  store i64 %.012.val.i.i.6, ptr %.03.i.i.6, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 56
  %.03.i.i.7 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 64 ; 2 uses
  %.012.val.i.i.7 = load i64, ptr %i.ao, align 1
  store i64 %.012.val.i.i.7, ptr %.03.i.i.7, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 64 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.ap, %i.ac
  br i1 %.not.i.i.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !621

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val49.pre.i = load ptr, ptr %i.h, align 8, !tbaa !2316
  %.val51.pre.i = load i8, ptr %i.t, align 8, !tbaa !813
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE13insert_uniqueIiJRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS6_EERSG_IKiiEPSL_EEbERKT_DpOT0_:bb.a
  %.not.i21 = icmp eq i8 %i.ai, 0
  br i1 %.not.i21, label %bb.g, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSE_EEEET_SI_.exit.thread, !llvm.loop !18271

bb.i:                                             ; preds = %bb.g
  %i.aj = sext i32 %.sroa.7.0.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i18, i64 12
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !1415
  %i.an = load i32, ptr %2, align 4, !tbaa !802
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !802
  %i.ap = tail call noundef zeroext i1 %i.am(i32 noundef %i.an, i32 noundef %i.ao), !inline_history !18272
  br i1 %i.ap, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSE_EEEET_SI_.exit.thread, label %.critedge

_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSE_EEEET_SI_.exit.thread: ; preds = %bb.h, %bb.i
  %i.aq = tail call { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSL_EESO_DpOT_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.0.0.i, i32 %i.y, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.aq, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.aq, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSE_EEEET_SI_.exit.thread
  %.sroa.0.0.i18.lcssa.sink = phi ptr [ %.fca.0.extract, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSE_EEEET_SI_.exit.thread ], [ %.sroa.0.0.i18, %bb.i ]
  %.sroa.7.0.i.lcssa.sink = phi i32 [ %.fca.1.extract, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSE_EEEET_SI_.exit.thread ], [ %.sroa.7.0.i, %bb.i ]
  %.sink = phi i8 [ 1, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSE_EEEET_SI_.exit.thread ], [ 0, %bb.i ]
  store ptr %.sroa.0.0.i18.lcssa.sink, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.0.i.lcssa.sink, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ar, align 8, !tbaa !18274
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSL_EESO_DpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i32 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.3763", align 8 ; 7 uses
  store ptr %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !813   ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre15 = load i8, ptr %.phi.trans.insert14, align 1, !tbaa !813
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !2464 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !813   ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEEERSt4pairIKiiEPSB_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !813
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 256
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !2464 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !813   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEEERSt4pairIKiiEPSB_EmmEv.exit, !llvm.loop !18275

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEEERSt4pairIKiiEPSB_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !813   ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %6, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !2439
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEEERSt4pairIKiiEPSB_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEEERSt4pairIKiiEPSB_EmmEv.exit ], [ %.pre15, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEEERSt4pairIKiiEPSB_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEEERSt4pairIKiiEPSB_EmmEv.exit ], [ %1, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 2 uses
  %i.y = icmp eq i8 %i.t, %i.u
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult i8 %i.t, 30
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i8 %i.t, 1
  %i.ab = tail call i8 @llvm.umin.i8(i8 %i.aa, i8 30) ; 2 uses
  %i.ac = shl nuw i8 %i.ab, 3
  %i.ad = zext i8 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 16
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #35 ; 11 uses
  store ptr %i.af, ptr %i.af, align 8, !tbaa !2464
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !813
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !813
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  store i8 %i.ab, ptr %i.ai, align 1, !tbaa !813
  store ptr %i.af, ptr %6, align 8, !tbaa !2440
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !813  ; 3 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ak, 3          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSL_EESO_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %i.ao = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1
  %xtraiter = and i64 %i.aq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i6.prol.loopexit, label %.lr.ph.i.i.i6.prol

.lr.ph.i.i.i6.prol:                               ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i6.prol
  %.015.i.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.i6.prol ], [ %i.an, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01214.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i6.prol ], [ %i.al, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i6.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.ar = load i64, ptr %.01214.i.i.i.prol, align 1
  store i64 %i.ar, ptr %.015.i.i.i.prol, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.prol, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i6.prol.loopexit, label %.lr.ph.i.i.i6.prol, !llvm.loop !18276

.lr.ph.i.i.i6.prol.loopexit:                      ; preds = %.lr.ph.i.i.i6.prol, %.lr.ph.preheader.i.i.i
  %.015.i.i.i.unr = phi ptr [ %i.an, %.lr.ph.preheader.i.i.i ], [ %i.at, %.lr.ph.i.i.i6.prol ]
  %.01214.i.i.i.unr = phi ptr [ %i.al, %.lr.ph.preheader.i.i.i ], [ %i.as, %.lr.ph.i.i.i6.prol ]
  %i.au = icmp ult i64 %i.ao, 56
  br i1 %i.au, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSL_EESO_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %.lr.ph.i.i.i6.prol.loopexit, %.lr.ph.i.i.i6
  %.015.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i6 ], [ %.015.i.i.i.unr, %.lr.ph.i.i.i6.prol.loopexit ] ; 9 uses
  %.01214.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i6 ], [ %.01214.i.i.i.unr, %.lr.ph.i.i.i6.prol.loopexit ] ; 9 uses
  %i.av = load i64, ptr %.01214.i.i.i, align 1
  store i64 %i.av, ptr %.015.i.i.i, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 8
  %i.ay = load i64, ptr %i.aw, align 1
  store i64 %i.ay, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16
  %i.bb = load i64, ptr %i.az, align 1
  store i64 %i.bb, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 24
  %i.be = load i64, ptr %i.bc, align 1
  store i64 %i.be, ptr %i.bd, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 32
  %i.bh = load i64, ptr %i.bf, align 1
  store i64 %i.bh, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 40
  %i.bk = load i64, ptr %i.bi, align 1
  store i64 %i.bk, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 48
  %i.bn = load i64, ptr %i.bl, align 1
  store i64 %i.bn, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 56
  %i.bq = load i64, ptr %i.bo, align 1
  store i64 %i.bq, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 64
  %.not.i.i.i7.7 = icmp eq ptr %i.br, %i.am
  br i1 %.not.i.i.i7.7, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSL_EESO_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i6, !llvm.loop !651

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSL_EESO_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i6.prol.loopexit, %.lr.ph.i.i.i6, %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  store i8 %i.aj, ptr %i.bt, align 2, !tbaa !813
  store i8 0, ptr %i.x, align 1, !tbaa !813
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEE16clear_and_deleteEPS7_PSaISt4pairIKiiEE(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %i.bu, align 8, !tbaa !2464
  store ptr %i.af, ptr %0, align 8, !tbaa !2464
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSD_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %6)
  %.pre16 = load ptr, ptr %6, align 8, !tbaa !2440
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSL_EESO_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.bv = phi ptr [ %i.af, %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSL_EESO_DpOT_ENKUlhE_clEh.exit ], [ %.pre16, %bb.e ], [ %i.v, %bb.b ] ; 5 uses
  %i.bw = load i32, ptr %i.a, align 8, !tbaa !2439 ; 3 uses
  %i.bx = trunc i32 %i.bw to i8                   ; 2 uses
  %i.by = and i32 %i.bw, 255                      ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 10 ; 3 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !813 ; 3 uses
  %i.cb = icmp ugt i8 %i.ca, %i.bx
  %i.cc = zext nneg i32 %i.by to i64              ; 2 uses
  br i1 %i.cb, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKiiEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %i.cc ; 2 uses
  %narrow.i = sub nuw i8 %i.ca, %i.bx
  %i.cf = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.cf, 3
  %i.cg = getelementptr i8, ptr %i.ce, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.ce, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.bz, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKiiEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKiiEE.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %i.ch = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.ca, %bb.f ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cc ; 2 uses
  %i.ck = load i64, ptr %4, align 8, !tbaa !869
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !802
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !1024
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 0, ptr %i.cn, align 4, !tbaa !1027
  %i.co = add i8 %i.ch, 1                         ; 3 uses
  store i8 %i.co, ptr %i.bz, align 1, !tbaa !813
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bv, i64 11
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !813
  %.not.i20.i = icmp eq i8 %i.cq, 0
  br i1 %.not.i20.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEEvhPSaISt4pairIKiiEEDpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKiiEE.exit.i
  %i.cr = zext i8 %i.co to i32
  %i.cs = add nuw nsw i32 %i.by, 1                ; 2 uses
  %i.ct = icmp samesign ult i32 %i.cs, %i.cr
  br i1 %i.ct, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEEvhPSaISt4pairIKiiEEDpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bv, i64 256 ; 10 uses
  %i.cv = zext i8 %i.co to i64                    ; 4 uses
  %i.cw = zext nneg i32 %i.cs to i64
  %.mask = and i32 %i.bw, 255
  %7 = zext nneg i32 %.mask to i64                ; 2 uses
  %i.cx = xor i64 %7, -1
  %i.cy = add nsw i64 %i.cx, %i.cv
  %i.cz = add nsw i64 %i.cv, -2
  %i.da = sub nsw i64 %i.cz, %7
  %xtraiter24 = and i64 %i.cy, 3                  ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.db, %.prol.preheader ], [ %i.cv, %.lr.ph.i ] ; 3 uses
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.db = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !2464 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.prol
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !2464
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !813
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !18277

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.cv, %.lr.ph.i ], [ %i.db, %.prol.preheader ]
  %i.dh = icmp ult i64 %i.da, 3
  br i1 %i.dh, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEEvhPSaISt4pairIKiiEEDpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.ea, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.di = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !2464 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !2464
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = trunc nuw i64 %indvars.iv to i8
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !813
  %i.do = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !2464 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.di
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !2464
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dt = trunc nuw i64 %i.di to i8
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !813
  %i.du = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !2464 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.do
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !2464
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = trunc nuw i64 %i.do to i8
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !813
  %i.ea = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !2464 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.du
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !2464
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = trunc nuw i64 %i.du to i8
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.ea, %i.cw
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEEvhPSaISt4pairIKiiEEDpOT_.exit, !llvm.loop !18278

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEEvhPSaISt4pairIKiiEEDpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKiiEE.exit.i, %bb.g
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !2437
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !2437
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSD_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.3763", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !2464   ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2464 ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !2436
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !813   ; 5 uses
  %.not112 = icmp eq i8 %i.f, 0
  br i1 %.not112, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i8 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2464 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !813   ; 3 uses
  %i.n = icmp ult i8 %i.m, 30
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 30, %i.m
  %i.o = load i32, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %i.p = and i32 %i.o, 254
  %i.q = icmp samesign ult i32 %i.p, 30
  %i.r = zext i1 %i.q to i8
  %i.s = lshr i8 %narrow, %i.r
  %.sroa.speculated99 = tail call i8 @llvm.umax.i8(i8 %i.s, i8 1) ; 3 uses
  %i.t = and i32 %i.o, 255
  %i.u = zext nneg i8 %.sroa.speculated99 to i32  ; 2 uses
  %.not84 = icmp samesign uge i32 %i.t, %i.u
  %narrow113 = add nuw nsw i8 %.sroa.speculated99, %i.m
  %i.v = icmp samesign ult i8 %narrow113, 30
  %or.cond = select i1 %.not84, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEE23rebalance_right_to_leftEhPS7_PSaISt4pairIKiiEE(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext %.sroa.speculated99, ptr noundef nonnull %i.b, ptr noundef nonnull %i.w)
  %i.x = load i32, ptr %i.a, align 8, !tbaa !802
  %i.y = and i32 %i.x, 255
  %i.z = sub nsw i32 %i.y, %i.u                   ; 3 uses
  store i32 %i.z, ptr %i.a, align 8, !tbaa !802
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ab = load i8, ptr %i.l, align 1, !tbaa !813
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.z, 1
  %i.ae = add nsw i32 %i.ad, %i.ac
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !813 ; 2 uses
  %i.ah = icmp ult i8 %i.f, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ai = add nuw i8 %i.f, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.ak = zext i8 %i.ai to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2464 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !813 ; 3 uses
  %i.ap = icmp ult i8 %i.ao, 30
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %narrow114 = sub nuw nsw i8 30, %i.ao
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !802 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i8
  %i.at = lshr i8 %narrow114, %i.as
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.at, i8 1) ; 3 uses
  %i.au = and i32 %i.aq, 255
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !813
  %i.ax = zext i8 %i.aw to i32
  %i.ay = zext nneg i8 %.sroa.speculated to i32
  %i.az = sub nsw i32 %i.ax, %i.ay
  %.not85 = icmp sle i32 %i.au, %i.az
  %narrow115 = add nuw nsw i8 %.sroa.speculated, %i.ao
  %i.ba = icmp samesign ult i8 %narrow115, 30
  %or.cond111 = select i1 %.not85, i1 true, i1 %i.ba
  br i1 %or.cond111, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEE23rebalance_left_to_rightEhPS7_PSaISt4pairIKiiEE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.am, ptr noundef nonnull %i.bb)
  %i.bc = load i32, ptr %i.a, align 8, !tbaa !802 ; 2 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !2464
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 10
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !813
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = icmp sgt i32 %i.bc, %i.bg
  br i1 %i.bh, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bi = xor i32 %i.bg, -1
  %i.bj = add nsw i32 %i.bc, %i.bi
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bk = icmp eq i8 %i.ag, 30
  br i1 %i.bk, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.bl = zext i8 %i.f to i32
  store ptr %i.c, ptr %2, align 8, !tbaa !2440
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !2439
  call void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJPFbiiEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSD_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %2)
  %i.bn = load ptr, ptr %1, align 8, !tbaa !2464  ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !2464
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
end_hunk_9
