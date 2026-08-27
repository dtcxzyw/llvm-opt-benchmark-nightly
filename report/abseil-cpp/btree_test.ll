Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/btree_test?download=true
inline.NumInlined: 114243
inline.NumDeleted: 30281
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 644
loop-unroll.NumUnrolled: 782
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeIS6_EERKS5_PSB_EE:bb.a
  %i.at = icmp eq i8 %i.ah, 0
  br i1 %i.at, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !8141
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.k, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE11merge_nodesEPNS1_10btree_nodeIS6_EESA_.exit53

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = sub nsw i32 %i.am, %i.ai
  %.lhs.trunc = trunc nsw i32 %i.ax to i16
  %i.ay = sdiv i16 %.lhs.trunc, 2
  %i.az = trunc nsw i16 %i.ay to i8
  %i.ba = add i8 %i.al, -1
  %.sroa.speculated59 = tail call i8 @llvm.umin.i8(i8 %i.ba, i8 %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE23rebalance_right_to_leftEhPS7_PSaIS5_E(ptr noundef nonnull align 1 dereferenceable(1) %i.a, i8 noundef zeroext %.sroa.speculated59, ptr noundef nonnull %i.af, ptr noundef nonnull %i.bb)
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE11merge_nodesEPNS1_10btree_nodeIS6_EESA_.exit53.thread

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE11merge_nodesEPNS1_10btree_nodeIS6_EESA_.exit53: ; preds = %bb.j, %bb.h, %.critedge
  br i1 %.not, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE11merge_nodesEPNS1_10btree_nodeIS6_EESA_.exit53.thread, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE11merge_nodesEPNS1_10btree_nodeIS6_EESA_.exit53
  %i.bc = add i8 %i.d, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.be = zext i8 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !8136 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !23  ; 3 uses
  %i.bj = icmp ugt i8 %i.bi, 15
  br i1 %i.bj, label %bb.m, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE11merge_nodesEPNS1_10btree_nodeIS6_EESA_.exit53.thread

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !23  ; 3 uses
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !8141
  %i.bp = zext i8 %i.bl to i32
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.o, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE11merge_nodesEPNS1_10btree_nodeIS6_EESA_.exit53.thread

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.br = zext i8 %i.bi to i16
  %i.bs = zext i8 %i.bl to i16
  %.lhs.trunc68 = sub nsw i16 %i.br, %i.bs
  %i.bt = sdiv i16 %.lhs.trunc68, 2
  %i.bu = trunc nsw i16 %i.bt to i8
  %i.bv = add i8 %i.bi, -1
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %i.bv, i8 %i.bu) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE23rebalance_left_to_rightEhPS7_PSaIS5_E(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bw)
  %i.bx = zext i8 %.sroa.speculated to i32
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !8141
  %i.ca = add nsw i32 %i.bz, %i.bx
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !8141
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE11merge_nodesEPNS1_10btree_nodeIS6_EESA_.exit53.thread

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE11merge_nodesEPNS1_10btree_nodeIS6_EESA_.exit53.thread: ; preds = %bb.l, %bb.n, %bb.g, %bb.f, %bb.k, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE11merge_nodesEPNS1_10btree_nodeIS6_EESA_.exit53, %bb.o, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE11merge_nodesEPNS1_10btree_nodeIS6_EESA_.exit
  %.5 = phi i1 [ true, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE11merge_nodesEPNS1_10btree_nodeIS6_EESA_.exit ], [ false, %bb.o ], [ false, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE11merge_nodesEPNS1_10btree_nodeIS6_EESA_.exit53 ], [ false, %bb.k ], [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.n ], [ false, %bb.l ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE5mergeEPS7_PSaIS5_E(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !23
  %i.c = load ptr, ptr %0, align 8, !tbaa !8136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !23
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = zext i8 %i.b to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %i.l = load i32, ptr %i.h, align 4, !tbaa !8133
  store i32 %i.l, ptr %i.k, align 4, !tbaa !8133
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !8135, !range !66, !noundef !67
  store i8 %i.o, ptr %i.m, align 4, !tbaa !8135
  store i8 0, ptr %i.n, align 4, !tbaa !8135
  %i.p = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !9 ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !9
  %i.r = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !9 ; 2 uses
  %i.s = add nsw i32 %i.r, 1                      ; 2 uses
  store i32 %i.s, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23    ; 2 uses
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.v, 3               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.u, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.y = load i8, ptr %i.a, align 2, !tbaa !23
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.z ; 3 uses
  %i.ab = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.ac = and i64 %i.ab, 8
  %lcmp.mod.not.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %.015.i.prol = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.w, align 4, !tbaa !8133
  store i32 %i.ad, ptr %.015.i.prol, align 4, !tbaa !8133
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !8135, !range !66, !noundef !67
  store i8 %i.ag, ptr %i.ae, align 4, !tbaa !8135
  store i8 0, ptr %i.af, align 4, !tbaa !8135
  %i.ah = add nsw i32 %i.r, 2                     ; 2 uses
  store i32 %i.ah, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.unr = phi i32 [ %i.s, %.lr.ph.preheader.i ], [ %i.ah, %.lr.ph.i.prol ]
  %.015.i.pn.unr = phi ptr [ %i.aa, %.lr.ph.preheader.i ], [ %.015.i.prol, %.lr.ph.i.prol ]
  %.01214.i.unr = phi ptr [ %i.w, %.lr.ph.preheader.i ], [ %i.ai, %.lr.ph.i.prol ]
  %i.aj = icmp eq i64 %i.ab, 0
  br i1 %i.aj, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ak = phi i32 [ %i.av, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.015.i.pn = phi ptr [ %.015.i.1, %.lr.ph.i ], [ %.015.i.pn.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01214.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 8
  %i.al = load i32, ptr %.01214.i, align 4, !tbaa !8133
  store i32 %i.al, ptr %.015.i, align 4, !tbaa !8133
  %i.am = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !8135, !range !66, !noundef !67
  store i8 %i.ao, ptr %i.am, align 4, !tbaa !8135
  store i8 0, ptr %i.an, align 4, !tbaa !8135
  %i.ap = add nsw i32 %i.ak, 1
  store i32 %i.ap, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %.015.i.1 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 16 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8133
  store i32 %i.ar, ptr %.015.i.1, align 4, !tbaa !8133
  %i.as = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 20
  %i.at = getelementptr inbounds nuw i8, ptr %.01214.i, i64 12 ; 2 uses
  %i.au = load i8, ptr %i.at, align 4, !tbaa !8135, !range !66, !noundef !67
  store i8 %i.au, ptr %i.as, align 4, !tbaa !8135
  store i8 0, ptr %i.at, align 4, !tbaa !8135
  %i.av = add nsw i32 %i.ak, 2                    ; 2 uses
  store i32 %i.av, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.aw, %i.x
  br i1 %.not.i.1, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit, label %.lr.ph.i, !llvm.loop !8221

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !23
  %.not.i20 = icmp eq i8 %i.ay, 0
  br i1 %.not.i20, label %bb.b, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit..loopexit_crit_edge

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit..loopexit_crit_edge: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit
  %.pre = load i8, ptr %i.t, align 1, !tbaa !23
  br label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit
  %i.az = load i8, ptr %i.a, align 2, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.0.in24 = phi i8 [ %i.az, %bb.b ], [ %.0, %bb.c ]
  %.01923 = phi i8 [ 0, %bb.b ], [ %i.bi, %bb.c ] ; 2 uses
  %.0 = add i8 %.0.in24, 1                        ; 3 uses
  %i.bc = zext i8 %.01923 to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8136 ; 3 uses
  %i.bf = zext i8 %.0 to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bf
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !8136
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i8 %.0, ptr %i.bh, align 1, !tbaa !23
  store ptr %0, ptr %i.be, align 8, !tbaa !8136
  %i.bi = add i8 %.01923, 1                       ; 2 uses
  %i.bj = load i8, ptr %i.t, align 1, !tbaa !23   ; 2 uses
  %.not = icmp ugt i8 %i.bi, %i.bj
  br i1 %.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !11144

.loopexit.loopexit:                               ; preds = %bb.c
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.pre = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  %i.bk = add i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.pre, -1
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit..loopexit_crit_edge, %.loopexit.loopexit
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i = phi i32 [ %i.p, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit..loopexit_crit_edge ], [ %i.bk, %.loopexit.loopexit ]
  %i.bl = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit..loopexit_crit_edge ], [ %i.bj, %.loopexit.loopexit ]
  %i.bm = load i8, ptr %i.a, align 2, !tbaa !23
  %i.bn = add i8 %i.bm, 1
  %i.bo = add i8 %i.bn, %i.bl
  store i8 %i.bo, ptr %i.a, align 2, !tbaa !23
  store i8 0, ptr %i.t, align 1, !tbaa !23
  %i.bp = load ptr, ptr %0, align 8, !tbaa !8136  ; 4 uses
  %i.bq = load i8, ptr %i.d, align 8, !tbaa !23   ; 3 uses
  %i.br = zext i8 %i.bq to i64                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 12 ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i8, ptr %i.bu, align 4, !tbaa !8135, !range !66, !noundef !67
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.d, label %_ZN4absl12lts_2026052618container_internal20common_policy_traitsINS1_15set_slot_policyINS0_13test_internal19MovableOnlyInstanceEEEvE7destroyISaIS5_EEEDaPT_PS5_.exit.i.i

bb.d:                                             ; preds = %.loopexit
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %i.bx = add nsw i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i, -1
  store i32 %i.bx, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !9
  br label %_ZN4absl12lts_2026052618container_internal20common_policy_traitsINS1_15set_slot_policyINS0_13test_internal19MovableOnlyInstanceEEEvE7destroyISaIS5_EEEDaPT_PS5_.exit.i.i

_ZN4absl12lts_2026052618container_internal20common_policy_traitsINS1_15set_slot_policyINS0_13test_internal19MovableOnlyInstanceEEEvE7destroyISaIS5_EEEDaPT_PS5_.exit.i.i: ; preds = %bb.d, %.loopexit
  store i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 10 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !23  ; 4 uses
  %i.ca = zext i8 %i.bq to i32
  %i.cb = add nuw nsw i32 %i.ca, 1                ; 2 uses
  %i.cc = zext i8 %i.bz to i32                    ; 2 uses
  %i.cd = and i32 %i.cb, 255                      ; 3 uses
  %i.ce = sub nsw i32 %i.cc, %i.cd
  %i.cf = sext i32 %i.ce to i64
  %i.cg = zext nneg i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cg ; 2 uses
  %.idx.i31.i = shl nuw nsw i64 %i.cf, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i31.i
  %.not13.i.i = icmp eq i32 %i.cd, %i.cc
  br i1 %.not13.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.i, label %.lr.ph.preheader.i32.i

.lr.ph.preheader.i32.i:                           ; preds = %_ZN4absl12lts_2026052618container_internal20common_policy_traitsINS1_15set_slot_policyINS0_13test_internal19MovableOnlyInstanceEEEvE7destroyISaIS5_EEEDaPT_PS5_.exit.i.i
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  br label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %.lr.ph.i33.i, %.lr.ph.preheader.i32.i
  %.015.i.i = phi ptr [ %i.cr, %.lr.ph.i33.i ], [ %i.cj, %.lr.ph.preheader.i32.i ] ; 3 uses
  %.01214.i.i = phi ptr [ %i.cq, %.lr.ph.i33.i ], [ %i.ch, %.lr.ph.preheader.i32.i ] ; 3 uses
  %i.ck = load i32, ptr %.01214.i.i, align 4, !tbaa !8133
  store i32 %i.ck, ptr %.015.i.i, align 4, !tbaa !8133
  %i.cl = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 4 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !8135, !range !66, !noundef !67
  store i8 %i.cn, ptr %i.cl, align 4, !tbaa !8135
  store i8 0, ptr %i.cm, align 4, !tbaa !8135
  %i.co = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !9
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !9
  %i.cq = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  %.not.i34.i = icmp eq ptr %i.cq, %i.ci
  br i1 %.not.i34.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.i, label %.lr.ph.i33.i, !llvm.loop !8221

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.i: ; preds = %.lr.ph.i33.i, %_ZN4absl12lts_2026052618container_internal20common_policy_traitsINS1_15set_slot_policyINS0_13test_internal19MovableOnlyInstanceEEEvE7destroyISaIS5_EEEDaPT_PS5_.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bp, i64 11
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !23
  %.not.i36.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i36.i, label %.preheader.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE13remove_valuesEhhPSaIS5_E.exit

.preheader.i:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.i
  %i.cu = add i8 %i.bq, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bp, i64 256 ; 3 uses
  %i.cw = zext i8 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !8136
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE16clear_and_deleteEPS7_PSaIS5_E(ptr noundef %i.cy, ptr noundef %2)
  %i.cz = trunc i32 %i.cb to i8
  %.038.i = add i8 %i.cz, 1                       ; 2 uses
  %.not39.i = icmp ugt i8 %.038.i, %i.bz
  br i1 %.not39.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE13remove_valuesEhhPSaIS5_E.exit, label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.preheader.i, %.lr.ph42.i
  %.040.i = phi i8 [ %.0.i, %.lr.ph42.i ], [ %.038.i, %.preheader.i ] ; 3 uses
  %i.da = add i8 %.040.i, -1                      ; 2 uses
  %i.db = zext i8 %.040.i to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !8136 ; 2 uses
  %i.de = zext i8 %i.da to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.de
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !8136
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i8 %i.da, ptr %i.dg, align 1, !tbaa !23
  %.0.i = add i8 %.040.i, 1                       ; 2 uses
  %.not.i22 = icmp ugt i8 %.0.i, %i.bz
  br i1 %.not.i22, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE13remove_valuesEhhPSaIS5_E.exit, label %.lr.ph42.i, !llvm.loop !11145

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE13remove_valuesEhhPSaIS5_E.exit: ; preds = %.lr.ph42.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.i, %.preheader.i
  %i.dh = add i8 %i.bz, -1
  store i8 %i.dh, ptr %i.by, align 1, !tbaa !23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEE18insert_hint_uniqueIS5_JPS5_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS6_EERKS5_PSE_EEbESH_RKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.1239") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i32 %3, ptr noundef nonnull align 4 dereferenceable(5) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8132
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8136 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !23
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = icmp eq ptr %2, %i.e
  %i.j = icmp eq i32 %3, %i.h
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %3 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance16num_comparisons_E, align 4, !tbaa !9 ; 3 uses
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance16num_comparisons_E, align 4, !tbaa !9
  %i.q = load i32, ptr %4, align 4, !tbaa !8133
  %i.r = load i32, ptr %i.n, align 4, !tbaa !8133
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.t = load ptr, ptr %1, align 8, !tbaa !8125
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8136
  %i.v = icmp eq ptr %2, %i.u
  %i.w = icmp eq i32 %3, 0
  %i.x = select i1 %i.v, i1 %i.w, i1 false
  br i1 %i.x, label %.critedge2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.z = load i8, ptr %i.y, align 1, !tbaa !23
  %.not.i.i7.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i7.i, label %.thread.i.i13.i, label %bb.d

bb.d:                                             ; preds = %.preheader.preheader
  %.not.not.i.i.i = icmp sgt i32 %3, 0
  br i1 %.not.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEEERKS6_PS9_EmmEv.exit.i, label %.lr.ph.i.i.i10.i

.lr.ph.i.i.i10.i:                                 ; preds = %bb.d, %bb.e
  %.01621.i.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %2, %bb.d ] ; 2 uses
  %i.aa = load ptr, ptr %.01621.i.i.i.i, align 8, !tbaa !8136 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 11
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !23
  %.not18.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not18.i.i.i.i, label %bb.e, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJEEEEERKS6_PS9_EmmEv.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i10.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.01621.i.i.i.i, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !23  ; 2 uses
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i10.i, label %.critedge.i.i.i11.i, !llvm.loop !8240

.thread.i.i13.i:                                  ; preds = %.preheader.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.ah = and i32 %3, 255
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai
  %.11723.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !8136 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.11723.i.i.i.i, i64 11
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !23
  %.not.i24.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i24.i.i.i.i, label %.lr.ph26.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph26.i.i.i.i:                                 ; preds = %.thread.i.i13.i, %.lr.ph26.i.i.i.i
  %.11725.i.i.i.i = phi ptr [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ], [ %.11723.i.i.i.i, %.thread.i.i13.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 10
  %i.an = load i8, ptr %i.am, align 1, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 256
  %i.ap = zext i8 %i.an to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %.117.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !8136 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.117.i.i.i.i, i64 11
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !23
  %.not.i.i.i.i14.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i14.i, label %.lr.ph26.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !8220

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph26.i.i.i.i, %.thread.i.i13.i
  %.117.lcssa.i.i.i.i = phi ptr [ %.11723.i.i.i.i, %.thread.i.i13.i ], [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i, i64 10
  %i.au = load i8, ptr %i.at, align 1, !tbaa !23
  br label %.critedge.i.i.i11.i

.critedge.i.i.i11.i:                              ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.lcssa8.sink.i.i.i = phi i8 [ %i.au, %._crit_edge.i.i.i.i ], [ %i.ae, %bb.e ]
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISC_EERKS5_PSH_EE:bb.a
  %i.at = icmp eq i8 %i.ah, 0
  br i1 %i.at, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !8251
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.k, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE11merge_nodesEPNS1_10btree_nodeISC_EESG_.exit53

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = sub nsw i32 %i.am, %i.ai
  %.lhs.trunc = trunc nsw i32 %i.ax to i16
  %i.ay = sdiv i16 %.lhs.trunc, 2
  %i.az = trunc nsw i16 %i.ay to i8
  %i.ba = add i8 %i.al, -1
  %.sroa.speculated59 = tail call i8 @llvm.umin.i8(i8 %i.ba, i8 %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_right_to_leftEhPSD_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.a, i8 noundef zeroext %.sroa.speculated59, ptr noundef nonnull %i.af, ptr noundef nonnull %i.bb)
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE11merge_nodesEPNS1_10btree_nodeISC_EESG_.exit53.thread

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE11merge_nodesEPNS1_10btree_nodeISC_EESG_.exit53: ; preds = %bb.j, %bb.h, %.critedge
  br i1 %.not, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE11merge_nodesEPNS1_10btree_nodeISC_EESG_.exit53.thread, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE11merge_nodesEPNS1_10btree_nodeISC_EESG_.exit53
  %i.bc = add i8 %i.d, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.be = zext i8 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !8152 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !23  ; 3 uses
  %i.bj = icmp ugt i8 %i.bi, 15
  br i1 %i.bj, label %bb.m, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE11merge_nodesEPNS1_10btree_nodeISC_EESG_.exit53.thread

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !23  ; 3 uses
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !8251
  %i.bp = zext i8 %i.bl to i32
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.o, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE11merge_nodesEPNS1_10btree_nodeISC_EESG_.exit53.thread

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.br = zext i8 %i.bi to i16
  %i.bs = zext i8 %i.bl to i16
  %.lhs.trunc68 = sub nsw i16 %i.br, %i.bs
  %i.bt = sdiv i16 %.lhs.trunc68, 2
  %i.bu = trunc nsw i16 %i.bt to i8
  %i.bv = add i8 %i.bi, -1
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %i.bv, i8 %i.bu) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_left_to_rightEhPSD_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bw)
  %i.bx = zext i8 %.sroa.speculated to i32
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !8251
  %i.ca = add nsw i32 %i.bz, %i.bx
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !8251
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE11merge_nodesEPNS1_10btree_nodeISC_EESG_.exit53.thread

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE11merge_nodesEPNS1_10btree_nodeISC_EESG_.exit53.thread: ; preds = %bb.l, %bb.n, %bb.g, %bb.f, %bb.k, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE11merge_nodesEPNS1_10btree_nodeISC_EESG_.exit53, %bb.o, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE11merge_nodesEPNS1_10btree_nodeISC_EESG_.exit
  %.5 = phi i1 [ true, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE11merge_nodesEPNS1_10btree_nodeISC_EESG_.exit ], [ false, %bb.o ], [ false, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE11merge_nodesEPNS1_10btree_nodeISC_EESG_.exit53 ], [ false, %bb.k ], [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.n ], [ false, %bb.l ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE5mergeEPSD_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !23
  %i.c = load ptr, ptr %0, align 8, !tbaa !8152
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !23
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = zext i8 %i.b to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %i.l = load i32, ptr %i.h, align 4, !tbaa !8133
  store i32 %i.l, ptr %i.k, align 4, !tbaa !8133
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !8135, !range !66, !noundef !67
  store i8 %i.o, ptr %i.m, align 4, !tbaa !8135
  store i8 0, ptr %i.n, align 4, !tbaa !8135
  %i.p = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !9 ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !9
  %i.r = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !9 ; 2 uses
  %i.s = add nsw i32 %i.r, 1                      ; 2 uses
  store i32 %i.s, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23    ; 2 uses
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.v, 3               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.u, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.y = load i8, ptr %i.a, align 2, !tbaa !23
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.z ; 3 uses
  %i.ab = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.ac = and i64 %i.ab, 8
  %lcmp.mod.not.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %.015.i.prol = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.w, align 4, !tbaa !8133
  store i32 %i.ad, ptr %.015.i.prol, align 4, !tbaa !8133
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !8135, !range !66, !noundef !67
  store i8 %i.ag, ptr %i.ae, align 4, !tbaa !8135
  store i8 0, ptr %i.af, align 4, !tbaa !8135
  %i.ah = add nsw i32 %i.r, 2                     ; 2 uses
  store i32 %i.ah, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.unr = phi i32 [ %i.s, %.lr.ph.preheader.i ], [ %i.ah, %.lr.ph.i.prol ]
  %.015.i.pn.unr = phi ptr [ %i.aa, %.lr.ph.preheader.i ], [ %.015.i.prol, %.lr.ph.i.prol ]
  %.01214.i.unr = phi ptr [ %i.w, %.lr.ph.preheader.i ], [ %i.ai, %.lr.ph.i.prol ]
  %i.aj = icmp eq i64 %i.ab, 0
  br i1 %i.aj, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ak = phi i32 [ %i.av, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.015.i.pn = phi ptr [ %.015.i.1, %.lr.ph.i ], [ %.015.i.pn.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01214.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 8
  %i.al = load i32, ptr %.01214.i, align 4, !tbaa !8133
  store i32 %i.al, ptr %.015.i, align 4, !tbaa !8133
  %i.am = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !8135, !range !66, !noundef !67
  store i8 %i.ao, ptr %i.am, align 4, !tbaa !8135
  store i8 0, ptr %i.an, align 4, !tbaa !8135
  %i.ap = add nsw i32 %i.ak, 1
  store i32 %i.ap, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %.015.i.1 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 16 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8133
  store i32 %i.ar, ptr %.015.i.1, align 4, !tbaa !8133
  %i.as = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 20
  %i.at = getelementptr inbounds nuw i8, ptr %.01214.i, i64 12 ; 2 uses
  %i.au = load i8, ptr %i.at, align 4, !tbaa !8135, !range !66, !noundef !67
  store i8 %i.au, ptr %i.as, align 4, !tbaa !8135
  store i8 0, ptr %i.at, align 4, !tbaa !8135
  %i.av = add nsw i32 %i.ak, 2                    ; 2 uses
  store i32 %i.av, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.aw, %i.x
  br i1 %.not.i.1, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit, label %.lr.ph.i, !llvm.loop !8254

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !23
  %.not.i20 = icmp eq i8 %i.ay, 0
  br i1 %.not.i20, label %bb.b, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit..loopexit_crit_edge

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit..loopexit_crit_edge: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit
  %.pre = load i8, ptr %i.t, align 1, !tbaa !23
  br label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit
  %i.az = load i8, ptr %i.a, align 2, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.0.in24 = phi i8 [ %i.az, %bb.b ], [ %.0, %bb.c ]
  %.01923 = phi i8 [ 0, %bb.b ], [ %i.bi, %bb.c ] ; 2 uses
  %.0 = add i8 %.0.in24, 1                        ; 3 uses
  %i.bc = zext i8 %.01923 to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8152 ; 3 uses
  %i.bf = zext i8 %.0 to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bf
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !8152
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i8 %.0, ptr %i.bh, align 1, !tbaa !23
  store ptr %0, ptr %i.be, align 8, !tbaa !8152
  %i.bi = add i8 %.01923, 1                       ; 2 uses
  %i.bj = load i8, ptr %i.t, align 1, !tbaa !23   ; 2 uses
  %.not = icmp ugt i8 %i.bi, %i.bj
  br i1 %.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !11158

.loopexit.loopexit:                               ; preds = %bb.c
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.pre = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  %i.bk = add i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.pre, -1
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit..loopexit_crit_edge, %.loopexit.loopexit
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i = phi i32 [ %i.p, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit..loopexit_crit_edge ], [ %i.bk, %.loopexit.loopexit ]
  %i.bl = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit..loopexit_crit_edge ], [ %i.bj, %.loopexit.loopexit ]
  %i.bm = load i8, ptr %i.a, align 2, !tbaa !23
  %i.bn = add i8 %i.bm, 1
  %i.bo = add i8 %i.bn, %i.bl
  store i8 %i.bo, ptr %i.a, align 2, !tbaa !23
  store i8 0, ptr %i.t, align 1, !tbaa !23
  %i.bp = load ptr, ptr %0, align 8, !tbaa !8152  ; 4 uses
  %i.bq = load i8, ptr %i.d, align 8, !tbaa !23   ; 3 uses
  %i.br = zext i8 %i.bq to i64                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 12 ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i8, ptr %i.bu, align 4, !tbaa !8135, !range !66, !noundef !67
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.d, label %_ZN4absl12lts_2026052618container_internal20common_policy_traitsINS1_15set_slot_policyINS0_13test_internal19MovableOnlyInstanceEEEvE7destroyISaIS5_EEEDaPT_PS5_.exit.i.i

bb.d:                                             ; preds = %.loopexit
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %i.bx = add nsw i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i, -1
  store i32 %i.bx, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !9
  br label %_ZN4absl12lts_2026052618container_internal20common_policy_traitsINS1_15set_slot_policyINS0_13test_internal19MovableOnlyInstanceEEEvE7destroyISaIS5_EEEDaPT_PS5_.exit.i.i

_ZN4absl12lts_2026052618container_internal20common_policy_traitsINS1_15set_slot_policyINS0_13test_internal19MovableOnlyInstanceEEEvE7destroyISaIS5_EEEDaPT_PS5_.exit.i.i: ; preds = %bb.d, %.loopexit
  store i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 10 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !23  ; 4 uses
  %i.ca = zext i8 %i.bq to i32
  %i.cb = add nuw nsw i32 %i.ca, 1                ; 2 uses
  %i.cc = zext i8 %i.bz to i32                    ; 2 uses
  %i.cd = and i32 %i.cb, 255                      ; 3 uses
  %i.ce = sub nsw i32 %i.cc, %i.cd
  %i.cf = sext i32 %i.ce to i64
  %i.cg = zext nneg i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cg ; 2 uses
  %.idx.i31.i = shl nuw nsw i64 %i.cf, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i31.i
  %.not13.i.i = icmp eq i32 %i.cd, %i.cc
  br i1 %.not13.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i, label %.lr.ph.preheader.i32.i

.lr.ph.preheader.i32.i:                           ; preds = %_ZN4absl12lts_2026052618container_internal20common_policy_traitsINS1_15set_slot_policyINS0_13test_internal19MovableOnlyInstanceEEEvE7destroyISaIS5_EEEDaPT_PS5_.exit.i.i
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  br label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %.lr.ph.i33.i, %.lr.ph.preheader.i32.i
  %.015.i.i = phi ptr [ %i.cr, %.lr.ph.i33.i ], [ %i.cj, %.lr.ph.preheader.i32.i ] ; 3 uses
  %.01214.i.i = phi ptr [ %i.cq, %.lr.ph.i33.i ], [ %i.ch, %.lr.ph.preheader.i32.i ] ; 3 uses
  %i.ck = load i32, ptr %.01214.i.i, align 4, !tbaa !8133
  store i32 %i.ck, ptr %.015.i.i, align 4, !tbaa !8133
  %i.cl = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 4 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !8135, !range !66, !noundef !67
  store i8 %i.cn, ptr %i.cl, align 4, !tbaa !8135
  store i8 0, ptr %i.cm, align 4, !tbaa !8135
  %i.co = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !9
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !9
  %i.cq = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  %.not.i34.i = icmp eq ptr %i.cq, %i.ci
  br i1 %.not.i34.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i, label %.lr.ph.i33.i, !llvm.loop !8254

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i: ; preds = %.lr.ph.i33.i, %_ZN4absl12lts_2026052618container_internal20common_policy_traitsINS1_15set_slot_policyINS0_13test_internal19MovableOnlyInstanceEEEvE7destroyISaIS5_EEEDaPT_PS5_.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bp, i64 11
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !23
  %.not.i36.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i36.i, label %.preheader.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE13remove_valuesEhhPS8_.exit

.preheader.i:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i
  %i.cu = add i8 %i.bq, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bp, i64 256 ; 3 uses
  %i.cw = zext i8 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !8152
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE16clear_and_deleteEPSD_PS8_(ptr noundef %i.cy, ptr noundef %2)
  %i.cz = trunc i32 %i.cb to i8
  %.038.i = add i8 %i.cz, 1                       ; 2 uses
  %.not39.i = icmp ugt i8 %.038.i, %i.bz
  br i1 %.not39.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE13remove_valuesEhhPS8_.exit, label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.preheader.i, %.lr.ph42.i
  %.040.i = phi i8 [ %.0.i, %.lr.ph42.i ], [ %.038.i, %.preheader.i ] ; 3 uses
  %i.da = add i8 %.040.i, -1                      ; 2 uses
  %i.db = zext i8 %.040.i to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !8152 ; 2 uses
  %i.de = zext i8 %i.da to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.de
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !8152
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i8 %i.da, ptr %i.dg, align 1, !tbaa !23
  %.0.i = add i8 %.040.i, 1                       ; 2 uses
  %.not.i22 = icmp ugt i8 %.0.i, %i.bz
  br i1 %.not.i22, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE13remove_valuesEhhPS8_.exit, label %.lr.ph42.i, !llvm.loop !11159

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE13remove_valuesEhhPS8_.exit: ; preds = %.lr.ph42.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i, %.preheader.i
  %i.dh = add i8 %i.bz, -1
  store i8 %i.dh, ptr %i.by, align 1, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal19btree_set_containerINS1_5btreeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS5_19MovableOnlyInstanceEJEEEEEE7extractIS6_EENS1_11node_handleIS8_S8_SaISt4pairIKS6_S7_EEvEERSE_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20260526::container_internal::node_handle.1981") align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(5) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.0.0.in.i.i.i = phi ptr [ %1, %bb.a ], [ %i.r, %bb.d ]
  %.sroa.0.0.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i, align 8, !tbaa !11055, !noalias !11160 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.b = load i8, ptr %i.a, align 1, !tbaa !23, !noalias !11160 ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i8 %i.b, 0
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE11lower_boundIS5_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIS5_ES5_E15checked_compareE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 12
  %.pre.i.i.i.i.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance16num_comparisons_E, align 4, !tbaa !9, !noalias !11160
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.e = phi i32 [ %.pre.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.c ]
  %.014.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.c ] ; 2 uses
  %.01013.i.i.i.i.i.i = phi i64 [ %i.c, %.lr.ph.i.i.i.i.i.i ], [ %.111.i.i.i.i.i.i, %bb.c ] ; 2 uses
  %i.f = add i64 %.01013.i.i.i.i.i.i, %.014.i.i.i.i.i.i
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.g
  %i.i = add nsw i32 %i.e, 1                      ; 2 uses
  store i32 %i.i, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance16num_comparisons_E, align 4, !tbaa !9, !noalias !11160
  %i.j = load i32, ptr %i.h, align 4, !tbaa !8133, !noalias !11160
  %i.k = load i32, ptr %2, align 4, !tbaa !8133, !noalias !11160
  %i.l = icmp slt i32 %i.j, %i.k                  ; 2 uses
  %i.m = add nuw i64 %i.g, 1
  %.111.i.i.i.i.i.i = select i1 %i.l, i64 %.01013.i.i.i.i.i.i, i64 %i.g ; 3 uses
  %.1.i.i.i.i.i.i = select i1 %i.l, i64 %i.m, i64 %.014.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i.i, %.111.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE11lower_boundIS5_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIS5_ES5_E15checked_compareE.exit.i.i.i, label %bb.c, !llvm.loop !11056

_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE11lower_boundIS5_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIS5_ES5_E15checked_compareE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.111.i.i.i.i.i.i, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 11
  %i.o = load i8, ptr %i.n, align 1, !tbaa !23, !noalias !11160
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE15internal_locateIS5_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS7_EERSt4pairIKS5_S6_EPSG_EELb0EEERKT_.exit.i.i

bb.d:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE11lower_boundIS5_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIS5_ES5_E15checked_compareE.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 256
  %i.q = and i64 %.0.lcssa.i.i.i.i.i.i, 255
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  br label %bb.b

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE15internal_locateIS5_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS7_EERSt4pairIKS5_S6_EPSG_EELb0EEERKT_.exit.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE11lower_boundIS5_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIS5_ES5_E15checked_compareE.exit.i.i.i
  %i.s = trunc i64 %.0.lcssa.i.i.i.i.i.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE15internal_locateIS5_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS7_EERSt4pairIKS5_S6_EPSG_EELb0EEERKT_.exit.i.i
  %.sroa.7.0.i.i.i = phi i32 [ %i.s, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE15internal_locateIS5_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS7_EERSt4pairIKS5_S6_EPSG_EELb0EEERKT_.exit.i.i ], [ %i.z, %bb.f ] ; 4 uses
  %.sroa.0.0.i8.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE15internal_locateIS5_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS7_EERSt4pairIKS5_S6_EPSG_EELb0EEERKT_.exit.i.i ], [ %i.aa, %bb.f ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i, i64 10
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23, !noalias !11160
  %i.v = zext i8 %i.u to i32
  %i.w = icmp eq i32 %.sroa.7.0.i.i.i, %i.v
  br i1 %i.w, label %bb.f, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS7_EERKSt4pairIKS5_S6_EPSG_EE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i, i64 8
  %i.y = load i8, ptr %i.x, align 1, !tbaa !23, !noalias !11160
  %i.z = zext i8 %i.y to i32
  %i.aa = load ptr, ptr %.sroa.0.0.i8.i.i, align 8, !tbaa !11055, !noalias !11160 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 11
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !23, !noalias !11160
  %.not.i11.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i11.i.i, label %bb.e, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE17lower_bound_equalIS5_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS7_EERSA_IKS5_S6_EPSF_EEbERKT_.exit.thread, !llvm.loop !11057

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS7_EERKSt4pairIKS5_S6_EPSG_EE.exit.i: ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !11055, !noalias !11160 ; 2 uses
  %.phi.trans.insert26.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 10
  %.pre27.i = load i8, ptr %.phi.trans.insert26.i, align 1, !tbaa !23, !noalias !11160
  %.pre28.i = zext i8 %.pre27.i to i32
  %i.ad = icmp ne ptr %.sroa.0.0.i8.i.i, %.pre.i
  %i.ae = icmp ne i32 %.sroa.7.0.i.i.i, %.pre28.i
  %i.af = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %i.af, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE17lower_bound_equalIS5_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS7_EERSA_IKS5_S6_EPSF_EEbERKT_.exit, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE17lower_bound_equalIS5_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS7_EERSA_IKS5_S6_EPSF_EEbERKT_.exit.thread

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE17lower_bound_equalIS5_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS7_EERSA_IKS5_S6_EPSF_EEbERKT_.exit: ; preds = %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS7_EERKSt4pairIKS5_S6_EPSG_EE.exit.i
  %i.ag = sext i32 %.sroa.7.0.i.i.i to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i, i64 12
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ag ; 4 uses
  %i.aj = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance16num_comparisons_E, align 4, !tbaa !9, !noalias !11160
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance16num_comparisons_E, align 4, !tbaa !9, !noalias !11160
  %i.al = load i32, ptr %2, align 4, !tbaa !8133, !noalias !11160
  %i.am = load i32, ptr %i.ai, align 4, !tbaa !8133, !noalias !11160 ; 2 uses
  %.not = icmp slt i32 %i.al, %i.am
  br i1 %.not, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_13test_internal23CopyableMovableInstanceENS4_19MovableOnlyInstanceEJEEEE17lower_bound_equalIS5_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS7_EERSA_IKS5_S6_EPSF_EEbERKT_.exit.thread, label %bb.g
end_hunk_1
